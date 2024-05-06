-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: d123175.mysql.zonevs.eu
-- Loomise aeg: Mai 06, 2024 kell 09:36 EL
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
-- Tabeli struktuur tabelile `ilm`
--

CREATE TABLE `ilm` (
  `id` int(11) NOT NULL,
  `kuupaev` date DEFAULT NULL,
  `temp` int(11) DEFAULT NULL,
  `kirjendus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `ilm`
--

INSERT INTO `ilm` (`id`, `kuupaev`, `temp`, `kirjendus`) VALUES
(1, '2023-11-17', -2, 'külm, päike ei paista'),
(2, '2023-11-16', 0, 'sajab vihm, päike ei paista');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `inimene`
--

CREATE TABLE `inimene` (
  `id` int(11) NOT NULL,
  `eesnimi` varchar(20) DEFAULT NULL,
  `perekonnanimi` varchar(40) DEFAULT NULL,
  `maakond_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `inimene`
--

INSERT INTO `inimene` (`id`, `eesnimi`, `perekonnanimi`, `maakond_id`) VALUES
(1, 'Maksim', 'Firsov', 1),
(3, 'Kiril', 'Tokarev', 3),
(5, 'Luca', 'Gluhhov', 1),
(7, 'Kara', 'Murata', 2);

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

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `Linn`
--

CREATE TABLE `Linn` (
  `id` int(11) NOT NULL,
  `linnanimi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Andmete tõmmistamine tabelile `Linn`
--

INSERT INTO `Linn` (`id`, `linnanimi`) VALUES
(1, 'Tartu'),
(2, 'Narva');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `Linnaosa`
--

CREATE TABLE `Linnaosa` (
  `id` int(11) NOT NULL,
  `linnaosa` varchar(40) DEFAULT NULL,
  `inimesteArv` int(11) DEFAULT NULL,
  `linn_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `maakond`
--

CREATE TABLE `maakond` (
  `id` int(11) NOT NULL,
  `maakond_nimi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `maakond`
--

INSERT INTO `maakond` (`id`, `maakond_nimi`) VALUES
(1, 'Harjumaa'),
(10, 'Hiiu maakond'),
(2, 'Ida-viru maakond'),
(3, 'Lääne maakond'),
(11, 'Saare maakond'),
(4, 'Tartu maakond'),
(5, 'Võru maakond');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `opilaste`
--

CREATE TABLE `opilaste` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) DEFAULT NULL,
  `perenimii` varchar(50) DEFAULT NULL,
  `koduleht` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `opilaste`
--

INSERT INTO `opilaste` (`id`, `nimi`, `perenimii`, `koduleht`) VALUES
(1, 'Maksim', 'Artjomov', 'https://maksimartjomov22.thkit.ee'),
(2, 'Oleksandr', 'Bohatyrov', 'https://oleksandrbohatyrov22.thkit.ee'),
(3, 'Anton', 'Buivol', 'https://antonbuivol22.thkit.ee'),
(4, 'Edvard', 'Datser', 'https://edvarddatser22.thkit.ee'),
(5, 'Timur', 'Denisenko', 'https://timurdenisenko22.thkit.ee'),
(6, 'Maksim', 'Dotškin', 'https://maksimdotskin22.thkit.ee'),
(7, 'Egor', 'Fedorenko', 'https://egorfedorenko22.thkit.ee'),
(8, 'Luca', 'Gluhhov', 'https://lucagluhhov22.thkit.ee'),
(9, 'Deniss', 'Gorjunov', 'https://denissgorjunov22.thkit.ee'),
(10, 'Martin', 'Kemppi', 'https://martinkemppi22.thkit.ee'),
(11, 'Arkadi', 'Korotõtš', 'https://arkadikorotots22.thkit.ee'),
(12, 'Matvei', 'Kulakovski', 'https://matveikulakovski22.thkit.ee'),
(13, 'Darja', 'Miljukova', 'https://darjamiljukova22.thkit.ee'),
(14, 'Veronika', 'Milovzorova', 'https://veronikamilovzorova22.thkit.ee'),
(15, 'Maksym', 'Miskevych', 'https://maksymmiskevych22.thkit.ee'),
(16, 'Ekaterina', 'Mõsljajeva', 'https://ekaterinamosljajeva22.thkit.ee'),
(17, 'Martin', 'Nõmmiste', 'https://martinnommiste22.thkit.ee'),
(18, 'Aleksander', 'Rogovski', 'https://aleksanderrogovski22.thkit.ee'),
(19, 'Anna', 'Sohromova', 'https://annasohromova22.thkit.ee'),
(20, 'Maksim', 'Tšepelevitš', 'https://maksimtsepelevits22.thkit.ee'),
(21, 'Yaroslav', 'Yekasov', 'https://yaroslavyekasov22.thkit.ee'),
(22, 'Artur', 'Šuškevitš', 'https://artursuskevits22.thkit.ee');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `symdmused`
--

CREATE TABLE `symdmused` (
  `id` int(11) NOT NULL,
  `syndmus` varchar(100) DEFAULT NULL,
  `kuupaev` date DEFAULT NULL,
  `kirjeldus` varchar(200) DEFAULT NULL,
  `pilt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Andmete tõmmistamine tabelile `symdmused`
--

INSERT INTO `symdmused` (`id`, `syndmus`, `kuupaev`, `kirjeldus`, `pilt`) VALUES
(0, 'liblikas', '2023-12-23', 'väga ilus liblikas', 'https://upload.wikimedia.org/wikipedia/commons/2/27/V%C3%A4ike-kiirgliblikas.JPG');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tantsud`
--

CREATE TABLE `tantsud` (
  `id` int(11) NOT NULL,
  `tantsupaar` varchar(30) DEFAULT NULL,
  `punktd` int(11) DEFAULT 0,
  `kommentaarid` text DEFAULT ' ',
  `ava_paev` datetime DEFAULT NULL,
  `avalik` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `tantsud`
--

INSERT INTO `tantsud` (`id`, `tantsupaar`, `punktd`, `kommentaarid`, `ava_paev`, `avalik`) VALUES
(8, 'test4', 37, '', '2024-01-08 11:33:41', 1);

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
-- Indeksid tabelile `ilm`
--
ALTER TABLE `ilm`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `inimene`
--
ALTER TABLE `inimene`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maakond_id` (`maakond_id`);

--
-- Indeksid tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kasutaja` (`kasutaja`);

--
-- Indeksid tabelile `Linn`
--
ALTER TABLE `Linn`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `Linnaosa`
--
ALTER TABLE `Linnaosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linn_id` (`linn_id`);

--
-- Indeksid tabelile `maakond`
--
ALTER TABLE `maakond`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `maakond_nimi` (`maakond_nimi`);

--
-- Indeksid tabelile `opilaste`
--
ALTER TABLE `opilaste`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `symdmused`
--
ALTER TABLE `symdmused`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `tantsud`
--
ALTER TABLE `tantsud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tantsupaar` (`tantsupaar`);

--
-- Indeksid tabelile `toolid`
--
ALTER TABLE `toolid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Varvid` (`Varvid`);

--
-- Indeksid tabelile `Varvid`
--
ALTER TABLE `Varvid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `ilm`
--
ALTER TABLE `ilm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabelile `inimene`
--
ALTER TABLE `inimene`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabelile `kasutajad`
--
ALTER TABLE `kasutajad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT tabelile `Linn`
--
ALTER TABLE `Linn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabelile `Linnaosa`
--
ALTER TABLE `Linnaosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT tabelile `maakond`
--
ALTER TABLE `maakond`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT tabelile `opilaste`
--
ALTER TABLE `opilaste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT tabelile `tantsud`
--
ALTER TABLE `tantsud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT tabelile `toolid`
--
ALTER TABLE `toolid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT tabelile `Varvid`
--
ALTER TABLE `Varvid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `Linnaosa`
--
ALTER TABLE `Linnaosa`
  ADD CONSTRAINT `Linnaosa_ibfk_1` FOREIGN KEY (`linn_id`) REFERENCES `Linn` (`id`);

--
-- Piirangud tabelile `toolid`
--
ALTER TABLE `toolid`
  ADD CONSTRAINT `toolid_ibfk_1` FOREIGN KEY (`Varvid`) REFERENCES `Varvid` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
