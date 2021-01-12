-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 26, 2020 at 01:19 PM
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
(2, 'دهانات', 'offices', 'img.png', NULL, NULL);

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
(1, 'الرياض', 'riyadh', 1, NULL, NULL),
(2, 'جدة', 'Jeddah', 1, '2020-12-25 21:00:00', NULL);

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
(1, 'السعودية', 'Saudi', NULL, NULL),
(2, 'السودان', 'Sudan', '2020-12-25 21:00:00', NULL);

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
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'reviewing',
  `proveType_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `cabtin_name`, `carNumber`, `license_no`, `carType`, `img`, `ssl`, `trader_id`, `user_id`, `account_status`, `proveType_id`, `created_at`, `updated_at`) VALUES
(1, 'ahmed', '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 2, 4, 'reviewing', 1, '2020-12-14 18:00:00', NULL),
(2, 'Ali', '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 1, 4, 'reviewing', 1, '2020-12-14 15:00:00', NULL);

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
(12, '2020_12_14_072845_create_qutations_table', 1),
(13, '2020_12_14_081755_create_traders_table', 1),
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
(29, '2020_12_24_124425_create_images_table', 1),
(84, '2010_1_14_060720_create_countries', 1),
(85, '2010_2_14_061939_create_cities', 1),
(86, '2014_10_12_000000_create_users_table', 1),
(87, '2014_10_12_100000_create_password_resets_table', 1),
(88, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(89, '2019_08_19_000000_create_failed_jobs_table', 1),
(90, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(91, '2020_12_14_063504_create_wallets_table', 1),
(92, '2020_12_14_064120_create_categories_table', 1),
(93, '2020_12_14_071647_create_qutation_orders_table', 1),
(94, '2020_12_14_072514_create_qutation_order_items_table', 1),
(95, '2020_12_14_072845_create_qutations_table', 1),
(96, '2020_12_14_081755_create_traders_table', 1),
(97, '2020_12_14_082212_create_prove_types_table', 1),
(98, '2020_12_14_084231_create_operation_types_table', 1),
(99, '2020_12_14_084232_create_operation_records_table', 1),
(100, '2020_12_15_0726015_create_drivers_table', 1),
(101, '2020_12_15_072607_create_orders', 1),
(102, '2020_12_15_072613_create_delivery_offers_table', 1),
(103, '2020_12_15_072614_create_qutation_items_table', 1),
(104, '2020_12_16_082013_create_notifiations_table', 1),
(105, '2020_12_16_090108_create_admins_table', 1),
(106, '2020_12_16_090109_create_contentions_table', 1),
(107, '2020_12_16_092529_create_contact_forms_table', 1),
(108, '2020_12_19_093013_create_sh_items_table', 1),
(109, '2020_12_19_110355_create_sessions_table', 1),
(110, '2020_12_22_083143_create_qutation_reports_table', 1),
(111, '2020_12_22_095130_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifiations`
--

CREATE TABLE `notifiations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifiations`
--

INSERT INTO `notifiations` (`id`, `name`, `body`, `body_en`, `img`, `name_en`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'تم تجهيز طلب للشحن', '', '', 'logo.jpg', 'Preparing your Shipment ', 1, '2020-12-25 21:00:00', NULL),
(52, 'Zain', 'hhh', 'title en', '420506.jpg', 'title en', 1, '2020-12-26 08:00:40', '2020-12-26 08:00:40'),
(53, 'testMnsah', 'title en', 'title en', '420506.jpg', 'title en', 2, '2020-12-26 08:00:40', '2020-12-26 08:00:40'),
(54, 'testMnsah', 'title en', 'title en', '420506.jpg', 'title en', 3, '2020-12-26 08:00:40', '2020-12-26 08:00:40'),
(55, 'testMnsah', 'title en', 'title en', '420506.jpg', 'title en', 4, '2020-12-26 08:00:40', '2020-12-26 08:00:40');

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
(1, 'E121', 'cash', 'lan,lat', '0', 10.00, 0.00, NULL, 100.00, 116.50, 1, 'pending', 1, 1, 1, '2020-12-14 18:00:00', NULL),
(2, 'E121', 'cash', 'lan,lat', '1', 10.00, 0.00, NULL, 100.00, 116.50, 0, 'pending', 1, 1, 1, '2020-12-14 15:00:00', NULL);

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
  `rival_fees` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qutation_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `sub_total`, `delivery_fee`, `includeDelivery`, `rival_fees`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 0.00, 10.00, 1, NULL, 1, 2, NULL, NULL),
(2, 'panding', 0.00, 0.00, 0, NULL, 1, 2, NULL, NULL),
(3, 'panding', 10.00, 0.00, 0, NULL, 2, 2, '2020-12-08 05:23:14', NULL),
(4, 'panding', 100.00, 0.00, 0, NULL, 1, 2, '2020-12-08 05:23:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qutation_items`
--

CREATE TABLE `qutation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
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
(1, 10, 2, 'char.jpg', 'desc item', 'notes', 1, 2, '2020-12-14 18:00:00', NULL),
(2, 10, 1, 'table.jpg', 'desc item', 'notes', 1, 2, '2020-12-14 15:00:00', NULL);

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
(1, 'panding', 'online', 'pending', 1, 1, '2020-12-22 14:18:14', NULL),
(2, 'panding', 'online', 'pending', 1, 1, '2020-12-22 02:24:17', NULL);

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
(1, 'رفوف جدار خشبية', '1', 'رف خشبي الون احمر', 1, NULL, NULL),
(2, 'كرسي خشبي ', '1', 'رف خشبي الون احمر', 1, NULL, NULL),
(3, 'رفوف جدار خشبية', '1', 'رف خشبي الون احمر', 2, NULL, NULL),
(4, 'كرسي خشبي ', '3', 'رف خشبي الون احمر', 1, '2020-12-07 08:51:37', NULL);

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
('xx6vOuk8aD1ZVxbuIFw1C4cobPWo7Oxz1E6O5OBD', NULL, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTJiTnlEZ0J0eFBMb1FLNWVwQ1phZUJTaFcwUnc0SnVGb2RnMEpCMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9TZXR0aW5ncy9wcm92ZVR5cGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1608988689);

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
(1, 'rival_tax', '0.15', '2020-12-21 21:00:00', NULL),
(2, 'tax', '0.15', '2020-12-21 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sh_items`
--

CREATE TABLE `sh_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_desc` longtext COLLATE utf8mb4_unicode_ci,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sh_items`
--

INSERT INTO `sh_items` (`id`, `name`, `status`, `img`, `item_desc`, `cat_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, 'كرسي متحرك', 'suspend', 'char.jpg', 'كرسي مكتبي عجلات ', 1, 2, '2020-12-25 21:00:00', '2020-12-26 04:45:19'),
(2, 'test', 'republished', 'char.jpg', 'test desc', 2, 1, '2020-12-25 21:00:00', '2020-12-26 04:45:21');

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
(1, 'AL-MENSAH', '210029911', '', NULL, NULL, NULL, 'verified', 1, 1, NULL, NULL),
(2, 'AL-Jazira', '210029911', '', NULL, NULL, NULL, 'verified', 1, 2, NULL, NULL);

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
(2, 'trader', 2, '05098765595', 'lan,long', '', NULL, 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
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
(1, 75.00, '', '1234', 'E8876', '0', 1, '20-12-2020', '2020-12-18 18:00:00', NULL);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `notifiations`
--
ALTER TABLE `notifiations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
-- AUTO_INCREMENT for table `qutation_reports`
--
ALTER TABLE `qutation_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sh_items`
--
ALTER TABLE `sh_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
