-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 24 avr. 2024 à 16:44
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nike_shoop`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `phone_number` int NOT NULL,
  `email` varchar(40) NOT NULL,
  `datebirth` date NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `accounts`
--

INSERT INTO `accounts` (`id`, `first_name`, `last_name`, `phone_number`, `email`, `datebirth`, `password`) VALUES
(14, 'test', 'test', 12345678, 'test@test.com', '2024-02-01', 'test'),
(15, 't', 't', 98, 't@t.com', '2024-04-18', '1234');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `client_phone` int NOT NULL,
  `client_addres` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `client_cardNumber` int NOT NULL,
  `client_cardMonth` int NOT NULL,
  `client_cardYear` int NOT NULL,
  `client_cardcvv` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `client_name`, `client_phone`, `client_addres`, `client_cardNumber`, `client_cardMonth`, `client_cardYear`, `client_cardcvv`) VALUES
(1, 'salim', 569, 'rue', 99, 99, 99, 99),
(2, 'TEST', 99, '99', 99, 99, 99, 99);

-- --------------------------------------------------------

--
-- Structure de la table `get_in_touch`
--

DROP TABLE IF EXISTS `get_in_touch`;
CREATE TABLE IF NOT EXISTS `get_in_touch` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `sujet` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `get_in_touch`
--

INSERT INTO `get_in_touch` (`id`, `nom`, `prenom`, `email`, `sujet`, `message`) VALUES
(1, 'm', 'm', 'm', 'm', 'm'),
(2, 'm', 'm', 'm@dk.co', 'p', 'o'),
(3, 'm', 'm', 'm@dk.co', 'p', 'o'),
(4, 'm', 'm', 'm@dk.co', 'p', 'o'),
(5, 'mm', 'mm', 'mm@rfv.fve', 'jiio', 'oijj');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
