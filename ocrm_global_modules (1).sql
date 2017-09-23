-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 23, 2017 at 09:21 AM
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
-- Table structure for table `ocrm_global_modules`
--

CREATE TABLE `ocrm_global_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` text COLLATE utf8mb4_unicode_ci,
  `js` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ocrm_global_modules`
--

INSERT INTO `ocrm_global_modules` (`id`, `name`, `route`, `orderBy`, `status`, `color`, `icon`, `css`, `js`, `created_at`, `updated_at`) VALUES
(19, 'HRM', NULL, 3, 1, 'rgba(0, 0, 0, 0.007)', 'fa-users', NULL, NULL, '2017-07-06 23:56:12', '2017-09-19 06:50:43'),
(20, 'Dashboard', 'dashboard', 1, 1, 'rgba(0, 0, 0, 0)', 'fa-dashboard', NULL, NULL, '2017-07-07 00:29:15', '2017-09-19 06:50:43'),
(21, 'Account', NULL, 2, 1, 'rgba(0, 0, 0, 0)', 'fa-user-circle', 'text css', 'text', '2017-07-07 00:46:59', '2017-09-19 06:50:43'),
(22, 'CRM', NULL, 4, 1, 'rgba(0, 0, 0, 0)', 'fa-handshake-o', NULL, NULL, '2017-07-07 00:48:37', '2017-09-19 06:50:43'),
(23, 'Projects', NULL, 5, 1, 'rgba(0, 0, 0, 0)', 'fa-laptop', NULL, NULL, '2017-07-07 00:51:51', '2017-09-19 06:50:43'),
(24, 'CMS', NULL, 7, 1, 'rgba(0, 0, 0, 0)', 'fa-handshake-o', NULL, NULL, '2017-07-07 01:08:52', '2017-09-19 06:50:43'),
(25, 'Users', NULL, 6, 1, 'rgba(0, 0, 0, 0)', 'fa-users', NULL, NULL, '2017-07-07 01:12:36', '2017-09-19 06:50:43'),
(27, 'Settings', NULL, 17, 1, 'rgba(0, 0, 0, 0)', 'fa-cogs', NULL, NULL, '2017-07-12 07:36:24', '2017-09-19 06:50:43'),
(29, 'Datasets', NULL, 8, 1, 'rgba(0, 0, 0, 0)', 'fa-table', NULL, NULL, '2017-07-17 06:30:05', '2017-09-19 06:50:43'),
(33, 'Visualizations', NULL, 9, 1, 'rgba(72, 29, 29, 0)', 'fa-area-chart', NULL, NULL, '2017-07-18 01:28:29', '2017-09-19 06:50:43'),
(37, 'Emails', NULL, 12, 1, 'rgba(0, 0, 0, 0)', 'fa-envelope', NULL, NULL, '2017-07-29 06:07:47', '2017-09-19 06:50:43'),
(38, 'Documents', NULL, 10, 1, '', 'fa-file-text', NULL, NULL, '2017-07-29 06:37:20', '2017-09-19 06:50:43'),
(40, 'Maps', NULL, 13, 1, 'rgba(0, 0, 0, 0)', 'fa-map', NULL, NULL, '2017-08-05 01:37:15', '2017-09-19 06:50:43'),
(41, 'Tools', NULL, 11, 1, 'rgba(0, 0, 0, 0)', 'fa-wrench', NULL, NULL, '2017-08-07 02:56:35', '2017-09-19 06:50:43'),
(52, 'Forms', NULL, 14, 1, '', 'fa-align-left', NULL, NULL, '2017-08-16 22:43:27', '2017-09-19 06:50:43'),
(67, 'Surveys', NULL, 15, 1, '', 'fa-building-o', NULL, NULL, '2017-08-19 05:23:59', '2017-09-19 06:50:43'),
(69, 'Support', NULL, 16, 1, '', 'fa-angle-double-up', NULL, NULL, '2017-08-28 00:14:39', '2017-09-19 06:50:43'),
(70, 'Widgets', NULL, 18, 1, '', 'fa-flag', NULL, NULL, '2017-09-17 23:13:14', '2017-09-19 06:50:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ocrm_global_modules`
--
ALTER TABLE `ocrm_global_modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ocrm_global_modules`
--
ALTER TABLE `ocrm_global_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
