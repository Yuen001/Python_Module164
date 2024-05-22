-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: MACCAUD_OLIVIER_INFO1X_FILMS_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

-- Création d'un nouvelle base de donnée

-- Utilisation de cette base de donnée
-- --------------------------------------------------------
-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ferreira_moreira_marco_expi1a
DROP DATABASE IF EXISTS `ferreira_moreira_marco_expi1a`;
CREATE DATABASE IF NOT EXISTS `ferreira_moreira_marco_expi1a` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ferreira_moreira_marco_expi1a`;

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_achats
DROP TABLE IF EXISTS `t_achats`;
CREATE TABLE IF NOT EXISTS `t_achats` (
  `ID_achats` int NOT NULL AUTO_INCREMENT,
  `FK_object_achats` int DEFAULT NULL,
  `FK_fournisseur_achats` int DEFAULT NULL,
  `Prix` decimal(20,6) DEFAULT NULL,
  `Quantite` int DEFAULT NULL,
  `Raison` varchar(150) DEFAULT NULL,
  `date_achats` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_achats`) USING BTREE,
  KEY `FK_fournisseur_argent` (`FK_fournisseur_achats`) USING BTREE,
  KEY `FK_object_argent` (`FK_object_achats`) USING BTREE,
  CONSTRAINT `FK_Fournisseur_achats` FOREIGN KEY (`FK_fournisseur_achats`) REFERENCES `t_fournisseur` (`ID_fournisseur`),
  CONSTRAINT `FK_object_achats` FOREIGN KEY (`FK_object_achats`) REFERENCES `t_object` (`ID_object`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_achats : ~2 rows (environ)
INSERT INTO `t_achats` (`ID_achats`, `FK_object_achats`, `FK_fournisseur_achats`, `Prix`, `Quantite`, `Raison`, `date_achats`) VALUES
	(3, 1, 1, 3.000000, 1, 'Restock', '2024-04-23 13:39:06'),
	(4, 16, 1, 8.000000, 5, 'Restock', '2024-04-23 13:39:25');

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_fournisseur
DROP TABLE IF EXISTS `t_fournisseur`;
CREATE TABLE IF NOT EXISTS `t_fournisseur` (
  `ID_fournisseur` int NOT NULL AUTO_INCREMENT,
  `nom_entreprsie` varchar(50) DEFAULT NULL,
  `Site internet` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Adresse` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_fournisseur : ~0 rows (environ)
INSERT INTO `t_fournisseur` (`ID_fournisseur`, `nom_entreprsie`, `Site internet`, `Adresse`, `Ville`) VALUES
	(1, 'ISOK', 'https://vapora.ch/', 'Rte du Bois-des-Frères 81, 1219 Vernier, Suisse', 'Vernier');

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_lieu
DROP TABLE IF EXISTS `t_lieu`;
CREATE TABLE IF NOT EXISTS `t_lieu` (
  `ID_lieu` int NOT NULL AUTO_INCREMENT,
  `Ville` varchar(50) DEFAULT NULL,
  `Adresse` varchar(100) DEFAULT NULL,
  `NPA` int DEFAULT NULL,
  PRIMARY KEY (`ID_lieu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_lieu : ~0 rows (environ)
INSERT INTO `t_lieu` (`ID_lieu`, `Ville`, `Adresse`, `NPA`) VALUES
	(1, 'Rolle', 'Chemin des Vignes', 1180);

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_lieu_object_destock
DROP TABLE IF EXISTS `t_lieu_object_destock`;
CREATE TABLE IF NOT EXISTS `t_lieu_object_destock` (
  `ID_lieu_object_destock` int NOT NULL AUTO_INCREMENT,
  `FK_object_destock` int DEFAULT NULL,
  `FK_lieu_destock` int DEFAULT NULL,
  `Raison` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Quantité` int DEFAULT NULL,
  `date_lieu_object_destock` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_lieu_object_destock`),
  KEY `Fk_object_destock` (`FK_object_destock`),
  KEY `Fk_lieu_destock` (`FK_lieu_destock`),
  CONSTRAINT `FK_lieu_destock` FOREIGN KEY (`FK_lieu_destock`) REFERENCES `t_lieu` (`ID_lieu`),
  CONSTRAINT `FK_object_destock` FOREIGN KEY (`FK_object_destock`) REFERENCES `t_object` (`ID_object`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_lieu_object_destock : ~3 rows (environ)
INSERT INTO `t_lieu_object_destock` (`ID_lieu_object_destock`, `FK_object_destock`, `FK_lieu_destock`, `Raison`, `Quantité`, `date_lieu_object_destock`) VALUES
	(1, 15, 1, 'Destock', 4, '2024-02-27 10:57:15'),
	(2, 17, 1, 'Mal fonction', 1, '2024-02-27 10:57:24'),
	(3, 10, 1, 'Destock', 2, '2024-02-27 10:57:34');

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_lieu_object_stock
DROP TABLE IF EXISTS `t_lieu_object_stock`;
CREATE TABLE IF NOT EXISTS `t_lieu_object_stock` (
  `ID_lieu_object` int NOT NULL AUTO_INCREMENT,
  `FK_object_stock` int DEFAULT NULL,
  `FK_lieu_stock` int DEFAULT NULL,
  `Raison` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Quantité` int DEFAULT NULL,
  `date_stock` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_lieu_object`),
  KEY `FK_lieu_stock` (`FK_lieu_stock`),
  KEY `FK_object` (`FK_object_stock`) USING BTREE,
  CONSTRAINT `FK_lieu_stock` FOREIGN KEY (`FK_lieu_stock`) REFERENCES `t_lieu` (`ID_lieu`),
  CONSTRAINT `FK_object_lieu` FOREIGN KEY (`FK_object_stock`) REFERENCES `t_object` (`ID_object`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_lieu_object_stock : ~2 rows (environ)
INSERT INTO `t_lieu_object_stock` (`ID_lieu_object`, `FK_object_stock`, `FK_lieu_stock`, `Raison`, `Quantité`, `date_stock`) VALUES
	(1, 9, 1, 'Stock', 5, '2024-02-27 10:56:44'),
	(2, 10, 1, 'Stock', 2, '2024-02-27 10:56:54');

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_object
DROP TABLE IF EXISTS `t_object`;
CREATE TABLE IF NOT EXISTS `t_object` (
  `ID_object` int NOT NULL AUTO_INCREMENT,
  `nom_object` varchar(100) DEFAULT NULL,
  `nombre_utilisation` varchar(100) DEFAULT NULL,
  `Gouts` varchar(100) DEFAULT NULL,
  `Prix` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID_object`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_object : ~23 rows (environ)
INSERT INTO `t_object` (`ID_object`, `nom_object`, `nombre_utilisation`, `Gouts`, `Prix`) VALUES
	(1, 'ISOK PRO Peach Ice', '2000', 'Peach Ice', '15chf'),
	(2, 'ISOK PRO Blueberry Ice ', '2000', 'Blueberry Ice ', '15chf'),
	(3, 'ISOK PRO Pink Lemonade', '2000', 'Pink Lemonade', '15chf'),
	(4, 'ISOK PRO Apple Cursh', '2000', 'Apple Cursh', '15chf'),
	(5, 'ISOK PRO Strawbery Kiwi', '2000', 'Strawbery Kiwi', '15chf'),
	(6, 'ISOK PRO Mixed Berry', '2000', 'Mixed Berry', '15chf'),
	(7, 'ISOK PRO Grape', '2000', 'Grape', '15chf'),
	(8, 'ISOK PRO Blackberry Ice', '2000', 'Blackberry Ice', '15chf'),
	(9, 'ISOK PRO Cherry Ice', '2000', 'Cherry Ice', '15chf'),
	(10, 'ISOK PRO Passion Fruit Mango', '2000', 'Passion Fruit Mango', '15chf'),
	(11, 'ISOK X Strawberry Ice', '800', 'Strawberry Ice', '7chf'),
	(12, 'ISOK X Cherry Ice', '800', 'Cherry Ice', '7chf'),
	(13, 'ISOK X Peach Ice', '800', 'Peach Ice', '7chf'),
	(14, 'ISOK X Apple Cursh', '800', 'Apple Cursh', '7chf'),
	(15, 'ISOK X Banana Ice', '800', 'Banana Ice', '7chf'),
	(16, 'ISOK X Blueberry', '800', 'Blueberry', '7chf'),
	(17, 'ISOK X Blueberry Raspberry', '800', 'Blueberry Raspberry', '7chf'),
	(18, 'ISOK X Frozen Mango', '800', 'Frozen Mango', '7chf'),
	(19, 'ISOK X Lust Ice ', '800', 'Lust Ice ', '7chf'),
	(20, 'ISOK X Rainbow', '800', 'Rainbow', '7chf'),
	(21, 'ISOK X Ice Mint', '800', 'Ice Mint', '7chf'),
	(23, 'schkeks', NULL, NULL, NULL),
	(25, 'psgpasenfinal', NULL, NULL, NULL);

-- Listage de la structure de table ferreira_moreira_marco_expi1a. t_vente
DROP TABLE IF EXISTS `t_vente`;
CREATE TABLE IF NOT EXISTS `t_vente` (
  `ID_argent_reçu` int NOT NULL AUTO_INCREMENT,
  `ID_object` int DEFAULT NULL,
  `Prix` decimal(20,6) DEFAULT NULL,
  `Quantite` int DEFAULT NULL,
  `Raison` varchar(150) DEFAULT NULL,
  `date_vente` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID_argent_reçu`),
  KEY `ID_object` (`ID_object`),
  CONSTRAINT `FK_argent_recu_object` FOREIGN KEY (`ID_object`) REFERENCES `t_object` (`ID_object`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table ferreira_moreira_marco_expi1a.t_vente : ~2 rows (environ)
INSERT INTO `t_vente` (`ID_argent_reçu`, `ID_object`, `Prix`, `Quantite`, `Raison`, `date_vente`) VALUES
	(5, 6, 7.000000, 3, 'Vente', '2024-04-23 13:38:19'),
	(6, 16, 12.000000, 5, 'Vente', '2024-04-23 13:38:40');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
