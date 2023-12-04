-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 02:14 PM
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
-- Database: `brief6`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `name` varchar(255) NOT NULL,
  `descrt` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `isHide` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`name`, `descrt`, `img`, `isHide`) VALUES
('Afficheur', 'The term \"Afficheur\" typically refers to a display or visual output device. In the context of electronics and technology, an \"afficheur\" is often associated with various types of display technologies used to present information or data visually. This can include LED displays, LCD screens, OLED panels, and other visual output components.', 'assets/catgImages/Afficheur_img1.png', 0),
('Arduino', 'Description of Arduino Categorie', 'assets/catgImages/Arduino_img1.png', 0),
('Batterie', 'A battery is a device that stores energy in a chemical form and converts it into electrical energy when needed. It is composed of electrochemical cells that enable the transfer of electrons between reactive materials.', 'assets/catgImages/Batterie_img1.png', 0),
('Diode', 'The \"Diode\" category encompasses a variety of fundamental electronic components used in electronic circuits. A diode is a semiconductor device that allows the passage of electric current in one direction while blocking it in the opposite direction.', 'assets/catgImages/Diode_img1.png', 0),
('Robot', 'The \"Robots\" category offers a variety of intelligent mechanical creations designed to simplify daily life, stimulate curiosity, and push the boundaries of innovation. These robots, ranging from educational toys to sophisticated automatons.', 'assets/catgImages/Robot_img1.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `reference` int(5) UNSIGNED ZEROFILL NOT NULL,
  `etiquette` varchar(255) NOT NULL,
  `descpt` text NOT NULL,
  `codeBarres` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `prixAchat` decimal(5,2) NOT NULL,
  `prixFinal` decimal(5,2) NOT NULL,
  `prixOffre` decimal(5,2) NOT NULL,
  `qntMin` int(11) NOT NULL,
  `qntStock` int(11) NOT NULL,
  `catg` varchar(255) NOT NULL,
  `isHide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`reference`, `etiquette`, `descpt`, `codeBarres`, `img`, `prixAchat`, `prixFinal`, `prixOffre`, `qntMin`, `qntStock`, `catg`, `isHide`) VALUES
(00006, 'Afficheur LCD 1602', 'Afficheur économique alphanumérique 2 x 16 caractères avec rétroéclairage bleu.', 'aff00001', 'assets/images/Afficheur_img1.png', 25.00, 35.00, 35.00, 40, 33, 'Afficheur', 0),
(00007, 'Afficheur 9 Segment cathode commun 3 bits', 'Afficheur 7 Segment cathode commun 3 bits', 'aff00002', 'assets/images/Afficheur_img2.png', 15.00, 25.00, 25.00, 20, 31, 'Afficheur', 0),
(00008, 'Afficheur Oled 0.96 i2c pour Arduino', 'Module afficheur monochrome OLED 0,96” 128 x 64 pixels basé sur un circuit SSD1306. Ce module communique avec un microcontrôleur de type Arduino ou compatible via le bus I2C.', 'aff00003', 'assets/images/Afficheur_img3.png', 70.00, 100.00, 100.00, 100, 120, 'Afficheur', 0),
(00010, 'Kit bras Robotique Arduino', 'Kit de bras robotique idéal pour les étudiants, les collégiens, les amateurs de bricolage, etc.', 'robot00001', 'assets/images/Robot_img1.png', 350.00, 489.00, 489.00, 5, 7, 'Robot', 0),
(00011, 'Robotique Arduino – Téléguide Bluetooth', 'Kit de bras robotique idéal pour les étudiants, les collégiens, les amateurs de bricolage, etc.', 'robot00002', 'assets/images/Robot_img2.png', 490.00, 649.00, 649.00, 3, 5, 'Robot', 0),
(00012, 'Diode 1N40001', '0.5', 'diode000001', 'assets/images/Diode_img1.png', 0.20, 0.50, 0.50, 500, 700, 'Diode', 0),
(00013, 'diode zener', 'diode zener', 'diode000002', 'assets/images/Diode_img2.png', 0.50, 0.50, 0.50, 500, 499, 'Diode', 0),
(00015, 'Module Charge Décharge 3.7V 9V 5V 2AA', 'Tension d’entrée: DC4.5-8V, Tension de sortie: 4.3-27V ((boost rotatif dans le sens antihoraire du positionneur).', 'batterie000001', 'assets/images/Batterie_img1.png', 30.00, 55.00, 50.00, 50, 73, 'Batterie', 0),
(00021, 'Pile lithium rechargeable 18650 3.7V', 'Batterie lithium rechargeable 18650 3.7V', 'batterie000002', 'assets/images/Batterie_img2.png', 17.00, 30.00, 30.00, 50, 53, 'Batterie', 0),
(00023, 'support pour 1 piles 18650', 'support pour 1 piles 18650', 'batterie000003', 'assets/images/Batterie_img3.png', 13.00, 20.00, 20.00, 50, 59, 'Batterie', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `username`, `pass`, `state`, `role`) VALUES
('a@a.a', 'Ahmed_89', '0123456', 1, 0),
('b@b.b', 'hamza45', '123456789', 1, 0),
('c@c.com', 'Hassan885', '147852', 1, 0),
('ddd@ds.k', 'laksoumi', '144', 0, 0),
('e@e.com', 'emad', '00123', 1, 0),
('hamid@gmail.com', 'hamid445', 'hamid', 0, 0),
('khalid@gmail.youcode', 'khalidd', 'khalid', 1, 1),
('laksoumi.ot@gmail.com', 'laksoumi99', '123456', 1, 1),
('sslaksoumi@gmail.com', 'Othmane99', '123456789//', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`reference`,`codeBarres`),
  ADD UNIQUE KEY `etiquette` (`etiquette`),
  ADD UNIQUE KEY `img` (`img`),
  ADD KEY `products_ibfk_1` (`catg`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `pass` (`pass`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `reference` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catg`) REFERENCES `categories` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
