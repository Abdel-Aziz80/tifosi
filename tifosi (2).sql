-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 17 juin 2025 à 22:21
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE `achete` (
  `id_client` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `date_achat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `achete`
--

INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES(1, 1, '2024-06-01');
INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES(1, 4, '2024-06-04');
INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES(2, 2, '2024-06-02');
INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES(2, 5, '2024-06-05');
INSERT INTO `achete` (`id_client`, `id_menu`, `date_achat`) VALUES(3, 3, '2024-06-03');

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE `appartient` (
  `id_boisson` int(11) NOT NULL,
  `id_marque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE `boisson` (
  `id_boisson` int(11) NOT NULL,
  `nom_boisson` varchar(50) NOT NULL,
  `id_marque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(1, 'Coca-cola zéro', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(2, 'Coca-cola original', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(3, 'Fanta citron', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(4, 'Fanta orange', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(5, 'Capri-sun', 1);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(6, 'Pepsi', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(7, 'Pepsi Max Zéro', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(8, 'Lipton zéro citron', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(9, 'Lipton Peach', 4);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(10, 'Monster energy ultra gold', 3);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(11, 'Monster energy ultra blue', 3);
INSERT INTO `boisson` (`id_boisson`, `nom_boisson`, `id_marque`) VALUES(12, 'Eau de source', 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_client` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `code_postal` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `email`, `code_postal`) VALUES(1, 'Alice Martin', 'alice@example.com', '75001');
INSERT INTO `client` (`id_client`, `nom_client`, `email`, `code_postal`) VALUES(2, 'Bob Dupont', 'bob@example.com', '69000');
INSERT INTO `client` (`id_client`, `nom_client`, `email`, `code_postal`) VALUES(3, 'Chloé Lefevre', 'chloe@example.com', '13001');

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE `comprend` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 1, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 5, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 9, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 13, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 25, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(1, 26, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 1, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 5, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 7, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 9, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 11, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(2, 26, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 1, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 5, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 7, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 9, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 22, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(3, 26, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 6, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 7, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 9, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 10, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 18, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(4, 26, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 5, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 7, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 9, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 12, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 25, 1);
INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`, `quantite`) VALUES(5, 26, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE `contient` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(1, 1);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(1, 12);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(2, 3);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(2, 12);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(3, 6);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(4, 7);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(5, 4);
INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES(5, 12);

-- --------------------------------------------------------

--
-- Structure de la table `est_constitué`
--

DROP TABLE IF EXISTS `est_constitué`;
CREATE TABLE `est_constitué` (
  `id_focaccia` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE `focaccia` (
  `id_focaccia` int(11) NOT NULL,
  `nom_focaccia` varchar(50) NOT NULL,
  `prix_focaccia` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(1, 'Mozaccia', 9.80);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(2, 'Gorgonzollaccia', 10.80);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(3, 'Raclaccia', 8.90);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(4, 'Emmentalaccia', 9.80);
INSERT INTO `focaccia` (`id_focaccia`, `nom_focaccia`, `prix_focaccia`) VALUES(5, 'Tradizione', 8.90);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE `ingredient` (
  `id_ingredient` int(11) NOT NULL,
  `nom_ingredient` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(1, 'Ail');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(2, 'Ananas');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(3, 'Artichaut');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(4, 'Bacon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(6, 'Base crème');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(5, 'Base Tomate');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(7, 'Champignon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(8, 'Chevre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(9, 'Cresson');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(10, 'Emmental');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(11, 'Gorgonzola');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(12, 'Jambon cuit');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(13, 'Jambon fumé');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(25, 'Mozarella');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(14, 'Oeuf');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(15, 'Oignon');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(16, 'Olive noire');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(17, 'Olive verte');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(26, 'Origan');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(18, 'Parmesan');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(19, 'Piment');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(20, 'Poivre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(21, 'Pomme de terre');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(22, 'Raclette');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(23, 'Salami');
INSERT INTO `ingredient` (`id_ingredient`, `nom_ingredient`) VALUES(24, 'Tomate cerise');

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE `marque` (
  `id_marque` int(11) NOT NULL,
  `nom_marque` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(1, 'Coca-cola');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(2, 'Cristalline');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(3, 'Monster');
INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `nom_menu` varchar(50) NOT NULL,
  `prix_menu` decimal(5,2) NOT NULL,
  `id_focaccia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `menu`
--

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(1, 'Menu Mozaccia', 12.50, 1);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(2, 'Menu Gorgonzollaccia', 13.50, 2);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(3, 'Menu Raclaccia', 12.00, 3);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(4, 'Menu Emmentalaccia', 12.90, 4);
INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix_menu`, `id_focaccia`) VALUES(5, 'Menu Tradizione', 11.50, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `achete`
--
ALTER TABLE `achete`
  ADD PRIMARY KEY (`id_client`,`id_menu`,`date_achat`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`id_boisson`,`id_marque`),
  ADD KEY `id_marque` (`id_marque`);

--
-- Index pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD PRIMARY KEY (`id_boisson`),
  ADD UNIQUE KEY `nom_boisson` (`nom_boisson`),
  ADD KEY `id_marque` (`id_marque`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD PRIMARY KEY (`id_focaccia`,`id_ingredient`),
  ADD KEY `id_ingredient` (`id_ingredient`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id_menu`,`id_boisson`),
  ADD KEY `id_boisson` (`id_boisson`);

--
-- Index pour la table `est_constitué`
--
ALTER TABLE `est_constitué`
  ADD PRIMARY KEY (`id_focaccia`,`id_menu`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Index pour la table `focaccia`
--
ALTER TABLE `focaccia`
  ADD PRIMARY KEY (`id_focaccia`),
  ADD UNIQUE KEY `nom_focaccia` (`nom_focaccia`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`id_ingredient`),
  ADD UNIQUE KEY `nom_ingredient` (`nom_ingredient`);

--
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id_marque`),
  ADD UNIQUE KEY `nom_marque` (`nom_marque`);

--
-- Index pour la table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`),
  ADD UNIQUE KEY `nom_menu` (`nom_menu`),
  ADD KEY `id_focaccia` (`id_focaccia`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `boisson`
--
ALTER TABLE `boisson`
  MODIFY `id_boisson` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `focaccia`
--
ALTER TABLE `focaccia`
  MODIFY `id_focaccia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `id_ingredient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id_marque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`) ON UPDATE CASCADE;

--
-- Contraintes pour la table `est_constitué`
--
ALTER TABLE `est_constitué`
  ADD CONSTRAINT `est_constitué_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `est_constitué_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
