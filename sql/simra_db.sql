-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 12:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
(2, '-10.3565545', '-20.3656125', 7),
(3, '-10.3565545', '-20.3656125', 7),
(6, '28.2292712', '-25.7478676', 21),
(7, '28.2292712', '-25.7478676', 22),
(8, '28.2292712', '-25.7478676', 23),
(9, '28.2292712', '-25.7478676', 24),
(10, '28.2292712', '-25.7478676', 25);

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
(5, '0', 7, 'negative(No Risk)'),
(6, '1', 16, 'positive (Risk)'),
(7, '0', 17, 'Negative (No Risk)'),
(8, '1', 18, 'positive (Risk)'),
(9, '0', 19, 'Negative (No Risk)'),
(10, '1', 20, 'positive (Risk)');

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

('Abaqulusi Local Municipality','ZA-KZN','KZN263'),
('Alfred Duma Local Municipality','ZA-KZN','KZN238'),
('Big Five Hlabisa Local Municipality','ZA-KZN','	KZN276'),
('Dannhauser Local Municipality','ZA-KZN','KZN254'),
('Dr Nkosazana Dlamini Zuma Local Municipality','ZA-KZN','KZN436'),
('eDumbe Local Municipality','ZA-KZN','KZN261'),
('Endumeni Local Municipality','ZA-KZN','KZN241'),
('eThekwini Metropolitan Municipality','ZA-KZN','ETH'),
('Greater Kokstad Local Municipality','ZA-KZN','KZN433'),
('Impendle Local Municipality','ZA-KZN','KZN224'),
('Inkosi Langalibalele Local Municipality','ZA-KZN','KZN237'),
('Jozini Local Municipality','ZA-KZN','KZN272'),
('KwaDukuza Local Municipality','ZA-KZN','KZN292'),
('Mandeni Local Municipality','ZA-KZN','KZN291'),
('Maphumulo Local Municipality','ZA-KZN','KZN294'),
('Mkhambathini Local Municipality','ZA-KZN','KZN226'),
('Mpofana Local Municipality','ZA-KZN','KZN223'),
('Msinga Local Municipality','ZA-KZN','KZN244'),
('Msunduzi Local Municipality','ZA-KZN','KZN225'),
('Mthonjaneni Local Municipality','ZA-KZN','KZN285'),
('Mtubatuba Local Municipality','ZA-KZN','KZN275'),
('Ndwedwe Local Municipality','ZA-KZN','KZN293'),
('Newcastle Local Municipality','ZA-KZN','KZN252'),
('Nkandla Local Municipality','ZA-KZN','KZN286'),
('Nongoma Local Municipality','ZA-KZN','KZN265'),
('Nqutu Local Municipality','ZA-KZN','KZN242'),
('Okhahlamba Local Municipality','ZA-KZN','KZN235'),
('Ray Nkonyeni Local Municipality','ZA-KZN','KZN216'),
('Richmond Local Municipality','ZA-KZN','KZN227'),
('Ubuhlebezwe Local Municipality','ZA-KZN','KZN434'),
('Ulundi Local Municipality','ZA-KZN','KZN266'),
('uMdoni Local Municipality','ZA-KZN','	KZN212'),
('uMfolozi Local Municipality','ZA-KZN','	KZN281'),
('uMhlabuyalingana Local Municipality','ZA-KZN','KZN271'),
('uMhlathuze Local Municipality','ZA-KZN','KZN282'),
('uMlalazi Local Municipality','ZA-KZN','KZN284'),
('uMngeni Local Municipality','ZA-KZN','KZN222'),
('uMshwathi Local Municipality','ZA-KZN','KZN221'),
('uMuziwabantu Local Municipality','ZA-KZN','KZN214'),
('Umvoti Local Municipality','ZA-KZN','KZN245'),
('Umzimkhulu Local Municipality','ZA-KZN','KZN435'),
('Umzumbe Local Municipality','ZA-KZN','KZN213'),
('uPhongolo Local Municipality','ZA-KZN','KZN262'),

('Albert Luthuli Local Municipality','ZA-MP','MP301'),
('Bushbuckridge Local Municipality','ZA-MP','MP325'),
('Dipaleseng Local Municipality','ZA-MP','MP306'),
('Dr JS Moroka Local Municipality','ZA-MP','MP316'),
('Emakhazeni Local Municipality','ZA-MP','MP314'),
('Emalahleni Local Municipality','ZA-MP','MP312'),
('Govan Mbeki Local Municipality','ZA-MP','MP307'),
('Lekwa Local Municipality','ZA-MP','	MP305'),
('Mbombela Local Municipality','ZA-MP','MP326'),
('Mkhondo Local Municipality','ZA-MP','MP303'),
('Msukaligwa Local Municipality','ZA-MP','MP302'),
('Nkomazi Local Municipality','ZA-MP','MP324'),
('Pixley ka Seme Local Municipality','ZA-MP','MP304'),
('Steve Tshwete Local Municipality','ZA-MP','MP313'),
('Thaba Chweu Local Municipality','ZA-MP','	MP321'),
('Thembisile Hani Local Municipality','ZA-MP','MP315'),
('Victor Khanye Local Municipality','ZA-MP','MP311'),

('Amahlathi Local Municipality','ZA-EC','EC124'),
('Blue Crane Route Local Municipality','ZA-EC','EC102'),
('Buffalo City Metropolitan Municipality','ZA-EC','BUF'),
('Dr Beyers Naudé Local Municipality','ZA-EC','EC101'),
('Elundini Local Municipality','ZA-EC','EC141	'),
('Emalahleni Local Municipality','ZA-EC','EC136'),
('Engcobo Local Municipality','ZA-EC','EC137'),
('Enoch Mgijima Local Municipality','ZA-EC','EC139'),
('Great Kei Local Municipality','ZA-EC','EC123'),
('Ingquza Hill Local Municipality','ZA-EC','EC153'),
('Intsika Yethu Local Municipality','ZA-EC','EC135'),
('Inxuba Yethemba Local Municipality','ZA-EC','EC131'),
('King Sabata Dalindyebo Local Municipality','ZA-EC','EC157'),
('Kou-Kamma Local Municipality','ZA-EC','EC109'),
('Kouga Local Municipality','ZA-EC','EC108'),
('Makana Local Municipality','ZA-EC','EC104'),
('Matatiele Local Municipality','ZA-EC','EC441'),
('Mbhashe Local Municipality','ZA-EC','EC121'),
('Winnie Madikizela-Mandela Local Municipality','ZA-EC','EC443'),
('Mhlontlo Local Municipality','ZA-EC','EC156'),
('Mnquma Local Municipality','ZA-EC','EC122'),
('Ndlambe Local Municipality','ZA-EC','EC105'),
('Nelson Mandela Bay Metropolitan Municipality','ZA-EC','NMA'),
('Ngqushwa Local Municipality','ZA-EC','EC126'),
('Ntabankulu Local Municipality','ZA-EC','EC444'),
('Nyandeni Local Municipality','ZA-EC','EC155'),
('Port St Johns Local Municipality','ZA-EC','EC154'),
('Raymond Mhlaba Local Municipality','ZA-EC','EC129'),
('Sakhisizwe Local Municipality','ZA-EC','EC138'),
('Senqu Local Municipality','ZA-EC','EC142'),
('Sundays River Valley Local Municipality','ZA-EC','EC106'),
('Umzimvubu Local Municipality','ZA-EC','EC442'),
('Walter Sisulu Local Municipality','ZA-EC','EC145'),

('Dihlabeng Local Municipality', 'ZA-fS','FS192'),
('Kopanong Local Municipality', 'ZA-fS','FS162'),
('Letsemeng Local Municipality', 'ZA-fS','FS161'),
('Mafube Local Municipality', 'ZA-fS','FS205'),
('Maluti-a-Phofung Local Municipality','ZA-fS','FS194'),
('Mangaung Metropolitan Municipality','ZA-fS','MAN'),
('Mantsopa Local Municipality', 'ZA-fS','FS196'),
('Masilonyana Local Municipality', 'ZA-fS','FS181'),
('Matjhabeng Local Municipality', 'ZA-fS','FS184'),
('Metsimaholo Local Municipality', 'ZA-fS','FS204'),
('Mohokare Local Municipality', 'ZA-fS','FS163'),
('Moqhaka Local Municipality', 'ZA-fS','FS201'),
('Nala Local Municipality', 'ZA-fS','FS185'),
('Ngwathe Local Municipality', 'ZA-fS','FS203'),
('Nketoana Local Municipality', 'ZA-fS','FS193'),
('Phumelela Local Municipality', 'ZA-fS','FS195'),
('Setsoto Local Municipality', 'ZA-fS','FS191'),
('Tokologo Local Municipality', 'ZA-fS','FS182'),
('Tswelopele Local Municipality', 'ZA-fS','FS183'),

('City of Ekurhuleni Metropolitan Municipality','ZA-GP','	EKU'),
('City of Johannesburg Metropolitan Municipality','ZA-GP','JHB'),
('City of Tshwane Metropolitan Municipality','ZA-GP','TSH'),
('Emfuleni Local Municipality','ZA-GP','GT421'),
('Lesedi Local Municipality','ZA-GP','GT423'),
('Merafong City Local Municipality','ZA-GP','GT484'),
('Midvaal Local Municipality','ZA-GP','GT422'),
('Mogale City Local Municipality','ZA-GP','GT481'),
('Rand West City Local Municipality','ZA-GP','GT485'),


('!Kheis Local Municipality','ZA-NC','NC084'),
('Dawid Kruiper Local Municipality','ZA-NC','NC087'),
('Dikgatlong Local Municipality','ZA-NC','NC092'),
('Emthanjeni Local Municipality','ZA-NC','NC073'),
('Ga-Segonyana Local Municipality','ZA-NC','NC452'),
('Gamagara Local Municipality','ZA-NC','	NC453'),
('Hantam Local Municipality','ZA-NC','NC065'),
('Joe Morolong Local Municipality','ZA-NC','NC451'),
('Kai !Garib Local Municipality','ZA-NC','NC082'),
('Kamiesberg Local Municipality','ZA-NC','NC064'),
('Kareeberg Local Municipality','ZA-NC','NC074'),
('Karoo Hoogland Local Municipality','ZA-NC','NC066'),
('Kgatelopele Local Municipality','ZA-NC','NC086'),
('Khâi-Ma Local Municipality','ZA-NC','	NC067'),
('Magareng Local Municipality','ZA-NC','NC093'),
('Nama Khoi Local Municipality','ZA-NC','NC062'),
('Phokwane Local Municipality','ZA-NC','NC094'),
('Renosterberg Local Municipality','ZA-NC','NC075'),
('Richtersveld Local Municipality','ZA-NC','NC061'),
('Siyancuma Local Municipality','ZA-NC','NC078'),
('Siyathemba Local Municipality','ZA-NC','NC077'),
('Sol Plaatje Local Municipality','ZA-NC','NC091'),
('Thembelihle Local Municipality','ZA-NC','NC076'),
('Tsantsabane Local Municipality','ZA-NC','NC085'),
('Ubuntu Local Municipality','ZA-NC','NC071'),
('Umsobomvu Local Municipality','ZA-NC','NC072'),

('City of Matlosana Local Municipality','ZA-NW','NW403'),
('Ditsobotla Local Municipality','ZA-NW','NW384'),
('Greater Taung Local Municipality','ZA-NW','NW394'),
('JB Marks Local Municipality','ZA-NW','NW405'),
('Kagisano-Molopo Local Municipality','ZA-NW','NW397'),
('Kgetlengrivier Local Municipality','ZA-NW','NW374'),
('Lekwa-Teemane Local Municipality','ZA-NW','NW396'),
('Madibeng Local Municipality','ZA-NW','NW372'),
('Mahikeng Local Municipality','ZA-NW','NW383'),
('Mamusa Local Municipality','ZA-NW','NW393'),
('Maquassi Hills Local Municipality','ZA-NW','NW404	'),
('Moretele Local Municipality','ZA-NW','NW371'),
('Moses Kotane Local Municipality','ZA-NW','NW375'),
('Naledi Local Municipality','ZA-NW','NW392'),
('Ramotshere Moiloa Local Municipality','ZA-NW','NW385'),
('Ratlou Local Municipality','ZA-NW','NW381'),
('Rustenburg Local Municipality','ZA-NW','NW373'),
('Tswaing Local Municipality','ZA-NW','NW382'),

('Beaufort West Local Municipality','ZA-WC','WC053'),
('Bergrivier Local Municipality','ZA-WC','WC013'),
('Bitou Local Municipality','ZA-WC','WC047'),
('Breede Valley Local Municipality','ZA-WC','WC025'),
('Cape Agulhas Local Municipality','ZA-WC','WC033'),
('Cederberg Local Municipality','ZA-WC','WC012'),
('City of Cape Town Metropolitan Municipality','ZA-WC','CPT'),
('Drakenstein Local Municipality','ZA-WC','WC023'),
('George Local Municipality','ZA-WC','WC044'),
('Hessequa Local Municipality','ZA-WC','WC042	'),
('Kannaland Local Municipality','ZA-WC','WC041'),
('Knysna Local Municipality','ZA-WC','WC048'),
('Laingsburg Local Municipality','ZA-WC','WC051'),
('Langeberg Local Municipality','ZA-WC','WC026'),
('Matzikama Local Municipality','ZA-WC','WC011'),
('Mossel Bay Local Municipality','ZA-WC','WC043'),
('Oudtshoorn Local Municipality','ZA-WC','WC045'),
('Overstrand Local Municipality','ZA-WC','WC032'),
('Prince Albert Local Municipality','ZA-WC','WC052'),
('Saldanha Bay Local Municipality','ZA-WC','WC014'),
('Stellenbosch Local Municipality','ZA-WC','WC024'),
('Swartland Local Municipality','ZA-WC','WC015'),
('Swellendam Local Municipality','ZA-WC','WC034'),
('Theewaterskloof Local Municipality','ZA-WC','WC031'),
('Witzenberg Local Municipality','ZA-WC','WC022');


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
  `sampling_date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samplingdata`
--

INSERT INTO `samplingdata` (`samplingId`, `userId`, `weatherCondition`, `sampling_date_created`) VALUES
(3, 1, 'sunny', '2023-09-13 13:18:28'),
(4, 1, 'sunny', '2023-09-13 13:52:29'),
(5, 1, 'Wet', '2023-09-13 21:26:08'),
(6, 1, 'Wet', '2023-09-13 21:28:17'),
(7, 1, 'Wet', '2023-09-13 21:29:05'),
(8, 1, 'Windy', '2023-09-13 22:48:25'),
(9, 1, 'Windy', '2023-09-13 22:55:19'),
(10, 1, 'Windy', '2023-09-13 22:57:58'),
(11, 1, 'Windy', '2023-09-13 22:59:17'),
(12, 1, 'Windy', '2023-09-13 23:12:04'),
(13, 1, 'Windy', '2023-09-13 23:41:18'),
(14, 1, 'Thunder and Lightning', '2023-09-13 23:45:19'),
(15, 1, 'cloudy', '2023-09-14 07:10:42'),
(16, 1, 'cloudy', '2023-09-14 07:12:37'),
(17, 1, 'cloudy', '2023-09-14 07:14:39'),
(18, 1, 'cloudy', '2023-09-14 07:16:12'),
(19, 1, 'cloudy', '2023-09-14 07:17:07'),
(20, 1, 'cloudy', '2023-09-14 07:29:08'),
(21, 1, 'cloudy', '2023-09-14 07:29:31'),
(22, 1, 'Windy', '2023-09-17 21:38:27'),
(23, 1, 'Windy', '2023-09-17 21:38:56'),
(24, 1, 'Windy', '2023-09-17 21:53:07'),
(25, 1, 'Windy', '2023-09-17 21:53:20');

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
  `total_avarage` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanitaryinpectionquestion`
--

INSERT INTO `sanitaryinpectionquestion` (`id`, `pitLatrine`, `domesticAnimal`, `diaperDisposal`, `wasteWaterRelease`, `openDefaction`, `unprotectedWaterSource`, `agriculturalActivity`, `observerLaundryActivity`, `samplingId`, `risk_type`, `total_avarage`) VALUES
(3, 0, 1, 1, 1, 1, 0, 1, 1, 7, 'high risk', '75'),
(4, 0, 1, 1, 1, 1, 0, 1, 1, 7, 'high risk', '75'),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 9, 'low risk', '0'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 10, 'low risk', '0'),
(9, 1, 0, 1, 0, 1, 0, 1, 0, 12, 'medium risk', '50'),
(10, 1, 1, 1, 0, 0, 1, 1, 1, 13, 'high risk', '75'),
(12, 1, 0, 1, 0, 1, 0, 1, 0, 21, 'medium risk', '50'),
(13, 1, 0, 1, 1, 0, 0, 0, 1, 22, 'medium risk', '50'),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 23, 'low risk', '0'),
(15, 0, 1, 0, 1, 1, 0, 0, 1, 24, 'medium risk', '50'),
(16, 1, 1, 1, 1, 1, 1, 1, 1, 25, 'very high risk', '100');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `mobileNo` varchar(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `mobileNo`, `password`, `firstname`, `lastname`, `level`) VALUES
(1, '0123456789', '123zxc', 'Gift', 'Mukwevho', 1);

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
(1, 'River', 'hard', 3),
(4, 'Household Tap Water', 'Hard', NULL),
(5, 'Household Tap Water', 'Easy', NULL),
(6, 'Household Tap Water', 'Easy', NULL),
(7, 'Household Tap Water', 'Easy', NULL),
(8, 'Household Tap Water', 'Easy', NULL);

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
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

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
  ADD KEY `userId` (`userId`);

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
  MODIFY `coorniadteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hydrogensulfide`
--
ALTER TABLE `hydrogensulfide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `microbial`
--
ALTER TABLE `microbial`
  MODIFY `microbialId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `river`
--
ALTER TABLE `river`
  MODIFY `riverId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `samplingdata`
--
ALTER TABLE `samplingdata`
  MODIFY `samplingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sanitaryinpectionquestion`
--
ALTER TABLE `sanitaryinpectionquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `watersource`
--
ALTER TABLE `watersource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coordinate`
--
ALTER TABLE `coordinate`
  ADD CONSTRAINT `coordinate_ibfk_1` FOREIGN KEY (`samplingId`) REFERENCES `samplingdata` (`samplingId`);

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
-- Constraints for table `river`
--
ALTER TABLE `river`
  ADD CONSTRAINT `river_ibfk_1` FOREIGN KEY (`muni_id`) REFERENCES `municipality` (`muni_id`);

--
-- Constraints for table `samplingdata`
--
ALTER TABLE `samplingdata`
  ADD CONSTRAINT `samplingdata_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`);

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
