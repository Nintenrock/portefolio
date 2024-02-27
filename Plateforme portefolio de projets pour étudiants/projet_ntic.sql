-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2023 at 06:33 PM
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
-- Table structure for table `Commentaire`
--

CREATE TABLE `Commentaire` (
  `comment_id` int NOT NULL,
  `date` date NOT NULL,
  `contenu` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `projet_id` int NOT NULL,
  `prof_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Cours`
--

CREATE TABLE `Cours` (
  `cours_id` int NOT NULL,
  `cours_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_code` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Enseignant`
--

CREATE TABLE `Enseignant` (
  `prof_id` int NOT NULL,
  `prof_nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prof_prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_prof` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_prof` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `EnseignantCours`
--

CREATE TABLE `EnseignantCours` (
  `ec_id` int NOT NULL,
  `cours_id` int NOT NULL,
  `prof_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Etudiant`
--

CREATE TABLE `Etudiant` (
  `etu_id` int NOT NULL,
  `no_imm` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `etu_nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `etu_prenom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email_unige` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_unige` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email_perso` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_perso` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `EtudiantProjet`
--

CREATE TABLE `EtudiantProjet` (
  `ep_id` int NOT NULL,
  `projet_id` int NOT NULL,
  `etu_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Fichier`
--

CREATE TABLE `Fichier` (
  `fichier_id` int NOT NULL,
  `fichier_nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `vignette` tinyint NOT NULL,
  `projet_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Projet`
--

CREATE TABLE `Projet` (
  `projet_id` int NOT NULL,
  `projet_titre` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `resume` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `acces` tinyint(1) NOT NULL,
  `taches` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `outils_nom` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `outils_img` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `visiteurs_ext` longtext COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Commentaire`
--
ALTER TABLE `Commentaire`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `fk_comment_projet` (`projet_id`),
  ADD KEY `fk_comment_prof` (`prof_id`);

--
-- Indexes for table `Cours`
--
ALTER TABLE `Cours`
  ADD PRIMARY KEY (`cours_id`);

--
-- Indexes for table `Enseignant`
--
ALTER TABLE `Enseignant`
  ADD PRIMARY KEY (`prof_id`);

--
-- Indexes for table `EnseignantCours`
--
ALTER TABLE `EnseignantCours`
  ADD PRIMARY KEY (`ec_id`),
  ADD KEY `fk_enseignant` (`prof_id`),
  ADD KEY `fk_cours` (`cours_id`);

--
-- Indexes for table `Etudiant`
--
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`etu_id`);

--
-- Indexes for table `EtudiantProjet`
--
ALTER TABLE `EtudiantProjet`
  ADD PRIMARY KEY (`ep_id`),
  ADD KEY `fk_projet` (`projet_id`),
  ADD KEY `fk_etudiant` (`etu_id`);

--
-- Indexes for table `Fichier`
--
ALTER TABLE `Fichier`
  ADD PRIMARY KEY (`fichier_id`),
  ADD KEY `fk_fichier` (`projet_id`);

--
-- Indexes for table `Projet`
--
ALTER TABLE `Projet`
  ADD PRIMARY KEY (`projet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Commentaire`
--
ALTER TABLE `Commentaire`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Cours`
--
ALTER TABLE `Cours`
  MODIFY `cours_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Enseignant`
--
ALTER TABLE `Enseignant`
  MODIFY `prof_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EnseignantCours`
--
ALTER TABLE `EnseignantCours`
  MODIFY `ec_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Etudiant`
--
ALTER TABLE `Etudiant`
  MODIFY `etu_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `EtudiantProjet`
--
ALTER TABLE `EtudiantProjet`
  MODIFY `ep_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Fichier`
--
ALTER TABLE `Fichier`
  MODIFY `fichier_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Projet`
--
ALTER TABLE `Projet`
  MODIFY `projet_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Commentaire`
--
ALTER TABLE `Commentaire`
  ADD CONSTRAINT `fk_comment_prof` FOREIGN KEY (`prof_id`) REFERENCES `Enseignant` (`prof_id`),
  ADD CONSTRAINT `fk_comment_projet` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`projet_id`);

--
-- Constraints for table `EnseignantCours`
--
ALTER TABLE `EnseignantCours`
  ADD CONSTRAINT `fk_cours` FOREIGN KEY (`cours_id`) REFERENCES `Cours` (`cours_id`),
  ADD CONSTRAINT `fk_enseignant` FOREIGN KEY (`prof_id`) REFERENCES `Enseignant` (`prof_id`);

--
-- Constraints for table `EtudiantProjet`
--
ALTER TABLE `EtudiantProjet`
  ADD CONSTRAINT `fk_etudiant` FOREIGN KEY (`etu_id`) REFERENCES `Etudiant` (`etu_id`),
  ADD CONSTRAINT `fk_projet` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`projet_id`);

--
-- Constraints for table `Fichier`
--
ALTER TABLE `Fichier`
  ADD CONSTRAINT `fk_fichier` FOREIGN KEY (`projet_id`) REFERENCES `Projet` (`projet_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
