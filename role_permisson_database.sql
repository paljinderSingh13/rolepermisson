
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


INSERT INTO `ocrm_235_users_roles` (`id`, `name`, `description`, `order`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', 1, 'administrator', 1, '2017-09-01 02:41:58', '2017-09-01 02:41:58'),
(7, 'Data Collector', 'Data Collector', NULL, NULL, 1, '2017-09-11 01:44:16', '2017-09-11 01:44:16'),

ALTER TABLE `ocrm_235_users_roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ocrm_235_users_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--------------------------------------------------------------------------------------------------

CREATE TABLE `ocrm_235_role_permissons` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permisson_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permisson_id` int(11) NOT NULL,
  `permisson` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ocrm_235_role_permissons` (`id`, `role_id`, `permisson_type`, `permisson_id`, `permisson`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 'widget', 24, NULL, 1, '2017-09-11 02:34:15', '2017-09-11 02:34:15'),
(2, 7, 'widget', 51, NULL, 1, '2017-09-11 02:34:15', '2017-09-11 02:34:15'),
(3, 7, 'widget', 76, 'on', 1, '2017-09-11 02:34:15', '2017-09-11 02:34:15'),
(4, 7, 'module', 20, NULL, 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(5, 7, 'module', 21, 'on', 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(6, 7, 'module', 24, NULL, 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(7, 7, 'module', 25, NULL, 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(8, 7, 'module', 27, NULL, 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(9, 7, 'module', 67, NULL, 1, '2017-09-11 02:34:38', '2017-09-11 02:34:38'),
(31, 7, 'submodule', 244, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(32, 7, 'submodule', 256, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(33, 7, 'submodule', 255, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(34, 7, 'submodule', 293, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(35, 7, 'submodule', 315, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(36, 7, 'submodule', 316, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(37, 7, 'route', 97, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),
(38, 7, 'route', 73, NULL, 1, '2017-09-11 02:34:39', '2017-09-11 02:34:39'),

-- --------------------------------------------------------
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


ALTER TABLE `ocrm_global_modules`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ocrm_global_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
----------------------------------------------------------------------------------

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

ALTER TABLE `ocrm_global_sub_modules`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ocrm_global_sub_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


-------------------------------------------------------------------------------------------

CREATE TABLE `ocrm_global_module_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_module_id` int(11) NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `ocrm_global_module_routes`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `ocrm_global_module_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
----------------------------------------------------------------------------------------------


  