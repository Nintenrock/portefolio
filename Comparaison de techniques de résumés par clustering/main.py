import joblib
import numpy as np
import pandas as pd
import umap
import hdbscan
import nltk
import re
import statistics
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.decomposition import TruncatedSVD, PCA
import sklearn.cluster as cluster
from sklearn.metrics import adjusted_rand_score, adjusted_mutual_info_score
from numpy.linalg import norm
import matplotlib.pyplot as plt
import seaborn as sns
import time
from sklearn.cluster import KMeans
import itertools

sns.set_context('poster')
sns.set_color_codes()
plot_kwds = {'alpha': 0.25, 's': 80, 'linewidths': 0}


def plot_clusters(data, algorithm, args, kwds):
    start_time = time.time()
    labels = algorithm(*args, **kwds).fit_predict(data)
    end_time = time.time()
    palette = sns.color_palette('deep', np.unique(labels).max() + 1)
    colors = [palette[x] if x >= 0 else (0.0, 0.0, 0.0) for x in labels]
    plt.scatter(data.T[0], data.T[1], c=colors, **plot_kwds)
    frame = plt.gca()
    frame.axes.get_xaxis().set_visible(False)
    frame.axes.get_yaxis().set_visible(False)
    plt.title('Clusters found by {}'.format(str(algorithm.__name__)), fontsize=24)
    plt.text(-0.5, 0.7, 'Clustering took {:.2f} s'.format(end_time - start_time), fontsize=14)


def plot_documents(data, linear_reduction):
    plt.scatter(data.T[0], data.T[1], c='b', **plot_kwds)
    frame = plt.gca()
    frame.axes.get_xaxis().set_visible(False)
    frame.axes.get_yaxis().set_visible(False)
    if linear_reduction:
        plt.title('Documents plotted with SVD', fontsize=24)
    else:
        plt.title('Documents plotted with UMAP', fontsize=24)


class Abstract:
    data_folder = "data"
    fig_folder = "fig"

    def __init__(self, documents):
        self.documents = documents

    def get_data_folder(self):
        return self.data_folder

    def get_fig_folder(self):
        return self.fig_folder

    def penn_to_wn(self, tag):
        if tag in ['JJ', 'JJR', 'JJS']:
            return nltk.corpus.wordnet.ADJ
        elif tag in ['NN', 'NNS', 'NNP', 'NNPS']:
            return nltk.corpus.wordnet.NOUN
        elif tag in ['RB', 'RBR', 'RBS']:
            return nltk.corpus.wordnet.ADV
        elif tag in ['VB', 'VBD', 'VBG', 'VBN', 'VBP', 'VBZ']:
            return nltk.corpus.wordnet.VERB
        else:
            return nltk.corpus.wordnet.NOUN

    def lemmatization(self, word):
        lemmatizer = nltk.stem.WordNetLemmatizer()
        new_form = lemmatizer.lemmatize(word, pos=self.penn_to_wn(nltk.pos_tag([word])[0][1]))
        nouns = set()
        for lemma in nltk.corpus.wordnet.lemmas(new_form):
            if nltk.pos_tag([lemma.name()])[0][1] == "NN" and (
                    bool(re.search(r'ion$|ment$|ity$|x$|k$|lt$|ence$|ness$|ant$|ure$|ude$|is$|ood$|end$|age$',
                                   lemma.name())) and not
                    bool(re.search(r'hood$|ist$|r$', lemma.name()))):
                nouns.add(lemma.name())
            for related_lemma in lemma.derivationally_related_forms():
                if nltk.pos_tag([related_lemma.name()])[0][1] == "NN" and (
                        bool(re.search(r'ion$|ment$|y$|x$|k$|lt$|ence$|ness$|ant$|ure$|ude$|is$|ood$|end$|age$',
                                       related_lemma.name())) and not
                        bool(re.search(r'hood$|oody$|ist$|r$|xy$', related_lemma.name()))):
                    nouns.add(related_lemma.name())
        nouns_list = list(nouns)
        print(nouns_list)
        if len(nouns_list) == 0:
            return new_form
        else:
            return lemmatizer.lemmatize(nouns_list[0], pos=self.penn_to_wn(nltk.pos_tag([nouns_list[0]])[0][1]))

    def preprocessing(self, documents):
        # nltk.download('punkt')
        # nltk.download('stopwords')
        # nltk.download('wordnet')

        stopwords = set(nltk.corpus.stopwords.words('english'))
        # stemmer = nltk.stem.snowball.SnowballStemmer('english')

        preprocessed_titles = []
        preprocessed_sentences = []
        preprocessed_abstracts = []

        for title, abstract in zip(documents['Title'], documents['Abstract']):
            title_keywords = []
            title_keywords.extend([self.lemmatization(word) for word in
                                   nltk.tokenize.word_tokenize(title.strip().lower(), "english") if
                                   word.isalpha() and word not in stopwords])
            preprocessed_titles.append(" ".join(title_keywords))
            abstract_keywords = []
            abstract_keyphrases = [sentence for sentence in  # on filtre les phrases pertinentes
                                   nltk.tokenize.sent_tokenize(abstract.strip().lower(), "english") if
                                   not (bool(re.search(
                                       r'(\d+|one|two|three|four|five|six|seven|eight|nine|ten|eleven|twelve|teen|twenty|thirty|fifty|hundred|the).{0,20}( men | women| patients| participants| children| infants| mothers| samples| people| individuals| subjects| isolates)',
                                       sentence))) and not bool(
                                       re.search(r'select|enroll|visit|of those', sentence)) and len(
                                       sentence.split()) > 6]
            keywords_per_keyphrase = []
            preprocessed_abstract = []
            for phrase in abstract_keyphrases:  # après la sélection de phrases, on filtre les mots
                keywords_per_keyphrase = [self.lemmatization(word) for word in
                                          nltk.tokenize.word_tokenize(phrase.strip().lower(), "english") if
                                          word.isalpha() and word not in stopwords]
                abstract_keywords.append(keywords_per_keyphrase)
                preprocessed_abstract.append(" ".join(keywords_per_keyphrase))
            preprocessed_sentences.append(abstract_keywords)
            preprocessed_abstracts.append(" ".join(preprocessed_abstract))
        documents.insert(19, "preprocessed_titles", preprocessed_titles, True)
        documents.insert(20, "preprocessed_sentences", preprocessed_sentences, True)
        documents.insert(21, "preprocessed_abstracts", preprocessed_abstracts, True)
        file_path = data_folder + "/df_preprocessed.pkl"
        documents.to_pickle(file_path)

    def abstract_generator(self, abstracts, compression_rate, cluster_by_title, linear_reduction, partitioning,
                           weighting_type):
        # créer un vecteur TF-IDF
        tf_idf = TfidfVectorizer()
        result = []

        # valeurs TF-IDF en fonction des titres ou des clusters
        if cluster_by_title:  # on récupère que les titres pour faire les clusters
            result = tf_idf.fit_transform(abstracts['preprocessed_titles'])
        else:  # sinon, on récupère les abstracts pour faire les clusters
            preprocessed_abstracts = self.documents['preprocessed_abstracts']
            result = tf_idf.fit_transform(preprocessed_abstracts)

        # sous forme matricielle
        tfidf_matrix = result.toarray()

        # on stocke tous les mots-clés présents dans les abstracts dans une variable
        if cluster_by_title:
            preprocessed_abstracts = self.documents['preprocessed_abstracts']
            result = tf_idf.fit_transform(preprocessed_abstracts)
            tf_idf_sorted = pd.DataFrame(result.toarray().transpose(), tf_idf.get_feature_names_out())  # transformation
            keywords = tf_idf_sorted.index.values
        else:
            tf_idf_sorted = pd.DataFrame(result.toarray().transpose(), tf_idf.get_feature_names_out())  # transformation
            keywords = tf_idf_sorted.index.values

        keywords_weights = []
        clustered_documents = []
        truncated_matrix = []

        # réduction de la matrice TF-IDF
        if linear_reduction:  # la réduction est linéaire, on fait avec SVD
            svd = TruncatedSVD(n_components=2)  # on définit le SVD comme matrice de taille 2 x n
            svd.fit(tfidf_matrix)  # on introduit la matrice
            truncated_matrix = svd.transform(tfidf_matrix)

        else:  # la réduction est non-linéaire, on fait avec UMAP
            # standard_embedding = umap.UMAP(random_state=42).fit_transform(tfidf_matrix)
            truncated_matrix = umap.UMAP(
                n_neighbors=30,
                min_dist=0.0,
                n_components=2
            ).fit_transform(tfidf_matrix)

        plot_documents(np.array(truncated_matrix), linear_reduction)
        fig_path = ""
        fig_folder = Abstract.get_fig_folder(self)
        if cluster_by_title and linear_reduction:
            fig_path = "./" + fig_folder + "/plot-titles-svd-before-clustering.png"
        elif cluster_by_title and not linear_reduction:
            fig_path = "./" + fig_folder + "/plot-titles-umap-before-clustering.png"
        elif not cluster_by_title and linear_reduction:
            fig_path = "./" + fig_folder + "/plot-abstracts-svd-before-clustering.png"
        else:
            fig_path = "./" + fig_folder + "/plot-abstracts-umap-before-clustering.png"
        plt.savefig(fig_path)

        # Génération de clusters
        if partitioning:  # on fait le clustering avec k-Means, qui est plutôt une méthode de partitionnement
            kmeans = KMeans(n_clusters=compression_rate, n_init=10)
            kmeans.fit(list(truncated_matrix))

            plot_clusters(truncated_matrix, KMeans, (), {'n_clusters': compression_rate})
            if cluster_by_title and linear_reduction:
                fig_path = "./" + fig_folder + "/plot-titles-svd-after-kmeans-clustering.png"
            elif cluster_by_title and not linear_reduction:
                fig_path = "./" + fig_folder + "/plot-titles-umap-after-kmeans-clustering.png"
            elif not cluster_by_title and linear_reduction:
                fig_path = "./" + fig_folder + "/plot-abstracts-svd-after-kmeans-clustering.png"
            else:
                fig_path = "./" + fig_folder + "/plot-abstracts-umap-after-kmeans-clustering.png"
            plt.savefig(fig_path)
            plt.show()

            for cluster in range(0, compression_rate):  # on identifie les documents qui se trouvent dans le cluster
                points = np.array(list(truncated_matrix))[kmeans.labels_ == cluster]
                document_in_cluster = []
                for point in points:
                    index = np.where(truncated_matrix == point)[0][0]
                    document_in_cluster.append(index)

                clustered_documents.append(document_in_cluster)
        else:  # on fait le clustering avec HDBSCAN
            HDBSCAN_cluster = hdbscan.HDBSCAN(
                min_samples=15,
                min_cluster_size=int(len(abstracts) / (3 * compression_rate)),
                metric="cosine",
                gen_min_span_tree=True,
                algorithm="generic",
                cluster_selection_method="leaf",
                approx_min_span_tree=False,
                allow_single_cluster=True,
                prediction_data=False,
            ).fit(truncated_matrix.astype(float))

            plot_clusters(truncated_matrix, hdbscan.HDBSCAN, (), {'min_cluster_size': 15})
            if cluster_by_title and linear_reduction:
                fig_path = "./" + fig_folder + "/plot-titles-svd-after-hdbscan-clustering.png"
            elif cluster_by_title and not linear_reduction:
                fig_path = "./" + fig_folder + "/plot-titles-umap-after-hdbscan-clustering.png"
            elif not cluster_by_title and linear_reduction:
                fig_path = "./" + fig_folder + "/plot-abstracts-svd-after-hdbscan-clustering.png"
            else:
                fig_path = "./" + fig_folder + "/plot-abstracts-umap-after-hdbscan-clustering.png"
            plt.savefig(fig_path)
            plt.show()

            # On récupère les articles contenus dans les clusters
            for cluster in range(0, HDBSCAN_cluster.labels_.max()):
                # on identifie les documents qui se trouvent dans le cluster
                points = np.array(list(truncated_matrix))[HDBSCAN_cluster.labels_ == cluster]
                document_in_cluster = []
                for point in points:
                    index = np.where(truncated_matrix == point)[0][0]
                    document_in_cluster.append(index)

                clustered_documents.append(document_in_cluster)

        stopwords = set(nltk.corpus.stopwords.words('english'))

        # on exécute la série d'opérations suivante pour chaque cluster formé
        for cluster in clustered_documents:
            preprocessed_abstracts = self.documents['preprocessed_abstracts'].loc[cluster].tolist()

            # on construit un dictionnaire avec l'ID du document comme clé et l'abstract pre-traité comme valeur
            abstracts_dict = {}
            for document in range(len(preprocessed_abstracts)):
                key = "Document " + str(document)
                abstracts_dict[key] = [preprocessed_abstracts[document]]
            dataframe = pd.DataFrame(abstracts_dict)  # conversion du dictionnaire en dataframe

            # Calcul de la matrice TF-IDF transposée
            tf_idf = TfidfVectorizer()
            tfidf = tf_idf.fit_transform(dataframe.iloc[0])
            tf_idf_sorted = pd.DataFrame(tfidf.toarray().transpose(), tf_idf.get_feature_names_out())  # transformation

            # Calcul de la pondération des mots-clés
            if weighting_type:  # Calcul de la pondération par la moyenne
                avg_df = tf_idf_sorted.mean(axis=1).sort_values(ascending=False)
                for keyword in keywords:
                    if keyword not in avg_df.index.values:
                        avg_df.loc[keyword] = 0.0
                keywords_weights.append(avg_df)
            else:  # Calcul de la pondération par réduction avec SVD
                svd = TruncatedSVD(n_components=1)
                svd.fit(tf_idf_sorted)
                truncated_matrix = svd.transform(tf_idf_sorted)
                truncated_array = np.array(itertools.chain.from_iterable(truncated_matrix))
                svd_df = pd.Series(truncated_array, tf_idf.get_feature_names_out()).sort_values(ascending=False)
                for keyword in keywords:
                    if keyword not in svd_df.index.values:
                        svd_df.loc[keyword] = 0.0
                keywords_weights.append(svd_df)

        # Évaluation n°1 : calcul de l'écart-type pour la combinaison de technologies.
        standard_deviation_list = []
        for cluster in range(len(clustered_documents)):
            print("Cluster n°" + str(cluster) + "\n")
            print(keywords_weights[cluster][0:6])
            print("\n")
            standard_deviation_list.append(keywords_weights[cluster].max())
        standard_deviation = statistics.stdev(standard_deviation_list)

        # Évaluation n°2 : calcul de la similarité cosinus pour la combinaison de technologies.
        cosine_similarity_list = []
        cluster_distance_list = [(a, b) for idx, a in enumerate(keywords_weights) for b in keywords_weights[idx + 1:]]
        for combinaison in cluster_distance_list:
            cosine_similarity = np.dot(combinaison[0], combinaison[1]) / (norm(combinaison[0]) * norm(combinaison[1]))
            cosine_similarity_list.append(cosine_similarity)
        print("Cosine similarities: " + str(cosine_similarity_list))
        avg_cosine_similarity = np.average(cosine_similarity_list)

        # Génération d'abstracts par calcul du score pour chaque phrase
        best_sentences_per_cluster = []
        for cluster in range(len(clustered_documents)):  # pour chaque cluster
            sentence_dict = {}
            abstracts = self.documents['Abstract'].loc[clustered_documents[cluster]].tolist()
            preprocessed_sentences = self.documents['preprocessed_sentences'].loc[clustered_documents[cluster]].tolist()
            for abstract in range(len(abstracts)):  # pour chaque abstract dans ce cluster
                full_sentences = nltk.tokenize.sent_tokenize(abstracts[abstract])
                for sentence in range(len(preprocessed_sentences[abstract])):
                    sentence_weight = 0
                    for word in preprocessed_sentences[abstract][sentence]:
                        if word in keywords_weights[cluster]:
                            sentence_weight += keywords_weights[cluster][word] * keywords_weights[cluster][word]
                    if len(preprocessed_sentences[abstract][sentence]) != 0:
                        sentence_weight /= len(preprocessed_sentences[abstract][sentence])
                    sentence_dict[full_sentences[sentence]] = sentence_weight  # we record the sentence and its weight
            best_sentences = pd.Series(sentence_dict).sort_values(ascending=False)[0:3]
            best_sentences_per_cluster.append(best_sentences)

        abstract_per_cluster = []
        for cluster_sentences in best_sentences_per_cluster:
            abstract_per_cluster.append(" ".join(cluster_sentences[0:3].index))

        return abstract_per_cluster, standard_deviation, avg_cosine_similarity


if __name__ == '__main__':
    data_folder = "data"
    documents = []
    try:
        documents = joblib.load(data_folder + "/df_preprocessed.pkl")
    except:
        start_time = time.time()
        documents = joblib.load(data_folder + "/df_hover.pkl")
        a = Abstract(documents)
        a.preprocessing(documents)
        end_time = time.time()
        print("Time for preprocessing: " + str(end_time - start_time) + "s.")
        documents = joblib.load(data_folder + "/df_preprocessed.pkl")

    a = Abstract(documents)
    n = 8
    abstract_number = 0
    standard_deviation_dict = {}
    cosine_similarity_dict = {}
    for p in itertools.product([True, False], repeat=4):
        params = dict(zip(["cluster_by_title", "linear_reduction", "partitioning", "weighting_type"], p))
        abstract_number += 1
        combinaison_parameter = []
        print("Abstract n°" + str(abstract_number) + ":")
        for k, v in params.items():
            print(k + ": " + str(v))
            combinaison_parameter.append(k + ": " + str(v))
        combinaison = " / ".join(combinaison_parameter)
        print("Compression rate: " + str(n))
        start_time = time.time()
        abstract_per_cluster, standard_deviation, avg_cosine_similarity = a.abstract_generator(documents,
                                                                                               compression_rate=n,
                                                                                               cluster_by_title=params[
                                                                                                   "cluster_by_title"],
                                                                                               linear_reduction=params[
                                                                                                   "linear_reduction"],
                                                                                               partitioning=params[
                                                                                                   "partitioning"],
                                                                                               weighting_type=params[
                                                                                                   "weighting_type"])
        end_time = time.time()
        print("Abstracts:")
        print("\n".join(abstract_per_cluster))
        print("Standard deviation: " + str(standard_deviation))
        print("Cosine similarity: " + str(avg_cosine_similarity))
        print("Execution time: " + str(end_time - start_time) + "s.\n")
        standard_deviation_dict[combinaison] = standard_deviation
        cosine_similarity_dict[combinaison] = avg_cosine_similarity
    standard_deviation_dict_sorted = sorted(standard_deviation_dict.items(), key=lambda x: x[1])
    cosine_similarity_dict_sorted = sorted(cosine_similarity_dict.items(), key=lambda x: x[1])
    print("\nStandard deviation comparison:")
    for method in standard_deviation_dict_sorted:
        print(method)
    print("\nCosine similarity comparison:")
    for method in cosine_similarity_dict_sorted:
        print(cosine_similarity_dict_sorted)
