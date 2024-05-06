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
-- Tabeli struktuur tabelile `kasutajad`
--

CREATE TABLE `kasutajad` (
  `id` int(11) NOT NULL,
  `kasutaja` varchar(50) DEFAULT NULL,
  `parool` varchar(30) DEFAULT NULL,
  `onAdmin` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kasutajad`
--

INSERT INTO `kasutajad` (`id`, `kasutaja`, `parool`, `onAdmin`) VALUES
(1, 'admin', 'tagJdjbPkRspk', 1),
(2, 'opilane', 'taaOQIXv0JXmg', 0),
(3, 'luca', 'AnAG5LtbHItgE', 0),
(5, 'max', 'AnIgBuxsql.QM', 0),
(6, 'Liana', 'tatBnYPsBfpbc', 0),
(7, 'pimpa', 'tarKYkOW/WwM2', 0),
(8, 'L', 'ta7tcBt9MUVwc', 0),
(9, 'irina', 'taGumdzSRSWLc', 0),
(10, 'super', 'taplf5.uTarF6', 0),
(11, 'klo[ak918', 'tatfY8INabo5I', 0),
(12, 'klopak9181', 'taqq2cOhqiPH6', 0),
(13, '!vasius1!', 'ta3maWUqyKlec', 0),
(14, 'tool', 'taDhtHIFiKi7U', 0),
(15, 'kkk', 'taV5H03yXvvLM', 0),
(16, 'test', 'tagJdjbPkRspk', 0),
(17, 'Gera', 'taDmE6gM/8iyA', 0),
(18, 'b', 'ta0Y6kAI5Bzas', 0),
(19, 'Evan', 'taTYnL40WEJOY', 0);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kasutaja` (`kasutaja`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
