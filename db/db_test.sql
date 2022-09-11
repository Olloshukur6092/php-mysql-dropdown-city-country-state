-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 11, 2022 at 10:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `c_country_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `c_region_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `c_name_rus` varchar(20) NOT NULL DEFAULT '',
  `c_name_eng` varchar(20) NOT NULL DEFAULT '',
  `c_name_ger` varchar(20) NOT NULL DEFAULT '',
  `c_descr_rus` varchar(50) NOT NULL DEFAULT '',
  `c_descr_eng` varchar(50) NOT NULL DEFAULT '',
  `c_descr_ger` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `c_country_id`, `c_region_id`, `c_name_rus`, `c_name_eng`, `c_name_ger`, `c_descr_rus`, `c_descr_eng`, `c_descr_ger`) VALUES
(1, 3, 0, 'Город 3_0_2', 'City 3_0_2 eng', 'City 3_0_2 ger', 'ГОРОД 3_0_2', 'CITY 3_0_2 ENG', 'CITY 3_0_2  GER'),
(2, 2, 0, 'Город 2_0_1', 'City 2_0_1 eng', 'City 2_0_1 ger', 'ГОРОД 2_0_1', 'CITY 2_0_1 ENG', 'CITY 2_0_1  GER'),
(3, 1, 0, 'Город 1_0_1', 'City 1_0_1 eng', 'City 1_0_1 ger', 'ГОРОД 1_0_1', 'CITY 1_0_1 ENG', 'CITY 1_0_1 GER'),
(4, 4, 5, 'Город 4_5_2', 'City 4_5_2 eng', 'City 4_5_2 ger', 'ГОРОД 4_5_2', 'CITY 4_5_2 ENG', 'CITY 4_5_2 GER'),
(5, 2, 0, 'Город 2_0_2', 'City 2_0_2 eng', 'City 2_0_2 ger', 'ГОРОД 2_0_2', 'CITY 2_0_2 ENG', 'CITY 2_0_2  GER'),
(6, 4, 0, 'Город 4_0_2', 'City 4_0_2 eng', 'City 4_0_2 ger', 'ГОРОД 4_0_2', 'CITY 4_0_2 ENG', 'CITY 4_0_2 GER'),
(7, 1, 3, 'Город 1_3_2', 'City 1_3_2 eng', 'City 1_3_2 ger', 'ГОРОД 1_3_2', 'CITY 1_3_2 ENG', 'CITY 1_3_2  GER'),
(8, 2, 4, 'Город 2_4_3', 'City 2_4_3 eng', 'City 2_4_3 ger', 'ГОРОД 2_4_3', 'CITY 2_4_3 ENG', 'CITY 2_4_3  GER'),
(9, 4, 5, 'Город 4_5_1', 'City 4_5_1 eng', 'City 4_5_1 ger', 'ГОРОД 4_5_1', 'CITY 4_5_1 ENG', 'CITY 4_5_1 GER'),
(10, 3, 1, 'Город 3_1_2', 'City 3_1_2 eng', 'City 3_1_2 ger', 'ГОРОД 3_1_2', 'CITY 3_1_2 ENG', 'CITY 3_1_2  GER'),
(11, 2, 2, 'Город 2_2_2', 'City 2_2_2 eng', 'City 2_2_2 ger', 'ГОРОД 2_2_2', 'CITY 2_2_2 ENG', 'CITY 2_2_2 GER'),
(12, 2, 4, 'Город 2_4_1', 'City 2_4_1 eng', 'City 2_4_1 ger', 'ГОРОД 2_4_1', 'CITY 2_4_1 ENG', 'CITY 2_4_1  GER'),
(13, 3, 0, 'Город 3_0_1', 'City 3_0_1 eng', 'City 3_0_1 ger', 'ГОРОД 3_0_1', 'CITY 3_0_1 ENG', 'CITY 3_0_1  GER'),
(14, 1, 3, 'Город 1_3_1', 'City 1_3_1 eng', 'City 1_3_1 ger', 'ГОРОД 1_3_1', 'CITY 1_3_1 ENG', 'CITY 1_3_1  GER'),
(15, 3, 1, 'Город 3_1_1', 'City 3_1_1 eng', 'City 3_1_1 ger', 'ГОРОД 3_1_1', 'CITY 3_1_1 ENG', 'CITY 3_1_1  GER'),
(16, 2, 4, 'Город 2_4_2', 'City 2_4_2 eng', 'City 2_4_2 ger', 'ГОРОД 2_4_2', 'CITY 2_4_2 ENG', 'CITY 2_4_2  GER'),
(17, 2, 2, 'Город 2_2_1', 'City 2_2_1 eng', 'City 2_2_1 ger', 'ГОРОД 2_2_1', 'CITY 2_2_1 ENG', 'CITY 2_2_1  GER'),
(18, 3, 1, 'Город 3_1_5', 'City 3_1_5 eng', 'City 3_1_5 ger', 'ГОРОД 3_1_5', 'CITY 3_1_5 ENG', 'CITY 3_1_5  GER'),
(19, 4, 0, 'Город 4_0_1', 'City 4_0_1 eng', 'City 4_0_1 ger', 'ГОРОД 4_0_1', 'CITY 4_0_1 ENG', 'CITY 4_0_1 GER'),
(20, 1, 0, 'Город 1_0_2', 'City 1_0_2 eng', 'City 1_0_2 ger', 'ГОРОД 1_0_2', 'CITY 1_0_2 ENG', 'CITY 1_0_2  GER'),
(21, 4, 0, 'Город 4_0_3', 'City 4_0_3 eng', 'City 4_0_3 ger', 'ГОРОД 4_0_3', 'CITY 4_0_3 ENG', 'CITY 4_0_3 GER'),
(22, 3, 1, 'Город 3_1_4', 'City 3_1_4 eng', 'City 3_1_4 ger', 'ГОРОД 3_1_4', 'CITY 3_1_4 ENG', 'CITY 3_1_4  GER'),
(23, 3, 1, 'Город 3_1_3', 'City 3_1_3 eng', 'City 3_1_3 ger', 'ГОРОД 3_1_3', 'CITY 3_1_3 ENG', 'CITY 3_1_3  GER');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `glob_region_id` smallint(5) UNSIGNED NOT NULL,
  `c_name_rus` varchar(20) NOT NULL DEFAULT '',
  `c_name_eng` varchar(20) NOT NULL DEFAULT '',
  `c_name_ger` varchar(20) NOT NULL DEFAULT '',
  `c_descr_rus` varchar(50) NOT NULL DEFAULT '',
  `c_descr_eng` varchar(50) NOT NULL DEFAULT '',
  `c_descr_ger` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `glob_region_id`, `c_name_rus`, `c_name_eng`, `c_name_ger`, `c_descr_rus`, `c_descr_eng`, `c_descr_ger`) VALUES
(1, 1, 'Украина ID1', 'Ukraina eng ID1', 'Ukraina ger ID1', 'УКРАИНА', 'UKRAINA ENG', 'UKRAINA GER'),
(2, 1, 'Россия ID2', 'Russia eng ID2', 'Rusland ger ID2', 'РОССИЯ', 'RUSSIA ENG', 'RUSLAND GER'),
(3, 1, 'Белорусь ID3', 'Belorus eng ID3', 'Belorus ger ID3', 'БЕЛОРУСЬ', 'BELORUS ENG', 'BELORUS GER'),
(4, 3, 'США ID4', 'USA eng ID4', 'USA ger ID4', 'СОЕД.ШТАТЫ АМЕРИКИ', 'USA ENG', 'USA GER');

-- --------------------------------------------------------

--
-- Table structure for table `glob_region`
--

CREATE TABLE `glob_region` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `gr_name_rus` varchar(255) NOT NULL,
  `gr_name_eng` varchar(255) NOT NULL,
  `gr_name_ger` varchar(255) NOT NULL,
  `gr_descr_rus` varchar(255) NOT NULL,
  `gr_descr_eng` varchar(255) NOT NULL,
  `gr_descr_ger` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `glob_region`
--

INSERT INTO `glob_region` (`id`, `gr_name_rus`, `gr_name_eng`, `gr_name_ger`, `gr_descr_rus`, `gr_descr_eng`, `gr_descr_ger`) VALUES
(1, 'Европа', 'Europe eng', 'Europe ger', 'ЕВРОПА', 'EUROPE ENG', 'EUROPE GER'),
(2, 'Азия', 'Asia eng', 'Asia ger', 'АЗИЯ', 'ASIA ENG', 'ASIA GER'),
(3, 'Северная Америка', 'Noth America eng', 'Noth America ger', 'СЕВЕРНАЯ АМЕРИКА', 'NOTH AMERICA ENG', 'NOTH AMERICA GER');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `r_country_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `r_name_rus` varchar(255) NOT NULL,
  `r_name_eng` varchar(255) NOT NULL,
  `r_name_ger` varchar(255) NOT NULL,
  `r_descr_rus` varchar(255) NOT NULL,
  `r_descr_eng` varchar(255) NOT NULL,
  `r_descr_ger` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `r_country_id`, `r_name_rus`, `r_name_eng`, `r_name_ger`, `r_descr_rus`, `r_descr_eng`, `r_descr_ger`) VALUES
(1, 3, 'Центральные области ID1', 'Central Region ID1', 'Central Region ID1', 'ЦЕНТРАЛЬНЫЕ ОБЛАСТИ', 'CENTRAL REGION ENG', 'CENTRAL REGION GER'),
(2, 2, 'Центральная Россия ID2', 'Central Russia eng ID2', 'Central Russia ger ID2', 'ЦЕНТРАЛЬНАЯ РОССИЯ', 'CENTRAL RUSSIA ENG', 'CENTRAL RUSSIA GER'),
(3, 1, 'Крым ID3', 'Creamea ID3', 'Creamea ID3', 'КРЫМ', 'CREAMEA ENG', 'CREAMEA GER'),
(4, 2, 'Дальний восток ID4', 'Far East ID4', 'Far East ID4', 'ДАЛЬНИЙ ВОСТОК', 'FAR EAST ENG', 'FAR EAST GER'),
(5, 4, 'Техас ID5', 'Texas ID5', 'Texas ID5', 'ТЕХАС', 'TEXAS ENG', 'TEXAS GER'),
(6, 2, 'Урал ID6', 'Ural eng ID6', 'Ural ger ID6', 'УРАЛ', 'Ural ENG', 'Ural GER'),
(7, 1, 'Донбас ID7', 'Donbas ID7', 'Donbas ID7', 'Донбас', 'DONBAS ENG', 'DONBAS GER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `glob_region_id` (`glob_region_id`);

--
-- Indexes for table `glob_region`
--
ALTER TABLE `glob_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `glob_region`
--
ALTER TABLE `glob_region`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;
