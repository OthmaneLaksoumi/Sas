-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 02:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronacer`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `reference` int(5) UNSIGNED ZEROFILL NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `image_src` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `prix_unitaire` decimal(10,2) NOT NULL,
  `quantite_min` int(11) NOT NULL,
  `quantite_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`reference`, `libelle`, `image_src`, `categorie`, `prix_unitaire`, `quantite_min`, `quantite_stock`) VALUES
(00002, 'USB Host Shield 2.0 Board pour Arduino', 'Arduino_img1.png', 'Arduino', 259.00, 15, 20),
(00003, 'Arduino Mega 2560 + Câble USB', 'Arduino_img2.png', 'Arduino', 170.00, 10, 15),
(00004, 'Arduino Pro Mini Atmega328 3.3V 8MHz', 'Arduino_img3.png', 'Arduino', 55.00, 15, 10),
(00005, 'Arduino Pro Mini Atmega328 5V 16MHz', 'Arduino_img4.png', 'Arduino', 55.00, 15, 20),
(00006, 'sensor Shield capteur pour Arduino UNO', 'Arduino_img5.png', 'Arduino', 80.00, 25, 24),
(00007, 'Afficheur LCD 1602', 'Afficheur_img1.png', 'Afficheur', 35.00, 20, 35),
(00009, 'Afficheur 7 Segment cathode commun 3 bits', 'Afficheur_img2.png', 'Afficheur', 25.00, 20, 31),
(00010, 'Afficheur Oled 0.96 i2c pour Arduino', 'Afficheur_img3.png', 'Afficheur', 100.00, 100, 120),
(00011, 'Kit bras Robotique Arduino', 'Robot_img1.png', 'Robot', 489.00, 5, 7),
(00012, 'Kit bras Robotique Arduino – Téléguide Bluetooth', 'Robot_img2.png', 'Robot', 649.00, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifiant` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifiant`, `pass`) VALUES
('laksoumi99', 'laksoumiPass'),
('ahmed', 'ahmedPass'),
('hassan', 'hassanPass'),
('mohammed', 'mohammedPass'),
('youssef', 'youssefPass');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`reference`),
  ADD UNIQUE KEY `libelle` (`libelle`),
  ADD UNIQUE KEY `image_src` (`image_src`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `reference` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
