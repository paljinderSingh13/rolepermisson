-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 23, 2017 at 09:25 AM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oxo_adminpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `ocrm_235_users_roles`
--

CREATE TABLE `ocrm_235_users_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ocrm_235_users_roles`
--

INSERT INTO `ocrm_235_users_roles` (`id`, `name`, `description`, `order`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 1, 'administrator', 1, '2017-09-01 02:41:58', '2017-09-01 02:41:58'),
(7, 'Data Collector', 'Data Collector', NULL, NULL, 1, '2017-09-11 01:44:16', '2017-09-11 01:44:16'),
(8, 'System Manager', 'System Manager', NULL, NULL, 1, '2017-09-11 01:44:59', '2017-09-11 01:44:59'),
(9, 'System Administrator', 'System Administrator', NULL, NULL, 1, '2017-09-11 01:45:24', '2017-09-11 01:45:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ocrm_235_users_roles`
--
ALTER TABLE `ocrm_235_users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ocrm_235_users_roles`
--
ALTER TABLE `ocrm_235_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
