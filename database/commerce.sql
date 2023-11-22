-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 09 nov. 2023 à 19:00
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `idcommande` varchar(255) NOT NULL,
  `qte` int(11) NOT NULL,
  `priceunique` decimal(10,2) NOT NULL,
  `idproduct` int(11) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `idcommande`, `qte`, `priceunique`, `idproduct`, `updated_at`, `created_at`) VALUES
(2, '6341', 2, '49.99', 2, '2023-11-09', '2023-11-09'),
(3, '6341', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(4, '5375', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(5, '5375', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(6, '443', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(7, '21', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(8, '1398', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(9, '6449', 1, '49.99', 2, '2023-11-09', '2023-11-09'),
(10, '6964', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(11, '4516', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(12, '263', 2, '19.99', 1, '2023-11-09', '2023-11-09'),
(13, '891', 4, '49.99', 2, '2023-11-09', '2023-11-09'),
(14, '3691', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(15, '409', 3, '19.99', 1, '2023-11-09', '2023-11-09'),
(16, '95', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(17, '95', 1, '49.99', 2, '2023-11-09', '2023-11-09'),
(18, '986', 1, '19.99', 1, '2023-11-09', '2023-11-09'),
(19, '1213', 7, '19.99', 1, '2023-11-09', '2023-11-09'),
(20, '1702', 5, '49.99', 2, '2023-11-09', '2023-11-09'),
(21, '1702', 1, '89.99', 3, '2023-11-09', '2023-11-09');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `firstname`, `lastname`, `adresse`, `totalprice`, `updated_at`, `created_at`) VALUES
(21, 'jhjhkj', 'kjhkjh', 'kjjh', '19.99', '2023-11-09', '2023-11-09'),
(95, 'gfghhg', 'hjjhg', NULL, '69.98', '2023-11-09', '2023-11-09'),
(263, 'jhjk', 'kjhk', 'jkkl', '39.98', '2023-11-09', '2023-11-09'),
(409, 'uyhjhkj', 'jhhjuy', 'jhkjkjlk', '59.97', '2023-11-09', '2023-11-09'),
(443, 'tryytuhjg', 'jhjkljjk', 'jkklj', '19.99', '2023-11-09', '2023-11-09'),
(891, 'jghjk', 'jhkjh', 'jkhkhj', '199.96', '2023-11-09', '2023-11-09'),
(986, 'vbbbbbb', 'gffffh', 'hgjhhj', '19.99', '2023-11-09', '2023-11-09'),
(1213, 'hgggggjjhg', 'yuuyjh', 'jhjh', '139.93', '2023-11-09', '2023-11-09'),
(1398, 'rttyt', 'hgjhj', 'ujjhkhj', '19.99', '2023-11-09', '2023-11-09'),
(3691, 'fghjhg', 'hhj', 'hgjhg', '19.99', '2023-11-09', '2023-11-09'),
(4516, 'kjjh', 'jhjh', 'hj', '19.99', '2023-11-09', '2023-11-09'),
(5375, 'dfrttr', 'tth', 'hgh', '19.99', '2023-11-09', '2023-11-09'),
(6341, 'cool', 'sari', 'madrid', '119.97', '2023-11-09', '2023-11-09'),
(6449, 'dgfhg', 'hghj', 'hgjjh', '49.99', '2023-11-09', '2023-11-09'),
(6964, 'ghhg', 'jhghg', 'gfhgh', '19.99', '2023-11-09', '2023-11-09');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `inventory` int(11) NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `inventory`, `updated_at`) VALUES
(1, 'T-shirt Blanc', '19.99', 90, '2023-11-09'),
(2, 'Jean Slim Noir', '49.99', 69, '2023-11-09'),
(3, 'Chaussures de Sport', '89.99', 49, '2023-11-09'),
(4, 'Veste en Cuir', '199.99', 25, '2023-11-08'),
(5, 'Robe d Été', '29.99', 60, '2023-11-08'),
(6, 'Cravate en Soie', '24.99', 40, '2023-11-08'),
(7, 'Sac à Main', '59.99', 30, '2023-11-08'),
(8, 'Chapeau Panama', '34.99', 20, '2023-11-08'),
(9, 'Écharpe en Laine', '29.99', 45, '2023-11-08'),
(10, 'Ceinture en Cuir', '39.99', 70, '2023-11-08'),
(11, 'Montre Classique', '149.99', 98, '2023-11-09'),
(12, 'Bottes en Cuir', '99.99', 40, '2023-11-08'),
(13, 'Lunettes de Soleil', '79.99', 50, '2023-11-08'),
(14, 'Chemise à Carreaux', '44.99', 55, '2023-11-08'),
(15, 'Pull-over Gris', '64.99', 35, '2023-11-08'),
(16, 'Short en Jean', '39.99', 60, '2023-11-08'),
(17, 'Sandales d Été', '49.99', 40, '2023-11-08'),
(18, 'Bijoux Fantaisie', '14.99', 85, '2023-11-08'),
(19, 'Pantalon Chino', '54.99', 50, '2023-11-08'),
(20, 'Blouse Florale', '39.99', 40, '2023-11-08');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
