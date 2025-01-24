-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 22 jan. 2025 à 01:45
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_employes`
--

-- --------------------------------------------------------

--
-- Structure de la table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
CREATE TABLE IF NOT EXISTS `contracts` (
  `contract_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int UNSIGNED NOT NULL,
  `contract_type` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`contract_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `contracts`
--

INSERT INTO `contracts` (`contract_id`, `employee_id`, `contract_type`, `start_date`, `end_date`, `details`) VALUES
(1, 1, 'Full-Time', '2023-01-01', '2025-01-01', 'Full-time contract with benefits.'),
(2, 2, 'Part-Time', '2022-06-15', '2024-06-15', 'Part-time contract with flexible hours.'),
(3, 3, 'Internship', '2023-07-01', '2023-12-31', 'Internship contract for 6 months.'),
(4, 1, 'Permanent', '2025-01-01', '2026-01-01', 'Full-time permanent contract'),
(5, 2, 'Temporary', '2025-01-10', '2025-06-10', 'Temporary contract for 6 months'),
(6, 3, 'Freelance', '2025-02-01', '2025-12-01', 'Freelance contract for project work'),
(7, 4, 'Permanent', '2025-03-01', '2026-03-01', 'Full-time permanent contract'),
(8, 5, 'Internship', '2025-04-01', '2025-09-01', '6-month internship contract'),
(9, 6, 'Freelance', '2025-05-01', '2025-11-01', 'Freelance contract for development work'),
(10, 7, 'Permanent', '2025-06-01', '2026-06-01', 'Permanent position with benefits'),
(11, 8, 'Temporary', '2025-07-01', '2025-12-01', 'Temporary role for 5 months'),
(12, 9, 'Permanent', '2025-08-01', '2026-08-01', 'Full-time permanent contract with health insurance'),
(13, 10, 'Freelance', '2025-09-01', '2025-12-01', 'Freelance contract for consulting'),
(14, 11, 'Internship', '2025-10-01', '2025-12-31', 'Internship for 3 months'),
(15, 12, 'Temporary', '2025-11-01', '2026-04-01', '6-month temporary contract'),
(16, 13, 'Freelance', '2025-12-01', '2026-06-01', 'Freelance work on a marketing project'),
(17, 14, 'Permanent', '2025-01-01', '2026-01-01', 'Permanent full-time contract with training'),
(18, 15, 'Freelance', '2025-03-01', '2025-09-01', 'Freelance contract for website development'),
(19, 16, 'Temporary', '2025-04-01', '2025-10-01', 'Temporary position for seasonal work'),
(20, 17, 'Internship', '2025-05-01', '2025-08-01', 'Internship contract for HR department'),
(21, 18, 'Freelance', '2025-06-01', '2025-12-01', 'Freelance project management contract'),
(22, 19, 'Permanent', '2025-07-01', '2026-07-01', 'Permanent full-time contract'),
(23, 20, 'Temporary', '2025-08-01', '2025-11-01', 'Temporary contract for special project');

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`id`, `name`, `birthday`, `adresse`, `number`, `email`, `position`, `department`, `hire_date`, `password`, `role`) VALUES
(1, 'Alice Dupo', '1985-06-15', '123 Rue de Paris, Paris', '0123456777', 'alice.dupont@example.com', 'Poste 1', 'Département 1', '2020-01-10', 'password123', 'admin'),
(2, 'Bob Martin', '1990-09-23', '456 Avenue de Lyon, Lyon', '0987654321', 'bob.martin@example.com', 'Developer', 'IT', '2019-03-15', 'securePass456', 'user'),
(4, 'Claire Petit', '1992-11-30', '25 Avenue de la République, 75011 Paris', '0135792468', 'claire.petit@email.com', 'HR Assistant', 'Human Resources', '2020-01-10', 'password789', 'user'),
(5, 'David Lemoine', '1980-02-28', '8 Rue Victor Hugo, 69002 Lyon', '0147253698', 'david.lemoine@email.com', 'Accountant', 'Finance', '2017-09-05', 'password321', 'admin'),
(6, 'Eva Lefevre', '1987-03-18', '14 Rue des Lilas, 59000 Lille', '0612345678', 'eva.lefevre@email.com', 'Marketing Specialist', 'Marketing', '2019-06-30', 'password654', 'user'),
(7, 'François Robert', '1994-07-01', '3 Rue de la Liberté, 13001 Marseille', '0723456789', 'francois.robert@email.com', 'Sales Executive', 'Sales', '2021-03-11', 'password987', 'user'),
(8, 'Grace Bourgeois', '1983-10-12', '56 Rue des Champs, 75008 Paris', '0601020304', 'grace.bourgeois@email.com', 'Software Engineer', 'IT', '2016-12-25', 'password654', 'admin'),
(9, 'Henri Lefevre', '1996-04-05', '7 Avenue de la Mer, 44000 Nantes', '0686543120', 'henri.lefevre@email.com', 'Project Manager', 'Operations', '2019-09-19', 'password111', 'user'),
(10, 'Isabelle Dubois', '1991-06-30', '100 Rue de la Gare, 21000 Dijon', '0698765432', 'isabelle.dubois@email.com', 'Data Analyst', 'Finance', '2020-02-14', 'password222', 'user'),
(11, 'Jean-Claude Robert', '1982-01-25', '45 Boulevard de l\'Indépendance, 59000 Lille', '0623456789', 'jeanclaude.robert@email.com', 'Legal Advisor', 'Legal', '2016-08-18', 'password333', 'admin'),
(12, 'Karine Martin', '1988-12-10', '88 Rue du Centre, 37000 Tours', '0645123789', 'karine.martin@email.com', 'HR Manager', 'Human Resources', '2014-05-06', 'password444', 'user'),
(13, 'Louis Lefevre', '1993-09-22', '22 Rue des Fleurs, 29000 Quimper', '0698765431', 'louis.lefevre@email.com', 'Security Officer', 'Security', '2017-11-14', 'password555', 'user'),
(14, 'Marie Dupuis', '1995-02-11', '11 Rue de la Plage, 35000 Rennes', '0654321987', 'marie.dupuis@email.com', 'Receptionist', 'Operations', '2020-12-01', 'password666', 'user'),
(15, 'Nicolas Lefevre', '1986-03-08', '19 Rue de l\'Eglise, 75013 Paris', '0765432109', 'nicolas.lefevre@email.com', 'Product Manager', 'Product', '2018-01-15', 'password777', 'user'),
(16, 'Olivia Robert', '1990-10-20', '20 Boulevard de la République, 33000 Bordeaux', '0701234567', 'olivia.robert@email.com', 'Operations Coordinator', 'Operations', '2017-07-23', 'password888', 'user'),
(17, 'Pierre Lefevre', '1984-11-14', '33 Rue des Roses, 44000 Nantes', '0687654321', 'pierre.lefevre@email.com', 'Business Analyst', 'Finance', '2016-05-25', 'password999', 'admin'),
(18, 'Quentin Dupont', '1992-06-02', '44 Rue de la Ville, 31000 Toulouse', '0612348765', 'quentin.dupont@email.com', 'Quality Assurance', 'IT', '2021-04-09', 'password100', 'user'),
(19, 'Rachel Petit', '1989-03-17', '55 Avenue du Parc, 75016 Paris', '0787654321', 'rachel.petit@email.com', 'Marketing Coordinator', 'Marketing', '2020-01-19', 'password101', 'user'),
(20, 'Samuel Lemoine', '1997-01-28', '67 Boulevard des Fleurs, 13008 Marseille', '0654321098', 'samuel.lemoine@email.com', 'Sales Assistant', 'Sales', '2021-05-05', 'password102', 'user'),
(21, 'Thomas Dubois', '1984-12-06', '78 Rue de l\'Ouest, 67000 Strasbourg', '0698765432', 'thomas.dubois@email.com', 'Operations Manager', 'Operations', '2015-09-22', 'password103', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `presences`
--

DROP TABLE IF EXISTS `presences`;
CREATE TABLE IF NOT EXISTS `presences` (
  `presence_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int UNSIGNED NOT NULL,
  `date_` date NOT NULL,
  `statut_presence` enum('present','abscent') DEFAULT NULL,
  PRIMARY KEY (`presence_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `presences`
--

INSERT INTO `presences` (`presence_id`, `employee_id`, `date_`, `statut_presence`) VALUES
(1, 1, '2025-01-01', 'present'),
(2, 1, '2025-01-02', 'abscent'),
(3, 2, '2025-01-01', 'abscent'),
(4, 2, '2025-01-02', 'present'),
(5, 3, '2025-01-01', 'present'),
(6, 3, '2025-01-02', 'present'),
(7, 1, '2025-01-16', 'present'),
(8, 2, '2025-01-16', 'present'),
(9, 1, '2025-01-10', 'present'),
(10, 2, '2025-01-15', 'abscent'),
(11, 3, '2025-02-03', 'present'),
(12, 4, '2025-02-21', 'abscent'),
(13, 5, '2025-03-07', 'present'),
(14, 6, '2025-03-22', 'abscent'),
(15, 7, '2025-04-12', 'present'),
(16, 8, '2025-04-18', 'abscent'),
(17, 9, '2025-05-01', 'present'),
(18, 10, '2025-05-16', 'abscent'),
(19, 11, '2025-06-04', 'present'),
(20, 12, '2025-06-20', 'abscent'),
(21, 13, '2025-07-05', 'present'),
(22, 14, '2025-07-19', 'abscent'),
(23, 15, '2025-08-09', 'present'),
(24, 16, '2025-08-21', 'abscent'),
(25, 17, '2025-09-02', 'present'),
(26, 18, '2025-09-15', 'abscent'),
(27, 19, '2025-10-04', 'present'),
(28, 20, '2025-10-20', 'abscent');

-- --------------------------------------------------------

--
-- Structure de la table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
CREATE TABLE IF NOT EXISTS `salaries` (
  `salary_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `employee_id` int UNSIGNED NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `effective_date` date NOT NULL,
  PRIMARY KEY (`salary_id`),
  KEY `employee_id` (`employee_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `salaries`
--

INSERT INTO `salaries` (`salary_id`, `employee_id`, `salary`, `effective_date`) VALUES
(1, 1, 50000.00, '2023-01-01'),
(2, 2, 40000.00, '2022-06-15'),
(3, 3, 30000.00, '2023-07-01'),
(4, 1, 2500.00, '2025-01-01'),
(5, 2, 2700.00, '2025-01-01'),
(6, 3, 2800.00, '2025-01-01'),
(7, 4, 2900.00, '2025-01-01'),
(8, 5, 3000.00, '2025-01-01'),
(9, 6, 3100.00, '2025-01-01'),
(10, 7, 3200.00, '2025-01-01'),
(11, 8, 3300.00, '2025-01-01'),
(12, 9, 3400.00, '2025-01-01'),
(13, 10, 3500.00, '2025-01-01'),
(14, 11, 3600.00, '2025-01-01'),
(15, 12, 3700.00, '2025-01-01'),
(16, 13, 3800.00, '2025-01-01'),
(17, 14, 3900.00, '2025-01-01'),
(18, 15, 4000.00, '2025-01-01'),
(19, 16, 4100.00, '2025-01-01'),
(20, 17, 4200.00, '2025-01-01'),
(21, 18, 4300.00, '2025-01-01'),
(22, 19, 4400.00, '2025-01-01'),
(23, 20, 4500.00, '2025-01-01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
