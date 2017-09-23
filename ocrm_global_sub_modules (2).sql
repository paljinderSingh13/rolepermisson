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
-- Table structure for table `ocrm_global_sub_modules`
--

CREATE TABLE `ocrm_global_sub_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` bigint(20) DEFAULT NULL,
  `sub_module_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `js` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `orderBy` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ocrm_global_sub_modules`
--

INSERT INTO `ocrm_global_sub_modules` (`id`, `module_id`, `sub_module_route`, `name`, `js`, `css`, `color`, `icon`, `status`, `orderBy`, `created_at`, `updated_at`) VALUES
(97, 22, 'crm/clients', 'Customers', '', '', '', '', 1, 0, '2017-07-07 00:48:37', '2017-08-16 22:38:48'),
(100, 24, 'cms/pages', 'Pages', '', '', '', '', 1, 0, '2017-07-07 01:08:52', '2017-08-16 22:38:48'),
(101, 24, 'cms/media', 'Media', '', '', '', '', 1, 0, '2017-07-07 01:08:52', '2017-08-30 07:05:06'),
(158, 21, 'account/profile', 'Profile', 'helllo js hello some testing data', 'hello vss hello osme testig', 'rgba(0, 0, 0, 0)', 'fa-address-card', 1, 3, '2017-07-07 06:52:38', '2017-09-19 06:51:18'),
(159, 21, 'account/activities', 'Activities', '', '', '', '', 1, 3, '2017-07-07 06:52:38', '2017-09-19 06:51:18'),
(160, 21, 'account/attendance', 'Attendence', '', '', '', '', 1, 6, '2017-07-07 06:52:38', '2017-09-19 06:51:03'),
(161, 21, 'account/performance', 'Performance', '', '', '', '', 1, 5, '2017-07-07 06:52:38', '2017-09-19 06:51:06'),
(162, 21, 'account/emails', 'Emails', '', '', '', '', 1, 3, '2017-07-07 06:52:38', '2017-09-19 06:51:18'),
(164, 21, 'account/chat', 'Chat', '', '', '', '', 1, 9, '2017-07-07 06:52:38', '2017-09-19 06:50:46'),
(165, 21, 'account/discussion', 'Discussion', '', '', '', '', 1, 7, '2017-07-07 06:52:38', '2017-09-19 06:50:59'),
(166, 21, 'account/leaves', 'Leaves', '', '', '', '', 1, 10, '2017-07-07 06:52:38', '2017-09-19 06:50:37'),
(167, 21, 'holiday/list', 'Holidays', '', '', '', '', 1, 11, '2017-07-07 06:52:38', '2017-09-19 06:50:34'),
(168, 21, 'account/todo', 'To Do', '', '', '', '', 1, 12, '2017-07-07 06:52:38', '2017-09-19 06:50:30'),
(169, 21, 'account/tasks', 'Tasks', '', '', '', '', 1, 14, '2017-07-07 06:52:38', '2017-09-19 06:50:20'),
(170, 21, 'account/notes', 'Notes', '', '', '', '', 1, 13, '2017-07-07 06:52:38', '2017-09-19 06:50:26'),
(218, 19, 'hrm/employees', 'Employees', '', '', '', '', 1, 0, '2017-07-11 00:35:08', '2017-08-16 22:38:48'),
(219, 19, 'hrm/attendance', 'Attendance', '', '', '', '', 1, 0, '2017-07-11 00:35:08', '2017-08-16 22:38:48'),
(221, 19, 'hrm/designations', 'Designations', '', '', '', '', 1, 6, '2017-07-11 00:35:08', '2017-09-19 06:51:03'),
(222, 19, 'hrm/departments', 'Departments', '', '', '', '', 1, 6, '2017-07-11 00:35:08', '2017-09-19 06:51:03'),
(223, 19, 'hrm/leaves', 'Leaves', '', '', '', '', 1, 6, '2017-07-11 00:35:08', '2017-09-19 06:51:03'),
(224, 19, 'hrm/leave-categories', 'Leave Categories', '', '', '', '', 1, 7, '2017-07-11 00:35:08', '2017-09-19 06:50:59'),
(225, 19, 'hrm/shifts', 'Shifts', '', '', '', '', 1, 9, '2017-07-11 00:35:08', '2017-09-19 06:50:46'),
(226, 19, 'hrm/holidays', 'Holidays', '', '', '', '', 1, 9, '2017-07-11 00:35:08', '2017-09-19 06:50:46'),
(243, 25, 'users', 'Users', '', '', '', '', 1, 0, '2017-07-11 03:03:54', '2017-08-16 22:38:48'),
(244, 25, 'hrm/roles', 'Roles', '', '', '', '', 1, 0, '2017-07-11 03:03:54', '2017-08-16 22:38:48'),
(250, 23, 'projects', 'Projects', '', '', '', '', 1, 0, '2017-07-11 06:07:18', '2017-08-16 22:38:48'),
(258, 23, 'project/tasks', 'Tasks', '', '', '', '', 1, 0, '2017-07-17 00:10:06', '2017-08-16 22:38:48'),
(259, 23, 'teams', 'Teams', '', '', '', '', 1, 6, '2017-07-17 00:22:44', '2017-09-19 06:51:03'),
(260, 23, 'project/categories', 'Project Categories', '', '', '', '', 1, 6, '2017-07-17 00:24:07', '2017-09-19 06:51:03'),
(261, 24, 'cms/categories', 'Categories', '', '', '', '', 1, 6, '2017-07-17 06:13:24', '2017-09-19 06:51:03'),
(263, 24, 'cms/posts', 'Posts', '', '', '', '', 1, 6, '2017-07-17 06:14:46', '2017-09-19 06:51:03'),
(264, 29, 'datasets', 'Datasets', '', '', '', '', 1, 0, '2017-07-17 06:30:05', '2017-08-16 22:38:48'),
(265, 29, 'dataset/import', 'Import Dataset', '', '', '', '', 1, 0, '2017-07-17 06:30:05', '2017-08-16 22:38:48'),
(266, 32, 'hrm/leaves', 'employee dumy', '', '', '', '', 1, 0, '2017-07-18 01:00:51', '2017-08-16 22:38:48'),
(267, 32, 'hrm/role/delete', 'Dumy client', '', '', '', '', 1, 0, '2017-07-18 01:03:19', '2017-08-16 22:38:48'),
(268, 33, 'create/visualization', 'Visualizations', '', '', '', '', 1, 0, '2017-07-18 01:28:29', '2017-09-15 07:54:45'),
(269, 19, 'hrm/openings', 'Job Openings', '', '', '', '', 1, 10, '2017-07-19 22:55:26', '2017-09-19 06:50:37'),
(270, 19, 'hrm/applicants', 'Applicants', '', '', '', '', 1, 11, '2017-07-20 00:37:59', '2017-09-19 06:50:34'),
(271, 21, 'account/projects', 'Projects', '', '', '', '', 1, 15, '2017-07-26 06:17:37', '2017-09-19 06:50:11'),
(272, NULL, NULL, '', '', '', '', '', 1, 0, '2017-07-27 04:05:58', '2017-07-27 04:05:58'),
(273, NULL, NULL, '', '', '', '', '', 1, 0, '2017-07-27 04:06:58', '2017-07-27 04:06:58'),
(274, NULL, NULL, '', 'hello js', 'hello css', '#6338bd', 'fa-anchor', 1, 0, '2017-07-27 04:10:37', '2017-07-27 04:10:37'),
(275, 35, 'emails', 'Email', '', '', '', '', 1, 0, '2017-07-28 03:47:48', '2017-08-16 22:38:48'),
(276, 36, 'emails', 'Email', '', '', '', '', 1, 0, '2017-07-28 22:38:40', '2017-08-16 22:38:48'),
(277, 37, 'email', 'Emails', '', '', '', '', 1, 0, '2017-07-29 06:07:47', '2017-08-16 22:38:48'),
(278, 37, 'email/templates', 'Email Templates', '', '', '', '', 1, 0, '2017-07-29 06:07:47', '2017-08-16 22:38:48'),
(279, 37, 'email/layouts', 'Email Layouts', '', '', '', '', 1, 6, '2017-07-29 06:07:47', '2017-09-19 06:51:03'),
(280, 38, 'documents', 'Documents', '', '', '', '', 1, 0, '2017-07-29 06:37:20', '2017-08-16 22:38:48'),
(281, 38, 'document/templates', 'Document Templates', '', '', '', '', 1, 0, '2017-07-29 06:37:20', '2017-08-16 22:38:48'),
(282, 38, 'document/layouts', 'Document Layouts', '', '', '', '', 1, 6, '2017-07-29 06:37:20', '2017-09-19 06:51:03'),
(285, 22, 'crm/products', 'Products', '', '', '', '', 1, 0, '2017-07-31 06:56:45', '2017-08-16 22:38:48'),
(286, 22, 'crm/services', 'Services', '', '', '', '', 1, 6, '2017-07-31 07:06:17', '2017-09-19 06:51:03'),
(287, 22, 'crm/invoices', 'Invoices', '', '', '', '', 1, 6, '2017-07-31 07:12:10', '2017-09-19 06:51:03'),
(288, 22, 'crm/payment-methods', 'Payment-Methods', '', '', '', '', 1, 6, '2017-07-31 07:18:52', '2017-09-19 06:51:03'),
(290, 22, 'crm/product/category', 'Product Categories', '', '', '', '', 1, 7, '2017-08-01 06:27:46', '2017-09-19 06:50:59'),
(291, 22, 'crm/service/category', 'Service Categories', '', '', '', '', 1, 9, '2017-08-01 06:27:46', '2017-09-19 06:50:46'),
(292, 40, 'custom-maps/{type?}', 'Custom Maps', '', '', '', '', 1, 0, '2017-08-05 01:37:15', '2017-08-16 22:38:48'),
(294, 41, 'tools', 'Tools', '', '', '', '', 1, 0, '2017-08-07 02:56:35', '2017-08-07 03:30:32'),
(295, 19, 'hrm/payscale', 'Pay Scale', '', '', '', '', 1, 11, '2017-08-09 23:03:39', '2017-09-19 06:50:34'),
(296, 19, 'hrm/applications', 'Applications', '', '', '', '', 1, 11, '2017-08-10 00:59:12', '2017-09-19 06:50:34'),
(297, 22, 'crm/contacts', 'Contacts', 'hello js', 'hello css', 'rgba(226, 181, 181, 0)', 'fa-adjust', 1, 9, '2017-08-12 06:11:11', '2017-09-19 06:50:46'),
(305, 52, 'forms/list', 'Forms', '', '', '', '', 1, 3, '2017-08-16 22:47:09', '2017-09-19 06:51:18'),
(306, 52, 'forms/create', 'Add Form', '', '', '', '', 1, 4, '2017-08-16 22:48:12', '2017-09-19 06:51:14'),
(314, 19, 'hrm/salary', 'Salary', '', '', '', '', 1, 12, '2017-08-17 23:48:57', '2017-09-19 06:50:30'),
(315, 67, 'surveys', 'Surveys', '', '', '', '', 1, 1, '2017-08-19 05:24:49', '2017-08-19 05:26:22'),
(316, 67, 'survey/add', 'Add Survey', '', '', '', '', 1, 3, '2017-08-19 05:26:02', '2017-09-19 06:51:18'),
(321, 21, 'account/bookmarks', 'Bookmarks', '', '', '', '', 1, 16, '2017-08-23 23:01:30', '2017-09-19 06:50:06'),
(322, 69, NULL, 'Support Ticket', '', '', '', '', 1, 1, '2017-08-28 00:15:04', '2017-08-28 00:15:04'),
(323, 69, NULL, 'Knowledge base', '', '', '', '', 1, 3, '2017-08-28 00:15:33', '2017-09-19 06:51:18'),
(324, 69, NULL, 'FAQ', '', '', '', '', 1, 4, '2017-08-28 00:15:42', '2017-09-19 06:51:14'),
(325, 69, 'support/list/feedback', 'Feedback', '', '', 'rgba(22, 141, 197, 0)', 'fa-feed', 1, 5, '2017-08-28 00:15:54', '2017-09-19 06:51:06'),
(326, 24, 'cms/menus', 'Menus', '', '', '', '', 1, 7, '2017-09-08 00:58:21', '2017-09-19 06:50:59'),
(327, 24, 'cms/design-settings', 'Design Settings', '', '', '', '', 1, 8, '2017-09-08 00:58:29', '2017-09-19 06:50:54'),
(328, 27, 'settings/organization', 'Basic', '', '', '', '', 1, 1, '2017-09-11 07:06:51', '2017-09-11 07:09:04'),
(329, 27, 'settings/emp', 'Employee', '', '', '', '', 1, 3, '2017-09-11 07:07:06', '2017-09-19 06:51:18'),
(330, 27, 'settings/hrm', 'HRM', '', '', '', '', 1, 4, '2017-09-11 07:07:15', '2017-09-19 06:51:14'),
(331, 27, 'settings/user', 'User', '', '', '', '', 1, 5, '2017-09-11 07:07:24', '2017-09-19 06:51:06'),
(332, 27, 'settings/role', 'Roles', '', '', '', '', 1, 6, '2017-09-11 07:07:34', '2017-09-19 06:51:03'),
(333, 27, 'settings/leaves', 'Leave', '', '', '', '', 1, 7, '2017-09-11 07:07:43', '2017-09-19 06:50:59'),
(334, 33, 'custom-maps/g', 'Global Maps', '', '', '', '', 1, 1, '2017-09-15 07:55:02', '2017-09-16 00:29:49'),
(335, 33, 'custom-maps/u', 'User Maps', '', '', '', '', 1, 3, '2017-09-15 07:55:11', '2017-09-19 06:51:18'),
(336, 70, 'widgets', 'Widgets', '', '', '', '', 1, 1, '2017-09-17 23:14:09', '2017-09-17 23:25:21'),
(337, 70, 'widget/create', 'Add widgets', '', '', '', '', 1, 3, '2017-09-17 23:14:17', '2017-09-19 06:51:18'),
(338, 21, 'account/view', 'View', '', '', '', '', 1, 2, '2017-09-19 06:10:45', '2017-09-19 22:54:53'),
(339, 21, 'account/document', 'Document', '', '', '', '', 1, 17, '2017-09-21 00:27:51', '2017-09-21 00:38:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ocrm_global_sub_modules`
--
ALTER TABLE `ocrm_global_sub_modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ocrm_global_sub_modules`
--
ALTER TABLE `ocrm_global_sub_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
