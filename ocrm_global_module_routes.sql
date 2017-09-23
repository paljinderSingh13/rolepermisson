-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 23, 2017 at 09:22 AM
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
-- Table structure for table `ocrm_global_module_routes`
--

CREATE TABLE `ocrm_global_module_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ocrm_global_module_routes`
--

INSERT INTO `ocrm_global_module_routes` (`id`, `sub_module_id`, `route`, `route_name`, `status`, `created_at`, `updated_at`) VALUES
(73, 243, 'hrm/role/save', 'Add Role', 1, '2017-07-11 03:03:54', '2017-07-11 07:02:13'),
(74, 244, 'hrm/role/assign', 'Assign Permisson', 1, '2017-07-11 03:03:54', '2017-07-11 07:02:13'),
(75, 243, 'hrm/role_permisson_save', 'Permisson Save', 1, '2017-07-11 03:03:54', '2017-07-11 07:02:13'),
(78, 250, 'project/details', 'Project Details', 1, '2017-07-11 06:30:26', '2017-07-12 05:27:47'),
(79, 250, 'project/update', 'Project Update', 1, '2017-07-11 06:52:21', '2017-07-12 05:27:47'),
(80, 250, 'project/attachments', 'project attachment', 1, '2017-07-12 00:55:21', '2017-07-12 05:27:47'),
(89, 219, 'hrm/attendance/import', 'Attendance Import', 1, '2017-07-18 05:34:14', '2017-07-18 05:34:14'),
(90, 287, 'crm/payment-methods', 'Payment-Method', 1, '2017-07-31 07:12:10', '2017-07-31 07:14:48'),
(91, 264, 'dataset/create', 'Create Dataset', 1, '2017-08-02 01:10:50', '2017-08-02 01:10:50'),
(94, 293, 'deleted/employees', 'Deleted Employees', 1, '2017-08-07 02:28:25', '2017-08-07 02:28:25'),
(95, 294, 'tools/website-rank', 'Webrank', 1, '2017-08-07 03:40:45', '2017-08-07 03:40:45'),
(97, 162, 'account/emails/view', 'Email View', 1, '2017-08-11 01:49:16', '2017-08-11 01:49:16'),
(120, 218, 'hrm/employee/delete', 'employee delete', 1, '2017-08-17 05:21:23', '2017-08-17 05:21:23'),
(121, 218, 'hrm/employee/update', 'employee update', 1, '2017-08-17 05:21:23', '2017-08-17 05:21:23'),
(122, 243, 'account/view', 'user view', 1, '2017-09-19 23:35:27', '2017-09-19 23:35:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ocrm_global_module_routes`
--
ALTER TABLE `ocrm_global_module_routes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ocrm_global_module_routes`
--
ALTER TABLE `ocrm_global_module_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
