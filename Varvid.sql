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
-- Tabeli struktuur tabelile `Varvid`
--

CREATE TABLE `Varvid` (
  `id` int(11) NOT NULL,
  `varv` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Andmete tõmmistamine tabelile `Varvid`
--

INSERT INTO `Varvid` (`id`, `varv`) VALUES
(1, 'punane'),
(2, 'roheline'),
(3, 'kollane'),
(4, 'must'),
(5, 'sinine');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `Varvid`
--
ALTER TABLE `Varvid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `Varvid`
--
ALTER TABLE `Varvid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
