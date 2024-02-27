-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2023 at 05:23 PM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet_ntic`
--

-- --------------------------------------------------------

--
-- Table structure for table `Cours`
--

CREATE TABLE `Cours` (
  `id` int NOT NULL,
  `cours_nom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `cours_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `faculte` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `Fichier`
--

CREATE TABLE `Fichier` (
  `id` int NOT NULL,
  `fichier_nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `chemin` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `vignette` tinyint NOT NULL,
  `projet_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Projet`
--

CREATE TABLE `Projet` (
  `id` int NOT NULL,
  `projet_titre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_id` int NOT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `acces` tinyint(1) NOT NULL,
  `taches` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `outils_nom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `outils_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `visiteurs_ext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Recommandation`
--

CREATE TABLE `Recommandation` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `projet_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int NOT NULL,
  `est_etudiant` tinyint(1) NOT NULL,
  `est_enseignant` tinyint(1) NOT NULL,
  `est_administrateur` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `id` int NOT NULL,
  `no_imm` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_unige` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_unige` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_perso` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mdp_perso` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UtilisateurCours`
--

CREATE TABLE `UtilisateurCours` (
  `id` int NOT NULL,
  `cours_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UtilisateurProjet`
--

CREATE TABLE `UtilisateurProjet` (
  `id` int NOT NULL,
  `projet_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cours`
--
ALTER TABLE `Cours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Fichier`
--
ALTER TABLE `Fichier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_fichier` (`projet_id`);

--
-- Indexes for table `Projet`
--
ALTER TABLE `Projet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projet_cours` (`cours_id`);

--
-- Indexes for table `Recommandation`
--
ALTER TABLE `Recommandation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_projet` (`projet_id`),
  ADD KEY `fk_comment_user` (`user_id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_role` (`role_id`);

--
-- Indexes for table `UtilisateurCours`
--
ALTER TABLE `UtilisateurCours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cours` (`cours_id`),
  ADD KEY `fk_user_cours` (`user_id`);

--
-- Indexes for table `UtilisateurProjet`
--
ALTER TABLE `UtilisateurProjet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projet` (`projet_id`),
  ADD KEY `fk_user_projet` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cours`
--
ALTER TABLE `Cours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1035;

--
-- AUTO_INCREMENT for table `Fichier`
--
ALTER TABLE `Fichier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Projet`
--
ALTER TABLE `Projet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Recommandation`
--
ALTER TABLE `Recommandation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UtilisateurCours`
--
ALTER TABLE `UtilisateurCours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UtilisateurProjet`
--
ALTER TABLE `UtilisateurProjet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Fichier`
--
ALTER TABLE `Fichier`
  ADD CONSTRAINT `fk_fichier` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`id`);

--
-- Constraints for table `Projet`
--
ALTER TABLE `Projet`
  ADD CONSTRAINT `fk_projet_cours` FOREIGN KEY (`cours_id`) REFERENCES `Cours` (`id`);

--
-- Constraints for table `Recommandation`
--
ALTER TABLE `Recommandation`
  ADD CONSTRAINT `fk_comment_projet` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`id`),
  ADD CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `Utilisateur` (`id`);

--
-- Constraints for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`);

--
-- Constraints for table `UtilisateurCours`
--
ALTER TABLE `UtilisateurCours`
  ADD CONSTRAINT `fk_cours` FOREIGN KEY (`cours_id`) REFERENCES `Cours` (`id`),
  ADD CONSTRAINT `fk_user_cours` FOREIGN KEY (`user_id`) REFERENCES `Utilisateur` (`id`);

--
-- Constraints for table `UtilisateurProjet`
--
ALTER TABLE `UtilisateurProjet`
  ADD CONSTRAINT `fk_projet` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`id`),
  ADD CONSTRAINT `fk_user_projet` FOREIGN KEY (`user_id`) REFERENCES `Utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
