-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 15 Sty 2022, 00:03
-- Wersja serwera: 8.0.27
-- Wersja PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `psi_projekt`
--
CREATE DATABASE IF NOT EXISTS `psi_projekt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci;
USE `psi_projekt`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add client', 1, 'add_client'),
(2, 'Can change client', 1, 'change_client'),
(3, 'Can delete client', 1, 'delete_client'),
(4, 'Can view client', 1, 'view_client'),
(5, 'Can add cloth_type', 2, 'add_cloth_type'),
(6, 'Can change cloth_type', 2, 'change_cloth_type'),
(7, 'Can delete cloth_type', 2, 'delete_cloth_type'),
(8, 'Can view cloth_type', 2, 'view_cloth_type'),
(9, 'Can add item', 3, 'add_item'),
(10, 'Can change item', 3, 'change_item'),
(11, 'Can delete item', 3, 'delete_item'),
(12, 'Can view item', 3, 'view_item'),
(13, 'Can add orders', 4, 'add_orders'),
(14, 'Can change orders', 4, 'change_orders'),
(15, 'Can delete orders', 4, 'delete_orders'),
(16, 'Can view orders', 4, 'view_orders'),
(17, 'Can add log entry', 5, 'add_logentry'),
(18, 'Can change log entry', 5, 'change_logentry'),
(19, 'Can delete log entry', 5, 'delete_logentry'),
(20, 'Can view log entry', 5, 'view_logentry'),
(21, 'Can add permission', 6, 'add_permission'),
(22, 'Can change permission', 6, 'change_permission'),
(23, 'Can delete permission', 6, 'delete_permission'),
(24, 'Can view permission', 6, 'view_permission'),
(25, 'Can add group', 7, 'add_group'),
(26, 'Can change group', 7, 'change_group'),
(27, 'Can delete group', 7, 'delete_group'),
(28, 'Can view group', 7, 'view_group'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add content type', 9, 'add_contenttype'),
(34, 'Can change content type', 9, 'change_contenttype'),
(35, 'Can delete content type', 9, 'delete_contenttype'),
(36, 'Can view content type', 9, 'view_contenttype'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_polish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_polish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$xcEsJfJPHLJrZMvy47dlXN$BQpf7krEE/N9sgRBRx6S7LdjSuwd1sYNED4hJeCkEls=', '2022-01-14 22:47:16.705046', 1, 'admin', '', '', 'admin@test.com', 1, 1, '2021-11-27 11:59:37.902071'),
(2, 'pbkdf2_sha256$260000$0Jdk5ZvjVm2ymgGpAzomWK$Er0ba7OmdIfBiiZ0hcsARPKMx9YrtFIOm9sn1zQi9uo=', '2022-01-14 22:41:45.535433', 0, 'bombel', 'Nieadam', 'Nieadam', 'bombel@gmail.com', 0, 1, '2022-01-14 19:29:30.000000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `surname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `adres` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `birth_date` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clothes_client`
--

DROP TABLE IF EXISTS `clothes_client`;
CREATE TABLE IF NOT EXISTS `clothes_client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `surname` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `adres` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_polish_ci NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `clothes_client`
--

INSERT INTO `clothes_client` (`id_client`, `gender`, `name`, `surname`, `adres`, `email`, `birth_date`) VALUES
(1, 'Male', 'Jerzy', 'Kowalski', 'ul. Prosta 4/12', 'gmail4214211@gmail.com', '2008-05-14'),
(2, 'Male', 'Ssafdsaf', 'asffsafsa', 'fassfafas', 'saffsafsasfa@mail.com', '2021-12-11'),
(3, 'jdfgjgdf', 'djfgjgdf', 'jgfdjgdf', 'jgdfjdgf', 'sgdgasfa@mail.com', '2021-12-11'),
(4, 'hfdjgfdhnvbc', 'ngfdngfdngfd', 'hfdgn', 'ngfdnfdg', 'saffsafsasfa@mail.com', '2021-12-11'),
(5, 'dfgjgfdjdf', 'srtjutedrj', 'jdfgjdfgj', 'gdsjhfgdsjfgd', 'saffsafsasfa@mail.com', '2021-12-11'),
(6, 'tdrhhdtrdhtr', 'hrdth', 'hgfdhdrt', 'dasdasgfd', 'saffsafsasfa@mail.com', '2021-12-11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clothes_cloth_type`
--

DROP TABLE IF EXISTS `clothes_cloth_type`;
CREATE TABLE IF NOT EXISTS `clothes_cloth_type` (
  `id_cloth_type` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`id_cloth_type`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `clothes_cloth_type`
--

INSERT INTO `clothes_cloth_type` (`id_cloth_type`, `name`) VALUES
(1, 'T-shirt'),
(2, 'Sneakers'),
(3, 'Hoodie'),
(4, 'Jeans'),
(5, 'kox');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clothes_item`
--

DROP TABLE IF EXISTS `clothes_item`;
CREATE TABLE IF NOT EXISTS `clothes_item` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `size` varchar(10) COLLATE utf8mb4_polish_ci NOT NULL,
  `material` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `price` double NOT NULL,
  `manufacturer` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `color` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `cloth_type_id` int DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `serial_number` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `clothes_item_cloth_type_id_7601fc2b` (`cloth_type_id`),
  KEY `clothes_item_owner_id_05475c0d` (`owner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `clothes_item`
--

INSERT INTO `clothes_item` (`id_item`, `size`, `material`, `price`, `manufacturer`, `color`, `cloth_type_id`, `name`, `serial_number`, `owner_id`) VALUES
(1, '42', 'Mixed', 59.99, 'Nike', 'Black', 2, 'Jordan 2001 MID', 'S638D9900012', NULL),
(2, 'L', 'Cotton', 29.99, 'Adidas', 'Black', 1, 'All Blacks Lifestyle Tee', 'S2SD1621522', NULL),
(4, 's', 's', 1, 's', 's', 2, 's', 's', NULL),
(5, 'fsfs', 'Cotton', 1, 's', 'sff', 2, 'fs', 'f', NULL),
(6, 'gfdsgfsd', 'gfdsgdsf', 1, 'gfdss', 'gfds', 2, 'gsdfhft', 'gfdsg', NULL),
(7, 'hdfhfd', 'hfdhfd', 2, 'gfdgfd', 'gfd', 3, 'hdfhfd', 'hfdhfdh', NULL),
(10, '42', 'Test', 4, 'Test', 'Red', 2, '', 'S638D990001222TEST', NULL),
(11, '42', 'Test', 4, 'Test', 'Red', 2, '', 'S638D990001222TEST', NULL),
(12, 'L', 'Cotton', 1, 'Adidas', 'gfds', 1, '', 'S2SD1621522TEST', NULL),
(13, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'test', 'S638D99000122teste', NULL),
(14, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, '', 'S638D99000122teste', NULL),
(15, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'test', 'S638D99000122teste', NULL),
(16, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'test', 'S638D99000122teste', NULL),
(17, 'L', 'Mixed', 2, 'Adidas', 'sff', 1, 'Czydziala', 'S638D99000122Czydziala', NULL),
(18, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'test', 'S638D99000122teste', NULL),
(19, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'test', 'S638D99000122teste', NULL),
(20, 'L', 'Mixed', 1, 'Adidas', 'sff', 1, 'testtttt', 'S638D99000122teste', NULL),
(21, 'test', 'test', 4, 'gfdss', 'test', 1, 'test', 'test', NULL),
(22, 'test', 'test', 4, 'gfdss', 'test', 1, 'test', 'test', NULL),
(23, 'L', 'Cotton', 2, 'gfds', 's', 1, 'test22222', 'S2SD1621522', NULL),
(24, 'test', 'test', 1, 'Test', 'White, Red, Black', 1, 'burak', 'test', NULL),
(25, 'test', 'test', 1, 'Test', 'White, Red, Blacke', 1, 'burak', 'test', NULL),
(26, 'test', 'test', 1, 'Test', 'White, Red, Blacke', 1, 'burak', 'test', NULL),
(27, 'test', 'test', 1, 'Test', 'White, Red, Blackes', 1, 'burak', 'test', NULL),
(28, 'test', 'test', 1, 'Test', 'White, Red, Blackes', 1, 'burak', 'test', NULL),
(29, 'test', 'test', 1, 'Test', 'White, Red, Blackes', 1, 'burak', 'test', NULL),
(30, 'test', 'test', 1, 'Test', 'White, Red, Blackes', 1, 'burak2', 'test', NULL),
(31, 'test', 'test', 1, 'Test', 'White, Red, Blackes', 1, 'burak2', 'test', NULL),
(32, 'test123', 'test123', 1, 'test123', 'test123', 1, 'test123', 'test123', NULL),
(33, 'L', 'Cotton', 1, 'Adidas', 'gfds', 1, 'test', 'test', 1),
(34, 'L', 'Cotton', 1, '5', 'Black', 1, 'namidaa', 'S2SD1621522', 1),
(35, 'L', 'Cotton', 1, '5', 'Black', 1, 'namidaa', 'S2SD1621522', 1),
(36, 'L', 'Cotton', 1, '5', 'Black', 1, 'namidaa', 'S2SD1621522', 1),
(37, 'L', 'Cotton', 1, '5', 'Black', 1, 'namidaa', 'S2SD1621522', 1),
(38, 't', 't', 1, 't', 't', 1, 't', 't', 1),
(39, '5', '5', 5, '5', '5', 1, '5', '5', 1),
(40, '5', '5', 5, '5', '5', 1, '5', '5', 2),
(41, '5', '5', 5, '5', '5', 1, '5', '5', 2),
(42, '11', '1', 1, '11', '1', 1, '1', '1', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clothes_orders`
--

DROP TABLE IF EXISTS `clothes_orders`;
CREATE TABLE IF NOT EXISTS `clothes_orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `id_client_id` int NOT NULL,
  `id_item_id` int NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `clothes_orders_id_client_id_2a901940` (`id_client_id`),
  KEY `clothes_orders_id_item_id_84304f1c` (`id_item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `clothes_orders`
--

INSERT INTO `clothes_orders` (`id_order`, `id_client_id`, `id_item_id`) VALUES
(1, 1, 2),
(3, 2, 4),
(4, 6, 1),
(5, 2, 1),
(6, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cloth_type`
--

DROP TABLE IF EXISTS `cloth_type`;
CREATE TABLE IF NOT EXISTS `cloth_type` (
  `id_cloth_type` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  PRIMARY KEY (`id_cloth_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_polish_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_polish_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_polish_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-11 09:58:58.174564', '1', 'Cloth_type object (1)', 1, '[{\"added\": {}}]', 2, 1),
(2, '2021-12-11 09:59:04.982813', '2', 'Cloth_type object (2)', 1, '[{\"added\": {}}]', 2, 1),
(3, '2021-12-11 09:59:26.544027', '3', 'Cloth_type object (3)', 1, '[{\"added\": {}}]', 2, 1),
(4, '2021-12-11 09:59:29.059377', '4', 'Cloth_type object (4)', 1, '[{\"added\": {}}]', 2, 1),
(5, '2021-12-11 10:00:31.185282', '1', 'Item object (1)', 1, '[{\"added\": {}}]', 3, 1),
(6, '2021-12-11 10:02:10.205900', '2', 'Item object (2)', 1, '[{\"added\": {}}]', 3, 1),
(7, '2021-12-11 10:02:56.764284', '3', 'Item object (3)', 1, '[{\"added\": {}}]', 3, 1),
(8, '2021-12-11 10:12:58.414106', '1', 'Jordan', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(9, '2021-12-11 10:13:16.666580', '1', 'Jordan 2001 MID', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(10, '2021-12-11 11:10:06.258654', '1', 'gmail4214211@gmail.com', 1, '[{\"added\": {}}]', 1, 1),
(11, '2021-12-11 11:12:26.828528', '2', 'Orders object (2)', 3, '', 4, 1),
(12, '2021-12-11 18:41:45.649052', '4', 's', 1, '[{\"added\": {}}]', 3, 1),
(13, '2021-12-11 18:41:53.410658', '5', 'fs', 1, '[{\"added\": {}}]', 3, 1),
(14, '2021-12-11 18:42:01.395973', '6', 'gsdf', 1, '[{\"added\": {}}]', 3, 1),
(15, '2021-12-11 18:42:06.518931', '6', 'gsdfh', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(16, '2021-12-11 18:42:07.964247', '6', 'gsdfh', 2, '[]', 3, 1),
(17, '2021-12-11 18:42:10.597550', '6', 'gsdfh', 2, '[{\"changed\": {\"fields\": [\"Serial number\"]}}]', 3, 1),
(18, '2021-12-11 18:42:12.488717', '6', 'gsdfhf', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(19, '2021-12-11 18:42:13.620896', '6', 'gsdfhf', 2, '[{\"changed\": {\"fields\": [\"Manufacturer\"]}}]', 3, 1),
(20, '2021-12-11 18:42:26.955110', '6', 'gsdfhf', 2, '[]', 3, 1),
(21, '2021-12-11 18:42:27.964303', '6', 'gsdfhf', 2, '[]', 3, 1),
(22, '2021-12-11 18:42:28.593860', '6', 'gsdfhf', 2, '[]', 3, 1),
(23, '2021-12-11 18:42:29.112186', '6', 'gsdfhf', 2, '[]', 3, 1),
(24, '2021-12-11 18:42:29.627192', '6', 'gsdfhf', 2, '[]', 3, 1),
(25, '2021-12-11 18:42:34.741570', '6', 'gsdfhft', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1),
(26, '2021-12-11 18:42:38.907315', '6', 'gsdfhft', 2, '[]', 3, 1),
(27, '2021-12-11 18:42:52.732068', '7', 'hdfhfd', 1, '[{\"added\": {}}]', 3, 1),
(28, '2021-12-11 18:58:03.582129', '2', 'saffsafsasfa@mail.com', 1, '[{\"added\": {}}]', 1, 1),
(29, '2021-12-11 18:58:09.595193', '3', 'sgdgasfa@mail.com', 1, '[{\"added\": {}}]', 1, 1),
(30, '2021-12-11 18:58:13.659173', '4', 'saffsafsasfa@mail.com', 1, '[{\"added\": {}}]', 1, 1),
(31, '2021-12-11 18:58:18.243922', '5', 'saffsafsasfa@mail.com', 1, '[{\"added\": {}}]', 1, 1),
(32, '2021-12-11 18:58:22.106336', '6', 'saffsafsasfa@mail.com', 1, '[{\"added\": {}}]', 1, 1),
(33, '2021-12-11 20:38:55.340442', '3', 'Orders object (3)', 1, '[{\"added\": {}}]', 4, 1),
(34, '2021-12-11 20:38:57.867103', '4', 'Orders object (4)', 1, '[{\"added\": {}}]', 4, 1),
(35, '2021-12-11 20:39:00.205272', '5', 'Orders object (5)', 1, '[{\"added\": {}}]', 4, 1),
(36, '2022-01-14 19:29:30.730051', '2', 'bombel', 1, '[{\"added\": {}}]', 8, 1),
(37, '2022-01-14 19:29:56.506176', '2', 'bombel', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 8, 1),
(38, '2022-01-14 20:20:29.446420', '6', 'Orders object (6)', 1, '[{\"added\": {}}]', 4, 1),
(39, '2022-01-14 20:26:36.418799', '1', 'Orders object (1)', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 4, 1),
(40, '2022-01-14 20:26:43.394775', '5', 'Orders object (5)', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 4, 1),
(41, '2022-01-14 20:26:47.648565', '4', 'Orders object (4)', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 4, 1),
(42, '2022-01-14 20:26:50.844310', '3', 'Orders object (3)', 2, '[{\"changed\": {\"fields\": [\"Owner\"]}}]', 4, 1),
(43, '2022-01-14 20:32:19.691342', '2', 'bombel', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 8, 1),
(44, '2022-01-14 21:45:27.698302', '6', 'test', 3, '', 2, 1),
(45, '2022-01-14 21:45:41.372580', '9', '', 3, '', 3, 1),
(46, '2022-01-14 21:45:41.373580', '8', '', 3, '', 3, 1),
(47, '2022-01-14 21:47:08.467704', '7', 'test', 3, '', 2, 1),
(48, '2022-01-14 21:52:54.661211', '13', 'test', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 3, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'clothes', 'client'),
(2, 'clothes', 'cloth_type'),
(3, 'clothes', 'item'),
(4, 'clothes', 'orders'),
(5, 'admin', 'logentry'),
(6, 'auth', 'permission'),
(7, 'auth', 'group'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-11-27 11:58:09.908063'),
(2, 'auth', '0001_initial', '2021-11-27 11:58:16.602158'),
(3, 'admin', '0001_initial', '2021-11-27 11:58:17.922318'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-11-27 11:58:17.933316'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-11-27 11:58:17.944318'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-11-27 11:58:18.413519'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-11-27 11:58:18.596603'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-11-27 11:58:18.818425'),
(9, 'auth', '0004_alter_user_username_opts', '2021-11-27 11:58:18.825428'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-11-27 11:58:19.022735'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-11-27 11:58:19.025732'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-11-27 11:58:19.033733'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-11-27 11:58:19.239430'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-11-27 11:58:19.680750'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-11-27 11:58:19.881356'),
(16, 'auth', '0011_update_proxy_permissions', '2021-11-27 11:58:19.888358'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-11-27 11:58:20.098137'),
(18, 'clothes', '0001_initial', '2021-11-27 11:58:20.601392'),
(19, 'clothes', '0002_auto_20211122_1652', '2021-11-27 11:58:23.165866'),
(20, 'clothes', '0003_auto_20211122_1659', '2021-11-27 11:58:24.004426'),
(21, 'sessions', '0001_initial', '2021-11-27 11:58:24.513390'),
(22, 'clothes', '0004_auto_20211211_2224', '2021-12-11 21:24:32.983384'),
(23, 'clothes', '0004_auto_20211211_2228', '2021-12-11 21:29:00.887535'),
(24, 'clothes', '0004_auto_20220114_2027', '2022-01-14 19:28:02.940503'),
(25, 'clothes', '0005_orders_owner', '2022-01-14 20:01:25.058007'),
(26, 'clothes', '0006_auto_20220114_2203', '2022-01-14 21:03:57.681364'),
(27, 'clothes', '0007_auto_20220114_2246', '2022-01-14 21:46:40.509154'),
(28, 'clothes', '0008_alter_item_cloth_type', '2022-01-14 21:50:52.332046'),
(29, 'clothes', '0009_item_owner', '2022-01-14 22:00:36.118244'),
(30, 'clothes', '0010_rename_owner_item_user', '2022-01-14 22:02:17.084524'),
(31, 'clothes', '0011_auto_20220114_2310', '2022-01-14 22:10:34.535700'),
(32, 'clothes', '0012_auto_20220114_2317', '2022-01-14 22:17:31.638695'),
(33, 'clothes', '0010_alter_item_owner', '2022-01-14 22:23:42.033983'),
(34, 'clothes', '0011_alter_item_owner', '2022-01-14 22:36:53.379583'),
(35, 'clothes', '0012_alter_item_owner', '2022-01-14 22:43:11.861658'),
(36, 'clothes', '0013_alter_item_owner', '2022-01-14 22:43:42.273462'),
(37, 'clothes', '0014_alter_item_owner', '2022-01-14 22:44:01.075513'),
(38, 'clothes', '0015_alter_item_owner', '2022-01-14 22:47:06.106127');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_polish_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_polish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('v1z8yc6hiu5cch2qhskdyvobfcd8be26', '.eJxVjEEOwiAQRe_C2hCGggGX7j0DmWGmUjWQlHbVeHdt0oVu_3vvbyrhupS0dpnTxOqiQJ1-N8L8lLoDfmC9N51bXeaJ9K7og3Z9ayyv6-H-HRTs5VtLjGzOgyWyhDy6Efzg2IETMSYgRxeAonFgBvRgM8QQMbNYL14wBPX-AOIZN8U:1mqwMx:kUsEVoYmHgETHgE4NvyNbwrkEBjEq2IgYryWpXK79oM', '2021-12-11 11:59:51.545827'),
('47vrbq5yyamish2fntpat0pcidd4p86n', '.eJxVjEEOwiAQRe_C2hCGggGX7j0DmWGmUjWQlHbVeHdt0oVu_3vvbyrhupS0dpnTxOqiQJ1-N8L8lLoDfmC9N51bXeaJ9K7og3Z9ayyv6-H-HRTs5VtLjGzOgyWyhDy6Efzg2IETMSYgRxeAonFgBvRgM8QQMbNYL14wBPX-AOIZN8U:1ms7wG:4dMjwPiAx7gLrra74dswPGs53wTPN2tlaz6e2I8xRwY', '2021-12-14 18:33:12.038075'),
('1h54itt6qd7xwvgyov44t2yy0xjl67il', '.eJxVjEEOwiAQRe_C2hCGggGX7j0DmWGmUjWQlHbVeHdt0oVu_3vvbyrhupS0dpnTxOqiQJ1-N8L8lLoDfmC9N51bXeaJ9K7og3Z9ayyv6-H-HRTs5VtLjGzOgyWyhDy6Efzg2IETMSYgRxeAonFgBvRgM8QQMbNYL14wBPX-AOIZN8U:1n8VLo:jP7M7VFWCRodMLn0FrlVHU7byc2iVNCvfg1SbA7cKWg', '2022-01-28 22:47:16.707046');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `serial_number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `size` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `material` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `manufacturer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `color` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `cloth_type` int NOT NULL,
  PRIMARY KEY (`id_item`),
  KEY `fk_Cloth_Type1_idx` (`cloth_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id_order` int NOT NULL,
  `id_client` int NOT NULL,
  `id_item` int NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `fk_Orders_Clients_idx` (`id_client`),
  KEY `fk_Orders_Items1_idx` (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_Ubrania_Rodzaj_ubrania1` FOREIGN KEY (`cloth_type`) REFERENCES `cloth_type` (`id_cloth_type`);

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_Orders_Clients` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `fk_Orders_Items1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
