-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 12, 2023 at 01:33 AM
-- Server version: 8.0.33-0ubuntu0.20.04.1
-- PHP Version: 7.4.3-4ubuntu2.18

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
  `nom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `faculte` longtext COLLATE utf8mb4_general_ci,
  `created_at` date NOT NULL DEFAULT '2022-04-27',
  `updated_at` date NOT NULL DEFAULT '2022-04-27'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Cours`
--

INSERT INTO `Cours` (`id`, `nom`, `code`, `faculte`, `created_at`, `updated_at`) VALUES
(1, 'Anatomie et histologie', '1_22H001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(2, 'Cours d\'astronomie générale ouvert au public', '10A001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(3, 'History and philosophy of quantum mechanics', '10S005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(4, 'Biologie fondamentale I', '11B001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(5, 'Biologie fondamentale II', '11B002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(6, 'Biologie fondamentale III', '11B003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(7, 'Biostatistiques I :  Répétitoire', '11B800', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(8, 'Chimie générale I', '11C001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(9, 'Chimie générale II', '11C002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(10, 'Biochimie I - Automne', '11C003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(11, 'Biochimie I - Automne pour étudiant-es en biologie', '11C003X1', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(12, 'Biochimie I - Automne pour étudiant-es en pharmacie', '11C003X2', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(13, 'Chimie générale pour étudiant-es en biologie, sciences pharmaceutiques, et sciences de la Terre et environnement', '11C101', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(14, 'Chimie analytique pour étudiant-es en sciences pharmaceutiques, et sciences de la Terre et environnement', '11C102', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(15, 'Chimie organique pour étudiant-es en biologie et sciences pharmaceutiques', '11C103', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(16, 'Chimie générale pour étudiant-es en médecine', '11C121', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(17, 'Chimie organique pour étudiant-es en médecine', '11C122', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(18, 'Exercices de chimie générale I', '11C801', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(19, 'Exercices de chimie générale II', '11C802', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(20, 'Complément en sciences pharmaceutiques', '11H002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(21, 'Mathématiques générales - automne', '11M000', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(22, 'Mathématiques générales - statistiques', '11M002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(23, 'Biostatistiques I', '11M004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(24, 'Mathématiques pour informaticiens', '11M005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(25, 'Algèbre I - automne', '11M010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(26, 'Algèbre I - printemps', '11M011', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(27, 'Analyse I - automne', '11M020', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(28, 'Analyse I - printemps', '11M021', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(29, 'Géométrie I', '11M031', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(30, 'Laboratoire de programmation mathématique', '11M050', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(31, 'Introduction à la logique et à la théorie des ensembles', '11M060', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(32, 'Mathématiques discrètes', '11M070', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(33, 'Algebraic number theory', '11M146', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(34, 'Biostatistiques I : Applications', '11M904', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(35, 'Electrodynamique I - Automne', '11P001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(36, 'Electrodynamique I - Printemps', '11P002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(37, 'Mécanique I', '11P010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(38, 'Méthodes mathématiques pour physiciens I', '11P020', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(39, 'Physique générale C - automne', '11P090', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(40, 'Physique générale C - printemps', '11P091', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(41, 'Eléments de paléontologie', '11T004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(42, 'Evolution de la vie I', '11T006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(43, 'Evolution de la vie II', '11T008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(44, 'Cristallographie', '11T202', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(45, 'Géologie régionale - excursions', '11T506', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(46, 'Cartographie', '11T901', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(47, 'Introduction à la programmation des algorithmes', '11X001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(48, 'Laboratoire de programmation', '11X002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(49, 'Langages formels', '11X003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(50, 'Logiciels et réseaux informatiques', '11X004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(51, 'Structures de données', '11X005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(52, 'Principes de fonctionnement des ordinateurs', '11X006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(53, 'Complexité et calculabilité', '11X008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(54, 'Formation de base en informatique', '11X020', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(55, 'Information sur le médicament', '1296', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(56, 'Biologie et société I : Les enjeux actuels des sciences de la vie', '12B010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(57, 'Biologie et société II : Analyser les controverses scientifiques', '12B011', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(58, 'Bioinformatique', '12B012', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(59, 'Biologie végétale', '12B013', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(60, 'Biostatistiques II', '12B015', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(61, 'Développement animal', '12B016', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(62, 'Génétique - Génétique générale', '12B017A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(63, 'Génétique - Génétique moléculaire', '12B017P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(64, 'Développement végétal', '12B019', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(65, 'Biochimie pour Biologistes', '12B023', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(66, 'Formation documentaire', '12B801', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(67, 'Génétique - Travaux pratiques', '12B917', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(68, 'Chimie organique I', '12C001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(69, 'Biochimie II - Automne', '12C002A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(70, 'Biochimie II - Printemps', '12C002P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(71, 'Biochimie II - Printemps pour étudiant-e-s en biologie', '12C002PX', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(72, 'Chimie minérale I', '12C003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(73, 'Chimie physique I : thermodynamique et cinétique', '12C004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(74, 'Chimie physique II : chimie quantique', '12C005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(75, 'Chimie analytique I - Automne', '12C006A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(76, 'Chimie analytique I - Printemps', '12C006P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(77, 'DDI_Développement durable I', '12E050', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(78, 'DDII_Développement durable II', '12E051', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(79, 'Chimie pharmaceutique - cours', '12H006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(80, 'Bases en hématologie et transfusion', '12H007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(81, 'Capsule 1: Concepts de base en pharmacologie', '12H100', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(82, 'Capsule 2 : Inflammation', '12H200', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(83, 'Capsule 3: Microbiologie', '12H300', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(84, 'Capsule 4:Coeur et sang', '12H400', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(85, 'Capsule 5: respiration', '12H500', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(86, 'Capsule 6: Nutrition et digestion', '12H600', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(87, 'Capsule 7: Introduction aux prestations pharmaceutiques', '12H700', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(88, 'Analyses pharmaceutique-spectroscopies', '12H810', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(89, 'Galénique et Biopharmacie', '12H820', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(90, 'Analyses biologiques médicales', '12H903', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(91, 'Chimie pharmaceutique - TP', '12H906', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(92, 'Informatique et méthodologie', '12H908', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(93, 'Formation interprofessionnelle', '12H950', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(94, 'Algèbre II', '12M010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(95, 'Analyse II  complexe - automne', '12M020A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(96, 'Analyse II  complexe - printemps', '12M020P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(97, 'Analyse II - analyse réelle - automne', '12M025', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(98, 'Analyse II - analyse réelle - printemps', '12M026', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(99, 'Géométrie II - automne', '12M030A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(100, 'Géométrie II - printemps', '12M030P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(101, 'Topologie générale', '12M031', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(102, 'Analyse numérique', '12M040', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(103, 'Probabilités et statistique pour informaticiens', '12M061', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(104, 'Théorie de la mesure et de l\'intégration de Lebesgue', '12M070', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(105, 'Mécanique II', '12P001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(106, 'Mécanique quantique I', '12P005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(107, 'Electrodynamique II', '12P010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(108, 'Méthodes Mathématiques pour Physiciens II', '12P015', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(109, 'Chimie et biochimie de l\'environnement I', '12T001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(110, 'Géochimie', '12T003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(111, 'Géologie régionale', '12T005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(112, 'Energies renouvelables et non-renouvelables', '12T006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(113, 'Géologie structurale - cours', '12T007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(114, 'Géologie sédimentaire', '12T013', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(115, 'Géophysique', '12T208', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(116, 'Géomorphologie', '12T209', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(117, 'Géobotanique', '12T400', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(118, 'Géochimie isotopique I', '12T404', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(119, 'Géomatique', '12T408', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(120, 'Géologie alpine I', '12T500', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(121, 'Géologie régionale II', '12T506', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(122, 'Géologie structurale (cartographie)', '12T507', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(123, 'Géophysique - camp', '12T508', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(124, 'Géomorphologie - excursion', '12T509', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(125, 'Géotraverse I', '12T510', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(126, 'Cartographie géologique', '12T521', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(127, 'Géochimie - TP', '12T903', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(128, 'Géologie structurale - TP', '12T907', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(129, 'Algorithmique', '12X001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(130, 'Concepts et langages orientés objets', '12X003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(131, 'Théorie de l\'information pour la science des données et l\'apprentissage automatique', '12X004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(132, 'Outils formels de modélisation', '12X005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(133, 'Programmation des systèmes', '12X006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(134, 'Sémantique des langages informatiques', '12X008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(135, 'Systèmes informatiques', '12X009', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(136, 'Initiation à l\'informatique et à la bureautique -  pharmaciens', '12X012', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(137, 'Cryptographie et sécurité', '12X014', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(138, 'Applications informatiques', '12X015', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(139, 'Formation documentaire', '12X050', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(140, 'Analyses toxicologiques: notions de base', '1339', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(141, 'Chimie clinique: notions générales et pratiques', '1358', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(142, 'Astronomie et astrophysique. Introduction générale', '13A002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(143, 'Biologie moléculaire de la cellule', '13B001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(144, 'Evolution', '13B002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(145, 'Bioéthique', '13B003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(146, 'Biologie humaine I - Diversité biologique et moléculaire des populations humaines actuelles', '13B004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(147, 'Biologie humaine II- Evolution du genre humain, des origines à nos jours', '13B005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(148, 'Ecologie I - automne', '13B007A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(149, 'Ecologie II - printemps', '13B007P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(150, 'Sujets avancés en génétique moléculaire (Advanced topics in molecular genetics)', '13B010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(151, 'Formation documentaire', '13B801', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(152, 'Biologie moléculaire de la cellule - travaux pratiques', '13B901', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(153, 'Ecologie', '13B907', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(154, 'Chronobiology', '13B908', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(155, 'Génétique moléculaire du développement', '13B909', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(156, 'Chimie physique III', '13C001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(157, 'Chimie minérale II', '13C002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(158, 'Chimie organique II : principes de réactivité et chimie bioorganique I', '13C003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(159, 'Chimie organique III : méthodes de synthèse', '13C004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(160, 'Chimie analytique II - Automne', '13C005A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(161, 'Chimie analytique II - Printemps', '13C005P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(162, 'Biochimie III - Automne', '13C008A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(163, 'Biochimie III - Printemps', '13C008P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(164, 'Bibliographie de BSc chimie/biochimie', '13C401', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(165, 'Chimie thérapeutique', '13H007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(166, 'Chimie thérapeutique - automne', '13H007A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(167, 'Chimie thérapeutique - printemps', '13H007P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(168, 'Chimie analytique pharmaceutique', '13H009', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(169, 'Analyses biomédicales', '13H200', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(170, 'Défenses et immunité', '13H610', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(171, 'Infections', '13H620', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(172, 'Endocrinologie', '13H700', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(173, 'Gynécologie et andrologie', '13H710', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(174, 'Individualisation thérapeutique', '13H800', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(175, 'Algèbre et Géométrie III - Automne', '13M010A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(176, 'Algèbre et Géométrie III - Topologie algébrique', '13M012A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(177, 'Algèbre et Géométrie III - Variétés différentiables', '13M012P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(178, 'Topologie algébrique', '13M013', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(179, 'Géométrie différentielle', '13M014', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(180, 'Probabilités et statistique', '13M016A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(181, 'Probabilités et statistique', '13M016P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(182, 'Analyse III - automne', '13M020A', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(183, 'Analyse III - printemps', '13M020P', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(184, 'Analyse fonctionnelle', '13M021', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(185, 'Mécanique classique pour mathématiciens', '13M070', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(186, 'Mécanique quantique pour mathématiciens', '13M071', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(187, 'Mécanique quantique II', '13P001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(188, 'Mécanique statistique', '13P010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(189, 'Crystallography and Diffraction', '13P040', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(190, 'Bassins sédimentaires', '13T001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(191, 'Changements globaux', '13T002', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(192, 'Géologie de l\'environnement', '13T005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(193, 'Gîtes métallifères II - cours', '13T006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(194, 'Géochimie isotopique', '13T007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(195, 'Géomatique', '13T008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(196, 'Géophysique - cours', '13T009', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(197, 'Ecotoxicologie', '13T020', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(198, 'Géophysique d\'exploration', '13T209', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(199, 'Chimie et biochimie de l\'environnement II', '13T210', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(200, 'Géobotanique', '13T400', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(201, 'Géochimie isotopique II', '13T407', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(202, 'Géophysique d\'exploration - camp', '13T509', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(203, 'Géotraverse II', '13T510', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(204, 'Hydrogéologie - excursion', '13T512', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(205, 'Grand camp de géologie', '13T513', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(206, 'Géologie alpine II', '13T514', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(207, 'Environnement et géobotanique', '13T600', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(208, 'Fouilles archéologiques, stage I, stage d\'initiation', '13T601', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(209, 'Ecologie spatiale', '13T905', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(210, 'Gîtes métallifères II - TP', '13T906', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(211, 'Géochimie isotopique II - TP', '13T907', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(212, 'Gîtes métallifères  - TP', '13T911', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(213, 'Compilateurs et interprètes', '13X001', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(214, 'Génie logiciel', '13X003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(215, 'Imagerie numérique', '13X004', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(216, 'Intelligence artificielle: principes et méthodes', '13X005', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(217, 'Parallélisme', '13X007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(218, 'Projets informatiques', '13X008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(219, 'Réseaux informatiques', '13X009', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(220, 'Data Mining', '13X011', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(221, 'Systèmes concurrents et distribués', '13X012', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(222, 'Galaxies and cosmology - an introduction', '14A033', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(223, 'Biogéographie', '14B007', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(224, 'Flore et végétation: cartographie, analyses et indicateurs', '14B008', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(225, 'Principles of cellular and molecular biology', '14B010', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(226, 'Botanique systématique et pharmaceutique', '14B015', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(227, 'Ecologie microbienne des milieux aquatiques alpines', '14B026', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(228, 'Ethnologie', '14B029', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(229, 'Floristique : chorologie, histoire et connaissance de la flore', '14B033', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(230, 'Hydrobiologie microbienne : Environnement naturel et construit, aspects écologiques, hygiéniques et sanitaires', '14B041', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(231, 'Fouille archéologiques \"Afrique\"', '14B636', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(232, 'Hydrobiologie microbienne : Ecologie microbienne et écologie alpine', '14B641', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(233, 'Anthropologie biologique et culturelle - séminaire', '14B701', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(234, 'Ethnologie - séminaire', '14B729', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(235, 'Eléments d\'endocrinologie moléculaire', '14C003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(236, 'FND Climatic change', '14E150', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(237, 'GEOTOOLS - SDI: Infrastructures de données spatiales', '14E181', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(238, 'MTH_Géomatique 2', '14E214', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(239, 'Méthodes élémentaires', '14M080', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(240, 'Groupes de Lie', '14M114', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(241, 'Théorie des nombres', '14M132', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(242, 'Géométrie Hyperbolique', '14M147', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(243, 'Lie algebras and their representations', '14M161', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(244, 'Algèbres de Hopf', '14M169', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(245, 'L\'informatique au service des maths et de son enseignement', '14M177', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(246, 'Modèles mathématiques pour les humains et les animaux', '14M197', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(247, 'Calcul scientifique pour l\'Electromagnétisme', '14M210', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(248, 'Chapitres choisis de théorie des probabilités', '14M211', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(249, 'Méthodes numériques pour le parallélisme en temps - calculer le futur lointain, sans connaître le futur proche', '14M214', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(250, 'Analyse numérique et analyse fonctionnelle des équations différentielles aux dérivées partielles', '14M216', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(251, 'Invariants quantiques de noeuds', '14M218', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(252, 'Théorie mathématique de la percolation', '14M219', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(253, 'Homologies', '14M233', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(254, 'Low-rank models in scientific simulation and machine learning', '14M235', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(255, 'Statistical machine learning', '14M236', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(256, 'Algebraic number theory', '14M239', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(257, 'Geometry of PDE', '14M241', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(258, 'Chapitres choisis de physique statistique', '14M247', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(259, 'Systèmes sur Réseau et Transitions de phase', '14M248', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(260, 'Théorie spectrale des graphes', '14M249', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(261, 'Introduction to large deviations', '14M250', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(262, 'Groupe de Coxeter', '14M251', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(263, 'Algebraic curves', '14M252', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(264, 'Random matrices at finite N', '14M253', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(265, 'Topic : Spectral Geometry', '14M254', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(266, 'General Relativity', '14P003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(267, 'Classical stochastic methods', '14P006', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(268, 'Group theory for physicists', '14P011', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(269, 'Cosmology', '14P013', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(270, 'Biophotonics', '14P017', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(271, 'Detectors and accelerators', '14P031', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(272, 'Diffraction methods : single crystals and polycrystals', '14P040', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(273, 'Civilisations préhistoriques', '14T003', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(274, 'Archéozoologie I, faunes préhistoriques : la chasse', '14T014', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(275, 'Archéozoologie, faunes préhistoriques : ostéologie comparée', '14T015', 'Faculté des sciences', '2022-04-27', '2022-04-27'),
(276, 'Cas de liaison', '213P002', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(277, 'Connaissances en matière de plagiat', '2232PLA', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(278, 'Enseignement \"Intégration\"', '223A016', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(279, 'Compétences cliniques', '223C100', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(280, 'Compétences cliniques du 2e semestre', '223C200', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(281, 'Compétences cliniques', '223C300', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(282, 'Compétences cliniques du 2e semestre', '223C400', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(283, 'Dimensions Communautaires', '223D100', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(284, 'Dimensions Communautaires du 2e semestre', '223D200', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(285, 'Dimensions Communautaires', '223D300', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(286, 'Dimensions Communautaires du 2e semestre', '223D400', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(287, 'Compétences en communication scientifique', '223E001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(288, 'Enseignement interprofessionnel 1', '223IP001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(289, 'Cours à option - 1er semestre', '223O001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(290, 'Cours à option - 2e semestre', '223O002', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(291, 'Cours à option \"libre\" - 1er semestre', '223O003', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(292, 'Cours à option \"libre\" - 2e semestre', '223O004', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(293, 'Histoire, médecine et société: une approche à des problèmes contemporains', '223O104', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(294, 'Bioéthique (A)', '223O108', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(295, 'Bioéthique (P)', '223O109', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(296, 'Art et Médecine - Le corps et ses limites : entre médecine et art', '223O111', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(297, 'Art et Médecine - La scène de folie à l\'opéra', '223O112', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(298, 'Histoire et médecine: éthique et pratique médicales au 18e siècle', '223O114', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(299, 'Art et Médecine: art, musique et corps', '223O116', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(300, 'Histoire et Médecine: de la folie au DSM', '223O117', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(301, 'Figures de la folie. De l\'Antiquité au XXIème siècle', '223O120', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(302, 'Histoire et médecine : La mélancolie au carrefour de la peinture, de la musique, de l\'histoire et de la psychiatrie', '223O121', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(303, 'D\'Hippocrate au Docteur 2.0. Les rôles du médecin hier, aujourd\'hui... et demain', '223O125', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(304, 'Bioéthique', '223O126', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(305, 'Genève médicale. La ville, les maladies et l\'hygiène à travers le temps', '223O132', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(306, 'Anthropologie de la médecine', '223O133', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(307, 'Ecoutez voir ! Le sens et les arts dans la période contemporaine', '223O135', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(308, 'Bâtir pour guérir. L\'architecture hospitalière occidentale entre la Renaissance et le XXIe siècle', '223O141', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(309, 'Genre, santé, inégalités: perspectives interdisciplinaires', '223O147', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(310, 'Images de la brutalité, brutalité des images. Montrer la mort et la violence de masse (XIXe \' XXIe siècle)', '223O148', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(311, 'Ethics and biomedical research', '223O151', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(312, 'Ces crises qui ont fait l\'humanitaire : une histoire au présent ***', '223O152', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(313, 'Du corps réparé au corps augmenté. Médecine, littérature, cinéma', '223O156', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(314, 'Comprendre le numérique: Cours transversal 1', '223O158', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(315, 'Comprendre le numérique: Cours transversal 2', '223O159', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(316, 'Développement Durable 1', '223O160', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(317, 'Biodiversité dans le temps et l\'espace, des singularités de notre système solaire à l\'anthropocène', '223O161', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(318, 'De la peste au coronavirus : pourquoi l\'histoire de l\'expérience des épidémies passées est-elle pertinente aujourd\'hui ?', '223O162', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(319, 'Clinicien·ne ou Enseignant·e ? Et pourquoi pas les deux ?', '223O165', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(320, 'Genre et action humanitaire : rencontrer les témoins de l\'histoire', '223O168', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(321, 'Développement Durable II', '223O170', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(322, 'Elaborer et évaluer une brochure de prévention ou d\'information aux patients', '223O201', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(323, 'Enjeux et défis du vieillissement: entre individu, population et politique', '223O207', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(324, 'Air ambiant et santé', '223O210', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(325, 'Comprendre et critiquer un article scientifique (A)', '223O211', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(326, 'Comprendre et critiquer un acrticle scientifique (P)', '223O212', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(327, 'Genomic Medicine and Public Health', '223O214', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(328, 'Environnement, santé et inégalités sociales', '223O216', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(329, 'Elaborer un document de prévention ou d\'information aux patients', '223O218', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(330, 'Atelier pratique : réaliser une action de prévention hors les murs', '223O223', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(331, 'Communication en santé', '223O224', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(332, 'Big five et évaluation médico-technologique en santé (A)', '223O226', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(333, 'Big five et évaluation médico-technologique en santé (P)', '223O227', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(334, 'From the single digit to the overall graphic : How to avoid drowning in data', '223O229', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(335, 'De la Santé Planétaire à la pratique clinique', '223O230', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(336, 'Concepts et défis en santé globale', '223O231', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(337, 'Imagerie forensique', '223O232', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(338, 'Inflammation: de l\'asthme aux maladies auto-immunes et auto-inflammatoires', '223O302', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(339, 'Initiation à la recherche en neurosciences psychiatriques (cliniques et fondamentales)', '223O303', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(340, 'Anatomie clinique', '223O304', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(341, 'Dans les coulisses des nouvelles technologies médicales', '223O307', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(342, 'Diagnostique physiopathologique de troubles hydroélectrolytiques', '223O312', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(343, 'Imagerie des maladies hépatiques', '223O315', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(344, 'Chrirurgie plastique: du laboratoire à la clinique', '223O316', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(345, 'Elements of Proteomics and Metabolomics: translation to human diseases', '223O317', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(346, 'Génétique Médicale II (niveau avancé)', '223O321', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(347, 'Analyse du mouvement humain : concepts, expérimentations et interprétation clinique', '223O324', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(348, 'Chirurgie plastique: de la clinique au laboratoire', '223O332', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(349, 'Comment développer l\'innovation en Radiothérapie ? De la physique à la biologie jusqu\'au lit du patient', '223O334', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(350, 'Chirurgie orthopédique et nouvelles technologies : sélection et évaluation des implants', '223O335', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(351, 'De la douleur aiguë à la douleur chronique: méthodes de traitement minimalement invasif de lutte contre la chronicisation de la douleur (A)', '223O404', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(352, 'De la douleur aiguë à la douleur chronique: méthodes de traitement minimalement invasif de lutte contre la chronicisation de la douleur (P)', '223O405', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(353, 'Anesthésiologie et Médecine péri-opératoire: au carrefour de la physiologie et de la pharmacologie appliquées (P)', '223O408', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(354, 'Dépistage et prise en charge de la douleur dans différents services cliniques', '223O409', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(355, 'Anesthésiologie et Médecine péri-opératoire: au carrefour de la physiologie et de la pharmacologie appliquées (A)', '223O410', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(356, 'Human Factors Engineering in Medicine', '223O412', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(357, 'Comprendre l\'IRM: du principe physique à la détection de pathologie', '223O415', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(358, 'Imagerie par échographie : de la compréhension de la technique à l\'application en clinique', '223O416', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(359, 'Intégration de l\'anatomie fonctionnelle et palpatoire dans des situations cliniques musculo-squelettique', '223O417', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(360, 'Cardiologie pratique', '223O422', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(361, 'Dépistage et prise en charge de la douleur dans différents services cliniques', '223O423', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(362, 'Immersion en recherche clinique', '223O427', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(363, 'Histologie (A)', '223O502', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(364, 'Histologie (P)', '223O503', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(365, 'Du neurone au patient', '223O509', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(366, 'Eléments d\'endocrinologie moléculaire I', '223O510', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(367, 'Biologie cellulaire médicale approfondie: les routes vers le cancer et autres pathologies', '223O514', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(368, 'Analyse et communication scientifique, écrire pour être lu', '223O516', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(369, 'Eléments d\'endocrinologie moléculaire II', '223O525', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(370, 'Initiation à la recherche expérimentale', '223O527', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(371, 'Aide à la décision informatisée: \"The Good, the Bad and the Ugly\"', '223O528', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(372, 'De l\'éloquence à l\'évidence: la médecine factuelle au quotidien', '223O529', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(373, 'Approfondissement de connaissances en Biophysique « Les lois physiques à l\'oeuvre dans le monde vivant » (P)', '223O532', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(374, 'Intelligence Artificielle : Santé et Sociétés', '223O539', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(375, 'Enseignement \"Immersion en Communauté\"', '223P100', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(376, 'Apprentissage linguistique en anglais : niveau C1', '22BM_AN_C1', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(377, 'Biologie et Biotechnologie I', '22BM001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(378, 'Biologie et Biotechnologies II', '22BM005', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(379, 'Biochimie des protéines', '22BM012', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(380, 'Fermentation', '22BM014', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(381, 'Biologie moléculaire', '22BM015', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(382, 'Croissance et vieillissement cellulaire', '22BM021', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(383, 'Coeur et circulation', '22BM024', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(384, 'Excrétion homéostasie', '22BM025', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(385, 'Biologie et société : Les enjeux actuels des sciences de la vie', '22BM031', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(386, 'Biologie et société I', '22BM031A', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(387, 'Biologie et société II', '22BM031B', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(388, 'Droit du vivant', '22BM032', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(389, 'Ateliers d\'écriture scientifique', '22BM042', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(390, 'Communication - Compétences humaines I', '22BM043', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(391, 'Génétique médicale', '22BM051', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(392, 'Biologie du génome humain', '22BM052', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(393, 'Fonctionathon', '22BM054', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(394, 'Biochimie des lipides', '22BM055', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(395, 'Défense et immunité', '22BM063', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(396, 'Infections', '22BM064', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(397, 'Droit des contrats', '22BM071', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(398, 'Economie et système de santé', '22BM072', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(399, 'Analyse d\'articles scientifiques', '22BM082', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(400, 'Création de fiches Orphanet', '22BM083', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(401, 'Communication skills for biomedical science', '22BM084', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(402, 'Communication - Compétences humaines II', '22BM085', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(403, 'Cariologie, Endodontie', '2340001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(404, 'Chirurgie orale', '2340002', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(405, 'Clinique médicale', '2340003', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(406, 'Examen écrit', '2340006', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(407, 'Chirurgie générale', '2340007', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(408, 'Compétences pré-cliniques', '234C001', 'Faculté de médecine', '2022-04-27', '2022-04-27'),
(409, 'Héros et anti-héros au Moyen Age (cours public)', '30B0034', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(410, 'Dire l\'indicible : le génocide des Arméniens dans la littérature et au cinéma', '30G4075', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(411, 'Français Langue d\'intégration (cycle de conférences)', '31EL5001', 'Ecole de langue et de civilisation françaises', '2022-04-27', '2022-04-27'),
(412, 'Huysmans, \"A rebours\"', '32A0021', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(413, 'Atelier d\'Ecriture - Ecriture littéraire', '32A0029', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(414, 'Chamfort, « Maximes et pensées », « Caractères et anecdotes »', '32A0068', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(415, 'Catherine Colomb, Le Temps des anges (1962)', '32A0094', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(416, 'Adapter Flaubert et Maupassant au cinéma', '32A0135', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(417, 'Formes de l\'argumentation critique', '32A0152', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(418, 'Éléments de phonétique historique', '32B0079', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(419, 'Balades aux temps jadis : « Lais et Testament » de François Villon', '32B0113', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(420, 'Grammaire historique du français (morphologie et syntaxe historiques, des origines à la modernité)', '32B0116', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(421, 'Aux origines des littératures romanes', '32B0123', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(422, 'Entre poésie lyrique et nouvelle: les novas rimadas en ancien occitan', '32B0125', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(423, 'Approches du texte médiéval', '32B0127', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(424, '« Le Roman de Fergus » : parodie des oeuvres de Chrétien de Troie', '32B0128', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(425, 'Ardeur d\'amour, ardeur de jeu : « Tristan et Iseult » de Béroul', '32B0129', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(426, '« Le conte du Papegau » : Arthur, Chevalier au Perroquet', '32B0130', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(427, 'TP en relation avec le cours 32C1125', '32C1126', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(428, 'Histoire et épistémologie de la linguistique', '32C1127', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(429, 'Grammaire pour le texte', '32C1173', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(430, 'Informatique II', '32C2034', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(431, 'Informatique II - Séminaire de programmation Java', '32C2035', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(432, 'Travaux pratiques : Informatique II', '32C2036', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(433, 'Projet de programmation orientée objet', '32C2037', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(434, 'Nouvelles technologies de l\'information et de la communication', '32C2038', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(435, 'Travaux pratiques : NTIC', '32C2039', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(436, 'Développement web', '32C2064', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(437, 'Programmation Web', '32C2065', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(438, 'Algorithmique et programmation', '32C2066', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(439, 'Travaux pratiques : Algorithmique et programmation', '32C2067', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(440, 'Bases de données - Modélisation des systèmes d\'information et des services', '32C2117', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(441, 'Base de données', '32C2118', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(442, 'Projet en Nouvelles technologies de l\'information et de la communication (NTIC)', '32C2154', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(443, 'Projet en Nouvelles technologies de l\'information et de la communication', '32C2155', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(444, 'Projet de programmation avec les langes de script: TP', '32C2183', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(445, 'Méthodes empiriques et langages de script : TP en lien avec le cours', '32C2184', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(446, 'Méthodes empiriques et langages de script', '32C2185', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(447, 'Durch die Blume gesprochen: Die Lyrik Heinrich Frauenlobs', '32D0259', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(448, 'Gattungsinterferenzen in Gottfrieds Tristanroman', '32D0260', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(449, 'Aufbaukurs Schwerpunkt Schreiben Stufe I', '32D0261', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(450, 'Aufbaukurs Schwerpunkt Sprechen, Stufe I', '32D0262', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(451, 'Aufbaukurs Schwerpunkt Schreiben Stufe II', '32D0263', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(452, 'Aufbaukurs Schwerpunkt Sprechen Stufe II 	 	', '32D0264', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(453, 'Deutschprachige Kurzprosa', '32D0273', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(454, 'Digitale Kommunikationspraktiken', '32D0277', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(455, 'Deutsch International', '32D0294', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(456, 'Grammatik der gesprochenen Sprache', '32D0295', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(457, 'Das Drama als Schauplatz sozialer Konflikte', '32D0297', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(458, 'English Linguistics', '32E0020', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(459, 'Film Club related to Introduction to the Study of Literature', '32E0109', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(460, 'An Introduction to English Literature, 1500-1800', '32E0115', 'Faculté des lettres', '2022-04-27', '2022-04-27');
INSERT INTO `Cours` (`id`, `nom`, `code`, `faculte`, `created_at`, `updated_at`) VALUES
(461, 'An Introduction to English Literature, 1500-1800', '32E0116', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(462, 'Film Cycle Related to BA5, BA6 and BA7 Seminars', '32E0132', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(463, 'Analysis of Texts', '32E0270', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(464, 'Composition (Academic and Critical Writing Skills)', '32E0271', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(465, 'Colonial and Postcolonial Literatures', '32E0290', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(466, 'American Literature Since 1497', '32E0292', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(467, 'American Literature Since 1497', '32E0293', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(468, 'American Literary Counter-Voices', '32E0295', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(469, 'American Literary Counter-Voices', '32E0296', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(470, 'American Literary Counter-Voices', '32E0297', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(471, 'Contemporary Beowulfs', '32E0302', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(472, 'Approaches to Romeo and Juliet', '32E0318', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(473, 'Eighteenth-Century Female Adventurers', '32E0322', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(474, 'American Literary Counter-Voices', '32E0334', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(475, 'American Literary Counter-Voices', '32E0335', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(476, 'Ciencia ficción española', '32F1015', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(477, 'A 1.5 metros de distancia : el teatro sobre la pandemia de COVID-19', '32F1169', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(478, 'El oficio de lector en el policial y neopolicial hispanoamericanos', '32F1275', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(479, 'Historia del Teatro español del siglo de Oro', '32F1277', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(480, 'El Quijote', '32F1278', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(481, 'Entre la historia y la ficción: el canibalismo en la conquista de América', '32F1281', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(482, 'Diacronía del español', '32F1282', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(483, 'Historia de la literatura de la Edad Media y el Renacimiento', '32F1285', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(484, 'Grammaire I', '32F1291', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(485, 'Análisis de textos literarios I', '32F1345', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(486, 'Análisis de textos literarios II', '32F1346', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(487, 'Grammaire 2', '32F1347', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(488, 'Análisis del discurso', '32F1348', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(489, 'Don Giovanni dal teatro all\'opera', '32F2366', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(490, 'Alberto Savinio fra mito e parodia', '32F2367', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(491, 'Fotografia e letteratura: Un paese, 1955', '32F2377', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(492, 'Forme e strategie dell\'argomentare', '32F2382', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(493, 'Identità, varietà, strutture dell\'italiano', '32F2385', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(494, 'Grammatica e lingua scritta : parole, frasi e testi dell\'italiano', '32F2387', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(495, 'I primi romanzi di Lalla Romano', '32F2389', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(496, 'Cours de langue I. Réception écrite et orale', '32F5056', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(497, 'Cours de langue II. Production orale et lecture de textes', '32F5057', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(498, 'Du \"latin corrompu\" ou moitié français et moitié italien ? L\'intérêt scientifique historique pour le rhéto-roman et les successives tentatives d\'unification', '32F5058', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(499, 'Initiation à la langue roumaine et pratique du roumain / Introduction to Romanian and Speaking Romanian', '32F6323', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(500, 'Culture et civilisation roumaines', '32F6324', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(501, 'Chinese Pre-Modern History', '32FU020', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(502, 'Chinese Modern History', '32FU021', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(503, 'Grammaire et analyse de textes', '32G1110', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(504, 'Expression orale et exercices de phonétique', '32G1111', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(505, 'Expression orale, pratique écrite et analyse de texte', '32G1115', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(506, 'Grammaire', '32G1116', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(507, 'Arabe des médias', '32G1117', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(508, 'Conversation arabe sur les textes littéraires', '32G1522', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(509, 'Chrétiens et juifs de la Méditerranée ottomane et post-ottomane', '32G2385', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(510, 'Histoire et civilisation de la Grèce et du monde grec contemporains, 1ère partie', '32G2494', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(511, 'Histoire et civilisation de la Grèce et du monde grec contemporains, 2ème partie', '32G2495', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(512, 'Initiation à la langue I', '32G2496', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(513, 'Exercices de rédaction I', '32G2498', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(514, 'Expression orale I', '32G2499', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(515, 'Explication de textes littéraires', '32G2501', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(516, 'Initiation à la langue II: morphologie, syntaxe, vocabulaire', '32G2502', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(517, 'Expression orale II', '32G2503', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(518, 'Exercices de rédaction II', '32G2504', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(519, 'De la \"Rous de Kiev\" à l\'Empire russe (9e - 18e siècles)', '32G3319', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(520, 'De l\'Empire russe à l\'URSS (19e - 20e siècles)', '32G3320', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(521, 'Grammaire pour russophones', '32G3394', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(522, 'Histoire de la littérature russe des origines au XVIIIe siècle', '32G3396', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(523, 'Femmes et féminisme en Russie soviétique/URSS (1917-1991)', '32G3398', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(524, 'Fiodor Dostoïevski, \"Les Carnets du sous-sol\"', '32G3404', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(525, 'De la Révolution à la formation de l\'Union soviétique (1917-1922)', '32G3410', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(526, 'Initiation à la langue arménienne ancienne I', '32G4072', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(527, 'Histoire des idées et des élites arméniennes à travers l\'histoire de l\'écrit et du livre (de l\'Antiquité à l\'époque moderne)', '32G4073', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(528, 'Initiation à la langue arménienne moderne occidentale I', '32G4079', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(529, 'Initiation à la langue arménienne moderne occidentale II, avec lecture et interprétation de textes littéraires', '32G4081', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(530, 'Initiation à la langue arménienne moderne', '32G4084', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(531, 'Encadrement personnalisé', '32G4173', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(532, 'Géopolitique du Caucase contemporain', '32G4246', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(533, 'Initiation au chinois moderne I', '32G5425', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(534, 'eTandem Wuhan - Genève & Paris', '32G5427', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(535, 'Grammaire, expression orale et écrite', '32G5428', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(536, 'Grammaire', '32G5432', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(537, 'Composition', '32G5434', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(538, 'Initiation au chinois classique', '32G5436', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(539, 'Initiation aux études chinoises', '32G5437', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(540, 'Grandes oeuvres de la littérature chinoise (en traduction)', '32G5438', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(541, 'Initiation au chinois moderne II : apprentissage des caractères / Introduction to Modern Chinese 2: Characters', '32G5443', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(542, 'Histoire de l\'Etat chinois, de l\'âge du bronze à la guerre de l\'opium', '32G5449', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(543, 'Histoire de la littérature chinoise moderne (1890 - 2000)', '32G5453', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(544, 'Histoire d\'un Empire multiethnique (1644-1911) : archives, recherches et débats', '32G5457', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(545, 'Aspects de l\'histoire est-asiatique', '32G6016', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(546, 'Grammaire du japonais moderne I', '32G6460', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(547, 'Grammaire du japonais moderne II', '32G6461', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(548, 'Expression orale et écrite II', '32G6462', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(549, 'Conversation japonaise', '32G6472', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(550, 'Ecriture et lexicographie I', '32G6474', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(551, 'Expression orale et écrite I', '32G6475', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(552, 'Ecriture et lexicographie II', '32G6476', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(553, 'Ecriture et lexicographie III', '32G6477', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(554, 'Expression orale et écrite III', '32G6478', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(555, 'Grammaire du japonais moderne III', '32G6480', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(556, 'Grammaire du japonais classique', '32G6487', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(557, 'Histoire des religions du Japon', '32G6490', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(558, 'Histoire de la Corée', '32G8238', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(559, 'Héros ou anti-héros? Martyrs et moines à Byzance', '32H1107', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(560, 'Histoire générale de la littérature grecque', '32H1390', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(561, 'Initiation à la langue grecque, niveau élémentaire', '32H1391', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(562, 'Initiation à la langue grecque niveau élémentaire : exercices complémentaires', '32H1456', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(563, 'Initiation à la langue grecque, niveau approfondi', '32H1458', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(564, 'Ecdotique (établissement de textes grecs: inscriptions, papyrus littéraires, manuscrits médiévaux)', '32H1461', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(565, 'Grammaire comparée des langues indo-européennes', '32H1462', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(566, 'Deux orateurs athéniens face à la puissance macédonienne : Lycurgue et Hypéride', '32H1505', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(567, 'Culture latine', '32H2024', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(568, 'Histoire du latin', '32H2027', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(569, 'Exercices associés au séminaire de langue latine', '32H2040', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(570, 'Histoire de la littérature latine', '32H2041', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(571, 'Cicéron : ascension, gloire et chute d\'un \"homme nouveau\"', '32H3010', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(572, 'Dans l\'ombre de l\'Etna : La Sicile à l\'époque grecque', '32H3422', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(573, 'Dans l\'ombre de Rome : cités et royaumes d\'Asie Mineure au IIe et au Ier siècles av. J.-C.', '32H3508', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(574, 'Exercices de comparaison. Dieux, puissances, instances. La construction de « l\'agentivité » dans les sociétés humaines', '32H4332', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(575, 'Anthropologie comparée des Polythéismes. Introduction', '32H4333', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(576, 'Histoire et anthropologie des spectres', '32H4337', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(577, 'Concepts fondamentaux, notions de base et histoire de la discipline', '32H4338', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(578, 'Anthropologie religieuse II: mythes d\'origine', '32H4340', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(579, 'Entre Inde et Europe : Cultures et religions en contact (époque antique)', '32H4381', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(580, 'Anthropologie religieuse I : paradigmes, catégories, questions', '32H4427', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(581, 'Anthropologie comparée des Polythéismes II. Recherches sur les cultures sacrifiantes', '32H4428', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(582, 'Identités de genre dans les traditions hindoues (Asie du Sud thématique)', '32H4512', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(583, 'Anthropologie des religions : Par-delà l\'animisme, des vécus localisés aux « religions de la nature » globalisées', '32H4515', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(584, 'Galout : les pensées de l\'Exil dans la tradition juive', '32H4516', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(585, 'Apprivoiser la mort par le rite ? De l\'agonie au deuil : histoire de l\'encadrement rituel de la mort (XVIe-XXIe siècles) I', '32H4517', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(586, 'Apprivoiser la mort par le rite ? De l\'agonie au deuil : histoire de l\'encadrement rituel de la mort (XVIe-XXIe siècles) II', '32H4518', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(587, 'Hérésie et pluralisme religieux en Islam', '32H4519', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(588, 'Etude du mobilier archéologique: méthodologies et pratiques', '32H5310', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(589, 'Acquisition des éléments fondamentaux de la langue copte saïdique. Langue copte', '32H6480', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(590, 'Acquisition des éléments complexes de la langue copte saïdique et lecture de textes. Langue copte', '32H6481', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(591, 'Grammaire de l\'égyptien classique I', '32H6489', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(592, 'Grammaire de l\'égyptien classique II', '32H6491', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(593, 'Initiation à l\'écriture et à la discussion philosophique', '32I0097', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(594, 'Introduction à la logique', '32I0101', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(595, 'TP en relation avec le cours : \"Introduction à la logique\"', '32I0102', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(596, 'Emmanuel Kant', '32I0159', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(597, 'Cours général III : Histoire moderne', '32J0015', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(598, 'Circulations et mobilité dans l\'Atlantique à l\'époque moderne', '32J0053', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(599, 'Conquérir les esprits et les coeurs: histoire de la diplomatie culturelle (XIXe - XXIe s.)', '32J0275', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(600, 'Cours général : Histoire de la Suisse / General Course: History of Switzerland', '32J0337', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(601, 'Atelier pour mémorant-e-s et doctorant-e-s / Workshop for Writers of Theses and Dissertations', '32J0344', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(602, 'Histoire transnationale des médias 1400-1800', '32J0389', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(603, 'Faire et défaire la nation : l\'Europe du XIXe-XXe siècle à l\'heure du nationalisme', '32J0405', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(604, 'Former et éduquer à la fin du Moyen Âge', '32J0411', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(605, 'Humanitaire, « race » et politique : la Croix-Rouge et l\'Afrique subsaharienne (XIXe-XXe siècles)', '32J0414', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(606, 'Histoire d\'un monde supernaturel? \"Sorcellerie\" et religion dans l\'histoire africaine et afroaméricaine', '32J0419', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(607, 'Faire la guerre : armes, combats et combattants à l\'époque moderne (XVIe-XVIIIe siècles)', '32J0431', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(608, 'Atelier de préparation au travail de recherche en histoire médiévale', '32J0437', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(609, 'De la cité barbare à la ville princière : Genève et l\'Europe au Moyen Âge', '32J0439', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(610, 'Filles-mères, prostituées, ivrognes et fainéants: figures de l\'exclusion en Suisse (19e-20e)', '32J0445', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(611, 'De la conquête à la décolonisation : histoire du colonialisme européen en Afrique', '32J0449', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(612, 'Cours général IV: Histoire conteporaine', '32J0460', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(613, 'D\'encre et de sang. Histoire du livre et polémiques (XVè-XVIIIè siècle)', '32J0463', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(614, 'Conditions de vie et luttes féminines en Suisse (19e-20e siècles)', '32J0464', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(615, 'Abus, déviances et sorcellerie dans le monde alpin (XVe-début XVIe s.) : entre réforme et répression', '32J0467', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(616, 'Entre les monts, le monde des principautés alpines (XIV-début XVIe s.)', '32J0468', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(617, 'Diffuser/censurer les opinions : les imprimés dans les débats religieux et politiques au XVIIe siècle', '32J0472', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(618, 'Indigènes, ruraux et citoyens : une histoire sociale de l\'Afrique de l\'Ouest après 1945', '32J0476', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(619, 'Histoire de l\'art médiéval I', '32K1250', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(620, 'Histoire de l\'art médiéval II', '32K1251', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(621, 'Face au mur : l\'art mural en France (1870-1945)', '32K1386', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(622, 'De Dürer à Goya : introduction à l\'histoire et aux techniques de l\'estampe de la période moderne', '32K1450', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(623, 'Image, corps, performance: 1950-1990', '32K1455', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(624, 'Artistes ou ménagères ? Travail créatif et travail reproductif dans les pratiques artistiques des femmes de l\'après-guerre à nos jours', '32K1468', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(625, 'Grammaire et histoire musicale I', '32K2010', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(626, 'Grammaire et histoire musicale III', '32K2012', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(627, 'Histoire de la notation I', '32K2015', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(628, 'Histoire de la notation II', '32K2016', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(629, 'Grammaire et histoire musicale II', '32K2125', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(630, 'Initiation à la médiation musicale (en collaboration avec la HEM Genève)', '32K2443', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(631, 'Grammaire et histoire musicale IV', '32K2470', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(632, 'Enjeux écologiques dans la musique et la musicologie', '32K2471', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(633, 'Comparaison et pratique des textes', '32L1080', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(634, 'Comparer les média : une introduction', '32L1088', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(635, 'Grammaire I', '32M1001', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(636, 'Construction et usage du lexique', '32M1011', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(637, 'Français en contact et plurilinguisme', '32M1024', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(638, 'Français et politique linguistique', '32M1025', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(639, 'Analyse du discours et des interactions: travaux pratiques', '32M1097', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(640, 'Etude et pratique des écrits académiques', '32M1098', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(641, 'Etude et pratique des écrits académiques: travaux pratiques', '32M1099', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(642, 'Grammaire II', '32M1100', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(643, 'Grammaire(s): observation critique', '32M1103', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(644, 'Histoire critique des méthodologies en didactique des langues', '32M1104', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(645, 'Différenciation sociolinguistique et diversité francophone', '32M1110', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(646, 'Français en Suisse | Français de Suisse : perspectives socio-didactiques en langue seconde / étrangère', '32M1120', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(647, 'Histoire de l\'idée européenne', '32M5076', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(648, 'Antonin Artaud : « Van Gogh le suicidé de la société » et autres textes', '34A0110', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(649, 'Formes et forces: la critique de Jean Rousset', '34A0128', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(650, 'Arthur Schnitzlers Erzählwerk (séminaire de méthodologie)', '34D0275', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(651, 'Goethes \'Leiden des jungen Werther(s)`', '34D0293', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(652, 'Aus der Erschöpfung heraus erzählen: Anna Seghers\' Exilprosa', '34D0298', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(653, 'Guess the language! Introduction to inductive methodology in linguistic research', '34E0325', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(654, 'Gli aforismi nel Novecento', '34F2378', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(655, 'Il \"Cortegiano\" di Baldassarre Castiglione', '34F2379', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(656, 'Imaginer le monde arabe - entre fondements théoriques et représentations visuelles', '34G1304', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(657, 'Figures féministes historiques et mouvements de femmes contemporains dans le monde arabe', '34G1513', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(658, 'Du Prophète au 21e siècle: concepts clés pour comprendre l\'islam aujourd\'hui', '34G1521', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(659, 'De la conscience souterraine à la conscience dédoublée: F. Dostoïevski (seconde période)', '34G3401', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(660, 'Actualité, débats et censure en Chine actuelle : lecture d\'articles de presse et d\'Internet', '34G5441', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(661, 'Cas judiciaires : sexe, crimes et société en Chine du 17e au 19e siècle', '34G5444', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(662, 'En images et en mots : la Chine à travers ses séries télévisées et romans contemporains', '34G5446', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(663, 'Histoire de la littérature japonaise / History of Japanese Literature', '34G6482', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(664, 'Emprise et possession. Réflexions sur la scène possessionnelle dans les sociétés antiques. Une approche comparatiste', '34H4336', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(665, 'Entre Inde et Europe : Cultures et religions en contact (époque médiévale)', '34H4344', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(666, 'Droit de l\'archéologie et des musées : aspects suisses et internationaux', '34H5319', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(667, 'Enquêtes archéologiques', '34H6497', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(668, 'Corpus varié', '34H7498', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(669, '\"Déterminisme et responsabilité morale\"', '34I0179', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(670, 'Initiation à l\'édition de sources historiques (XVIe s.) / Introduction to the Publication of Historic Sources (16th Century)', '34J0342', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(671, 'Former les élites chrétiennes. Âge, genre et classes sociales dans les écrits d\'Erasme', '34J0452', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(672, 'De l\'archive à la construction de l\'objet: enjeux et pratiques de la recherche en histoire moderne (atelier de préparation au travail de recherche)', '34J0461', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(673, 'De l\'esclavage à l\'exploitation humaine. Les différentes formes de travail forcé à l\'ère contemporaine (XIXe siècle)', '34J0465', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(674, 'De l\'esclavage à l\'exploitation humaine. Les différentes formes de travail forcé à l\'ère contemporaine (XXe siècle)', '34J0479', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(675, 'Initiation au monde artistique iranien : l\'art persan des premières époques islamiques jusqu\'au 16e siècle', '34K1400', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(676, 'De l\'occidentalisme à l\'occidentalisation : La peinture persane du 16e siècle à nos jours', '34K1401', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(677, 'Dante poète du 20ème siècle, Mandelstam, Levi, Pound', '34L1077', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(678, 'Héros et anti-héros du Moyen Âge latin', '34L5042', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(679, 'Héros et anti-héros dans les littératures latine et française', '34L5043', 'Faculté des lettres', '2022-04-27', '2022-04-27'),
(680, 'Histoire du droit', '5004', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(681, 'Fondements romains du droit privé', '5009', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(682, 'Droit des personnes physiques et de la famille', '5010', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(683, 'Droit des obligations', '5011', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(684, 'Droit des obligations', '5011B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(685, 'Droits réels', '5012', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(686, 'Contrats spéciaux', '5015B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(687, 'Droit des sociétés', '5025', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(688, 'Droit international privé', '5034', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(689, 'Droit constitutionnel', '5051', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(690, 'Droit administratif', '5052', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(691, 'Droit fiscal international et comparé', '5057B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(692, 'Histoire de la pensée juridique et politique', '5060AB', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(693, 'Droit international public', '5064', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(694, 'Droit pénal général', '5069', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(695, 'Droit pénal spécial I : infractions contre le patrimoine', '5071', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(696, 'Droit des assurances privées', '5090B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(697, 'Droit des constructions et du logement', '5123B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(698, 'Droit des sociétés et comptabilité', '5134', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(699, 'Droit de l\'art et des biens culturels: aspects suisses et internationaux', '5155B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(700, 'Droit pénal international, crimes internationaux et justice transitionnelle', '5183B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(701, 'Eléments fondamentaux de procédure civile et pénale', '5237', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(702, 'Droit du travail', '5242', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(703, 'Droit de la sécurité sociale II', '5245B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(704, 'Exercices préparatoires à la rédaction juridique', '5326', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(705, 'Droit de l\'Union européenne', '5343B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(706, 'Economie et droit', '5344B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(707, 'Exécution forcée', '5346', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(708, 'Droit fiscal', '5348', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(709, 'Droit de la sécurité sociale', '5351', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(710, 'Allemand juridique', '5352', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(711, 'Droits fondamentaux', '5392', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(712, 'Droit patrimonial de la famille', '5393', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(713, 'Droit suisse de la concurrence', '5451', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(714, 'Histoire comparée du droit privé', '5652B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(715, 'Droit et numérique', '5653B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(716, 'Droit de la protection des données personnelles et de la cybersécurité', '5654B', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(717, 'Comprendre le numérique : cours transversal 1 (CN 1)', '5869', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(718, 'Comprendre le numérique : cours transversal 2 (CN 2)', '5870', 'Faculté de droit', '2022-04-27', '2022-04-27'),
(719, 'Histoire des religions du Japon', '6_32G6490', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(720, 'Faire Église à distance, ne pas le faire, le faire aussi, le faire bien, le faire mieux.', '6_BTP22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(721, 'Deutéronome', '6BAT22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(722, '« \' et la femme était d\'une bonne intelligence et belle de figure » (1 S 25,3).  Les protagonistes féminins dans les livres de Samuel', '6BAT23', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(723, 'Le Bien, le Juste, l\'Utile. Introduction aux éthiques philosophiques', '6BET11', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(724, 'Atelier de lectures en éthique philosophique', '6BET12', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(725, 'Éthique théologique et dissensus ecclésial', '6BET21', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(726, 'Grec I : Initiation au grec de la koinè', '6BGR1', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(727, 'Grec I : Initiation au grec de la koinè', '6BGR11', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(728, 'Grec I : Exercices', '6BGR12', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(729, 'Grec II : Lecture de textes de la koinè', '6BGR2', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(730, 'Atelier de lecture de textes en histoire du christianisme', '6BHC12', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(731, 'Histoire croisée de la liberté religieuse et du christianisme à l\'époque contemporaine', '6BHC22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(732, 'Hébreu I', '6BHE1', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(733, 'Hébreu II', '6BHE2', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(734, '\"Conflict management\" à la Paul. Une lecture de la deuxième épître de Paul aux Corinthiens', '6BNT22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(735, 'Destination Patmos - Lecture grecque de l\'Apocalypse de Jean', '6BNT24', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(736, 'Initiation aux concepts fondamentaux de la philosophie II', '6BPH1B', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(737, 'Hommes et spiritualité', '6BSP22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(738, 'Anthropologie théologique', '6BTS22', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(739, 'Champ religieux A - Introduction aux religions du Japon', '6DCRA', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(740, 'Champ religieux B - Introduction aux polythéismes antiques. Les religions des cités grecques', '6DCRB', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(741, 'Grec I', '6DGR1', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(742, 'Grec II', '6DGR2', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(743, 'Grec III', '6DGR3', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(744, 'Hébreu biblique I', '6DHE1', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(745, 'Hébreu biblique II', '6DHE2', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(746, 'Hébreu biblique III', '6DHE3', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(747, 'Introduction à l\'histoire des religions', '6DHR', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(748, 'Initiation aux concepts fondamentaux de la philosophie', '6DPH1', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(749, 'Dieu et la facticité du mal', '6DPH2', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(750, 'Femmes et spiritualité (XXe-XXIe siècles)', '6DSP', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(751, 'Dieu', '6DTS3', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(752, 'Araméen I', '6MAT44', 'Faculté autonome de théologie protestante', '2022-04-27', '2022-04-27'),
(753, 'Bases neuroanatomiques et physiologiques du comportement', '71102', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(754, 'Champs professionnels en psychologie (Fil rouge B2/1)', '7111E', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(755, 'Acquisition du langage oral', '72122', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(756, 'Epistémologie et introduction à la démarche scientifique', '74112', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(757, 'Eco-éthologie : évolution phylogénétique des comportements', '74144', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(758, 'Ergonomie des interactions personne-machine', '74146', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(759, 'Cognition comparée : aux origines de l\'esprit', '7414D', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(760, 'Comprendre et combattre les préjugés', '7414H', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(761, 'Bases anatomo-physiologiques de l\'audiophonologie', '74174', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(762, 'Exercer son esprit critique à l\'ère informationnelle', '7417I', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(763, 'Analyse ergonomique de l\'activité étudiante (Fil rouge B3/4)', '74187', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(764, 'Compétences et connaissances scientifiques en psychologie', '74189', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(765, 'Didactique(s) : introduction', '742002', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(766, 'Dimensions relationnelles et affectives de l\'éducation et de la formation', '742006', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(767, 'Evaluation et régulation des apprentissages dans les systèmes d\'enseignement et de formation', '742007', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(768, 'Dimensions interculturelles et internationales de l\'éducation', '742064', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(769, 'Approches historiques de l\'éducation. Construction d\'une école pour la démocratie : défis et controverses', '742066', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(770, 'Délinquance et déviance juvénile : de la transgression à la socialisation', '742205', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(771, 'Etude des facteurs d\'efficacité des systèmes d\'enseignement', '742206', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(772, 'Dynamiques et enjeux culturels dans les contextes éducatifs', '742208', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(773, 'Education à la citoyenneté et questions sensibles', '742211', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(774, 'Didactique de l\'histoire : mémoire et altérité', '742261', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(775, 'Education à l\'environnement et au développement durable', '742262', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(776, 'Approche didactique des problèmes multiplicatifs et de la proportionnalité', '742272', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(777, 'Besoins éducatifs particuliers : stage de sensibilisation', '7422A5', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(778, 'Didactique comparée : initiation à l\'étude du fonctionnement des systèmes didactiques', '7422AH', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(779, 'Education nouvelle, Ecole active : textes fondateurs, expériences concrètes, controverses pédagogiques au 20e siècle', '7422AQ', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(780, 'Apprentissage et développement professionnel dans les métiers de l\'enseignement', '7422AT', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(781, 'Analyse de l\'activité et conception d\'environnements de formation', '7422AU', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(782, 'Genre, éducation, formation', '742327', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(783, 'Formation de base des adultes : dimensions institutionnelles et socio-politiques', '742331', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(784, 'Approche philosophique de l\'éducation', '742334', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(785, 'Ingénierie de la formation', '742338', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(786, 'Anthropologie et formation des adultes', '742339', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(787, 'Evolution du travail et formation professionnelle', '742340', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(788, 'Formation de base des adultes : dimensions pédagogiques', '742342', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(789, 'Education précoce, éducation inclusive', '742383', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(790, 'Evaluation de l\'intelligence et de la capacité d\'apprentissage', '742385', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(791, 'Echelles de développement et d\'aptitudes spécifiques en éducation spéciale', '742386', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(792, 'Approche développementale de l\'intervention scolaire', '742396', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(793, 'Approches narratives, analyse de l\'expérience et développement en formation des adultes', '742517', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(794, 'Expérience émotionnelle et relation éducative', '742601', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(795, 'Cultures, diversités, altérité', '742603', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(796, 'Ecole, familles, société', '742604', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(797, 'Didactique du français I', '742660', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(798, 'Didactique des mathématiques I', '742661', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(799, 'Didactique des arts plastiques', '742662', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(800, 'Didactique de la musique', '742663', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(801, 'Didactique de l\'éducation physique', '742664', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(802, 'Didactique de l\'allemand', '742665', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(803, 'Analyse de la pratique et de l\'expérience (1)', '7426AA', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(804, 'Développement personnel/interpersonnel', '7426AB', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(805, 'Analyse de la pratique et de l\'expérience (2)', '7426CA', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(806, 'Analyse de la pratique et de l\'expérience (3)', '7426DA', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(807, 'Analyse de la pratique et de l\'expérience (4)', '7426EA', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(808, 'Ethique (1)', '7426EC', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(809, 'Ethique (2)', '7426FC', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(810, 'Ethique (3)', '7426GC', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(811, 'Ethique (4)', '7426HC', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(812, 'Evaluation des apprentissages', '742722', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(813, 'Enseignement spécialisé et intégration scolaire', '742724', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(814, 'Différenciation des situations d\'apprentissage', '742725', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(815, 'Accompagnement d\'un camp (cadre scolaire ou extra-scolaire)', '742730', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(816, 'Accompagnement des apprentissages hors-temps scolaire', '742731', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(817, 'Didactique du français II', '742780', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(818, 'Didactique des mathématiques II', '742781', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(819, 'Didactique de la géographie', '742783', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(820, 'Didactique de l\'histoire', '742784', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(821, 'Didactique des sciences', '742785', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(822, 'Didactique de l\'anglais', '742786', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(823, 'Didactique de la lecture : l\'entrée dans l\'écrit et ses méthodes', '742840', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(824, 'Didactique de l\'enseignement continué de la lecture', '742841', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(825, 'Didactique du français : production écrite et difficultés d\'apprentissage', '742851', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(826, 'Besoins pédagogiques particuliers et pratiques d\'enseignement', '742861', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(827, 'Devenir élève : l\'entrée dans les apprentissages scolaires', '742870', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(828, 'Entrée dans la langue scolaire : apports et perspectives didactiques', '742871', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(829, 'Enseigner et apprendre avec les technologies numériques', '742880', 'Faculté de psychologie et des sciences de l\'éducation', '2022-04-27', '2022-04-27'),
(830, 'Communication interculturelle et médiation linguistique', 'BT0003', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(831, 'Initiation à l\'économie', 'BT0055', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(832, 'Expression écrite B/DE', 'BT0123', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(833, 'Étude de la langue B/DE', 'BT0128', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(834, 'Initiation au droit A/DE', 'BT0130', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(835, 'Civilisation B/DE', 'BT0174', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(836, 'Expression écrite B/EN', 'BT0223', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(837, 'Étude de la langue B/EN', 'BT0228', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(838, 'Civilisation B/EN', 'BT0274', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(839, 'Initiation au droit A/AR', 'BT0330', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(840, 'Expression écrite B/ES', 'BT0423', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(841, 'Étude de la langue B/ES', 'BT0428', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(842, 'Initiation au droit A/ES', 'BT0430', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(843, 'Civilisation B/ES', 'BT0474', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(844, 'Expression écrite B/FR', 'BT0523', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(845, 'Étude de la langue B/FR', 'BT0528', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(846, 'Initiation au droit A/FR', 'BT0530', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(847, 'Civilisation B/FR', 'BT0574', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(848, 'Expression écrite B/IT', 'BT0623', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(849, 'Étude de la langue B/IT', 'BT0628', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27');
INSERT INTO `Cours` (`id`, `nom`, `code`, `faculte`, `created_at`, `updated_at`) VALUES
(850, 'Initiation au droit A/IT', 'BT0630', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(851, 'Civilisation B/IT', 'BT0674', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(852, 'Expression écrite B/RU', 'BT0723', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(853, 'Étude de la langue B/RU', 'BT0728', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(854, 'Civilisation B/RU', 'BT0774', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(855, 'Étude de la langue B/LSF', 'BT0800', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(856, 'Expression en LSF', 'BT0805', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(857, 'Communication et culture B/LSF', 'BT0810', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(858, 'Initiation à l\'interprétation', 'BT0870', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(859, 'Initiation à l\'interprétation LSF', 'BT0871', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(860, 'Gestion et recherche documentaires', 'BT0911', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(861, 'Analyse de la langue A/DE', 'BT124', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(862, 'Analyse des textes A/DE', 'BT126', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(863, 'Communication et culture B/DE', 'BT171', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(864, 'Communication et culture B/EN', 'BT271', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(865, 'Analyse de la langue A/AR', 'BT324', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(866, 'Analyse des textes A/AR', 'BT326', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(867, 'Analyse de la langue A/ES', 'BT424', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(868, 'Analyse des textes A/ES', 'BT426', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(869, 'Communication et culture B/ES', 'BT471', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(870, 'Analyse de la langue A/FR', 'BT524', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(871, 'Analyse des textes A/FR', 'BT526', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(872, 'Communication et culture B/FR', 'BT571', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(873, 'Analyse de la langue A/IT', 'BT624', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(874, 'Analyse des textes A/IT', 'BT626', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(875, 'Communication et culture B/IT', 'BT671', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(876, 'Communication et culture B/RU', 'BT771', 'Faculté de traduction et d\'interprétation', '2022-04-27', '2022-04-27'),
(877, 'Business intelligence', 'D_6252BUS', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(878, 'Data mining', 'D_6252DATA', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(879, 'Urbanisation des systèmes d\'information', 'D_6261URBA', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(880, 'Open Science', 'D200001', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(881, 'Projet transversal I', 'D200002', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(882, 'Projet transversal II', 'D200003', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(883, 'Stage', 'D200004', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(884, 'Services et technologies multimédia', 'D200006', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(885, 'Algorithmique appliquée', 'D200008', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(886, 'Fondements formels des systèmes d\'information', 'D200009', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(887, 'Réseaux de communication', 'D200010', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(888, 'Séminaire de langages de programmation', 'D200011', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(889, 'Mashups, contextualisation et qualité des services', 'D200012', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(890, 'Analyse des objectifs', 'D200013', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(891, 'Environnements collaboratifs de développement logiciel', 'D200014', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(892, 'Interface personne-machine', 'D200015', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(893, 'Introduction à la sécurité, éthique et réglementation des services', 'D200016', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(894, 'Gestion de projet', 'D200017', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(895, 'Design Science', 'D200018', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(896, 'Modélisation des systèmes d\'information et des services', 'D200019', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(897, 'Bases de données avancées', 'D200020', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(898, 'Projet de recherche en systèmes d\'information', 'D200021', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(899, 'Système d\'information d\'entreprise', 'D200022', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(900, 'Security of Information Systems', 'D200023', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(901, 'Bases de données', 'D200025', 'Centre universitaire d\'informatique', '2022-04-27', '2022-04-27'),
(902, 'Droit international public', 'J1D005', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(903, 'Droit institutionnel européen', 'J2D011', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(904, 'Droit international public : approfondissements', 'J2D019', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(905, 'Histoire de la pensée juridique et politique', 'J2D033', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(906, 'Droit constitutionnel I', 'J2D034', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(907, 'Droit constitutionnel II', 'J2D035', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(908, 'Droit international public : répétitoires et exercices', 'J2D209', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(909, 'Droit international humanitaire', 'J2D215', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(910, 'Grands enjeux de la sécurité sociale dans une perspective internationale', 'J2D235', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(911, 'Economic Analysis in International Organization', 'J2E212', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(912, 'Complément du cours d\'introduction à l\'économie internationale', 'J2E236', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(913, 'Histoire de l\'Europe XIXe-XXe siècles: Nations et nationalismes', 'J2H040', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(914, 'Comprendre la construction européenne: crises, contraintes et options', 'J2H048', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(915, 'Environmental Diplomacy', 'J2H230', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(916, 'Histoire intellectuelle de la guerre froide', 'J2H267', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(917, 'Initiation à la langue chinoise moderne', 'J2M207', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(918, 'Enjeux sociaux en Chine contemporaine', 'J2M217', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(919, 'Digital technologies, Europe and International Relations', 'J2M279', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(920, 'Gestion de projets', 'J2M287', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(921, 'Coopération internationale', 'J2P273', 'Global Studies Institute', '2022-04-27', '2022-04-27'),
(922, 'Introduction à la comptabilité financière', 'S101008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(923, 'Droit général des obligations', 'S101010', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(924, 'Introduction à la microéconomie', 'S102011', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(925, 'Introduction à la macroéconomie', 'S102013', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(926, 'Introduction to Microeconomics', 'S102015', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(927, 'Introduction to Macroeconomics', 'S102016', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(928, 'Mathématiques I', 'S103005', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(929, 'Introduction à la programmation', 'S104010', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(930, 'Mathematics I', 'S110001', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(931, 'Probability I', 'S110015', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(932, 'Probabilités I', 'S110016', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(933, 'Financial Markets', 'S120001', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(934, 'Introduction to Financial Accounting', 'S120002', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(935, 'Finance de marché', 'S120004', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(936, 'Introduction to Management', 'S130001', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(937, 'Introduction to Human Resource Management', 'S130002', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(938, 'Introduction au management', 'S130003', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(939, 'Introduction au management des ressources humaines', 'S130004', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(940, 'Swiss Law of Obligations', 'S140003', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(941, 'Introduction to Programming', 'S140010', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(942, 'Statistical Modelling', 'S201008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(943, 'Comptabilité financière', 'S201014', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(944, 'Finance de l\'immobilier', 'S201018', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(945, 'Contrôle de gestion', 'S201023', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(946, 'Corporate Finance', 'S201029', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(947, 'Corporate Strategy', 'S201030', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(948, 'Banques et système financier', 'S201044', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(949, 'Introduction au marketing et à la dirigeance d\'entreprise', 'S201050', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(950, 'Consumer Behavior I', 'S201059', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(951, 'Development Economics', 'S202039', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(952, 'Econometrics', 'S203029', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(953, 'Probability and Statistical Learning', 'S203031', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(954, 'Numerical Methods', 'S203039', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(955, 'Mathématiques II', 'S203043', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(956, 'Microeconomics I', 'S210001', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(957, 'Environmental Economics', 'S210008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(958, 'Business Analytics', 'S210010', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(959, 'Applied Econometrics', 'S210011', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(960, 'Statistics I', 'S210016', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(961, 'Introduction to Econometrics', 'S210021', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(962, 'Advanced Corporate Finance', 'S220005', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(963, 'Cas de comptabilité financière', 'S220008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(964, 'International Management', 'S230005', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(965, 'Projets responsables I', 'S230006', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(966, 'Optimisation et gestion des opérations', 'S230007', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(967, 'Business and Society', 'S230008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(968, 'Consumer Behavior II', 'S230011', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(969, 'Responsible Management', 'S230013', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(970, 'Business Game', 'S230015', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(971, 'Gestion de la production et des stocks', 'S230016', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(972, 'Création d\'entreprise et écosystème d\'innovation', 'S230018', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(973, 'Projets responsables II', 'S230020', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(974, 'Business and Human Rights', 'S230022', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(975, 'Introduction to Data Science', 'S230023', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(976, 'Atelier d\'entrepreneuriat', 'S230025', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(977, 'Les essentiels et la boîte à outils pour futurs innovateurs', 'S230026', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(978, 'Institutional Project A', 'S240001', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(979, 'Introduction générale à la fiscalité', 'S240002', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(980, 'Droit des sociétés', 'S240004', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(981, 'Soft Skills', 'S240008', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(982, 'The Many Faces of Philanthropy A', 'S240009', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(983, 'Institutional Project B', 'S240010', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(984, 'The Many Faces of Philanthropy B', 'S240011', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(985, 'The Fourth Industrial Revolution', 'S240012', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(986, 'Cours Hors Faculté 3 ou 6 ou 9 crédits (maximum 9 crédits)', 'S999999', 'Faculté d\'économie et de management', '2022-04-27', '2022-04-27'),
(987, 'Introduction aux méthodes quantitatives', 'T100000', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(988, 'Séminaire d\'introduction aux méthodes quantitatives', 'T100003', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(989, 'Introduction à la démarche scientifique', 'T100005', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(990, 'Séminaire d\'introduction à la démarche scientifique', 'T100006', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(991, 'Inégalités en tout genre : histoires, politique, société', 'T100007', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(992, 'Introduction à la sociologie', 'T105001', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(993, 'Séminaire d\'introduction à la sociologie', 'T105006', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(994, 'Introduction à la géographie', 'T106001', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(995, 'Séminaire d\'introduction à la géographie', 'T106006', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(996, 'Histoire économique et sociale de la globalisation, 16e-21e siècles', 'T108004', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(997, 'Méthodes quantitatives', 'T200000', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(998, 'Séminaire de méthodes quantitatives', 'T200001', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(999, 'Méthodes qualitatives', 'T200002', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1000, 'Séminaire de méthodes qualitatives', 'T200003', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1001, 'Sociologie des organisations', 'T205000', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1002, 'Communication et langage', 'T205011', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1003, 'Sociologie politique', 'T205018', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1004, 'Stratification et mobilité sociale', 'T205023', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1005, 'Sociologie économique', 'T205027', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1006, 'Epistémologie des sciences sociales', 'T205041', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1007, 'Etudier & filmer les migrations et les relations à l\'altérité A', 'T205053', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1008, 'Etudier & filmer les migrations et les relations à l\'altérité B', 'T205055', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1009, 'Courants contemporains en géographie', 'T206000', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1010, 'Dynamique du capitalisme contemporain', 'T206001', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1011, 'Géographies de la métropole', 'T206006', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1012, 'Cartographie critique', 'T206007', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1013, 'Cartographie thématique', 'T206024', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1014, 'Géographie politique', 'T206054', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1015, 'Géographie culturelle', 'T206056', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1016, 'Géographie de la mondialisation', 'T206058', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1017, 'Géographie et écologie urbaine', 'T206059', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1018, 'Enjeux environnementaux', 'T206060', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1019, 'Institutions européennes et intégration européenne', 'T207001', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1020, 'Enjeux éthiques des politiques publiques', 'T207002', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1021, 'Emotions, comportements individuels et action collective', 'T207003', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1022, 'Comportement électoral', 'T207012', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1023, 'Administration et politiques publiques', 'T207034', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1024, 'Emotions et relations internationales', 'T207045', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1025, 'Economie, état et institutions', 'T208002', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1026, 'Economics of Inequality and Redistribution / Economie de l\'inégalité et de la redistribution', 'T208003', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1027, 'Economie et histoire', 'T208012', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1028, 'Démographie et anthropologie des populations', 'T208013', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1029, 'Histoire économique et sociale des pays en voie de développement', 'T208014', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1030, 'Histoire économique contemporaine : la Suisse dans une perspective internationale', 'T208016', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1031, 'Histoire économique et sociale de l\'époque moderne / Early modern economic and social history', 'T208017', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1032, 'Genre et construction sociale des corps et des sexualités', 'T214006', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1033, 'GEOTOOLS-RS : télédétection et traitement d\'images', 'T406034', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27'),
(1034, 'Information géographique', 'T406290', 'Faculté des sciences de la société', '2022-04-27', '2022-04-27');

-- --------------------------------------------------------

--
-- Table structure for table `Fichier`
--

CREATE TABLE `Fichier` (
  `id` int NOT NULL,
  `chemin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vignette` tinyint NOT NULL,
  `projet_id` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Fichier`
--

INSERT INTO `Fichier` (`id`, `chemin`, `vignette`, `projet_id`, `created_at`, `updated_at`) VALUES
(44, 'projects/49/Screenshot from 2023-04-03 17-41-35.png', 1, 49, '2023-05-11', '2023-05-11'),
(45, 'projects/49/Reunion NTIC - 31 mars 2023.pdf', 0, 49, '2023-05-11', '2023-05-11'),
(46, 'projects/50/Screenshot from 2023-05-03 19-31-09.png', 1, 50, '2023-05-11', '2023-05-11'),
(47, 'projects/50/Screenshot from 2023-05-04 12-57-19.png', 1, 50, '2023-05-11', '2023-05-11'),
(48, 'projects/50/marche_a_suivre.pdf', 0, 50, '2023-05-11', '2023-05-11'),
(49, 'projects/51/Screenshot from 2023-04-03 17-41-35.png', 1, 51, '2023-05-11', '2023-05-11'),
(50, 'projects/51/TP1_missiri_nikita.pdf', 0, 51, '2023-05-11', '2023-05-11'),
(51, 'projects/51/TP1_missiri_nikita.pl', 0, 51, '2023-05-11', '2023-05-11'),
(52, 'projects/51/TP1_semantique_2022.pdf', 0, 51, '2023-05-11', '2023-05-11'),
(53, 'projects/52/Screenshot from 2021-10-19 10-20-07.png', 1, 52, '2023-05-11', '2023-05-11'),
(54, 'projects/52/Screenshot from 2021-12-17 02-45-22.png', 1, 52, '2023-05-11', '2023-05-11'),
(55, 'projects/52/Screenshot from 2022-03-16 11-29-11.png', 1, 52, '2023-05-11', '2023-05-11'),
(56, 'projects/52/Screenshot from 2022-12-12 17-47-13.png', 1, 52, '2023-05-11', '2023-05-11'),
(57, 'projects/52/Screenshot from 2022-12-12 17-47-17.png', 1, 52, '2023-05-11', '2023-05-11'),
(58, 'projects/52/Screenshot from 2022-12-14 15-00-46.png', 1, 52, '2023-05-11', '2023-05-11'),
(59, 'projects/52/Screenshot from 2023-01-29 10-02-24.png', 1, 52, '2023-05-11', '2023-05-11'),
(60, 'projects/52/Screenshot from 2023-05-03 19-31-09.png', 1, 52, '2023-05-11', '2023-05-11'),
(61, 'projects/52/Screenshot from 2023-05-04 12-57-19.png', 1, 52, '2023-05-11', '2023-05-11'),
(62, 'projects/52/00-Introduction.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(63, 'projects/52/01-Java.Non.OO.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(64, 'projects/52/02-ClassesInstances.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(65, 'projects/52/03-Interfaces.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(66, 'projects/52/04-StandardLib.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(67, 'projects/52/05-Heritage.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(68, 'projects/52/06-LangagesOO.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(69, 'projects/52/07-Generics.pdf', 0, 52, '2023-05-11', '2023-05-11'),
(70, 'projects/53/Screenshot from 2021-12-17 02-45-22.png', 1, 53, '2023-05-11', '2023-05-11'),
(71, 'projects/53/07-Generics.pdf', 0, 53, '2023-05-11', '2023-05-11'),
(72, 'projects/54/gitlab tableau calvant.png', 1, 54, '2023-05-11', '2023-05-11'),
(73, 'projects/54/Doctorat_2019-2020_juillet_2019.pdf', 0, 54, '2023-05-11', '2023-05-11'),
(74, 'projects/54/Doctorat_2019-2020_juillet_2019-1.pdf', 0, 54, '2023-05-11', '2023-05-11'),
(75, 'projects/54/Doctorat_2019-2020_juillet_2019-2.pdf', 0, 54, '2023-05-11', '2023-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `Projet`
--

CREATE TABLE `Projet` (
  `id` int NOT NULL,
  `titre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cours_id` int NOT NULL,
  `resume` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `repo_git` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `acces` tinyint(1) NOT NULL,
  `taches` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `outils_nom` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `outils_img` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `visiteurs_ext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `participants_non_inscrits` longtext COLLATE utf8mb4_general_ci,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Projet`
--

INSERT INTO `Projet` (`id`, `titre`, `cours_id`, `resume`, `repo_git`, `acces`, `taches`, `outils_nom`, `outils_img`, `visiteurs_ext`, `participants_non_inscrits`, `created_at`, `updated_at`) VALUES
(49, 'Portail de projets d\'étudiants au CUI', 442, 'Dans ce projet, nous avons créé une application web, qui permet de déposer des projets et de les visualiser, afin de faire valoriser le CUI ainsi que ses étudiants.', 'https://gitlab.unige.ch/Kerfalla.Cisse/portail-projets-etudiants-cui', 0, 'Créer des interfaces responsives, Développer une base de données, Écrire du code en Laravel', 'Laravel, Bootstrap, jQuery', 'storage/images/tools/Laravel.png, storage/images/tools/Bootstrap.png, storage/images/tools/jQuery.png', NULL, '', '2023-05-11', '2023-05-11'),
(50, 'Site de sensibilisation à la frugalité numérique', 718, 'Ce projet porte sur le développement d\'un site Web pour sensibiliser la population des consommations d\'énergie des services numériques.', NULL, 0, 'Renseignement des consommations des services numériques, Développement d\'une application Web, Développement d\'une application mobile', 'Java, Angular, Kotlin, Figma', 'storage/images/tools/Java.svg, storage/images/tools/Angular.png, storage/images/tools/Kotlin.svg, storage/images/tools/Figma.png', NULL, '', '2023-05-11', '2023-05-11'),
(51, 'Portail de projets d\'étudiants au CUI', 442, 'Dans ce projet, nous avons développer une application web, permettant aux étudiants de déposer des projets qu\'ils ont effectués durant leur cursus au CUI.', 'https://gitlab.unige.ch/Kerfalla.Cisse/portail-projets-etudiants-cui', 1, 'Créer des interfaces responsives, Écrire du code en Laravel, Développer une base de données', 'Bootstrap, Laravel, jQuery', 'storage/images/tools/Bootstrap.png, storage/images/tools/Laravel.png, storage/images/tools/jQuery.png', '', '', '2023-05-11', '2023-05-11'),
(52, 'Renseignement météo sur Twitter', 889, 'Ce projet a pour but de renseigner les prévisions météo sur un compte Twitter. Pour cela, nous avons engagé l\'API de MétéoSuisse et de Twitter.', NULL, 1, 'Faire appel à des APIs', 'Python, Flask, JavaScript', 'storage/images/tools/Python.svg, storage/images/tools/Flask.png, storage/images/tools/JavaScript.svg', 'maman@gmail.com, giovanna@hotmail.fr, alice-wonderland@gmail.com', 'kohli morgan', '2023-05-11', '2023-05-11'),
(53, 'Projet', 936, 'Résumé', NULL, 0, 'Gestion d\'entreprise', '', 'storage/images/tools/', NULL, 'molnar daniel', '2023-05-11', '2023-05-11'),
(54, 'Simulation du monde', 254, 'We developed a model simulation machine learning.', NULL, 0, 'Development of Machine Learning', 'Python, MatLab', 'storage/images/tools/Python.svg, storage/images/tools/MatLab.svg', NULL, '', '2023-05-11', '2023-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `Recommandation`
--

CREATE TABLE `Recommandation` (
  `id` int NOT NULL,
  `date` date NOT NULL,
  `contenu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `projet_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int NOT NULL,
  `est_etudiant` tinyint(1) NOT NULL,
  `est_enseignant` tinyint(1) NOT NULL,
  `est_administrateur` tinyint(1) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `est_etudiant`, `est_enseignant`, `est_administrateur`, `created_at`, `updated_at`) VALUES
(18, 0, 1, 0, '2023-05-10', '2023-05-10'),
(19, 0, 1, 0, '2023-05-10', '2023-05-10'),
(20, 1, 0, 1, '2023-05-10', '2023-05-10'),
(21, 1, 0, 1, '2023-05-10', '2023-05-10'),
(22, 0, 1, 0, '2023-05-10', '2023-05-10'),
(23, 0, 1, 0, '2023-05-10', '2023-05-10'),
(24, 0, 1, 0, '2023-05-10', '2023-05-10'),
(25, 1, 1, 0, '2023-05-10', '2023-05-10'),
(26, 1, 0, 0, '2023-05-10', '2023-05-10'),
(27, 1, 0, 0, '2023-05-10', '2023-05-10'),
(28, 1, 0, 0, '2023-05-10', '2023-05-10');

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
  `role_id` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Utilisateur`
--

INSERT INTO `Utilisateur` (`id`, `no_imm`, `nom`, `prenom`, `email_unige`, `mdp_unige`, `email_perso`, `mdp_perso`, `role_id`, `created_at`, `updated_at`) VALUES
(10, NULL, 'dimarzo', 'giovanna', 'giovanna.dimarzo@unige.ch', '$2y$10$SeqvBSe/PwM9TB2P24ySqOxACILxYT./ksNv6.VgaPdgCLrgxdZoG', '', '', 18, '2023-05-10', '2023-05-10'),
(11, NULL, 'morin', 'jeanhenri', 'jeanhenri.morin@unige.ch', '$2y$10$XKv6YdCDuuuYGDn3MYv5YeCcpGjRsu98lGuPDqNpz6gC/yOWrx53u', '', '', 19, '2023-05-10', '2023-05-10'),
(12, '10-000-000', 'cisse', 'kerfalla', 'kerfalla.cisse@etu.unige.ch', '$2y$10$7jUZIgH5He9CLgZUr8y8T.T3WaHYN6mF31d/OM3mD5/gjEsc5OjTG', 'kerf.ciss@gmail.com', '$2y$10$YMFy5YMghoh.vkjti7yPfuqCkqBVuAdTzLpgUqcQMzO1pTtZwzAtC', 20, '2023-05-10', '2023-05-10'),
(13, '10-000-001', 'missiri', 'nikita', 'nikita.missiri@etu.unige.ch', '$2y$10$E.pDl9ZAdpprqKUanOyvkuVJsM046C5/ExXsY.RweXH1Xb57lqj0C', 'nikita.m@bluewin.ch', '$2y$10$2mSrwd8Q1u2TvFvwtEF8R.l0sbV6TMZ.bdZXNuoEmzy29yaXcsEji', 21, '2023-05-10', '2023-05-10'),
(14, NULL, 'roth', 'patrick', 'patrick.roth@unige.ch', '$2y$10$ABelYXiInIZ790BqFsjlD.hcGgtOe2SF52dQOlfrCPwefpYFGYdJC', '', '', 22, '2023-05-10', '2023-05-10'),
(15, NULL, 'moccozet', 'laurent', 'laurent.moccozet@unige.ch', '$2y$10$JkLt.32JOXE.EdqwAm/jBuVMDGBOKpBlqeVCHTXIBYxd8K7T2yaki', '', '', 23, '2023-05-10', '2023-05-10'),
(16, NULL, 'nerima', 'luka', 'luka.nerima@unige.ch', '$2y$10$BSgPNkbV4NanUcrF2sdJrue7ls9esZNis1QlO3DPJtIYLMt1fdFUu', '', '', 24, '2023-05-10', '2023-05-10'),
(17, '10-000-002', 'jiang', 'chunyang', 'chunyang.jiang@unige.ch', '$2y$10$Vun9ietOKZ.uatt1D/6ZeeMfA0eLdVIvI79qeFLhznptpdPMuyf4e', '', '', 25, '2023-05-10', '2023-05-10'),
(18, '11-000-000', 'mulard', 'paul', 'paul.mulard@etu.unige.ch', '$2y$10$MnukXgoZJwmwuGAnEcG/NeIGy43fXhkZY95k9SsyCsEmEgYNWKXse', 'polo@gmail.com', '$2y$10$RcgMAKLeOMxdQJwb5uLsi.D2UQdUxFb5NeJVTaae7deKQe4hFvo5G', 26, '2023-05-10', '2023-05-10'),
(19, '11-000-001', 'turhan', 'cem', 'ismet.turhan@etu.unige.ch', '$2y$10$4DDtTVB/jNaWsSiGyhy4heiRfjQ/TsAqkfLLYZpcySbtSiZUk9eei', 'ismet-cem@gmail.com', '$2y$10$Oe0kv1RAmtj7XixZ2q/TBuup0EXZ4MKzBh0lzD9PZcdQQmIhTBsxK', 27, '2023-05-10', '2023-05-10'),
(20, '11-000-002', 'hoaitri', 'bernard', 'bernard.hoaitri@etu.unige.ch', '$2y$10$QnY8ARW6kap4FeRIjrBdeeq/mGfy2JKw4de6PPdK4dhdp/GExgi3W', 'bernardinho@gmail.com', '$2y$10$4T9Dv/yHxZSuOvWXU7DegeRw53SSnFE1l9uECb1Rh7yMHkH0gS46S', 28, '2023-05-10', '2023-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `UtilisateurCours`
--

CREATE TABLE `UtilisateurCours` (
  `id` int NOT NULL,
  `cours_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UtilisateurProjet`
--

CREATE TABLE `UtilisateurProjet` (
  `id` int NOT NULL,
  `projet_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `UtilisateurProjet`
--

INSERT INTO `UtilisateurProjet` (`id`, `projet_id`, `user_id`, `created_at`, `updated_at`) VALUES
(96, 49, 13, '2023-05-11', '2023-05-11'),
(97, 49, 12, '2023-05-11', '2023-05-11'),
(98, 50, 13, '2023-05-11', '2023-05-11'),
(99, 50, 19, '2023-05-11', '2023-05-11'),
(100, 50, 20, '2023-05-11', '2023-05-11'),
(101, 50, 18, '2023-05-11', '2023-05-11'),
(102, 50, 17, '2023-05-11', '2023-05-11'),
(103, 51, 13, '2023-05-11', '2023-05-11'),
(104, 52, 13, '2023-05-11', '2023-05-11'),
(105, 52, 18, '2023-05-11', '2023-05-11'),
(106, 53, 13, '2023-05-11', '2023-05-11'),
(107, 54, 13, '2023-05-11', '2023-05-11');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `Fichier`
--
ALTER TABLE `Fichier`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `Projet`
--
ALTER TABLE `Projet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `Recommandation`
--
ALTER TABLE `Recommandation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `UtilisateurCours`
--
ALTER TABLE `UtilisateurCours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `UtilisateurProjet`
--
ALTER TABLE `UtilisateurProjet`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

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
