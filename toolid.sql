-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: d123175.mysql.zonevs.eu
-- Loomise aeg: Mai 06, 2024 kell 10:39 EL
-- Serveri versioon: 10.4.32-MariaDB-log
-- PHP versioon: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `d123175_andmebaas`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toolid`
--

CREATE TABLE `toolid` (
  `id` int(11) NOT NULL,
  `tool` varchar(20) DEFAULT NULL,
  `tellimiskogus` int(11) DEFAULT 0,
  `valminudkogus` int(11) DEFAULT 0,
  `Varvid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Andmete tõmmistamine tabelile `toolid`
--

INSERT INTO `toolid` (`id`, `tool`, `tellimiskogus`, `valminudkogus`, `Varvid`) VALUES
(4, 'pivatool', 10, 10, 4),
(6, 'brudtool', 7, 7, 5),
(7, 'pangatool', 5, 5, 1),
(8, 'sigmatool', 69, 67, 3),
(26, 'mettalitool', 8, 8, 4),
(27, 'tt', 5, 5, 1),
(28, 'uustool', 25, 0, 1);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `toolid`
--
ALTER TABLE `toolid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Varvid` (`Varvid`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `toolid`
--
ALTER TABLE `toolid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `toolid`
--
ALTER TABLE `toolid`
  ADD CONSTRAINT `toolid_ibfk_1` FOREIGN KEY (`Varvid`) REFERENCES `Varvid` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
