-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 10:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simra_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `coordinate`
--

CREATE TABLE `coordinate` (
  `coorniadteId` int(11) NOT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinate`
--

INSERT INTO `coordinate` (`coorniadteId`, `longitude`, `latitude`, `samplingId`) VALUES
(6, '28.2292712', '-25.7478676', 21),
(7, '28.2292712', '-25.7478676', 22),
(8, '28.2292712', '-25.7478676', 23),
(9, '28.2292712', '-25.7478676', 24),
(10, '28.2292712', '-25.7478676', 25),
(11, '28.2292712', '-25.7478676', 26),
(12, '28.2292712', '-25.7478676', 27),
(13, '28.2292712', '-25.7478676', 28),
(14, '28.2292712', '-25.7478676', 29),
(15, '28.2292712', '-25.7478676', 30),
(16, '28.2292712', '-25.7478676', 31),
(17, '28.2292712', '-25.7478676', 32),
(18, '28.2292712', '-25.7478676', 33),
(19, '28.2292712', '-25.7478676', 34),
(20, '28.2292712', '-25.7478676', 35),
(21, '28.2292712', '-25.7478676', 36),
(22, '28.2292712', '-25.7478676', 37),
(23, '28.2292712', '-25.7478676', 38),
(24, '28.2292712', '-25.7478676', 39),
(25, '28.2292712', '-25.7478676', 40),
(26, '28.2292712', '-25.7478676', 41),
(27, '28.2292712', '-25.7478676', 42),
(28, '28.2292712', '-25.7478676', 43),
(29, '28.2292712', '-25.7478676', 44),
(30, '28.2292712', '-25.7478676', 45),
(31, '28.2292712', '-25.7478676', 46),
(32, '28.2292712', '-25.7478676', 47),
(33, '28.2292712', '-25.7478676', 48),
(34, '28.2292712', '-25.7478676', 49),
(35, '28.2292712', '-25.7478676', 50),
(36, '28.2292712', '-25.7478676', 51),
(37, '28.2292712', '-25.7478676', 52),
(38, '28.2292712', '-25.7478676', 53),
(39, '28.2292712', '-25.7478676', 54),
(40, '28.2292712', '-25.7478676', 55),
(41, '28.2292712', '-25.7478676', 56),
(42, '28.2292712', '-25.7478676', 57),
(43, '28.2292712', '-25.7478676', 58),
(44, '28.2292712', '-25.7478676', 59),
(45, '28.2292712', '-25.7478676', 60),
(46, '28.2292712', '-25.7478676', 61),
(47, '28.2292712', '-25.7478676', 62),
(48, '28.2292712', '-25.7478676', 63),
(49, '28.2292712', '-25.7478676', 64),
(50, '28.2292712', '-25.7478676', 65),
(51, '28.2292712', '-25.7478676', 66),
(52, '28.2292712', '-25.7478676', 67),
(53, '28.2292712', '-25.7478676', 68),
(54, '28.2292712', '-25.7478676', 69),
(55, '28.2292712', '-25.7478676', 70),
(56, '28.2292712', '-25.7478676', 71),
(57, '28.2292712', '-25.7478676', 72),
(58, '28.2292712', '-25.7478676', 73),
(59, '28.2292712', '-25.7478676', 74),
(60, '28.2292712', '-25.7478676', 75),
(61, '28.2292712', '-25.7478676', 76),
(62, '28.2292712', '-25.7478676', 77),
(63, '28.2292712', '-25.7478676', 78),
(64, '28.2292712', '-25.7478676', 79),
(65, '28.2292712', '-25.7478676', 80),
(66, '28.2292712', '-25.7478676', 80),
(67, '28.2292712', '-25.7478676', 81),
(68, '28.2292712', '-25.7478676', 82),
(69, '28.2292712', '-25.7478676', 83),
(70, '28.2292712', '-25.7478676', 84),
(71, '28.2292712', '-25.7478676', 85),
(72, '28.2292712', '-25.7478676', 86),
(73, '28.2292712', '-25.7478676', 87),
(74, '28.2292712', '-25.7478676', 88),
(75, '28.2292712', '-25.7478676', 89),
(76, '28.2292712', '-25.7478676', 90),
(77, '28.2292712', '-25.7478676', 91),
(78, '28.2292712', '-25.7478676', 92),
(79, '28.2292712', '-25.7478676', 93),
(80, '28.2292712', '-25.7478676', 94),
(81, '28.2292712', '-25.7478676', 95),
(82, '28.2292712', '-25.7478676', 96);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `venue` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `muni_name` varchar(100) DEFAULT NULL,
  `muni_id` varchar(10) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `date`, `venue`, `image`, `muni_name`, `muni_id`, `userId`) VALUES
(4, 'pictures', 'testing', '2023-12-12', 'tut', 'http://localhost:3001/api/uploads/1699952152120.jpg', NULL, NULL, NULL),
(5, 'presentation', 'progress report', '2023-12-14', 'tut', 'http://localhost:3001/api/uploads/1699952343345.jpg', NULL, NULL, NULL),
(6, 'wdfgb', 'dsfvb ', '0000-00-00', 'sdfb', 'http://localhost:3001/api/uploads/1699965684220.jpg', NULL, NULL, NULL),
(7, 'adsfb', 'sfgvbgv', '0000-00-00', 'sfvb ', 'http://localhost:3001/api/uploads/1699967816870.jpg', NULL, NULL, NULL),
(8, 'wedety', 'reh', '0000-00-00', 'etg', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fib_indicator`
--

CREATE TABLE `fib_indicator` (
  `indicator_id` int(11) NOT NULL,
  `indicator` varchar(255) DEFAULT NULL,
  `ratio` decimal(10,0) DEFAULT NULL,
  `count_indicator` int(11) DEFAULT NULL,
  `estimated_count` decimal(10,0) DEFAULT NULL,
  `is_customized` tinyint(1) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fib_indicator`
--

INSERT INTO `fib_indicator` (`indicator_id`, `indicator`, `ratio`, `count_indicator`, `estimated_count`, `is_customized`, `samplingId`) VALUES
(1, 'Coliforms', 1, 100, 100, 0, 30),
(2, 'E coli', 1, 200, 200, 0, 31),
(3, 'E coli', 1, 200, 200, 0, 31),
(4, 'E coli', 1, 200, 200, 0, 31),
(5, 'E coli', 1, 200, 200, 0, 31),
(6, 'E coli', 1, 200, 200, 0, 31),
(7, 'E coli', 1, 200, 200, 0, 31),
(8, 'E coli', 1, 200, 200, 0, 31),
(9, 'E coli', 1, 200, 200, 0, 31),
(10, 'Giardia', 1, 55, 44, NULL, 78),
(11, 'Giardia', 1, 55, 44, NULL, 79),
(12, 'Giardia', 1, 55, 44, NULL, 79),
(13, 'Giardia', 1, 55, 44, NULL, 81),
(14, 'Giardia', 1, 55, 44, NULL, 82),
(15, 'Giardia', 1, 55, 44, NULL, 83),
(16, 'Giardia', 1, 55, 44, NULL, 84),
(17, 'Giardia', 1, 55, 44, NULL, 85),
(18, 'Giardia', 1, 55, 44, NULL, 86),
(19, 'Giardia', 1, 55, 44, NULL, 87),
(20, 'Giardia', 1, 55, 44, NULL, 88),
(21, 'Giardia', 1, 55, 44, NULL, 89),
(22, 'Giardia', 1, 55, 44, NULL, 90),
(23, 'Giardia', 1, 55, 44, NULL, 91),
(24, 'Giardia', 1, 55, 44, NULL, 92),
(25, 'Giardia', 1, 55, 44, NULL, 93),
(26, 'Giardia', 1, 55, 44, NULL, 94),
(27, 'Giardia', 1, 55, 44, NULL, 95),
(28, 'Giardia', 1, 55, 44, NULL, 96);

-- --------------------------------------------------------

--
-- Table structure for table `hydrogensulfide`
--

CREATE TABLE `hydrogensulfide` (
  `id` int(11) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL,
  `risk_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hydrogensulfide`
--

INSERT INTO `hydrogensulfide` (`id`, `status`, `samplingId`, `risk_type`) VALUES
(8, '1', 18, 'Positive (Risk)'),
(9, '0', 19, 'Negative (No Risk)'),
(10, '1', 20, 'Positive (Risk)'),
(11, NULL, 34, 'Positive (Risk)'),
(12, '0', 36, 'Negative (No Risk)'),
(13, '1', 37, 'Positive (Risk)'),
(14, '1', 38, 'Positive (Risk)'),
(15, '0', 39, 'Negative (No Risk)'),
(16, '0', 40, 'Negative (No Risk)'),
(17, '0', 41, 'Negative (No Risk)'),
(18, '0', 42, 'Negative (No Risk)'),
(19, '0', 43, 'Negative (No Risk)'),
(20, '0', 44, 'Negative (No Risk)'),
(21, '1', 45, 'Positive (Risk)'),
(22, '1', 46, 'Positive (Risk)'),
(23, '0', 47, 'Negative (No Risk)'),
(24, '0', 64, 'Negative (No Risk)'),
(25, '1', 65, 'Positive (Risk)'),
(26, '1', 66, 'Positive (Risk)'),
(27, '1', 67, 'Positive (Risk)'),
(28, '0', 68, 'Negative (No Risk)');

-- --------------------------------------------------------

--
-- Table structure for table `microbial`
--

CREATE TABLE `microbial` (
  `microbialId` int(11) NOT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipality`
--

CREATE TABLE `municipality` (
  `muni_name` varchar(100) DEFAULT NULL,
  `province_id` varchar(10) DEFAULT NULL,
  `muni_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `municipality`
--

INSERT INTO `municipality` (`muni_name`, `province_id`, `muni_id`) VALUES
('Buffalo City Metropolitan Municipality', 'ZA-EC', 'BUF'),
('City of Cape Town Metropolitan Municipality', 'ZA-WC', 'CPT'),
('Dr Beyers Naudé Local Municipality', 'ZA-EC', 'EC101'),
('Blue Crane Route Local Municipality', 'ZA-EC', 'EC102'),
('Makana Local Municipality', 'ZA-EC', 'EC104'),
('Ndlambe Local Municipality', 'ZA-EC', 'EC105'),
('Sundays River Valley Local Municipality', 'ZA-EC', 'EC106'),
('Kouga Local Municipality', 'ZA-EC', 'EC108'),
('Kou-Kamma Local Municipality', 'ZA-EC', 'EC109'),
('Mbhashe Local Municipality', 'ZA-EC', 'EC121'),
('Mnquma Local Municipality', 'ZA-EC', 'EC122'),
('Great Kei Local Municipality', 'ZA-EC', 'EC123'),
('Amahlathi Local Municipality', 'ZA-EC', 'EC124'),
('Ngqushwa Local Municipality', 'ZA-EC', 'EC126'),
('Raymond Mhlaba Local Municipality', 'ZA-EC', 'EC129'),
('Inxuba Yethemba Local Municipality', 'ZA-EC', 'EC131'),
('Intsika Yethu Local Municipality', 'ZA-EC', 'EC135'),
('Emalahleni Local Municipality EC', 'ZA-EC', 'EC136'),
('Engcobo Local Municipality', 'ZA-EC', 'EC137'),
('Sakhisizwe Local Municipality', 'ZA-EC', 'EC138'),
('Enoch Mgijima Local Municipality', 'ZA-EC', 'EC139'),
('Elundini Local Municipality', 'ZA-EC', 'EC141	'),
('Senqu Local Municipality', 'ZA-EC', 'EC142'),
('Walter Sisulu Local Municipality', 'ZA-EC', 'EC145'),
('Ingquza Hill Local Municipality', 'ZA-EC', 'EC153'),
('Port St Johns Local Municipality', 'ZA-EC', 'EC154'),
('Nyandeni Local Municipality', 'ZA-EC', 'EC155'),
('Mhlontlo Local Municipality', 'ZA-EC', 'EC156'),
('King Sabata Dalindyebo Local Municipality', 'ZA-EC', 'EC157'),
('Matatiele Local Municipality', 'ZA-EC', 'EC441'),
('Umzimvubu Local Municipality', 'ZA-EC', 'EC442'),
('Winnie Madikizela-Mandela Local Municipality', 'ZA-EC', 'EC443'),
('Ntabankulu Local Municipality', 'ZA-EC', 'EC444'),
('City of Ekurhuleni Metropolitan Municipality', 'ZA-GP', 'EKU'),
('eThekwini Metropolitan Municipality', 'ZA-KZN', 'ETH'),
('Letsemeng Local Municipality', 'ZA-fS', 'FS161'),
('Kopanong Local Municipality', 'ZA-fS', 'FS162'),
('Mohokare Local Municipality', 'ZA-fS', 'FS163'),
('Masilonyana Local Municipality', 'ZA-fS', 'FS181'),
('Tokologo Local Municipality', 'ZA-fS', 'FS182'),
('Tswelopele Local Municipality', 'ZA-fS', 'FS183'),
('Matjhabeng Local Municipality', 'ZA-fS', 'FS184'),
('Nala Local Municipality', 'ZA-fS', 'FS185'),
('Setsoto Local Municipality', 'ZA-fS', 'FS191'),
('Dihlabeng Local Municipality', 'ZA-fS', 'FS192'),
('Nketoana Local Municipality', 'ZA-fS', 'FS193'),
('Maluti-a-Phofung Local Municipality', 'ZA-fS', 'FS194'),
('Phumelela Local Municipality', 'ZA-fS', 'FS195'),
('Mantsopa Local Municipality', 'ZA-fS', 'FS196'),
('Moqhaka Local Municipality', 'ZA-fS', 'FS201'),
('Ngwathe Local Municipality', 'ZA-fS', 'FS203'),
('Metsimaholo Local Municipality', 'ZA-fS', 'FS204'),
('Mafube Local Municipality', 'ZA-fS', 'FS205'),
('Emfuleni Local Municipality', 'ZA-GP', 'GT421'),
('Midvaal Local Municipality', 'ZA-GP', 'GT422'),
('Lesedi Local Municipality', 'ZA-GP', 'GT423'),
('Mogale City Local Municipality', 'ZA-GP', 'GT481'),
('Merafong City Local Municipality', 'ZA-GP', 'GT484'),
('Rand West City Local Municipality', 'ZA-GP', 'GT485'),
('City of Johannesburg Metropolitan Municipality', 'ZA-GP', 'JHB'),
('uMdoni Local Municipality', 'ZA-KZN', 'KZN212'),
('Umzumbe Local Municipality', 'ZA-KZN', 'KZN213'),
('uMuziwabantu Local Municipality', 'ZA-KZN', 'KZN214'),
('Ray Nkonyeni Local Municipality', 'ZA-KZN', 'KZN216'),
('uMshwathi Local Municipality', 'ZA-KZN', 'KZN221'),
('uMngeni Local Municipality', 'ZA-KZN', 'KZN222'),
('Mpofana Local Municipality', 'ZA-KZN', 'KZN223'),
('Impendle Local Municipality', 'ZA-KZN', 'KZN224'),
('Msunduzi Local Municipality', 'ZA-KZN', 'KZN225'),
('Mkhambathini Local Municipality', 'ZA-KZN', 'KZN226'),
('Richmond Local Municipality', 'ZA-KZN', 'KZN227'),
('Okhahlamba Local Municipality', 'ZA-KZN', 'KZN235'),
('Inkosi Langalibalele Local Municipality', 'ZA-KZN', 'KZN237'),
('Alfred Duma Local Municipality', 'ZA-KZN', 'KZN238'),
('Endumeni Local Municipality', 'ZA-KZN', 'KZN241'),
('Nqutu Local Municipality', 'ZA-KZN', 'KZN242'),
('Msinga Local Municipality', 'ZA-KZN', 'KZN244'),
('Umvoti Local Municipality', 'ZA-KZN', 'KZN245'),
('Newcastle Local Municipality', 'ZA-KZN', 'KZN252'),
('Dannhauser Local Municipality', 'ZA-KZN', 'KZN254'),
('eDumbe Local Municipality', 'ZA-KZN', 'KZN261'),
('uPhongolo Local Municipality', 'ZA-KZN', 'KZN262'),
('Abaqulusi Local Municipality', 'ZA-KZN', 'KZN263'),
('Nongoma Local Municipality', 'ZA-KZN', 'KZN265'),
('Ulundi Local Municipality', 'ZA-KZN', 'KZN266'),
('uMhlabuyalingana Local Municipality', 'ZA-KZN', 'KZN271'),
('Jozini Local Municipality', 'ZA-KZN', 'KZN272'),
('Mtubatuba Local Municipality', 'ZA-KZN', 'KZN275'),
('Big Five Hlabisa Local Municipality', 'ZA-KZN', 'KZN276'),
('uMfolozi Local Municipality', 'ZA-KZN', 'KZN281'),
('uMhlathuze Local Municipality', 'ZA-KZN', 'KZN282'),
('uMlalazi Local Municipality', 'ZA-KZN', 'KZN284'),
('Mthonjaneni Local Municipality', 'ZA-KZN', 'KZN285'),
('Nkandla Local Municipality', 'ZA-KZN', 'KZN286'),
('Mandeni Local Municipality', 'ZA-KZN', 'KZN291'),
('KwaDukuza Local Municipality', 'ZA-KZN', 'KZN292'),
('Ndwedwe Local Municipality', 'ZA-KZN', 'KZN293'),
('Maphumulo Local Municipality', 'ZA-KZN', 'KZN294'),
('Greater Kokstad Local Municipality', 'ZA-KZN', 'KZN433'),
('Ubuhlebezwe Local Municipality', 'ZA-KZN', 'KZN434'),
('Umzimkhulu Local Municipality', 'ZA-KZN', 'KZN435'),
('Dr Nkosazana Dlamini Zuma Local Municipality', 'ZA-KZN', 'KZN436'),
('Greater Giyani', 'ZA-LP', 'LIM331'),
('Greater Letaba', 'ZA-LP', 'LIM332'),
('Greater Tzaneen', 'ZA-LP', 'LIM333'),
('Ba-Phalaborwa', 'ZA-LP', 'LIM334'),
('Maruleng', 'ZA-LP', 'LIM335'),
('Musina', 'ZA-LP', 'LIM341'),
('Thulamela', 'ZA-LP', 'LIM343'),
('Makhado', 'ZA-LP', 'LIM344'),
('Collins Chabane', 'ZA-LP', 'LIM345'),
('Blouberg', 'ZA-LP', 'LIM351'),
('Lepelle-Nkumpi', 'ZA-LP', 'LIM355'),
('Lephalale', 'ZA-LP', 'LIM362'),
('Bela-Bela', 'ZA-LP', 'LIM366'),
('Mogalakwena', 'ZA-LP', 'LIM367'),
('Modimolle–Mookgophong', 'ZA-LP', 'LIM368'),
('Ephraim Mogale', 'ZA-LP', 'LIM471'),
('Elias Motsoaledi', 'ZA-LP', 'LIM472'),
('Makhuduthamaga', 'ZA-LP', 'LIM473'),
('Fetakgomo Tubatse', 'ZA-LP', 'LIM476'),
('Mangaung Metropolitan Municipality', 'ZA-fS', 'MAN'),
('Albert Luthuli Local Municipality', 'ZA-MP', 'MP301'),
('Msukaligwa Local Municipality', 'ZA-MP', 'MP302'),
('Mkhondo Local Municipality', 'ZA-MP', 'MP303'),
('Pixley ka Seme Local Municipality', 'ZA-MP', 'MP304'),
('Lekwa Local Municipality', 'ZA-MP', 'MP305'),
('Dipaleseng Local Municipality', 'ZA-MP', 'MP306'),
('Govan Mbeki Local Municipality', 'ZA-MP', 'MP307'),
('Victor Khanye Local Municipality', 'ZA-MP', 'MP311'),
('Emalahleni Local Municipality', 'ZA-MP', 'MP312'),
('Steve Tshwete Local Municipality', 'ZA-MP', 'MP313'),
('Emakhazeni Local Municipality', 'ZA-MP', 'MP314'),
('Thembisile Hani Local Municipality', 'ZA-MP', 'MP315'),
('Dr JS Moroka Local Municipality', 'ZA-MP', 'MP316'),
('Thaba Chweu Local Municipality', 'ZA-MP', 'MP321'),
('Nkomazi Local Municipality', 'ZA-MP', 'MP324'),
('Bushbuckridge Local Municipality', 'ZA-MP', 'MP325'),
('Mbombela Local Municipality', 'ZA-MP', 'MP326'),
('Richtersveld Local Municipality', 'ZA-NC', 'NC061'),
('Nama Khoi Local Municipality', 'ZA-NC', 'NC062'),
('Kamiesberg Local Municipality', 'ZA-NC', 'NC064'),
('Hantam Local Municipality', 'ZA-NC', 'NC065'),
('Karoo Hoogland Local Municipality', 'ZA-NC', 'NC066'),
('Khâi-Ma Local Municipality', 'ZA-NC', 'NC067'),
('Ubuntu Local Municipality', 'ZA-NC', 'NC071'),
('Umsobomvu Local Municipality', 'ZA-NC', 'NC072'),
('Emthanjeni Local Municipality', 'ZA-NC', 'NC073'),
('Kareeberg Local Municipality', 'ZA-NC', 'NC074'),
('Renosterberg Local Municipality', 'ZA-NC', 'NC075'),
('Thembelihle Local Municipality', 'ZA-NC', 'NC076'),
('Siyathemba Local Municipality', 'ZA-NC', 'NC077'),
('Siyancuma Local Municipality', 'ZA-NC', 'NC078'),
('Kai !Garib Local Municipality', 'ZA-NC', 'NC082'),
('!Kheis Local Municipality', 'ZA-NC', 'NC084'),
('Tsantsabane Local Municipality', 'ZA-NC', 'NC085'),
('Kgatelopele Local Municipality', 'ZA-NC', 'NC086'),
('Dawid Kruiper Local Municipality', 'ZA-NC', 'NC087'),
('Sol Plaatje Local Municipality', 'ZA-NC', 'NC091'),
('Dikgatlong Local Municipality', 'ZA-NC', 'NC092'),
('Magareng Local Municipality', 'ZA-NC', 'NC093'),
('Phokwane Local Municipality', 'ZA-NC', 'NC094'),
('Joe Morolong Local Municipality', 'ZA-NC', 'NC451'),
('Ga-Segonyana Local Municipality', 'ZA-NC', 'NC452'),
('Gamagara Local Municipality', 'ZA-NC', 'NC453'),
('Nelson Mandela Bay Metropolitan Municipality', 'ZA-EC', 'NMA'),
('Moretele Local Municipality', 'ZA-NW', 'NW371'),
('Madibeng Local Municipality', 'ZA-NW', 'NW372'),
('Rustenburg Local Municipality', 'ZA-NW', 'NW373'),
('Kgetlengrivier Local Municipality', 'ZA-NW', 'NW374'),
('Moses Kotane Local Municipality', 'ZA-NW', 'NW375'),
('Ratlou Local Municipality', 'ZA-NW', 'NW381'),
('Tswaing Local Municipality', 'ZA-NW', 'NW382'),
('Mahikeng Local Municipality', 'ZA-NW', 'NW383'),
('Ditsobotla Local Municipality', 'ZA-NW', 'NW384'),
('Ramotshere Moiloa Local Municipality', 'ZA-NW', 'NW385'),
('Naledi Local Municipality', 'ZA-NW', 'NW392'),
('Mamusa Local Municipality', 'ZA-NW', 'NW393'),
('Greater Taung Local Municipality', 'ZA-NW', 'NW394'),
('Lekwa-Teemane Local Municipality', 'ZA-NW', 'NW396'),
('Kagisano-Molopo Local Municipality', 'ZA-NW', 'NW397'),
('City of Matlosana Local Municipality', 'ZA-NW', 'NW403'),
('Maquassi Hills Local Municipality', 'ZA-NW', 'NW404	'),
('JB Marks Local Municipality', 'ZA-NW', 'NW405'),
('City of Tshwane Metropolitan Municipality', 'ZA-GP', 'TSH'),
('Matzikama Local Municipality', 'ZA-WC', 'WC011'),
('Cederberg Local Municipality', 'ZA-WC', 'WC012'),
('Bergrivier Local Municipality', 'ZA-WC', 'WC013'),
('Saldanha Bay Local Municipality', 'ZA-WC', 'WC014'),
('Swartland Local Municipality', 'ZA-WC', 'WC015'),
('Witzenberg Local Municipality', 'ZA-WC', 'WC022'),
('Drakenstein Local Municipality', 'ZA-WC', 'WC023'),
('Stellenbosch Local Municipality', 'ZA-WC', 'WC024'),
('Breede Valley Local Municipality', 'ZA-WC', 'WC025'),
('Langeberg Local Municipality', 'ZA-WC', 'WC026'),
('Theewaterskloof Local Municipality', 'ZA-WC', 'WC031'),
('Overstrand Local Municipality', 'ZA-WC', 'WC032'),
('Cape Agulhas Local Municipality', 'ZA-WC', 'WC033'),
('Swellendam Local Municipality', 'ZA-WC', 'WC034'),
('Kannaland Local Municipality', 'ZA-WC', 'WC041'),
('Hessequa Local Municipality', 'ZA-WC', 'WC042	'),
('Mossel Bay Local Municipality', 'ZA-WC', 'WC043'),
('George Local Municipality', 'ZA-WC', 'WC044'),
('Oudtshoorn Local Municipality', 'ZA-WC', 'WC045'),
('Bitou Local Municipality', 'ZA-WC', 'WC047'),
('Knysna Local Municipality', 'ZA-WC', 'WC048'),
('Laingsburg Local Municipality', 'ZA-WC', 'WC051'),
('Prince Albert Local Municipality', 'ZA-WC', 'WC052'),
('Beaufort West Local Municipality', 'ZA-WC', 'WC053');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` varchar(10) NOT NULL,
  `province_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
('ZA-EC', 'Eastern Cape'),
('ZA-FS', 'Free State'),
('ZA-GP', 'Gauteng'),
('ZA-KZN', 'Kwazulu-Natal'),
('ZA-LP', 'Limpopo'),
('ZA-MP', 'Mpumalanga'),
('ZA-NC', 'Northern Cape'),
('ZA-NW', 'North-West'),
('ZA-WC', 'Western Cape');

-- --------------------------------------------------------

--
-- Table structure for table `qmra`
--

CREATE TABLE `qmra` (
  `qmra_id` int(11) NOT NULL,
  `pathogen` varchar(255) DEFAULT NULL,
  `best_fit_model` varchar(20) DEFAULT NULL,
  `alpha` decimal(10,5) DEFAULT NULL,
  `beta` decimal(10,5) DEFAULT NULL,
  `constant` decimal(10,5) DEFAULT NULL,
  `n50` decimal(10,5) DEFAULT NULL,
  `probability_of_infection` decimal(10,5) DEFAULT NULL,
  `likelihood_of_infection` decimal(10,5) DEFAULT NULL,
  `duration_type` varchar(20) DEFAULT NULL,
  `is_customized` tinyint(1) DEFAULT NULL,
  `indicator_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qmra`
--

INSERT INTO `qmra` (`qmra_id`, `pathogen`, `best_fit_model`, `alpha`, `beta`, `constant`, `n50`, `probability_of_infection`, `likelihood_of_infection`, `duration_type`, `is_customized`, `indicator_id`) VALUES
(1, 'E.coli 0157:H7', 'beta-poisson', 0.00000, 236.00000, NULL, NULL, 0.00000, NULL, 'monthly', 1, 2),
(2, 'E.coli 0157:H7', 'beta-poisson', 0.00000, 46.00000, NULL, NULL, 0.00000, 0.25500, 'weekly', 0, 8),
(3, 'E.coli 0157:H7', 'beta-poisson', 0.40000, 45.90000, NULL, NULL, 0.48900, 0.02179, 'weekly', 0, 9),
(4, 'S.Flexneri', NULL, 0.26500, 1480.00000, NULL, NULL, 0.00962, NULL, NULL, 0, 10),
(5, 'S.Flexneri', NULL, 0.26500, 1480.00000, NULL, NULL, 0.00962, NULL, NULL, 0, 12),
(6, 'S.Flexneri', NULL, 0.26500, 1480.00000, NULL, NULL, 0.00962, NULL, NULL, 0, 13),
(7, 'Vibrio Cholera', NULL, 0.16900, 2305.00000, NULL, NULL, 0.00398, NULL, NULL, 0, 14),
(8, 'Entamoeba coli', NULL, 0.10100, NULL, NULL, 341.00000, -154.04544, NULL, NULL, 0, 15),
(9, 'E.coli 0157:H7', NULL, 0.40000, 45.90000, NULL, NULL, 0.27026, NULL, NULL, 0, 16),
(10, 'Giardia lambia', NULL, 0.40000, 45.90000, 0.01990, NULL, 0.66529, NULL, NULL, 0, 17),
(11, 'E.coli 0157:H7', NULL, 0.40000, 45.90000, 0.01990, NULL, 0.27026, NULL, NULL, 0, 18),
(12, 'Giardia lambia', NULL, NULL, NULL, 0.01990, NULL, 0.66529, NULL, NULL, 0, 19),
(13, 'Entamoeba coli', NULL, 0.10100, NULL, NULL, 341.00000, -154.04544, NULL, NULL, 0, 20),
(14, 'Entamoeba coli', NULL, 0.10100, NULL, NULL, 341.00000, -154.04544, NULL, NULL, 0, 21),
(15, 'Vibrio Cholera', NULL, 0.16900, 2305.00000, NULL, NULL, 0.00398, NULL, NULL, 0, 22),
(16, 'E.coli 0157:H7', NULL, 0.40000, 45.90000, NULL, NULL, 0.27026, 188.16764, NULL, 0, 23),
(17, 'Campylobacter jejuni', NULL, 0.14500, 7.85000, NULL, NULL, 0.26039, 218.82987, NULL, 0, 24),
(18, 'Giardia lambia', NULL, NULL, NULL, 0.01990, NULL, 0.66529, 1.49254, NULL, 0, 25),
(19, 'Entamoeba coli', NULL, 0.10100, NULL, NULL, 341.00000, -154.04544, 0.00000, NULL, 0, 26),
(20, 'E.coli 0157:H7', NULL, 0.40000, 45.90000, NULL, NULL, 0.27026, 188.16764, NULL, 0, 27),
(21, 'Entamoeba coli', NULL, 0.10100, NULL, NULL, 341.00000, -154.04544, -0.00649, NULL, 0, 28);

-- --------------------------------------------------------

--
-- Table structure for table `river`
--

CREATE TABLE `river` (
  `riverId` int(11) NOT NULL,
  `river_name` varchar(200) DEFAULT NULL,
  `muni_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `river`
--

INSERT INTO `river` (`riverId`, `river_name`, `muni_id`) VALUES
(1, 'GA-SELATI RIVER', 'LIM335'),
(2, 'MAKHUTSWI RIVER', 'LIM335');

-- --------------------------------------------------------

--
-- Table structure for table `samplingdata`
--

CREATE TABLE `samplingdata` (
  `samplingId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `weatherCondition` varchar(100) DEFAULT NULL,
  `sampling_date_created` datetime NOT NULL,
  `muni_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samplingdata`
--

INSERT INTO `samplingdata` (`samplingId`, `userId`, `weatherCondition`, `sampling_date_created`, `muni_id`) VALUES
(3, 1, 'sunny', '2023-09-13 13:18:28', 'KZN263'),
(4, 1, 'sunny', '2023-09-13 13:52:29', 'NC084'),
(5, 1, 'Wet', '2023-09-13 21:26:08', 'KZN254'),
(6, 1, 'Wet', '2023-09-13 21:28:17', 'KZN238'),
(7, 1, 'Wet', '2023-09-13 21:29:05', 'LIM366'),
(18, 1, 'cloudy', '2023-09-14 07:16:12', NULL),
(19, 1, 'cloudy', '2023-09-14 07:17:07', 'LIM334'),
(20, 1, 'cloudy', '2023-09-14 07:29:08', 'LIM366'),
(21, 1, 'cloudy', '2023-09-14 07:29:31', 'MP301'),
(22, 1, 'Windy', '2023-09-17 21:38:27', 'NC084'),
(23, 1, 'Windy', '2023-09-17 21:38:56', 'MP301'),
(24, 1, 'Windy', '2023-09-17 21:53:07', 'MP301'),
(25, 1, 'Windy', '2023-09-17 21:53:20', 'EC124'),
(26, 1, 'Thunder and Lightning', '2023-10-02 01:10:01', 'EKU'),
(27, 1, 'Thunder and Lightning', '2023-10-02 01:10:15', 'EKU'),
(28, 1, 'Fog', '2023-10-22 16:38:02', 'ETH'),
(29, 1, 'Fog', '2023-10-22 16:39:26', 'ETH'),
(30, 1, 'Fog', '2023-10-22 19:03:17', 'FS161'),
(31, 1, 'Fog', '2023-10-22 19:05:40', 'FS161'),
(32, 1, 'Fog', '2023-10-22 19:05:55', 'FS161'),
(33, 1, 'Rainy', '2023-10-24 23:44:08', 'FS203'),
(34, 1, 'Rainy', '2023-10-25 00:24:33', 'FS203'),
(35, 13, 'Windy', '2023-10-25 01:29:14', 'FS184'),
(36, 1, 'Thunder and Lightning', '2023-10-25 06:48:43', 'EKU'),
(37, 1, 'Thunder and Lightning', '2023-10-25 06:48:50', 'EKU'),
(38, 1, 'Thunder and Lightning', '2023-10-25 06:51:10', 'EKU'),
(39, 1, 'cloudy', '2023-10-25 07:50:51', 'GT422'),
(40, 1, 'cloudy', '2023-10-25 07:52:31', 'GT422'),
(41, 1, 'cloudy', '2023-10-25 07:53:07', 'GT422'),
(42, 1, 'cloudy', '2023-10-25 07:53:26', 'GT422'),
(43, 1, 'cloudy', '2023-10-25 07:53:48', 'GT422'),
(44, 1, 'cloudy', '2023-10-25 07:55:43', 'GT422'),
(45, 1, 'cloudy', '2023-10-25 07:56:03', 'GT422'),
(46, 1, 'cloudy', '2023-10-25 07:57:28', 'GT422'),
(47, 1, 'cloudy', '2023-10-25 07:58:42', 'GT422'),
(48, 13, 'Thunder and Lightning', '2023-10-25 08:15:43', 'GT485'),
(49, 13, 'Thunder and Lightning', '2023-10-25 08:16:05', 'GT485'),
(50, 13, 'Thunder and Lightning', '2023-10-25 08:16:33', 'GT485'),
(51, 13, 'Thunder and Lightning', '2023-10-25 08:18:29', 'GT485'),
(52, 13, 'Thunder and Lightning', '2023-10-25 08:20:02', 'GT485'),
(53, 13, 'Thunder and Lightning', '2023-10-25 08:21:32', 'GT485'),
(54, 13, 'Thunder and Lightning', '2023-10-25 08:21:59', 'GT485'),
(55, 13, 'Thunder and Lightning', '2023-10-25 08:22:07', 'GT485'),
(56, 13, 'Thunder and Lightning', '2023-10-25 08:22:36', 'GT485'),
(57, 13, 'Thunder and Lightning', '2023-10-25 08:23:09', 'GT485'),
(58, 13, 'Thunder and Lightning', '2023-10-25 08:23:36', 'GT485'),
(59, 13, 'Thunder and Lightning', '2023-10-25 08:23:54', 'GT485'),
(60, 13, 'Thunder and Lightning', '2023-10-25 08:32:26', 'GT485'),
(61, 13, 'Thunder and Lightning', '2023-10-25 08:32:53', 'GT485'),
(62, 1, 'Windy', '2023-10-25 08:45:47', 'GT423'),
(63, 1, 'Windy', '2023-10-25 08:46:27', 'GT423'),
(64, 1, 'Windy', '2023-10-25 08:46:54', 'GT423'),
(65, 1, 'Windy', '2023-10-25 08:47:19', 'GT423'),
(66, 13, 'Thunder and Lightning', '2023-10-26 19:37:54', 'WC034'),
(67, 13, 'Thunder and Lightning', '2023-10-26 19:38:01', 'WC034'),
(68, 13, 'Thunder and Lightning', '2023-10-26 19:38:05', 'WC034'),
(69, 13, 'Thunder and Lightning', '2023-10-26 19:38:13', 'WC034'),
(70, 13, 'Frost and Ice', '2023-10-28 08:29:54', 'FS196'),
(71, 13, 'Frost and Ice', '2023-10-29 02:20:51', 'FS196'),
(72, 13, 'Frost and Ice', '2023-10-29 02:20:58', 'FS196'),
(73, 13, 'Frost and Ice', '2023-10-29 02:21:03', 'FS196'),
(74, 13, 'Frost and Ice', '2023-10-29 02:21:08', 'FS196'),
(75, 13, 'Frost and Ice', '2023-10-29 02:27:42', 'FS196'),
(76, 13, 'Frost and Ice', '2023-10-29 02:29:16', 'FS196'),
(77, 13, 'Frost and Ice', '2023-10-29 02:29:42', 'FS196'),
(78, 13, 'Frost and Ice', '2023-10-29 18:51:42', 'FS196'),
(79, 13, 'Frost and Ice', '2023-10-29 18:53:48', 'FS196'),
(80, 13, 'Frost and Ice', '2023-10-29 18:54:19', 'FS196'),
(81, 13, 'Frost and Ice', '2023-10-29 18:54:28', 'FS196'),
(82, 13, 'Frost and Ice', '2023-10-29 18:54:33', 'FS196'),
(83, 13, 'Frost and Ice', '2023-10-29 18:54:38', 'FS196'),
(84, 13, 'Frost and Ice', '2023-10-29 18:54:46', 'FS196'),
(85, 13, 'Frost and Ice', '2023-10-29 18:54:59', 'FS196'),
(86, 13, 'Frost and Ice', '2023-10-29 18:58:02', 'FS196'),
(87, 13, 'Frost and Ice', '2023-10-29 18:58:09', 'FS196'),
(88, 13, 'Frost and Ice', '2023-10-29 19:09:29', 'FS196'),
(89, 13, 'Frost and Ice', '2023-10-29 19:47:23', 'FS196'),
(90, 13, 'Frost and Ice', '2023-10-29 19:47:58', 'FS196'),
(91, 13, 'Frost and Ice', '2023-10-29 19:49:39', 'FS196'),
(92, 13, 'Frost and Ice', '2023-10-29 19:51:20', 'FS196'),
(93, 13, 'Frost and Ice', '2023-10-29 19:52:38', 'FS196'),
(94, 13, 'Frost and Ice', '2023-10-29 19:53:18', 'FS196'),
(95, 13, 'Frost and Ice', '2023-10-29 19:54:06', 'FS196'),
(96, 13, 'Frost and Ice', '2023-10-29 19:54:50', 'FS196');

-- --------------------------------------------------------

--
-- Table structure for table `sanitaryinpectionquestion`
--

CREATE TABLE `sanitaryinpectionquestion` (
  `id` int(11) NOT NULL,
  `pitLatrine` tinyint(1) DEFAULT NULL,
  `domesticAnimal` tinyint(1) DEFAULT NULL,
  `diaperDisposal` tinyint(1) DEFAULT NULL,
  `wasteWaterRelease` tinyint(1) DEFAULT NULL,
  `openDefaction` tinyint(1) DEFAULT NULL,
  `unprotectedWaterSource` tinyint(1) DEFAULT NULL,
  `agriculturalActivity` tinyint(1) DEFAULT NULL,
  `observerLaundryActivity` tinyint(1) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL,
  `risk_type` varchar(100) DEFAULT NULL,
  `totalYes` int(11) NOT NULL,
  `total_avarage` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitaryinpectionquestion`
--

INSERT INTO `sanitaryinpectionquestion` (`id`, `pitLatrine`, `domesticAnimal`, `diaperDisposal`, `wasteWaterRelease`, `openDefaction`, `unprotectedWaterSource`, `agriculturalActivity`, `observerLaundryActivity`, `samplingId`, `risk_type`, `totalYes`, `total_avarage`) VALUES
(12, 1, 0, 1, 0, 1, 0, 1, 0, 21, 'medium risk', 4, 50),
(13, 1, 0, 1, 1, 0, 0, 0, 1, 22, 'medium risk', 4, 50),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 23, 'low risk', 0, 0),
(15, 0, 1, 0, 1, 1, 0, 0, 1, 24, 'medium risk', 4, 50),
(16, 1, 1, 1, 1, 1, 1, 1, 1, 25, 'very high risk', 0, 100),
(17, 1, 0, 1, 0, 1, 0, 1, 0, 26, 'medium risk', 4, 50),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 27, 'low risk', 0, 0),
(19, 1, 0, 1, 1, 1, 1, 1, 1, 28, 'very high risk', 7, 88),
(20, 1, 0, 1, 1, 1, 1, 1, 1, 29, 'very high risk', 7, 88),
(21, 1, 0, 0, 0, 0, 0, 0, 0, 30, 'low risk', 1, 13),
(22, 1, 0, 0, 0, 0, 0, 0, 0, 31, 'low risk', 1, 13),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 32, 'low risk', 0, 0),
(24, 1, 0, 1, 0, 0, 0, 1, 1, 33, 'medium risk', 4, 50),
(25, 1, 0, 1, 0, 1, 0, 1, 0, 62, 'medium risk', 4, 50),
(26, 1, 1, 1, 1, 1, 1, 1, 1, 63, 'very high risk', 8, 100),
(27, 1, 1, 0, 0, 1, 0, 1, 1, 69, 'high risk', 5, 63);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobileNo` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `level` int(5) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `email`, `mobileNo`, `password`, `firstname`, `lastname`, `level`, `role`) VALUES
(1, '', '0123456789', '123zxc', 'Gift', 'Mukwevho', 1, 'user'),
(3, 'tsl@gmail.com', '0147896325', '123zxc', 'Noko', 'Mashaba', 0, 'municipal'),
(8, 'thando@blklabel.com', '0784512963', '123zxc', 'Thando', 'Magagula', 0, 'municipal'),
(13, 'nathi@gmail.com', '0147852369', 'Nathi@123', 'James', 'Nathi', 2, 'user'),
(14, 'manasoedj@gmail.com', '0147852369', 'Manasoedj@12', 'Joel', 'Manasoe', 2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `watersource`
--

CREATE TABLE `watersource` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `waterAccessability` varchar(255) DEFAULT NULL,
  `samplingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watersource`
--

INSERT INTO `watersource` (`id`, `type`, `waterAccessability`, `samplingId`) VALUES
(6, 'Household Tap Water', 'Easy', 21),
(8, 'Household Tap Water', 'Easy', 23),
(9, 'River', 'Hard', 26),
(10, 'River', 'Hard', 27),
(11, 'Dam', 'Hard', 28),
(12, 'Dam', 'Hard', 29),
(13, 'Spring', 'Hard', 30),
(14, 'Spring', 'Hard', 31),
(15, 'Spring', 'Hard', 32),
(16, 'Borehole', 'Hard', 33),
(17, 'Borehole', 'Hard', 34),
(18, 'Borehole', 'Hard', 35),
(19, 'Housewater Stored Water', 'Hard', 36),
(20, 'Housewater Stored Water', 'Hard', 37),
(21, 'Housewater Stored Water', 'Hard', 38),
(22, 'Household Tap Water', 'Easy', 39),
(23, 'Household Tap Water', 'Easy', 40),
(24, 'Household Tap Water', 'Easy', 41),
(25, 'Household Tap Water', 'Easy', 42),
(26, 'Household Tap Water', 'Easy', 43),
(27, 'Household Tap Water', 'Easy', 44),
(28, 'Household Tap Water', 'Easy', 45),
(29, 'Household Tap Water', 'Easy', 46),
(30, 'Household Tap Water', 'Easy', 47),
(31, 'Wastewater Treatment Plant', 'Hard', 48),
(32, 'Wastewater Treatment Plant', 'Hard', 49),
(33, 'Wastewater Treatment Plant', 'Hard', 50),
(34, 'Wastewater Treatment Plant', 'Hard', 51),
(35, 'Wastewater Treatment Plant', 'Hard', 52),
(36, 'Wastewater Treatment Plant', 'Hard', 53),
(37, 'Wastewater Treatment Plant', 'Hard', 54),
(38, 'Wastewater Treatment Plant', 'Hard', 55),
(39, 'Wastewater Treatment Plant', 'Hard', 56),
(40, 'Wastewater Treatment Plant', 'Hard', 57),
(41, 'Wastewater Treatment Plant', 'Hard', 58),
(42, 'Wastewater Treatment Plant', 'Hard', 59),
(43, 'Wastewater Treatment Plant', 'Hard', 60),
(44, 'Wastewater Treatment Plant', 'Hard', 61),
(45, 'Dam', 'Hard', 62),
(46, 'Dam', 'Hard', 63),
(47, 'Dam', 'Hard', 64),
(48, 'Dam', 'Hard', 65),
(49, 'Spring', 'Easy', 66),
(50, 'Spring', 'Easy', 67),
(51, 'Spring', 'Easy', 68),
(52, 'Spring', 'Easy', 69),
(53, 'Dam', 'Hard', 70),
(54, 'Dam', 'Hard', 71),
(55, 'Dam', 'Hard', 72),
(56, 'Dam', 'Hard', 73),
(57, 'Dam', 'Hard', 74),
(58, 'Dam', 'Hard', 75),
(59, 'Dam', 'Hard', 76),
(60, 'Dam', 'Hard', 77),
(61, 'Dam', 'Hard', 78),
(62, 'Dam', 'Hard', 79),
(63, 'Dam', 'Hard', 81),
(64, 'Dam', 'Hard', 82),
(65, 'Dam', 'Hard', 83),
(66, 'Dam', 'Hard', 84),
(67, 'Dam', 'Hard', 85),
(68, 'Dam', 'Hard', 86),
(69, 'Dam', 'Hard', 87),
(70, 'Dam', 'Hard', 88),
(71, 'Dam', 'Hard', 89),
(72, 'Dam', 'Hard', 90),
(73, 'Dam', 'Hard', 91),
(74, 'Dam', 'Hard', 92),
(75, 'Dam', 'Hard', 93),
(76, 'Dam', 'Hard', 94),
(77, 'Dam', 'Hard', 95),
(78, 'Dam', 'Hard', 96);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coordinate`
--
ALTER TABLE `coordinate`
  ADD PRIMARY KEY (`coorniadteId`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `muni_id` (`muni_id`),
  ADD UNIQUE KEY `muni_name` (`muni_name`),
  ADD UNIQUE KEY `userId` (`userId`);

--
-- Indexes for table `fib_indicator`
--
ALTER TABLE `fib_indicator`
  ADD PRIMARY KEY (`indicator_id`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `microbial`
--
ALTER TABLE `microbial`
  ADD PRIMARY KEY (`microbialId`),
  ADD KEY `samplingId` (`samplingId`);

--
-- Indexes for table `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`muni_id`),
  ADD UNIQUE KEY `muni_name` (`muni_name`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `qmra`
--
ALTER TABLE `qmra`
  ADD PRIMARY KEY (`qmra_id`),
  ADD KEY `indicator_id` (`indicator_id`);

--
-- Indexes for table `river`
--
ALTER TABLE `river`
  ADD PRIMARY KEY (`riverId`),
  ADD KEY `muni_id` (`muni_id`);

--
-- Indexes for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD PRIMARY KEY (`samplingId`),
  ADD KEY `userId` (`userId`),
  ADD KEY `muni_id` (`muni_id`);

--
-- Indexes for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sam_san` (`samplingId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `watersource`
--
ALTER TABLE `watersource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `samplingId` (`samplingId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coordinate`
--
ALTER TABLE `coordinate`
  MODIFY `coorniadteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `fib_indicator`
--
ALTER TABLE `fib_indicator`
  MODIFY `indicator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `microbial`
--
ALTER TABLE `microbial`
  MODIFY `microbialId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qmra`
--
ALTER TABLE `qmra`
  MODIFY `qmra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `river`
--
ALTER TABLE `river`
  MODIFY `riverId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `samplingdata`
--
ALTER TABLE `samplingdata`
  MODIFY `samplingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `watersource`
--
ALTER TABLE `watersource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coordinate`
--
ALTER TABLE `coordinate`
  ADD CONSTRAINT `coordinate_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`muni_id`) REFERENCES `municipality` (`muni_id`),
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`muni_name`) REFERENCES `municipality` (`muni_name`),
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

--
-- Constraints for table `fib_indicator`
--
ALTER TABLE `fib_indicator`
  ADD CONSTRAINT `fib_indicator_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  ADD CONSTRAINT `hydrogensulfide_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `microbial`
--
ALTER TABLE `microbial`
  ADD CONSTRAINT `microbial_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `municipality`
--
ALTER TABLE `municipality`
  ADD CONSTRAINT `municipality_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `province` (`province_id`);

--
-- Constraints for table `qmra`
--
ALTER TABLE `qmra`
  ADD CONSTRAINT `qmra_ibfk_1` FOREIGN KEY (`indicator_id`) REFERENCES `fib_indicator` (`indicator_id`);

--
-- Constraints for table `river`
--
ALTER TABLE `river`
  ADD CONSTRAINT `river_ibfk_1` FOREIGN KEY (`muni_id`) REFERENCES `municipality` (`muni_id`);

--
-- Constraints for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD CONSTRAINT `samplingdata_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  ADD CONSTRAINT `samplingdata_ibfk_2` FOREIGN KEY (`muni_id`) REFERENCES `municipality` (`muni_id`);

--
-- Constraints for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  ADD CONSTRAINT `sam_san` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

--
-- Constraints for table `watersource`
--
ALTER TABLE `watersource`
  ADD CONSTRAINT `watersource_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
