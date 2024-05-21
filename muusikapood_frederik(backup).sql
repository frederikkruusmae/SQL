-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 21, 2024 kell 07:52 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `muusikapood_frederik`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(11) NOT NULL,
  `artist` varchar(30) NOT NULL,
  `album` varchar(50) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Diggi', 'Unexpected Arrival', '2013', 13.99),
(2, 'Chris Brown', 'Graffiti', '2009', 14.95),
(3, 'Alicia Keys', 'The Element of Freedom', '2009', 23.58),
(4, '50 Cent', 'Before I Self Destruct', '2009', 15.25),
(5, 'Jamelia', 'Collection', '2010', 7.99),
(6, 'Tyrus Walpole', 'Matsoft', '2002', 17.00),
(7, 'Debor Britcher', 'Greenlam', '2008', 27.00),
(8, 'Geoff Janssens', 'Ventosanzap', '2002', 26.00),
(9, 'Andros Gowan', 'Fintone', '2006', 18.00),
(10, 'Ingemar Moakler', 'Aerified', '1985', 28.00),
(11, 'Der Soppitt', 'Veribet', '2007', 30.00),
(12, 'Farrand Wood', 'Veribet', '2010', 27.00),
(13, 'Dela Kloska', 'Y-find', '2010', 16.00),
(14, 'Kameko Draper', 'Alpha', '2007', 12.00),
(15, 'Annissa Surphliss', 'Biodex', '2003', 24.00),
(16, 'Sara Sheekey', 'Alphazap', '1997', 22.00),
(17, 'Raye Wraith', 'Lotstring', '1997', 23.00),
(18, 'Tiffi Sodeau', 'Tresom', '1997', 23.00),
(19, 'Colene Linder', 'Konklux', '2011', 11.00),
(20, 'Dyana Ligoe', 'Bigtax', '1998', 14.00),
(21, 'Sandi Dolley', 'Transcof', '2010', 22.00),
(22, 'Iggie Fibbens', 'Y-find', '2005', 20.00),
(23, 'Gill Stening', 'Zamit', '2002', 13.00),
(25, 'Sioux Clinning', 'Quo Lux', '2012', 25.00),
(26, 'Estrella Kenninghan', 'Namfix', '2007', 24.00),
(27, 'Horatia Marham', 'Solarbreeze', '2004', 28.00),
(28, 'Lurline Ovell', 'Flexidy', '1995', 29.00),
(29, 'Adara Del Checolo', 'Bamity', '2002', 19.00),
(30, 'Hadria Ogan', 'Asoka', '2007', 29.00),
(31, 'Kinna Dibbe', 'Y-find', '2008', 24.00),
(32, 'Phebe Byas', 'Tres-Zap', '2005', 21.00),
(33, 'Jourdan Corpe', 'Lotstring', '1996', 15.00),
(34, 'Clevie Obey', 'Voyatouch', '1998', 30.00),
(35, 'Maurice Guillond', 'Stim', '2006', 29.00),
(36, 'Bernardina Flounders', 'Zaam-Dox', '1992', 24.00),
(37, 'Brandi Swancock', 'Trippledex', '2011', 24.00),
(38, 'Martelle Campo', 'Opela', '1988', 12.00),
(39, 'Alain Stiegers', 'Konklux', '2011', 11.00),
(40, 'Julian Dilworth', 'Solarbreeze', '1998', 19.00),
(41, 'Barron De Ambrosis', 'Duobam', '2005', 22.00),
(42, 'Cate Moye', 'Wrapsafe', '2012', 28.00),
(43, 'Dorolisa Kesterton', 'Ronstring', '1999', 18.00),
(44, 'Willem MacDavitt', 'Tampflex', '1997', 18.00),
(45, 'Olympia Pelham', 'Voyatouch', '2004', 29.00),
(46, 'Cairistiona Coram', 'Tin', '2008', 27.00),
(47, 'Abramo Belvin', 'Y-Solowarm', '1999', 25.00),
(48, 'Steffie Ethridge', 'Job', '2010', 27.00),
(49, 'Zackariah Groarty', 'Fix San', '2007', 19.00),
(50, 'Farleigh Kelbie', 'Cookley', '1968', 15.00);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `arved`
--

CREATE TABLE `arved` (
  `id` int(255) NOT NULL,
  `arve_nr` int(255) NOT NULL,
  `albumid_id` int(255) NOT NULL,
  `kliendid_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `arved`
--

INSERT INTO `arved` (`id`, `arve_nr`, `albumid_id`, `kliendid_id`) VALUES
(1, 192091, 88, 94),
(2, 232058, 63, 64),
(3, 256420, 39, 15),
(4, 484609, 72, 36),
(5, 230375, 75, 61),
(6, 766000, 35, 82),
(7, 878142, 37, 48),
(8, 644877, 63, 10),
(9, 474516, 69, 50),
(10, 60248, 82, 60),
(11, 875517, 9, 56),
(12, 434922, 68, 3),
(13, 659755, 99, 35),
(14, 822512, 76, 84),
(15, 7348, 58, 71),
(16, 821202, 80, 27),
(17, 424378, 74, 43),
(18, 495859, 40, 91),
(19, 186731, 20, 46),
(20, 421965, 35, 94),
(21, 896565, 65, 26),
(22, 73410, 76, 72),
(23, 647662, 16, 71),
(24, 417020, 77, 94),
(25, 283607, 57, 35),
(26, 371669, 38, 18),
(27, 847082, 65, 65),
(28, 736950, 20, 20),
(29, 131683, 47, 71),
(30, 207348, 2, 55),
(31, 469063, 8, 39),
(32, 596779, 84, 89),
(33, 913363, 38, 69),
(34, 674965, 79, 60),
(35, 623336, 88, 92),
(36, 868992, 80, 86),
(37, 425904, 87, 47),
(38, 150005, 83, 71),
(39, 125211, 89, 43),
(40, 344055, 38, 6),
(41, 988103, 13, 42),
(42, 66702, 68, 92),
(43, 604209, 2, 65),
(44, 214702, 15, 28),
(45, 89519, 26, 51),
(46, 644921, 97, 74),
(47, 324879, 39, 24),
(48, 908507, 50, 82),
(49, 492641, 73, 59),
(50, 868407, 48, 83);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kliendid`
--

CREATE TABLE `kliendid` (
  `id` int(11) NOT NULL,
  `eesnimi` varchar(255) NOT NULL,
  `perenimi` varchar(255) NOT NULL,
  `telefoninumber` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `kliendid`
--

INSERT INTO `kliendid` (`id`, `eesnimi`, `perenimi`, `telefoninumber`) VALUES
(1, 'Emlynne', 'Slocumb', 5540384),
(2, 'Basilio', 'Mussetti', 5440332),
(3, 'Winonah', 'Daniau', 5208776),
(4, 'Elfrieda', 'Eunson', 5457539),
(5, 'Linea', 'Oneile', 5256392),
(6, 'Dallas', 'Byard', 5992418),
(7, 'Son', 'Pooly', 5415225),
(8, 'Peggy', 'Birdwhistell', 5944781),
(9, 'Alli', 'Bartrop', 5113182),
(10, 'Ursa', 'Patshull', 5792241),
(11, 'Duff', 'Nesey', 5995999),
(12, 'Damara', 'Hubbold', 5528468),
(13, 'Bobinette', 'Fedoronko', 5999889),
(14, 'Ofella', 'Bullocke', 5514812),
(15, 'Marleen', 'Mealiffe', 5355140),
(16, 'Wilbur', 'Glaysher', 5682544),
(17, 'Pavlov', 'Gregory', 5420902),
(18, 'Ali', 'Hackey', 5876098),
(19, 'Sean', 'Almond', 5764426),
(20, 'Gregorius', 'Crumbie', 5847065),
(21, 'Claudette', 'Burris', 5320030),
(22, 'Dacia', 'Giovannacc@i', 5634784),
(23, 'Waylan', 'Nerval', 5542665),
(24, 'Ezmeralda', 'De Gregario', 5830395),
(25, 'Tandy', 'McSparran', 5678224),
(26, 'Fax', 'Strute', 5220155),
(27, 'Gisele', 'Ryrie', 5924830),
(28, 'Flossi', 'Cristofari', 5566237),
(29, 'Creigh', 'Karoly', 5778581),
(30, 'Vance', 'Badini', 5400869),
(31, 'Delmer', 'MacLachlan', 5762600),
(32, 'Collete', 'McMullen', 5798499),
(33, 'Gerrard', 'Emslie', 5191335),
(34, 'Delphine', 'Feldheim', 5543150),
(35, 'Charmian', 'Cattlow', 5523623),
(36, 'Odelia', 'McWaters', 5752730),
(37, 'Elicia', 'Gotch', 5659219),
(38, 'Amery', 'Cranmor', 5837076),
(39, 'Ofella', 'Meeland', 5294005),
(40, 'Latia', 'Gillebert', 5597973),
(41, 'Ayn', 'Darte', 5687273),
(42, 'Karney', 'Childe', 5693483),
(43, 'Bobby', 'Whicher', 5456516),
(44, 'Inigo', 'Pallant', 5760445),
(45, 'Dorian', 'Luckey', 5376790),
(46, 'Dina', 'Macknish', 5150794),
(47, 'Ettore', 'Ilem', 5370559),
(48, 'Antonetta', 'Meneghelli', 5768124),
(49, 'Cyb', 'Slisby', 5933560),
(50, 'Arnaldo', 'Abberley', 5478696);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `arved`
--
ALTER TABLE `arved`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `kliendid`
--
ALTER TABLE `kliendid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT tabelile `arved`
--
ALTER TABLE `arved`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT tabelile `kliendid`
--
ALTER TABLE `kliendid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
