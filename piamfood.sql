-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 21 fév. 2022 à 16:40
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `piamfood`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datearrivee` date DEFAULT NULL,
  `heurearrivee` time DEFAULT NULL,
  `nomcommande` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `userid`, `restaurantid`, `nom`, `prenoms`, `telephone`, `datearrivee`, `heurearrivee`, `nomcommande`, `details`, `status`, `created_at`, `updated_at`, `quantite`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, '2022-02-09', '11:59:32', 'Coca-Cola __ 600 FCFA', NULL, 'New', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `sujet` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentaire` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `etoile` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211224002633', '2021-12-24 01:31:10', 708),
('DoctrineMigrations\\Version20211228085811', '2021-12-28 09:58:39', 1443),
('DoctrineMigrations\\Version20211228101422', '2021-12-28 11:14:37', 508),
('DoctrineMigrations\\Version20211228160640', '2021-12-28 17:09:57', 2136),
('DoctrineMigrations\\Version20211229112722', '2021-12-29 12:27:35', 1295),
('DoctrineMigrations\\Version20211229132630', '2021-12-29 14:26:44', 463),
('DoctrineMigrations\\Version20211229212518', '2021-12-29 22:26:56', 1745),
('DoctrineMigrations\\Version20220101204718', '2022-01-01 21:47:37', 756),
('DoctrineMigrations\\Version20220102112026', '2022-01-02 12:20:37', 533),
('DoctrineMigrations\\Version20220102113030', '2022-01-02 12:30:42', 650),
('DoctrineMigrations\\Version20220102114323', '2022-01-02 12:43:36', 287),
('DoctrineMigrations\\Version20220103022105', '2022-01-03 03:21:19', 405),
('DoctrineMigrations\\Version20220103083319', '2022-01-03 09:33:31', 317),
('DoctrineMigrations\\Version20220103113216', '2022-01-03 12:32:26', 309),
('DoctrineMigrations\\Version20220103115226', '2022-01-03 12:52:41', 298),
('DoctrineMigrations\\Version20220103181418', '2022-01-03 19:15:28', 869),
('DoctrineMigrations\\Version20220103225125', '2022-01-03 23:51:41', 499),
('DoctrineMigrations\\Version20220104113745', '2022-01-04 12:37:58', 366),
('DoctrineMigrations\\Version20220105171446', '2022-01-05 18:15:10', 2222),
('DoctrineMigrations\\Version20220105190313', '2022-01-05 20:03:24', 183),
('DoctrineMigrations\\Version20220106134010', '2022-01-06 14:40:47', 628),
('DoctrineMigrations\\Version20220106144249', '2022-01-06 15:43:04', 224),
('DoctrineMigrations\\Version20220107010323', '2022-01-07 02:03:57', 859),
('DoctrineMigrations\\Version20220107090122', '2022-01-07 10:01:36', 2087),
('DoctrineMigrations\\Version20220107090857', '2022-01-07 10:09:06', 324),
('DoctrineMigrations\\Version20220107110041', '2022-01-07 12:00:49', 486),
('DoctrineMigrations\\Version20220107173429', '2022-01-07 18:34:39', 1018),
('DoctrineMigrations\\Version20220110090821', '2022-01-10 10:08:31', 1208),
('DoctrineMigrations\\Version20220110100223', '2022-01-10 11:02:29', 424),
('DoctrineMigrations\\Version20220110100443', '2022-01-10 11:04:49', 152),
('DoctrineMigrations\\Version20220117194737', '2022-01-17 20:47:57', 3284),
('DoctrineMigrations\\Version20220118114939', '2022-01-18 12:50:01', 1195),
('DoctrineMigrations\\Version20220118122646', '2022-01-18 13:26:56', 615),
('DoctrineMigrations\\Version20220118231441', '2022-01-19 00:18:38', 5153),
('DoctrineMigrations\\Version20220118233536', '2022-01-19 00:35:46', 244),
('DoctrineMigrations\\Version20220119003156', '2022-01-19 01:32:18', 861),
('DoctrineMigrations\\Version20220119003435', '2022-01-19 01:34:40', 940),
('DoctrineMigrations\\Version20220119094613', '2022-01-19 10:46:31', 1424),
('DoctrineMigrations\\Version20220119141802', '2022-01-19 15:18:13', 566),
('DoctrineMigrations\\Version20220124163729', '2022-01-24 17:37:53', 1212),
('DoctrineMigrations\\Version20220126171747', '2022-01-26 18:18:14', 1094),
('DoctrineMigrations\\Version20220128170859', '2022-01-28 18:09:29', 6218),
('DoctrineMigrations\\Version20220201150142', '2022-02-01 16:02:29', 1901),
('DoctrineMigrations\\Version20220201185921', '2022-02-01 19:59:51', 458),
('DoctrineMigrations\\Version20220202104435', '2022-02-02 11:44:47', 5269),
('DoctrineMigrations\\Version20220204114015', '2022-02-04 12:40:50', 453);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `restaurant_id` int(11) DEFAULT NULL,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `restaurant_id`, `titre`, `image`) VALUES
(33, 1, NULL, '92869e541a2e0c322a56ee225687d34e.jpeg'),
(34, 1, NULL, 'bf69fa897a9287f2642efc9a68588d0e.jpeg'),
(36, 1, 'vue interieure', 'f3d5c1811afd4a287db9a7029f8d36c1.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motscles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `delete_menu` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id`, `titre`, `motscles`, `description`, `image`, `status`, `created_at`, `updated_at`, `delete_menu`) VALUES
(32, 'Pizzas', NULL, NULL, '38502758aca66865b7ae8fff569a8b3a.png', NULL, NULL, NULL, 0),
(33, 'Burgers', NULL, NULL, 'aeef60af6ec4ff946a54eb2dac20617d.png', NULL, NULL, NULL, 0),
(34, 'sandwich', NULL, NULL, '1fafeb7a6dffeffa0266c48da5fad0e9.png', NULL, NULL, NULL, 0),
(38, 'Plat Africain', NULL, NULL, '4c98b7a5a8beff105d9b933310772a94.png', NULL, NULL, NULL, 0),
(39, 'Boissons', NULL, NULL, '529df6f32d9105ca57084a9bdd51d66e.jpeg', NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`id`, `nom`, `sujet`, `message`, `status`, `ip`, `note`, `created_at`, `updated_at`, `email`) VALUES
(1, 'Jean ADJANOHOUN', NULL, 'je veux reserver une place', 'Lus', '127.0.0.1', 'Nous vous répondrons de si tôt', NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(2, 'Jean ADJANOHOUN', NULL, 'je veux reserver une place', 'Repondu', '127.0.0.1', 'ok', NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(3, 'Jean ADJANOHOUN', NULL, 'je veux reserver une place', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(4, 'Jean ADJANOHOUN', NULL, 'je veux reserver une place', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(5, 'Jean ADJANOHOUN', NULL, 'jjjjejjjjjjjjjjj', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(6, 'Jean ADJANOHOUN', NULL, 'jjjjejjjjjjjjjjj', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(7, 'Jean ADJANOHOUN', NULL, 'jjjjejjjjjjjjjjj', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(8, 'Jean ADJANOHOUN', NULL, 'jjjjejjjjjjjjjjj', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(9, 'Jean ADJANOHOUN', NULL, 'jjjjejjjjjjjjjjj', 'New', '127.0.0.1', NULL, NULL, NULL, 'jeaneudesadjanohoun@gmail.com'),
(10, 'Jean ADJANOHOUN', NULL, 'goiupgtçfdcltd', 'New', '127.0.0.1', NULL, NULL, NULL, NULL),
(11, 'Jeanne ADJANOHOUN', NULL, NULL, 'New', '127.0.0.1', NULL, NULL, NULL, 'jeanneeudesadjanohoun@gmail.com'),
(12, 'Jean Eudes ADJANOHOU', NULL, 'je voudrais réserver une place', 'Lus', '127.0.0.1', 'Nous vous répondrons de si tôt', NULL, NULL, 'jean108adjanohoun@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `parametre`
--

CREATE TABLE `parametre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motscles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entreprise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apropos` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parametre`
--

INSERT INTO `parametre` (`id`, `titre`, `motscles`, `description`, `entreprise`, `adresse`, `telephone`, `email`, `smtpserver`, `smtpemail`, `smtppassword`, `smtpport`, `facebook`, `instagram`, `whatsapp`, `apropos`, `contact`, `reference`, `status`) VALUES
(1, 'PiamFood', 'PiamFood', 'PiamFood', 'PiamFood Entreprise', 'Rue du Boulevard du 30Août, Soviepe,Lomé,TOGO', '+22891031474', 'jeaneudesadjanohoun@gmail.com', 'gmail', 'admin2@admin.com', 'piamfood2022', NULL, NULL, NULL, NULL, 'PIAMFOOD est un restaurant basé à Lomé, proposant des pizzas, des burgers, des crèmes, des boissons et des plats locaux offerts dans un cadre convivial.\r\n</br>\r\n</br>\r\n</br>\r\nPIAMFOOD est un restaurant basé à Lomé, proposant des pizzas, des burgers, des crèmes, des boissons et des plats locaux offerts dans un cadre convivial. Voici notre histoire…\r\n\r\nAlors en possession de deux atouts majeurs à savoir : une « compétence culinaire affinée » et une « approche innovante » de la restauration, nous étions soucieux d’agrémenter les petits bonheurs du quotidien de toutes ces personnes qui formaient notre entourage.\r\n</br>\r\n</br>\r\n</br>\r\nAinsi, PIAMF0OD a pu ouvrir ses portes aux rires d’enfants, aux familles réunies, aux amoureux; bref, à tous ceux qui célèbrent la vie !\r\n\r\nNous vous ouvrons nos Portes en Décembre, afin de découvrir notre cuisine authentique et respectueuse du bien-être. Nous ne pouvons débuter ce voyage, ni cette histoire fascinante sans vous. Nous lançons nos premières franchises ici au Togo, car c\'est près de vous que ça commence.', 'Nous contacter\r\n\r\nComment nous joindre ?\r\n\r\n\r\n\r\nDemande directe à nos entreprises, par écrit et oralement ou \"boîtes à suggestions\"\r\n par le biais d\'une notification que vous pouvez annoncer.\r\n\r\n\r\nVotre demande sera examinée attentivement, par votre information sera donnée dès que les enquêtes nécessaires.\r\n\r\n\r\n\r\nVeuillez contacter notre département d\'acquisition d\'informations concernant votre demande d\'informations.', NULL, 'True');

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE `plat` (
  `id` int(11) NOT NULL,
  `plat_menu_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `status` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`id`, `plat_menu_id`, `titre`, `description`, `image`, `prix`, `numero`, `status`, `quantite`) VALUES
(1, 39, 'Coca Cola', 'Produit BB', '294a89f1cbf3be04cefaa6479dc806a7.jpeg', 600, NULL, NULL, NULL),
(2, 39, 'Malta ', 'Produit BB', '4b24c62167f60277c180c366beaa401f.png', 500, NULL, NULL, NULL),
(3, 39, 'guiness', 'Produit BB', '2928facc277f9553346a7274b2368fcc.png', 1000, NULL, NULL, NULL),
(4, 33, 'Togo Burger ', 'Sauce tomate, champignon, poulet, olive, emmental, mozzarella', '164521d4ee519fe5b901b763695e00aa.png', 2000, NULL, NULL, NULL),
(5, 32, 'Royal Poulet', 'Sauce tomate, champignon, poulet, olive, emmental, mozzarella', '6ae64f0045bc49c867e4b087ab9227df.png', 2500, NULL, NULL, NULL),
(6, 38, 'Cuisse De Poulet Rôti', '', '5bd0a0de5bf3d3a656c9ebd5753d67b2.png', 4500, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prix` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datearrivee` date DEFAULT NULL,
  `heurearrivee` time DEFAULT NULL,
  `ip` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombrepersonnes` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motscles` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `titre`, `motscles`, `description`, `image`, `adresse`, `phone`, `email`, `ville`, `location`, `status`, `created_at`, `updated_at`, `userid`) VALUES
(1, 'PiamFood', 'PiamFood', 'PiamFood est un bon restaurant avec un cadre à couper le souffle.\r\n</br>\r\n</br>\r\n</br>\r\nPIAMFOOD est un restaurant basé à Lomé, proposant des pizzas, des burgers, des crèmes, des boissons et des plats locaux offerts dans un cadre convivial. Voici notre histoire… Alors en possession de deux atouts majeurs à savoir : une « compétence culinaire affinée » et une « approche innovante » de la restauration, nous étions soucieux d’agrémenter les petits bonheurs du quotidien de toutes ces personnes qui formaient notre entourage.\r\n</br>\r\n</br>\r\n</br>\r\nAinsi, PIAMF0OD a pu ouvrir ses portes aux rires d’enfants, aux familles réunies, aux amoureux; bref, à tous ceux qui célèbrent la vie ! Nous vous ouvrons nos Portes en Décembre, afin de découvrir notre cuisine authentique et respectueuse du bien-être. Nous ne pouvons débuter ce voyage, ni cette histoire fascinante sans vous. Nous lançons nos premières franchises ici au Togo, car c\'est près de vous que ça commence.', 'fb5dfb5893ce007feccc2aae88182726.jpeg', 'Adidogomé, Rue des Oliviers', '+22890999999', 'piamfood@gmail.com', 'Lomé', NULL, 'True', '2022-01-05 19:03:43', '2022-01-05 19:03:43', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `table`
--

CREATE TABLE `table` (
  `id` int(11) NOT NULL,
  `nombrepersonne` int(11) DEFAULT NULL,
  `restaurantid` int(11) DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `temoignage`
--

CREATE TABLE `temoignage` (
  `id` int(11) NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `temoignage`
--

INSERT INTO `temoignage` (`id`, `auteur`, `profession`, `image`, `description`) VALUES
(1, 'Abalo', 'Journaliste', 'fefc2e538197e8b22f53210d93e8cdb7.jpeg', 'je temoigne'),
(2, 'Afi', 'Commerçante', '00112ccd3b1992bcfd53ff7dd1cd0f2a.jpeg', 'J\'aime  bien votre restaurant pour votre accueil et vos plats délicieux'),
(3, 'Amah', 'Coiffeuse', '63439f2091ddf11f3b75471c8c2dfd65.jpeg', 'Oh j\'adore');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prenoms` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `nom`, `prenoms`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin@piam.tg', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$STQzVTk0UURrRk1idTZhWA$GmHYu67OkhjR24KshiE/bM2DPTrjxICr/1iFHuix6Jg', 'piam', 'food', '846ff72d5bd3500edae3d3f8c5888c3d.jpeg', 'True', NULL, NULL),
(2, 'user@user.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Sm5HOW5DWm9hRW9kUlZZbQ$IvaEVQZ+GhOBw/yEOqVP/COnruo1OPVinqeoty01AKw', NULL, NULL, '1acf672d95cae44d8c4dbc38e444d289.jpeg', 'True', NULL, NULL),
(3, 'jean@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$d211U0tBTzZZaTFQUFBFUw$2UmigtFYkQvVnQ8iVRcVnw6G/YClXZW9oDvsdA2HvKI', 'ADJANOHOUN', 'Jean-Eudes', '61711b81216418f62e05d4e796501bc3.jpeg', 'True', NULL, NULL),
(4, 'piam@piamfood.tg', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UU5HUUY2Q01jQng1Z3BNRw$/w3qm1v5XVV9aZ4a7wJWHa54OUPpdiRnIaE+JmXHaXM', 'piamfood', 'food', '0ed1ad530922553fbb75ff48c46e0047.jpeg', 'True', NULL, NULL),
(5, 'admin@admin.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ak1NOHBpMkxma01LNDMxTg$fgTl1fS8W+rk4MwSWUECs9ndKo3IZ9UH4KzN5b6DlnM', 'admin', 'piamfood', '5875fe26c9f32113608c799afa4cccbc.jpeg', 'True', NULL, NULL),
(7, 'admin1@admin.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UnhqekdFQXBSZXl5TXIxNQ$J56yyP71OGz0Z7WkL4n2MWTI3OqD+8EuuRgiTQA95jA', 'Jean-Eudes', 'Yao', '60f99d48e75c127ea3413f22b435add1.jpeg', 'True', NULL, NULL),
(8, 'admin2@admin.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$dE92aUFnYi5PZWdFT3pFTw$/Ub2MUsVfQcxcPBFW4ArP9IHVS0m4GsCNnl5I1bF3Kk', 'Doe', 'John', '06e6dcaf1c064f228a37cd1053e6b3e0.png', 'True', NULL, NULL),
(9, 'user1@user.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$S3c4aThITFRqNEl6alM1Ug$a26TtAKCPd4FKDvVYLY96BOW/7kxh0QSb1gO0QyF97M', 'Issifou', 'Manaf', NULL, 'True', NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045FB1E7706E` (`restaurant_id`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parametre`
--
ALTER TABLE `parametre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `plat`
--
ALTER TABLE `plat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2038A2074B8669F5` (`plat_menu_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `temoignage`
--
ALTER TABLE `temoignage`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `parametre`
--
ALTER TABLE `parametre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `plat`
--
ALTER TABLE `plat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `table`
--
ALTER TABLE `table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `temoignage`
--
ALTER TABLE `temoignage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045FB1E7706E` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`id`);

--
-- Contraintes pour la table `plat`
--
ALTER TABLE `plat`
  ADD CONSTRAINT `FK_2038A2074B8669F5` FOREIGN KEY (`plat_menu_id`) REFERENCES `menu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
