import unittest
import joblib
import nltk

from main import Abstract


class AbstractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        data_folder = "data"
        cls.documents = joblib.load(data_folder + "/df_hover.pkl")
        cls.a = Abstract(cls.documents)

    def test_penn_to_wn(self):
        self.assertEqual(self.a.penn_to_wn('JJ'), nltk.corpus.wordnet.ADJ)
        self.assertEqual(self.a.penn_to_wn('JJR'), nltk.corpus.wordnet.ADJ)
        self.assertEqual(self.a.penn_to_wn('JJS'), nltk.corpus.wordnet.ADJ)
        self.assertEqual(self.a.penn_to_wn('NN'), nltk.corpus.wordnet.NOUN)
        self.assertEqual(self.a.penn_to_wn('NNS'), nltk.corpus.wordnet.NOUN)
        self.assertEqual(self.a.penn_to_wn('NNP'), nltk.corpus.wordnet.NOUN)
        self.assertEqual(self.a.penn_to_wn('NNPS'), nltk.corpus.wordnet.NOUN)
        self.assertEqual(self.a.penn_to_wn('RB'), nltk.corpus.wordnet.ADV)
        self.assertEqual(self.a.penn_to_wn('RBR'), nltk.corpus.wordnet.ADV)
        self.assertEqual(self.a.penn_to_wn('RBS'), nltk.corpus.wordnet.ADV)
        self.assertEqual(self.a.penn_to_wn('VB'), nltk.corpus.wordnet.VERB)
        self.assertEqual(self.a.penn_to_wn('VBD'), nltk.corpus.wordnet.VERB)
        self.assertEqual(self.a.penn_to_wn('VBG'), nltk.corpus.wordnet.VERB)
        self.assertEqual(self.a.penn_to_wn('VBN'), nltk.corpus.wordnet.VERB)
        self.assertEqual(self.a.penn_to_wn('VBP'), nltk.corpus.wordnet.VERB)
        self.assertEqual(self.a.penn_to_wn('VBZ'), nltk.corpus.wordnet.VERB)

    def test_lemmatization(self):
        self.assertEqual(self.a.lemmatization("transmitting"), "transmission")
        self.assertEqual(self.a.lemmatization("enhance"), "enhancement")
        self.assertEqual(self.a.lemmatization("blood"), "blood")
        self.assertEqual(self.a.lemmatization("testing"), "test")
        self.assertEqual(self.a.lemmatization("toxic"), "toxicity")
        self.assertEqual(self.a.lemmatization("sex"), "sex")
        self.assertEqual(self.a.lemmatization("risk"), "risk")
        self.assertEqual(self.a.lemmatization("result"), "result")
        self.assertEqual(self.a.lemmatization("incident"), "incidence")
        self.assertEqual(self.a.lemmatization("expose"), "exposure")
        self.assertEqual(self.a.lemmatization("acute"), "acuteness")
        self.assertEqual(self.a.lemmatization("longitudinal"), "longitude")
        self.assertEqual(self.a.lemmatization("analyze"), "analysis")
        self.assertEqual(self.a.lemmatization("assistant"), "assistant")
        self.assertEqual(self.a.lemmatization("adult"), "adult")
        self.assertEqual(self.a.lemmatization("child"), "child")
        self.assertEqual(self.a.lemmatization("trend"), "trend")
        self.assertEqual(self.a.lemmatization("use"), "usage")

    def test_abstract_generator(self):
        abstract = self.a.abstract_generator(self.a.preprocessing(self.documents))
        print(abstract)
        self.assertEqual(isinstance(abstract, str), True)


if __name__ == '__main__':
    unittest.main()
