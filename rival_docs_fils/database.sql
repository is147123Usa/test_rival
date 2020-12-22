-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 22, 2020 at 07:49 AM
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

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-12-15 18:00:00', NULL);

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
(1, 'مكاتب', 'offices', 'img.png', NULL, NULL),
(2, 'مكاتب', 'offices', NULL, NULL, NULL),
(3, 'مكاتب', 'offices', 'img.png', NULL, NULL);

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
(1, 'الرياض', 'riyadh', 1, NULL, NULL);

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

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `status`, `body`, `reply`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'testing ', NULL, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contentions`
--

CREATE TABLE `contentions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'panding',
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

--
-- Dumping data for table `contentions`
--

INSERT INTO `contentions` (`id`, `title`, `status`, `sup_commendation`, `sup_investigtion`, `complain_reason`, `order_id`, `claimant_id`, `supervisor_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(1, 'test Contentions', 'panding', 'test Contentionstest Contentions ', 'test Contentionstest Contentions', 'test Contentionstest Contentionstest Contentions', 1, 1, 1, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

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
(1, 'السعودية', 'Saudi', NULL, NULL);

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

--
-- Dumping data for table `delivery_offers`
--

INSERT INTO `delivery_offers` (`id`, `fees`, `status`, `max_rate`, `min_rate`, `driver_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '100', 'pending', '18', '12', 1, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

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
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'reviewing',
  `proveType_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `cabtin_name`, `carNumber`, `license_no`, `carType`, `img`, `ssl`, `user_id`, `account_status`, `proveType_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 4, 'reviewing', 1, 2, '2020-12-14 18:00:00', NULL),
(2, 'ali', '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 4, 'reviewing', 1, 2, '2020-12-14 15:00:00', NULL);

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
(241, '2010_1_14_060720_create_countries', 1),
(242, '2010_2_14_061939_create_cities', 1),
(243, '2014_10_12_000000_create_users_table', 1),
(244, '2014_10_12_100000_create_password_resets_table', 1),
(245, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(246, '2019_08_19_000000_create_failed_jobs_table', 1),
(247, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(248, '2020_12_14_063504_create_wallets_table', 1),
(249, '2020_12_14_064120_create_categories_table', 1),
(250, '2020_12_14_071647_create_qutation_orders_table', 1),
(251, '2020_12_14_072514_create_qutation_order_items_table', 1),
(252, '2020_12_14_072845_create_qutations_table', 1),
(253, '2020_12_14_081755_create_traders_table', 1),
(254, '2020_12_14_082212_create_prove_types_table', 1),
(255, '2020_12_14_084231_create_operation_types_table', 1),
(256, '2020_12_14_084232_create_operation_records_table', 1),
(257, '2020_12_15_0726015_create_drivers_table', 1),
(258, '2020_12_15_072607_create_orders', 1),
(259, '2020_12_15_072613_create_delivery_offers_table', 1),
(260, '2020_12_15_072614_create_qutation_items_table', 1),
(261, '2020_12_16_082013_create_notifiations_table', 1),
(262, '2020_12_16_090108_create_admins_table', 1),
(263, '2020_12_16_090109_create_contentions_table', 1),
(264, '2020_12_16_092529_create_contact_forms_table', 1),
(265, '2020_12_19_093013_create_sh_items_table', 1),
(266, '2020_12_19_110355_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifiations`
--

CREATE TABLE `notifiations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `operation_records`
--

INSERT INTO `operation_records` (`id`, `OprationDesc`, `status`, `depit`, `crdit`, `balance_before`, `balance_after`, `refer_no`, `notes`, `opration_type_id`, `wallet_id`, `created_at`, `updated_at`) VALUES
(1, 'asss', 'pending', '0', '100', 100.00, 800.00, 'E33', NULL, 1, 1, '2020-12-19 21:00:00', NULL);

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

--
-- Dumping data for table `operation_types`
--

INSERT INTO `operation_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'ايداع', 'deposit', '2020-12-19 21:00:00', NULL),
(2, 'سداد', 'pay', '2020-12-19 21:00:00', NULL);

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
  `delivery_fees` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `qutation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isPaid` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `operation_code`, `payment_method`, `delivery_location`, `deosInclude_delivery`, `delivery_fees`, `tax`, `sub_total`, `total`, `status`, `qutation_id`, `client_id`, `trader_id`, `created_at`, `updated_at`, `isPaid`) VALUES
(1, 'E121', 'cash', 'lan,lat', '0', '10', '16.5', '100', '116.5', 'pending', 1, 1, 2, '2020-12-14 18:00:00', NULL, 0),
(2, 'E121', 'cash', 'lan,lat', '0', '10', '16.5', '100', '116.5', 'pending', 1, 1, 1, '2020-12-14 15:00:00', NULL, 1);

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
(2, 'جواز سفر', 'Passport', NULL, NULL),
(3, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(4, 'جواز سفر', 'Passport', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qutations`
--

CREATE TABLE `qutations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` double(8,2) DEFAULT NULL,
  `delivery_fee` double(8,2) DEFAULT NULL,
  `includeDelivery` tinyint(1) DEFAULT NULL,
  `qutation_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `includeTax` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `sub_total`, `delivery_fee`, `includeDelivery`, `qutation_order_id`, `trader_id`, `created_at`, `includeTax`, `updated_at`) VALUES
(1, 'panding', 100.00, 15.00, 0, 1, 2, NULL, NULL, NULL),
(2, 'panding', 0.00, 0.00, 0, 1, 2, NULL, NULL, NULL),
(3, 'panding', 10.00, 0.00, 0, 2, 2, '2020-12-08 05:23:14', NULL, NULL),
(4, 'panding', 100.00, 0.00, 0, 1, 2, '2020-12-08 05:23:18', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qutation_items`
--

CREATE TABLE `qutation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '10', '1', 'char.jpg', 'desc item', 'notes', 2, 2, '2020-12-14 18:00:00', NULL),
(2, '28', '1', 'char.jpg', 'desc item', 'notes', 3, 2, '2020-12-14 15:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qutation_orders`
--

CREATE TABLE `qutation_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qutastion_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payMethod` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'online', 1, 1, NULL, NULL),
(2, 'panding', 'online', 1, 1, NULL, NULL);

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
(1, 'رفوف جدار خشبية', '', 'رف خشبي الون احمر', 1, NULL, NULL),
(2, 'كرسي خشبي ', '', 'رف خشبي الون احمر', 1, NULL, NULL),
(3, 'رفوف جدار خشبية', '', 'رف خشبي الون احمر', 1, NULL, NULL),
(4, 'كرسي خشبي ', '', 'رف خشبي الون احمر', 1, NULL, NULL);

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
('wN711M0MFNtguvdz2kfTK0ATD6wppK09Aq7LkjsF', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1Z6VHJ4bG1nQ1A0ckI5ZFVVTlp2aEJIUEREZXZ2eW5oMWFreGN0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9RdXRhdGlvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1608623358);

-- --------------------------------------------------------

--
-- Table structure for table `sh_items`
--

CREATE TABLE `sh_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `tax_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mailBox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spicalizition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `activityName`, `CRN`, `tax_no`, `address`, `address_2`, `mailBox`, `account_status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'AL-MENSAH', '210029911', '2112000928', 'Saudia,Riyadh', 'Shifaa', '11611', 'verified', 1, 1, NULL, NULL),
(2, 'AL-MENSAH', '210029911', '2111109920001', 'Saudia,Riyadh', 'mlaz', '23113', 'verified', 1, 2, NULL, NULL);

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
(1, 'client', 1, '0509875995', 'lag,lat', '', NULL, 'test@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'trader', 2, '12312312', 'lan,long', '', NULL, 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'Rival ', 3, '123456', 'lan', '', NULL, 'adming@gmail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'driver_account', 4, '11223344', 'lan', '', NULL, 'driver@test.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-14 18:00:00', NULL);

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
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `balance`, `balance_string`, `password`, `wallet_no`, `isSuspend`, `user_id`, `lastActivity`, `created_at`, `updated_at`) VALUES
(1, 0.75, '', '1234', 'E8876', '0', 1, '20-12-2020', '2020-12-18 18:00:00', '2020-12-21 03:24:28');

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
  ADD KEY `drivers_user_id_foreign` (`user_id`),
  ADD KEY `drivers_provetype_id_foreign` (`proveType_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_forms`
--
ALTER TABLE `contact_forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contentions`
--
ALTER TABLE `contentions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_offers`
--
ALTER TABLE `delivery_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `notifiations`
--
ALTER TABLE `notifiations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `operation_records`
--
ALTER TABLE `operation_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operation_types`
--
ALTER TABLE `operation_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prove_types`
--
ALTER TABLE `prove_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qutations`
--
ALTER TABLE `qutations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qutation_items`
--
ALTER TABLE `qutation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qutation_orders`
--
ALTER TABLE `qutation_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qutation_order_items`
--
ALTER TABLE `qutation_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sh_items`
--
ALTER TABLE `sh_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `traders`
--
ALTER TABLE `traders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  ADD CONSTRAINT `drivers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

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
  ADD CONSTRAINT `qutations_trader_id_foreign` FOREIGN KEY (`trader_id`) REFERENCES `users` (`id`);

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
