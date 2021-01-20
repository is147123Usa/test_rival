-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 20, 2021 at 01:09 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `testing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_en`, `img`, `created_at`, `updated_at`) VALUES
(1, 'دهانات و زينة المنازل', 'painting and decorating', NULL, NULL, NULL),
(2, 'اثاث و مكاتب', 'furnuture and office ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'Riyadh', 1, '2021-01-06 21:00:00', NULL),
(2, 'جدة', 'jeddah', 1, '2021-01-06 21:00:00', NULL),
(3, 'الدمام', 'Dammam', 1, '2021-01-06 21:00:00', NULL),
(4, 'الخرطوم', 'Khartoum', 2, '2021-01-17 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_forms`
--

CREATE TABLE `contact_forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'panding',
  `body` longtext COLLATE utf8mb4_unicode_ci,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contentions`
--

CREATE TABLE `contentions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Open',
  `sup_commendation` longtext COLLATE utf8mb4_unicode_ci,
  `sup_investigtion` longtext COLLATE utf8mb4_unicode_ci,
  `complain_reason` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `claimant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supervisor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'السعودية', 'Saudi', '2021-01-06 21:00:00', NULL),
(2, 'السودان', 'Sudan', '2021-01-17 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_offers`
--

CREATE TABLE `delivery_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `max_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cabtin_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'reviewing',
  `proveType_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identitiyProve_driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licesnse_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identitiyProve_car` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2010_1_14_060720_create_countries', 1),
(2, '2010_2_14_061939_create_cities', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2020_12_14_063504_create_wallets_table', 1),
(9, '2020_12_14_064120_create_categories_table', 1),
(10, '2020_12_14_071647_create_qutation_orders_table', 1),
(11, '2020_12_14_072514_create_qutation_order_items_table', 1),
(12, '2020_12_14_072844_create_traders_table', 1),
(13, '2020_12_14_072845_create_qutations_table', 1),
(14, '2020_12_14_082212_create_prove_types_table', 1),
(15, '2020_12_14_084231_create_operation_types_table', 1),
(16, '2020_12_14_084232_create_operation_records_table', 1),
(17, '2020_12_15_0726015_create_drivers_table', 1),
(18, '2020_12_15_072607_create_orders', 1),
(19, '2020_12_15_072613_create_delivery_offers_table', 1),
(20, '2020_12_15_072614_create_qutation_items_table', 1),
(21, '2020_12_16_082013_create_notifiations_table', 1),
(22, '2020_12_16_090108_create_admins_table', 1),
(23, '2020_12_16_090109_create_contentions_table', 1),
(24, '2020_12_16_092529_create_contact_forms_table', 1),
(25, '2020_12_19_093013_create_sh_items_table', 1),
(26, '2020_12_19_110355_create_sessions_table', 1),
(27, '2020_12_22_083143_create_qutation_reports_table', 1),
(28, '2020_12_22_095130_create_settings_table', 1),
(29, '2020_12_24_124425_create_images_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifiations`
--

CREATE TABLE `notifiations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operation_records`
--

CREATE TABLE `operation_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `OprationDesc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `depit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crdit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_before` double(8,2) NOT NULL,
  `balance_after` double(8,2) NOT NULL,
  `refer_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci,
  `opration_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operation_types`
--

CREATE TABLE `operation_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `operation_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deosInclude_delivery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_fees` double(8,2) DEFAULT NULL,
  `rival_fees` double(8,2) DEFAULT NULL,
  `delivery_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` double(8,2) DEFAULT NULL,
  `total` double(8,2) DEFAULT NULL,
  `isPaid` int(11) NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `qutation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `operation_code`, `payment_method`, `delivery_location`, `deosInclude_delivery`, `delivery_fees`, `rival_fees`, `delivery_time`, `sub_total`, `total`, `isPaid`, `status`, `qutation_id`, `client_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, '332332aa221', 'visa', 'lat,lang', '0', 15.00, 10.00, 'morning', 15.00, 25.00, 0, 'pending', 1, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prove_types`
--

CREATE TABLE `prove_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prove_types`
--

INSERT INTO `prove_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(2, 'هوية مقيم', 'Iqama', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qutations`
--

CREATE TABLE `qutations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `sub_total` double(8,2) DEFAULT NULL,
  `delivery_fee` double(8,2) DEFAULT NULL,
  `paymentMethod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includeDelivery` tinyint(1) DEFAULT NULL,
  `rival_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qutation_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `sub_total`, `delivery_fee`, `paymentMethod`, `includeDelivery`, `rival_fees`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(27, 'pending', 1332.00, NULL, NULL, 1, '13.32', 40, 7, '2021-01-20 07:44:28', '2021-01-20 07:44:28'),
(28, 'pending', 1332.00, NULL, NULL, 1, '13.32', 40, 7, '2021-01-20 07:47:44', '2021-01-20 07:47:44'),
(29, 'pending', 1332.00, 18.00, NULL, 0, '13.32', 40, 7, '2021-01-20 09:23:26', '2021-01-20 09:23:26'),
(30, 'pending', 1332.00, 18.00, NULL, 0, '13.32', 40, 7, '2021-01-20 09:24:05', '2021-01-20 09:24:05'),
(31, 'pending', 1332.00, 18.00, 'OnDelivery', 0, '13.32', 40, 7, '2021-01-20 09:24:46', '2021-01-20 09:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `qutation_items`
--

CREATE TABLE `qutation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `qutition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qutation_order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutation_items`
--

INSERT INTO `qutation_items` (`id`, `price`, `qty`, `img`, `item_desc`, `note`, `qutition_id`, `qutation_order_item_id`, `created_at`, `updated_at`) VALUES
(15, 12, 111, 'kk', 'asas', 'asas', 27, NULL, '2021-01-20 07:44:28', '2021-01-20 07:44:28'),
(16, 12, 111, 'kk', 'asas', 'asas', 28, NULL, '2021-01-20 07:47:44', '2021-01-20 07:47:44'),
(17, 12, 111, 'kk', 'rr', 'rr', 31, NULL, '2021-01-20 09:24:46', '2021-01-20 09:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `qutation_orders`
--

CREATE TABLE `qutation_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qutastion_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payMethod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `Status`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(40, NULL, 'OnDelivery', 'pending', 18, 1, '2021-01-20 07:43:34', '2021-01-20 07:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `qutation_order_items`
--

CREATE TABLE `qutation_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qutation_order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutation_order_items`
--

INSERT INTO `qutation_order_items` (`id`, `name`, `qty`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(21, 'ss', '111', 'zzz', 40, '2021-01-20 07:43:34', '2021-01-20 07:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `qutation_reports`
--

CREATE TABLE `qutation_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `compain_sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `qutation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fhPo7GX2KyLFInyTVuBjmXzLIUi3ZbaC4WfEJcru', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3V1dG1RQmVXeE5VdEs5SGtvYVJDRUlPZldmajMwNjB4VFpDVzVWZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1611043740),
('MeFutW20ewfzNAioj4JrjK4tcT7OnnFTD758zY7F', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWpuQ2FXaFhsU3FPUklDZzFyaWo0T3FjTnpKMFpVaGtocXlheVlJRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1610350412);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valuee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `valuee`, `created_at`, `updated_at`) VALUES
(1, 'rival', '0.01', '2021-01-18 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sh_items`
--

CREATE TABLE `sh_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_desc` longtext COLLATE utf8mb4_unicode_ci,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `traders`
--

CREATE TABLE `traders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activityName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CRN` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailBox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `spicalizition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `activityName`, `CRN`, `tax_no`, `address`, `address_2`, `mailBox`, `status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'TopLine1', '112212111', '10000011222', NULL, NULL, NULL, '111', 1, 1, '2021-01-07 11:10:36', '2021-01-07 11:10:36'),
(3, 'TopLine1', '112212111', '10000011222', NULL, NULL, NULL, '111', 1, 5, '2021-01-07 11:11:13', '2021-01-07 11:11:13'),
(4, 'fsdfd', '564654', '445645', 'dffdgdf', NULL, NULL, NULL, NULL, NULL, '2021-01-19 06:29:57', '2021-01-19 06:29:57'),
(5, 'sads', '1212', '765765', 'sdsd', NULL, NULL, NULL, 1, NULL, '2021-01-19 06:38:26', '2021-01-19 06:38:26'),
(6, 'aaaa', '1111', '1111', '1', NULL, NULL, NULL, 1, NULL, '2021-01-19 06:52:17', '2021-01-19 06:52:17'),
(7, 'testing testing', '11111', '121212', 'eee', NULL, NULL, NULL, 1, 18, '2021-01-20 05:14:48', '2021-01-20 05:14:48'),
(8, 'testing testing', '11111', '121212', 'eee', NULL, NULL, NULL, 1, 19, '2021-01-20 05:17:26', '2021-01-20 05:17:26'),
(9, 'testing testing', '11111', '121212', 'eee', NULL, NULL, NULL, 1, 20, '2021-01-20 05:19:09', '2021-01-20 05:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isSuspend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `group_id`, `phone`, `localization`, `player_id`, `isSuspend`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 1, '1122334455', 'lang,lat', 'KXH45ESSDA34553!#@@!J', '1', 'admin@test.com', NULL, '$2y$10$io6l6R9U2Uw/Ax3tIC0tWuMgwbSGLGlHmIvzBinWMrgJXb28D1ym6', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:03:19', '2021-01-07 11:03:19'),
(3, 'trader', 3, '1122334455', 'lang,lat', 'KXH45ESSDA34553!#@@!J', '1', 'asasasA66aaa1as@test.com', NULL, '$2y$10$6OIPfqzhRGel0n.RocAjbui6SDhW9gTnofitt0PrwnIEAGdpzIefK', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:05:26', '2021-01-07 11:05:26'),
(4, 'trader', 3, '1122334455', 'lang,lat', 'KXH45ESSDA34553!#@@!J', '1', 'trader@test.com', NULL, '$2y$10$vcEu1qiiVWktS3qUR3Rgv.AjlhJ1OGnwPbz6hSCf9ULEFoPJ.dHC6', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:10:36', '2021-01-07 11:10:36'),
(5, 'trader2', 3, '1122334455000', 'lang,lat', 'KXH45ESSDA34553!#@@!J', '1', 'trader2@test.com', NULL, '$2y$10$XlqO.ioJKJ88C5F6Hsbt6eckAfmsNtHGeuANgmxSUXfInpB3X8ykC', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-07 11:11:13', '2021-01-07 11:11:13'),
(6, 'gfg', 2, '11', 'lat', 'jh', '0', 'aa@q.cv', NULL, '$2y$10$NtzfkHfnQJTyH8TKmoUAfefwq0edto8oOpS5Fqq5GbX2/KdHQfxf2', NULL, NULL, NULL, NULL, NULL, 4, '2021-01-18 12:03:11', '2021-01-18 12:03:11'),
(7, 'hhg', 2, '5555454', 'lat', 'jh', '0', 'aaa@www.com', NULL, '$2y$10$pOBClaASTwCrGD9fCh3N1OqWIQe9wK38teZ7SQwYsdXf2JxUavhtC', NULL, NULL, NULL, NULL, NULL, 4, '2021-01-18 12:06:33', '2021-01-18 12:06:33'),
(8, 'ggg', 2, '111111', 'lat', 'jh', '0', 'aa@ww.cn', NULL, '$2y$10$FduHSRNSSBCTNJAFzcuQuO8brR1jOhK4qsw.VvShZMCCgnkM0YZmO', NULL, NULL, NULL, NULL, NULL, 3, '2021-01-18 12:10:11', '2021-01-18 12:10:11'),
(10, 'Ashraf', 2, '0965480887', 'lat', 'jh', '0', 'Adming2010@fmaik.com', NULL, '$2y$10$fFbAyzZ8U6IkQ2dWEZh1hOKWL5/40/ytxKq8bmK8OccAHm.AZNF8i', NULL, NULL, NULL, NULL, NULL, 4, '2021-01-19 05:25:27', '2021-01-19 05:25:27'),
(11, 'asas', 3, '050987', 'lat', 'jh', '1', 'asas@w.cn', NULL, '$2y$10$9iOGmo4JKYsV/1tMQbB2eOrGJzuCTU47S6clUSvMTasehrAME4Tea', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-19 06:13:32', '2021-01-19 06:13:32'),
(12, 'asasasa', 3, '05098711', 'lat', 'jh', '1', 'aas@bv.cn', NULL, '$2y$10$nxiPFPw3ply7JD5KXfERnuaSslnD.i9wtJoudYYsJk79OhVfdZbPW', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-19 06:17:00', '2021-01-19 06:17:00'),
(13, 'asasas', 3, '8787', 'lat', 'jh', '1', 'dsss@s.com', NULL, '$2y$10$CqEnx3Br0nR7qglEZwFgnepQvlGrzIGKfBQyowFPAZL.TzoypyyYi', NULL, NULL, NULL, NULL, NULL, 2, '2021-01-19 06:23:39', '2021-01-19 06:23:39'),
(14, 'asasas', 3, '8787', 'lat', 'jh', '1', 'dsnnnnss@s.com', NULL, '$2y$10$htbonS3i82RXZLgUZTLWvOEcA1S/G7PRrDbph7M/qjgfQNW.BDuYu', NULL, NULL, NULL, NULL, NULL, 2, '2021-01-19 06:28:09', '2021-01-19 06:28:09'),
(15, 'asasas', 3, '8787', 'lat', 'jh', '1', 'dsnnfffnnnss@s.com', NULL, '$2y$10$FQ2JR9/Dkw2MpJCQxPOY0O/CqLxKRGYSqAaYSbFhrs.F6ICcYZQra', NULL, NULL, NULL, NULL, NULL, 2, '2021-01-19 06:29:57', '2021-01-19 06:29:57'),
(16, 'dsds', 3, '22232', 'lat', 'jh', '1', 'aaa@ss.cn', NULL, '$2y$10$EXk9Z8LJH8QbbeIrVtZidu.QLh1sFn1IxnO2SLGnnmI6CsIstr9jW', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-19 06:38:26', '2021-01-19 06:38:26'),
(17, 'dsdsd', 3, '111', 'lat', 'jh', '1', 'dddd@qq.cn', NULL, '$2y$10$HRpYaD9TpGCexuc4w20LaOZ0YXP5C8bBavYx9M95kRgybfBQ7X0s6', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-19 06:52:17', '2021-01-19 06:52:17'),
(18, 'assa', 3, '12121212', 'lat', 'jh', '1', 'asas@gmail.com', NULL, '$2y$10$qlFittpPGtclRugFOw.d1O1I9aJMBUgxZbM1ManJMfCsZWp5NAA4y', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-20 05:14:48', '2021-01-20 05:14:48'),
(19, 'assa', 3, '12121212', 'lat', 'jh', '1', 'asaaas@gmail.com', NULL, '$2y$10$6DnWCqrS4QyRdNjgBQbUB.n4EO9rmLXD6DHoLChb57Te9DGUDs9ty', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-20 05:17:25', '2021-01-20 05:17:25'),
(20, 'assa', 3, '12121212', 'lat', 'jh', '1', 'asaaaaas@gmail.com', NULL, '$2y$10$m0baFu5M.0t0rwrplAhbKufKuVY99ZbuRI8p0qfSjNKBg99QSFRcS', NULL, NULL, NULL, NULL, NULL, 1, '2021-01-20 05:19:09', '2021-01-20 05:19:09'),
(22, 'aaa', 2, '0509875995', 'lat', 'jh', '0', 'asas@f.cn', NULL, '$2y$10$m0baFu5M.0t0rwrplAhbKufKuVY99ZbuRI8p0qfSjNKBg99QSFRcS', NULL, NULL, NULL, NULL, NULL, 2, '2021-01-20 06:19:38', '2021-01-20 06:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `balance` double(8,2) NOT NULL,
  `balance_string` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isSuspend` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `lastActivity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_forms_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `contentions`
--
ALTER TABLE `contentions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contentions_order_id_foreign` (`order_id`),
  ADD KEY `contentions_claimant_id_foreign` (`claimant_id`),
  ADD KEY `contentions_supervisor_id_foreign` (`supervisor_id`),
  ADD KEY `contentions_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_offers`
--
ALTER TABLE `delivery_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_offers_driver_id_foreign` (`driver_id`),
  ADD KEY `delivery_offers_order_id_foreign` (`order_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `drivers_trader_id_foreign` (`trader_id`),
  ADD KEY `drivers_user_id_foreign` (`user_id`),
  ADD KEY `drivers_provetype_id_foreign` (`proveType_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_driver_id_foreign` (`driver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifiations`
--
ALTER TABLE `notifiations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifiations_user_id_foreign` (`user_id`);

--
-- Indexes for table `operation_records`
--
ALTER TABLE `operation_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operation_records_opration_type_id_foreign` (`opration_type_id`),
  ADD KEY `operation_records_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `operation_types`
--
ALTER TABLE `operation_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_qutation_id_foreign` (`qutation_id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_trader_id_foreign` (`trader_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prove_types`
--
ALTER TABLE `prove_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qutations`
--
ALTER TABLE `qutations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qutations_qutation_order_id_foreign` (`qutation_order_id`),
  ADD KEY `qutations_trader_id_foreign` (`trader_id`);

--
-- Indexes for table `qutation_items`
--
ALTER TABLE `qutation_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qutation_items_qutition_id_foreign` (`qutition_id`),
  ADD KEY `qutation_items_qutation_order_item_id_foreign` (`qutation_order_item_id`);

--
-- Indexes for table `qutation_orders`
--
ALTER TABLE `qutation_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qutation_orders_client_id_foreign` (`client_id`),
  ADD KEY `qutation_orders_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `qutation_order_items`
--
ALTER TABLE `qutation_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qutation_order_items_qutation_order_id_foreign` (`qutation_order_id`);

--
-- Indexes for table `qutation_reports`
--
ALTER TABLE `qutation_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qutation_reports_sender_id_foreign` (`sender_id`),
  ADD KEY `qutation_reports_compain_sender_id_foreign` (`compain_sender_id`),
  ADD KEY `qutation_reports_qutation_id_foreign` (`qutation_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sh_items`
--
ALTER TABLE `sh_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sh_items_cat_id_foreign` (`cat_id`),
  ADD KEY `sh_items_trader_id_foreign` (`trader_id`);

--
-- Indexes for table `traders`
--
ALTER TABLE `traders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `traders_spicalizition_id_foreign` (`spicalizition_id`),
  ADD KEY `traders_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_foreign` (`city_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentions`
--
ALTER TABLE `contentions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_offers`
--
ALTER TABLE `delivery_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `notifiations`
--
ALTER TABLE `notifiations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operation_records`
--
ALTER TABLE `operation_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operation_types`
--
ALTER TABLE `operation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prove_types`
--
ALTER TABLE `prove_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qutations`
--
ALTER TABLE `qutations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `qutation_items`
--
ALTER TABLE `qutation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `qutation_orders`
--
ALTER TABLE `qutation_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `qutation_order_items`
--
ALTER TABLE `qutation_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `qutation_reports`
--
ALTER TABLE `qutation_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sh_items`
--
ALTER TABLE `sh_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traders`
--
ALTER TABLE `traders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `contact_forms`
--
ALTER TABLE `contact_forms`
  ADD CONSTRAINT `contact_forms_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `contentions`
--
ALTER TABLE `contentions`
  ADD CONSTRAINT `contentions_claimant_id_foreign` FOREIGN KEY (`claimant_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `contentions_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `contentions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `contentions_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `delivery_offers`
--
ALTER TABLE `delivery_offers`
  ADD CONSTRAINT `delivery_offers_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `delivery_offers_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_provetype_id_foreign` FOREIGN KEY (`proveType_id`) REFERENCES `prove_types` (`id`),
  ADD CONSTRAINT `drivers_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `traders` (`id`),
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`);

--
-- Constraints for table `notifiations`
--
ALTER TABLE `notifiations`
  ADD CONSTRAINT `notifiations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `operation_records`
--
ALTER TABLE `operation_records`
  ADD CONSTRAINT `operation_records_opration_type_id_foreign` FOREIGN KEY (`opration_type_id`) REFERENCES `operation_types` (`id`),
  ADD CONSTRAINT `operation_records_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_qutation_id_foreign` FOREIGN KEY (`qutation_id`) REFERENCES `qutations` (`id`),
  ADD CONSTRAINT `orders_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `traders` (`id`);

--
-- Constraints for table `qutations`
--
ALTER TABLE `qutations`
  ADD CONSTRAINT `qutations_qutation_order_id_foreign` FOREIGN KEY (`qutation_order_id`) REFERENCES `qutation_orders` (`id`),
  ADD CONSTRAINT `qutations_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `traders` (`id`);

--
-- Constraints for table `qutation_items`
--
ALTER TABLE `qutation_items`
  ADD CONSTRAINT `qutation_items_qutation_order_item_id_foreign` FOREIGN KEY (`qutation_order_item_id`) REFERENCES `qutation_order_items` (`id`),
  ADD CONSTRAINT `qutation_items_qutition_id_foreign` FOREIGN KEY (`qutition_id`) REFERENCES `qutations` (`id`);

--
-- Constraints for table `qutation_orders`
--
ALTER TABLE `qutation_orders`
  ADD CONSTRAINT `qutation_orders_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `qutation_orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `qutation_order_items`
--
ALTER TABLE `qutation_order_items`
  ADD CONSTRAINT `qutation_order_items_qutation_order_id_foreign` FOREIGN KEY (`qutation_order_id`) REFERENCES `qutation_orders` (`id`);

--
-- Constraints for table `qutation_reports`
--
ALTER TABLE `qutation_reports`
  ADD CONSTRAINT `qutation_reports_compain_sender_id_foreign` FOREIGN KEY (`compain_sender_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `qutation_reports_qutation_id_foreign` FOREIGN KEY (`qutation_id`) REFERENCES `qutations` (`id`),
  ADD CONSTRAINT `qutation_reports_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sh_items`
--
ALTER TABLE `sh_items`
  ADD CONSTRAINT `sh_items_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `sh_items_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `traders` (`id`);

--
-- Constraints for table `traders`
--
ALTER TABLE `traders`
  ADD CONSTRAINT `traders_spicalizition_id_foreign` FOREIGN KEY (`spicalizition_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `traders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
