-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Lis 2021, 17:00
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 7.3.27

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
-- Struktura tabeli dla tabeli `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `gender` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `surname` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `adres` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `birth_date` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cloth_type`
--

CREATE TABLE `cloth_type` (
  `id_cloth_type` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `serial_number` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `size` varchar(10) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `material` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `manufacturer` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `color` varchar(45) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `cloth_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_item` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeksy dla tabeli `cloth_type`
--
ALTER TABLE `cloth_type`
  ADD PRIMARY KEY (`id_cloth_type`);

--
-- Indeksy dla tabeli `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `fk_Cloth_Type1_idx` (`cloth_type`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `fk_Orders_Clients_idx` (`id_client`),
  ADD KEY `fk_Orders_Items1_idx` (`id_item`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `fk_Ubrania_Rodzaj_ubrania1` FOREIGN KEY (`cloth_type`) REFERENCES `cloth_type` (`id_cloth_type`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_Orders_Clients` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Orders_Items1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
