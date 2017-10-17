-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 04:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stomatoloska_ordinacija`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `order_complete` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED DEFAULT NULL,
  `procedure_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `start_time`, `end_time`, `order_complete`, `created_at`, `updated_at`, `client_id`, `procedure_id`) VALUES
(1, '2017-10-11 11:00:00', '2017-10-11 12:00:00', 1, '2017-10-15 02:49:21', '2017-10-15 09:43:20', 2, 3),
(2, '2017-10-11 12:00:00', '2017-10-11 12:50:00', 1, '2017-10-15 05:11:20', '2017-10-15 09:44:05', 3, 5),
(3, '2017-10-12 08:30:00', '2017-10-12 10:30:00', 1, '2017-10-15 05:23:00', '2017-10-15 13:18:18', 5, 2),
(4, '2017-10-11 15:00:00', '2017-10-11 16:00:00', 0, '2017-10-15 05:23:33', '2017-10-15 09:17:48', 9, 4),
(5, '2017-10-11 10:00:00', '2017-10-11 11:00:00', 0, '2017-10-15 05:23:51', '2017-10-15 05:23:51', 2, 4),
(6, '2017-10-13 12:00:00', '2017-10-13 13:00:00', 0, '2017-10-15 05:24:18', '2017-10-15 13:17:06', 3, 4),
(7, '2017-10-13 08:00:00', '2017-10-13 10:00:00', 1, '2017-10-15 09:21:14', '2017-10-15 13:16:26', 1, 2),
(8, '2017-10-13 11:00:00', '2017-10-13 12:00:00', 1, '2017-10-15 09:22:03', '2017-10-15 13:16:47', 5, 3),
(9, '2017-10-09 10:00:00', '2017-10-09 10:50:00', 0, '2017-10-15 09:22:31', '2017-10-15 09:24:18', 5, 5),
(10, '2017-10-09 08:00:00', '2017-10-09 09:30:00', 1, '2017-10-15 09:23:44', '2017-10-15 13:18:31', 10, 19),
(11, '2017-10-09 12:00:00', '2017-10-09 12:30:00', 1, '2017-10-15 09:44:48', '2017-10-15 13:15:15', 2, 6),
(12, '2017-10-11 08:00:00', '2017-10-11 10:00:00', 1, '2017-10-15 09:45:11', '2017-10-15 13:15:49', 5, 2),
(13, '2017-10-10 12:00:00', '2017-10-10 13:30:00', 1, '2017-10-15 09:45:41', '2017-10-15 09:46:13', 12, 19),
(14, '2017-10-12 11:00:00', '2017-10-12 12:00:00', 1, '2017-10-15 04:49:21', '2017-10-15 11:43:20', 2, 3),
(15, '2017-10-09 14:00:00', '2017-10-09 14:20:00', 1, '2017-10-15 09:46:04', '2017-10-15 09:46:22', 15, 1),
(19, '2017-10-12 12:00:00', '2017-10-12 12:50:00', 1, '2017-10-15 07:11:20', '2017-10-15 11:44:05', 3, 5),
(26, '2017-10-12 13:00:00', '2017-10-12 15:00:00', 0, '2017-10-15 07:23:00', '2017-10-15 11:43:00', 5, 2),
(27, '2017-10-16 15:00:00', '2017-10-16 16:00:00', 0, '2017-10-15 07:23:33', '2017-10-15 11:17:48', 9, 4),
(28, '2017-10-16 10:00:00', '2017-10-16 11:00:00', 0, '2017-10-15 07:23:51', '2017-10-15 07:23:51', 2, 4),
(29, '2017-10-16 13:00:00', '2017-10-16 14:00:00', 0, '2017-10-15 07:24:18', '2017-10-15 07:24:18', 3, 4),
(39, '2017-10-17 10:00:00', '2017-10-17 12:00:00', 0, '2017-10-15 11:21:14', '2017-10-15 11:21:14', 1, 2),
(40, '2017-10-17 09:00:00', '2017-10-17 10:00:00', 0, '2017-10-15 11:22:03', '2017-10-15 11:22:03', 5, 3),
(41, '2017-10-18 10:00:00', '2017-10-18 10:50:00', 0, '2017-10-15 11:22:31', '2017-10-15 11:24:18', 5, 5),
(42, '2017-10-18 08:00:00', '2017-10-18 09:30:00', 0, '2017-10-15 11:23:44', '2017-10-15 11:24:00', 10, 19),
(43, '2017-10-10 08:00:00', '2017-10-10 08:30:00', 1, '2017-10-15 11:44:48', '2017-10-15 11:44:48', 2, 6),
(44, '2017-10-10 09:00:00', '2017-10-10 11:00:00', 0, '2017-10-15 11:45:11', '2017-10-15 11:45:11', 5, 2),
(45, '2017-10-13 14:00:00', '2017-10-13 15:30:00', 1, '2017-10-15 11:45:41', '2017-10-15 13:17:36', 12, 19),
(46, '2017-10-10 14:00:00', '2017-10-10 14:20:00', 1, '2017-10-15 11:46:04', '2017-10-15 11:46:22', 15, 1),
(47, '2017-10-17 12:30:00', '2017-10-17 13:00:00', 0, '2017-10-15 17:54:05', '2017-10-15 17:54:05', 28, 6),
(48, '2017-10-18 13:00:00', '2017-10-18 15:30:00', 0, '2017-10-15 17:55:16', '2017-10-15 17:55:16', 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `phone`, `date_of_birth`, `address`, `city`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Marko', 'Markić', '0918598789', '1984-11-14', 'Markićeva ulica 16', 'Zagreb', 'marko@markic.com', '2017-10-13 09:52:02', '2017-10-13 09:52:02'),
(2, 'Ivan', 'Ivaniš', '0985687468', '1985-10-18', 'Ivanova 15', 'Split', 'ivan@ivanis.com', '2017-10-13 10:20:38', '2017-10-13 10:20:38'),
(3, 'Errol', 'Renfield', '+46-216-786-5984', '1979-06-01', '86 Logan Crossing', 'Mariestad', 'erenfield2@lulu.com', '2017-08-24 05:40:16', '2017-08-15 18:25:01'),
(4, 'Gerry', 'Yerborn', '+86-710-979-0910', '1990-05-07', '5118 Del Sol Road', 'Kouzhen', 'gyerborn3@ucsd.edu', '2017-08-10 10:19:11', '2017-08-16 07:13:58'),
(5, 'Ernestus', 'Plumer', '+971-275-539-4213', '1980-11-03', '86836 Service Circle', 'Dubai', 'eplumer4@symantec.com', '2017-09-17 15:31:16', '2017-09-29 05:58:13'),
(6, 'Antin', 'Littlewood', '+62-615-747-3826', '1985-05-08', '86361 Dovetail Circle', 'Sumanding', 'alittlewood5@webnode.com', '2017-08-14 22:58:46', '2017-09-06 03:32:18'),
(7, 'Antonin', 'Livings', '+86-905-125-2226', '1989-01-30', '221 Haas Alley', 'Zhaike', 'alivings6@stumbleupon.com', '2017-08-12 05:57:34', '2017-10-01 00:28:36'),
(8, 'Barnabas', 'Skerme', '+1-236-979-8714', '1980-01-19', '60 Derek Circle', 'Ta`ū', 'bskerme7@nhs.uk', '2017-09-17 09:29:38', '2017-09-08 03:05:02'),
(9, 'Claire', 'Overel', '+234-837-123-1855', '1992-08-18', '78259 Aberg Pass', 'Kaltungo', 'coverel8@technorati.com', '2017-09-13 20:44:54', '2017-08-14 22:03:20'),
(10, 'Terrance', 'Valenta', '+351-623-889-8920', '1992-07-29', '3809 Little Fleur Street', 'Póvoa do Valado', 'tvalenta9@nyu.edu', '2017-08-18 10:46:59', '2017-08-20 18:32:05'),
(11, 'Merna', 'Leger', '+62-655-588-2268', '1986-10-16', '590 Northview Pass', 'Banjar Banyuning Barat', 'mlegera@jiathis.com', '2017-09-04 15:09:32', '2017-09-02 01:34:12'),
(12, 'Hiram', 'McKew', '+27-294-765-6928', '1986-03-23', '7536 Manitowish Terrace', 'Wolmaransstad', 'hmckewb@ftc.gov', '2017-08-10 02:35:19', '2017-08-26 06:13:57'),
(13, 'Hallsy', 'Behrend', '+86-379-744-0541', '1989-12-20', '6574 Kropf Hill', 'Taishanmiao', 'hbehrendc@google.nl', '2017-10-12 15:11:02', '2017-10-09 06:28:30'),
(14, 'Cass', 'Skea', '+55-331-420-1597', '1998-09-27', '1 Canary Street', 'Corumbá', 'cskead@trellian.com', '2017-08-11 15:29:14', '2017-08-18 16:49:44'),
(15, 'Frederic', 'McQuillen', '+385-719-379-6416', '1989-07-18', '1485 Paget Point', 'Grabovci', 'fmcquillene@php.net', '2017-09-02 07:46:53', '2017-09-28 14:32:27'),
(16, 'Alric', 'Lesley', '+244-628-437-7756', '1984-06-15', '23 Macpherson Junction', 'Catumbela', 'alesleyf@1und1.de', '2017-10-01 10:30:10', '2017-08-26 09:59:27'),
(17, 'Klarika', 'Garlicke', '+351-161-461-6573', '1986-11-30', '01225 Fisk Point', 'Louredo', 'kgarlickeg@amazon.de', '2017-09-29 20:07:23', '2017-09-13 01:23:27'),
(18, 'Mercy', 'Brauns', '+60-241-931-3643', '1976-10-03', '298 Kipling Trail', 'Alor Star', 'mbraunsh@apache.org', '2017-09-25 19:14:55', '2017-09-08 19:25:29'),
(19, 'Abbi', 'Dovermann', '+66-900-278-5826', '1992-04-30', '96251 Oak Pass', 'Non Sang', 'adovermanni@pinterest.com', '2017-08-14 18:17:23', '2017-08-14 15:14:21'),
(20, 'Richie', 'Muslim', '+500-484-545-4858', '1992-03-06', '37 Grover Way', 'Stanley', 'rmuslimj@hud.gov', '2017-09-09 11:13:06', '2017-09-20 05:54:14'),
(21, 'Tasia', 'Plastow', '+86-107-483-0581', '1991-11-27', '140 Basil Park', 'Banqiaodian', 'tplastowk@slate.com', '2017-09-24 15:45:47', '2017-09-21 07:27:27'),
(22, 'Glenn', 'Glentworth', '+966-891-558-5471', '1994-05-23', '664 Emmet Road', 'Ad Dawādimī', 'gglentworthl@mapquest.com', '2017-09-02 11:37:48', '2017-08-13 18:01:51'),
(23, 'Nathaniel', 'Barrasse', '+351-594-605-1317', '1978-06-21', '67 Norway Maple Plaza', 'Ribamar', 'nbarrassem@gizmodo.com', '2017-09-30 14:28:23', '2017-10-04 10:59:31'),
(24, 'Benton', 'O''Docherty', '+51-677-851-7713', '1986-11-25', '0539 Leroy Place', 'Huertas', 'bodochertyn@shutterfly.com', '2017-08-12 09:39:08', '2017-09-25 20:43:23'),
(25, 'Isadora', 'Fabry', '+970-711-377-5098', '1988-08-24', '6 Maple Wood Circle', 'Sīrīs', 'ifabryo@jigsy.com', '2017-09-28 15:03:55', '2017-09-24 21:54:29'),
(26, 'Lisetta', 'Rollingson', '+86-980-758-1400', '1974-06-03', '234 Scott Road', 'Hengjian', 'lrollingsonp@xing.com', '2017-09-30 19:37:46', '2017-09-06 07:01:04'),
(27, 'Julietta', 'Bartoszewski', '+95-492-851-7857', '1979-07-24', '24197 Troy Alley', 'Hakha', 'jbartoszewskiq@icq.com', '2017-10-03 13:52:16', '2017-10-03 11:10:18'),
(28, 'Fairlie', 'Emerson', '+46-385-856-7085', '1980-06-28', '75 Mallard Parkway', 'Uppsala', 'femersonr@mashable.com', '2017-09-27 07:06:44', '2017-09-17 10:55:02'),
(29, 'Shane', 'Garriock', '+62-701-536-3272', '1997-09-01', '700 Valley Edge Street', 'Ciawitali', 'sgarriocks@princeton.edu', '2017-08-13 06:02:41', '2017-08-22 00:05:15'),
(30, 'Marnia', 'Petroulis', '+86-280-743-7652', '1983-08-19', '716 Hansons Park', 'Nanshui', 'mpetroulist@virginia.edu', '2017-10-03 11:15:36', '2017-09-04 17:04:50'),
(31, 'Tiffanie', 'Twopenny', '+86-921-609-1187', '1974-07-24', '3482 Division Way', 'Dengmingsi', 'ttwopennyu@scribd.com', '2017-08-15 00:18:14', '2017-08-24 03:41:27'),
(32, 'Kania', 'Ivankin', '+255-690-129-1855', '1992-06-04', '5882 Toban Trail', 'Mafinga', 'kivankinv@hugedomains.com', '2017-09-30 20:45:00', '2017-09-20 04:31:23'),
(33, 'Germaine', 'Klimus', '+95-579-850-4585', '1994-03-19', '047 Homewood Court', 'Myitkyina', 'gklimusw@xinhuanet.com', '2017-09-11 18:04:11', '2017-09-03 21:43:09'),
(34, 'Blinnie', 'Fagence', '+86-713-477-0864', '1993-03-22', '3 Fremont Circle', 'Mashan', 'bfagencex@chron.com', '2017-08-18 16:38:59', '2017-08-21 04:39:59'),
(35, 'Symon', 'Arkow', '+55-694-734-3017', '1981-05-28', '0002 Monument Junction', 'Jaraguá do Sul', 'sarkowy@apple.com', '2017-09-16 03:34:17', '2017-08-23 00:41:44'),
(36, 'Kellia', 'Lively', '+380-884-513-4555', '1996-09-09', '56 Aberg Avenue', 'Snizhne', 'klivelyz@exblog.jp', '2017-08-20 14:08:16', '2017-09-21 12:47:57'),
(37, 'Auria', 'Gravell', '+7-930-803-1656', '1995-05-14', '5607 Lakewood Gardens Point', 'Zhigalovo', 'agravell10@theguardian.com', '2017-09-16 23:09:03', '2017-10-11 03:36:00'),
(38, 'Anderson', 'Walisiak', '+33-582-568-1372', '1978-01-21', '67 Continental Parkway', 'Marseille', 'awalisiak11@tripadvisor.com', '2017-09-02 02:26:01', '2017-09-21 12:19:57'),
(39, 'Tresa', 'McCaughey', '+51-491-900-6977', '1981-05-13', '06 Vernon Junction', 'Sabandia', 'tmccaughey12@hp.com', '2017-08-23 21:52:41', '2017-10-07 11:36:03'),
(40, 'Salaidh', 'Lack', '+55-206-681-7432', '1975-12-31', '13 Express Road', 'Araçuaí', 'slack13@hatena.ne.jp', '2017-08-10 09:59:22', '2017-10-09 19:29:17'),
(41, 'Conchita', 'Anglin', '+33-629-431-3753', '1991-12-15', '33760 Troy Avenue', 'Gif-sur-Yvette', 'canglin14@nhs.uk', '2017-10-09 00:29:38', '2017-09-18 20:47:50'),
(42, 'Pincas', 'Steiner', '+86-217-108-3518', '1990-07-26', '588 Judy Terrace', 'Songshan', 'psteiner15@paginegialle.it', '2017-08-24 04:32:08', '2017-09-30 15:33:13'),
(43, 'Samara', 'Minall', '+98-444-125-4343', '1984-11-29', '0108 Kingsford Court', 'Qā’en', 'sminall16@wikimedia.org', '2017-08-11 19:07:53', '2017-10-11 13:52:40'),
(44, 'Arlena', 'Joontjes', '+86-765-341-9399', '1999-05-21', '69195 Mcbride Road', 'Haduohe', 'ajoontjes17@virginia.edu', '2017-09-23 13:15:20', '2017-09-01 07:41:27'),
(45, 'Hurley', 'Mieville', '+63-474-751-2357', '1998-07-09', '7184 Anthes Parkway', 'San Juan', 'hmieville18@harvard.edu', '2017-08-30 11:58:45', '2017-08-27 06:11:46'),
(46, 'Trula', 'Slinn', '+55-213-806-2824', '1975-03-20', '2267 Rigney Circle', 'Corumbá', 'tslinn19@4shared.com', '2017-08-11 15:22:35', '2017-09-11 01:29:40'),
(47, 'Cherilyn', 'Conrath', '+46-412-726-3964', '1990-07-05', '37603 Buell Drive', 'Kristianstad', 'cconrath1a@merriam-webster.com', '2017-08-19 13:09:17', '2017-10-01 11:38:52'),
(48, 'Anna-diana', 'Schult', '+1-229-782-0028', '1994-08-29', '8994 Lyons Pass', 'Decatur', 'aschult1b@desdev.cn', '2017-10-04 02:45:45', '2017-09-19 12:23:24'),
(49, 'Hermione', 'Novichenko', '+1-801-529-6319', '1994-04-08', '08 Pawling Way', 'Salt Lake City', 'hnovichenko1c@about.me', '2017-08-09 22:20:43', '2017-09-16 19:36:56'),
(50, 'Moses', 'Glendza', '+55-663-826-6055', '1978-03-15', '95 Petterle Hill', 'Brejo Santo', 'mglendza1d@ucoz.ru', '2017-09-20 22:10:28', '2017-09-09 14:15:09'),
(51, 'Salim', 'Spellessy', '+86-953-511-4877', '1999-09-19', '0 Warbler Court', 'Saihan Tal', 'sspellessy1e@timesonline.co.uk', '2017-08-10 23:01:54', '2017-09-29 19:09:34'),
(52, 'Clark', 'Glasebrook', '+7-455-900-2420', '1982-02-02', '954 Burrows Road', 'Burayevo', 'cglasebrook1f@imdb.com', '2017-09-15 20:48:01', '2017-08-29 18:22:06'),
(53, 'Luciano', 'Fitzgerald', '+62-881-525-3101', '1974-02-16', '853 Stephen Trail', 'Saparua', 'lfitzgerald1g@imgur.com', '2017-10-04 11:18:10', '2017-09-09 20:50:43'),
(54, 'Portia', 'Dimmock', '+224-453-702-9182', '1981-08-25', '74 Helena Parkway', 'Coyah', 'pdimmock1h@wunderground.com', '2017-10-02 19:36:37', '2017-08-26 22:13:51'),
(55, 'Alard', 'Turfs', '+52-165-111-7319', '1997-02-06', '16 Sycamore Park', 'La Esperanza', 'aturfs1i@hexun.com', '2017-08-15 09:16:35', '2017-09-19 05:48:18'),
(56, 'Samantha', 'Farnhill', '+54-970-103-1896', '1997-06-22', '124 Fairfield Parkway', 'Resistencia', 'sfarnhill1j@bravesites.com', '2017-10-12 15:52:14', '2017-10-11 17:07:44'),
(57, 'Antoni', 'Braemer', '+58-733-691-2895', '1994-02-26', '8 Service Junction', 'San Pablo', 'abraemer1k@ezinearticles.com', '2017-08-26 11:53:46', '2017-08-21 11:42:12'),
(58, 'Elva', 'MacGoun', '+62-928-135-6824', '1999-09-07', '4 Drewry Plaza', 'Salamrejo', 'emacgoun1l@washingtonpost.com', '2017-09-27 15:32:49', '2017-08-17 01:53:45'),
(59, 'Vannie', 'Kilbee', '+994-963-483-0482', '1989-06-15', '3366 Spenser Avenue', 'Heydərabad', 'vkilbee1m@histats.com', '2017-10-07 13:05:37', '2017-10-06 04:25:47'),
(60, 'Jerrold', 'Scopham', '+53-856-682-5250', '1984-05-09', '03 School Circle', 'Media Luna', 'jscopham1n@upenn.edu', '2017-09-23 03:07:44', '2017-09-12 06:24:34'),
(61, 'Cyrille', 'Balsellie', '+30-252-712-9721', '1975-10-31', '5046 Bartelt Way', 'Ávato', 'cbalsellie1o@ifeng.com', '2017-09-25 07:26:27', '2017-08-19 09:19:18'),
(62, 'Valina', 'Rummer', '+1-619-338-9009', '1990-11-20', '4970 Sunbrook Way', 'Collingwood', 'vrummer1p@istockphoto.com', '2017-10-11 05:28:28', '2017-10-03 08:37:12'),
(63, 'Dionis', 'Klossmann', '+380-210-724-9939', '1997-07-06', '666 Lighthouse Bay Drive', 'Verblyany', 'dklossmann1q@cafepress.com', '2017-08-11 04:14:11', '2017-09-19 19:01:45'),
(64, 'Welsh', 'Geke', '+351-712-653-9163', '1975-06-02', '80644 School Trail', 'Coja', 'wgeke1r@constantcontact.com', '2017-08-28 03:58:49', '2017-09-26 13:40:53'),
(65, 'Giana', 'Held', '+380-799-287-6913', '1998-04-29', '166 Meadow Ridge Hill', 'Staryy Sambor', 'gheld1s@dmoz.org', '2017-09-20 05:42:39', '2017-09-21 07:49:17'),
(66, 'Nola', 'Lornsen', '+1-610-108-5151', '1987-10-04', '19033 Esker Road', 'Allentown', 'nlornsen1t@altervista.org', '2017-10-06 09:37:16', '2017-08-15 19:37:57'),
(67, 'Lusa', 'Kordt', '+261-565-157-9357', '1998-12-22', '9 Blue Bill Park Pass', 'Vohibinany', 'lkordt1u@skype.com', '2017-09-23 01:29:18', '2017-09-09 17:27:44'),
(68, 'Elspeth', 'O''Sheeryne', '+7-339-816-4393', '1990-01-07', '5183 Clove Center', 'Suvorovskaya', 'eosheeryne1v@si.edu', '2017-09-07 03:10:29', '2017-10-04 07:05:33'),
(69, 'Nilson', 'Shelley', '+420-132-685-5418', '1983-04-12', '20056 Schmedeman Court', 'Krmelín', 'nshelley1w@hexun.com', '2017-10-05 08:45:43', '2017-10-04 21:13:54'),
(70, 'Almeda', 'Darlison', '+995-385-274-2997', '1974-02-01', '57007 Sutherland Point', 'Vale', 'adarlison1x@flickr.com', '2017-09-02 16:16:49', '2017-09-03 09:12:36'),
(71, 'Darcey', 'Welman', '+47-111-511-3599', '1988-12-19', '69621 American Ash Road', 'Oslo', 'dwelman1y@utexas.edu', '2017-08-30 18:17:00', '2017-09-19 10:59:03'),
(72, 'Idalina', 'Matuska', '+63-506-252-2317', '1981-11-16', '1 Hoffman Plaza', 'San Alejandro', 'imatuska1z@disqus.com', '2017-08-12 23:07:34', '2017-09-11 04:18:33'),
(73, 'Pernell', 'Sterke', '+355-873-264-1176', '1982-02-19', '5062 Vidon Road', 'Bradashesh', 'psterke20@rediff.com', '2017-09-22 11:07:35', '2017-10-01 20:03:30'),
(74, 'Thalia', 'Fautley', '+33-632-850-9471', '1996-03-09', '6 Express Avenue', 'Valenciennes', 'tfautley21@reverbnation.com', '2017-08-20 06:14:47', '2017-09-05 05:19:41'),
(75, 'Ade', 'Terzza', '+48-300-721-6192', '1981-07-23', '92007 Dawn Place', 'Baruchowo', 'aterzza22@java.com', '2017-09-12 22:21:12', '2017-10-02 04:20:23'),
(76, 'Wilie', 'Pollie', '+55-644-161-1859', '1999-07-15', '81994 Bunker Hill Street', 'Água Preta', 'wpollie23@nhs.uk', '2017-09-27 10:08:50', '2017-08-22 20:25:24'),
(77, 'Koralle', 'Okroy', '+86-867-300-9836', '1999-01-11', '4 Starling Junction', 'Yi’an', 'kokroy24@netvibes.com', '2017-08-27 02:49:09', '2017-08-20 02:50:45'),
(78, 'Dayna', 'Scrowston', '+7-782-201-8053', '1988-03-05', '12057 Aberg Center', 'Novyye Cherëmushki', 'dscrowston25@nytimes.com', '2017-09-06 06:21:29', '2017-09-03 07:39:49'),
(79, 'Glenn', 'Moyser', '+351-616-162-6278', '1983-07-03', '603 Schlimgen Drive', 'Ameixoeira', 'gmoyser26@t-online.de', '2017-08-20 17:52:10', '2017-09-26 10:26:37'),
(80, 'Albertina', 'Carrick', '+86-828-177-8123', '1992-09-05', '7 Pine View Center', 'Wenquan', 'acarrick27@google.nl', '2017-09-28 17:40:48', '2017-10-08 14:24:57'),
(81, 'Jessamyn', 'Wherrit', '+351-299-356-1347', '1999-05-22', '13 International Road', 'Baratã', 'jwherrit28@slashdot.org', '2017-08-20 02:48:28', '2017-08-10 08:16:53'),
(82, 'Virginia', 'De la Yglesia', '+48-787-934-7213', '1993-08-01', '7 Tennyson Circle', 'Stopnica', 'vdelayglesia29@skype.com', '2017-09-27 07:35:23', '2017-08-16 14:46:34'),
(83, 'Dyan', 'Neaverson', '+33-228-735-8562', '1976-02-28', '188 Bartillon Terrace', 'Altkirch', 'dneaverson2a@cam.ac.uk', '2017-08-13 08:18:24', '2017-10-03 01:29:03'),
(84, 'Cassandra', 'Mattingley', '+1-407-296-3885', '1995-09-12', '47 Hazelcrest Avenue', 'Pinellas Park', 'cmattingley2b@gravatar.com', '2017-09-09 18:23:54', '2017-10-07 06:16:54'),
(85, 'Antin', 'Linde', '+55-245-987-5157', '1975-02-17', '05043 Goodland Junction', 'Itaperuçu', 'alinde2c@soundcloud.com', '2017-08-30 03:31:59', '2017-10-01 11:34:38'),
(86, 'Geralda', 'Leathard', '+63-205-464-4957', '1995-01-08', '4188 Menomonie Point', 'Ibaan', 'gleathard2d@t.co', '2017-09-16 07:22:48', '2017-09-26 16:19:06'),
(87, 'Leighton', 'Kalberer', '+358-856-511-1964', '1985-08-24', '6 Grayhawk Place', 'Muurame', 'lkalberer2e@state.tx.us', '2017-08-29 16:08:21', '2017-08-20 04:03:53'),
(88, 'Willyt', 'Ansett', '+84-854-330-6889', '1998-07-07', '26 Russell Road', 'Thị Trấn Mộc Châu', 'wansett2f@eepurl.com', '2017-09-27 17:38:18', '2017-08-13 08:15:13'),
(89, 'Rowney', 'Penelli', '+598-895-187-5903', '1996-07-20', '2349 Sugar Way', 'Baltasar Brum', 'rpenelli2g@fda.gov', '2017-08-20 00:37:36', '2017-08-12 09:32:55'),
(90, 'Cass', 'McFadzean', '+86-122-547-1990', '1989-02-28', '0 Milwaukee Center', 'Chaoyangdong', 'cmcfadzean2h@about.me', '2017-09-12 20:59:43', '2017-08-27 18:20:54'),
(91, 'Letitia', 'Maty', '+353-214-814-6633', '1999-10-12', '946 Emmet Plaza', 'Tullamore', 'lmaty2i@bravesites.com', '2017-10-09 11:15:17', '2017-08-28 19:11:05'),
(92, 'Danya', 'Leyden', '+86-242-478-2197', '1981-05-07', '32248 Arizona Point', 'Guang’an', 'dleyden2j@wikimedia.org', '2017-08-22 10:40:49', '2017-09-08 19:15:08'),
(93, 'Romonda', 'Edmondson', '+86-727-679-5630', '1975-11-04', '3474 Sycamore Avenue', 'Nanxia', 'redmondson2k@stumbleupon.com', '2017-09-25 13:26:30', '2017-09-30 01:10:01'),
(94, 'Dulcia', 'Raddenbury', '+55-945-606-8252', '1979-04-07', '131 Fallview Parkway', 'Rio Branco', 'draddenbury2l@yahoo.co.jp', '2017-09-02 04:19:28', '2017-09-12 02:32:11'),
(95, 'Quintilla', 'Cleave', '+62-698-472-4041', '1981-09-23', '3065 Pankratz Street', 'Jambulang', 'qcleave2m@mysql.com', '2017-09-03 03:02:46', '2017-08-15 22:18:17'),
(96, 'Herold', 'Greeson', '+261-930-633-4213', '1975-01-26', '25279 Marcy Pass', 'Morondava', 'hgreeson2n@4shared.com', '2017-08-30 14:47:53', '2017-08-14 18:26:54'),
(97, 'Silvia', 'Bellringer', '+1-129-704-8777', '1984-07-05', '4771 Eastlawn Plaza', 'Duncans', 'sbellringer2o@sogou.com', '2017-09-08 06:15:52', '2017-08-24 23:58:24'),
(98, 'Wilbert', 'Adenot', '+62-515-830-9461', '1992-03-30', '3698 Colorado Pass', 'Gandu', 'wadenot2p@un.org', '2017-10-12 19:43:48', '2017-09-04 19:51:17'),
(99, 'Milena', 'Mingay', '+261-993-602-0545', '1999-06-12', '80 School Center', 'Ifanadiana', 'mmingay2q@deviantart.com', '2017-09-19 02:28:47', '2017-08-26 17:26:20'),
(100, 'Barnabas', 'Jacobsz', '+52-370-319-1153', '1990-05-18', '37501 5th Plaza', 'Chapultepec', 'bjacobsz2r@ucoz.ru', '2017-09-22 01:26:57', '2017-09-10 14:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_10_12_225915_create_1507838355_roles_table', 1),
(3, '2017_10_12_225918_create_1507838357_users_table', 1),
(4, '2017_10_12_225919_add_59dfc997db926_relationships_to_user_table', 1),
(5, '2017_10_12_232502_create_1507839902_working_hours_table', 1),
(6, '2017_10_12_233116_create_1507840276_clients_table', 1),
(7, '2017_10_13_115004_create_1507884604_procedures_table', 1),
(8, '2017_10_13_115913_create_1507885152_appointments_table', 1),
(9, '2017_10_13_115914_add_59e08063ecfbf_relationships_to_appointment_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `procedures`
--

CREATE TABLE `procedures` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `duration` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `procedures`
--

INSERT INTO `procedures` (`id`, `code`, `name`, `price`, `duration`, `created_at`, `updated_at`) VALUES
(1, '0001', 'Brušenje zuba', '50.00', '00:20:00', '2017-10-13 09:52:02', '2017-10-13 12:49:47'),
(2, '0002', 'Vađenje zuba', '350.00', '02:00:00', '2017-10-13 10:00:44', '2017-10-13 10:00:44'),
(3, '0003', 'Poliranje', '30.00', '01:00:00', NULL, NULL),
(4, '0004', 'Dupliranje', '40.00', '01:00:00', NULL, NULL),
(5, '0005', 'Sređivanje', '50.00', '00:50:00', NULL, NULL),
(6, '0006', 'Pregled', '60.00', '00:30:00', NULL, NULL),
(7, '0007', 'Kratki pregled', '70.00', '00:20:00', NULL, NULL),
(8, '0008', 'Pranje', '80.00', '00:10:00', NULL, NULL),
(9, '0009', 'Obilazak', '90.00', '00:40:00', NULL, NULL),
(10, '0010', 'Presađivanje', '100.00', '02:30:00', NULL, NULL),
(11, '0011', 'Preslikavanje', '110.00', '02:00:00', NULL, NULL),
(12, '0012', 'Bris', '120.00', '00:30:00', NULL, NULL),
(13, '0013', 'Slikanje', '130.00', '02:00:00', NULL, NULL),
(14, '0014', 'Magnetska rezonanca', '140.00', '01:30:00', NULL, NULL),
(15, '0015', 'EEG', '150.00', '01:00:00', NULL, NULL),
(16, '0016', 'EKG', '160.00', '01:50:00', NULL, NULL),
(17, '0017', 'Tens', '170.00', '00:20:00', NULL, NULL),
(18, '0018', 'Oblog', '180.00', '00:10:00', NULL, NULL),
(19, '0019', 'Aparatić za zube', '190.00', '01:30:00', NULL, NULL),
(20, '0020', 'Fizikalna terapija', '200.00', '02:00:00', NULL, NULL),
(21, '0021', 'Operacija', '10.00', '01:30:00', NULL, NULL),
(22, '0022', 'Brušenje', '20.00', '01:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2017-10-13 09:52:02', '2017-10-13 09:52:02'),
(2, 'Simple user', '2017-10-13 09:52:02', '2017-10-13 09:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$K1e68o49M6822Y1qw6Rese5zzBoTYJUDxX3PEmvuRrAnCDC8boa1u', 'rALLwXhgql5cJa5tEeDQbecXMke0nHUzjrBnlKhPcBc5SWcbv2OtNEjPbM3K', '2017-10-13 09:52:02', '2017-10-13 09:52:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `working_hours`
--

CREATE TABLE `working_hours` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `selected_time` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `working_hours`
--

INSERT INTO `working_hours` (`id`, `start_time`, `end_time`, `selected_time`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '16:00:00', 1, '2017-10-13 09:52:02', '2017-10-17 12:12:22'),
(18, '07:00:00', '15:00:00', 0, '2017-10-17 12:14:26', '2017-10-17 12:14:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `81530_59e08061eea30` (`client_id`),
  ADD KEY `81530_59e0806208886` (`procedure_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `procedures`
--
ALTER TABLE `procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `81341_59dfc996bb5ec` (`role_id`);

--
-- Indexes for table `working_hours`
--
ALTER TABLE `working_hours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `procedures`
--
ALTER TABLE `procedures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `working_hours`
--
ALTER TABLE `working_hours`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `81530_59e08061eea30` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `81530_59e0806208886` FOREIGN KEY (`procedure_id`) REFERENCES `procedures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `81341_59dfc996bb5ec` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
