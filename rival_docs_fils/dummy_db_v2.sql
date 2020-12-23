-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 23, 2020 at 10:38 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `testing_db`
--

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-12-15 18:00:00', NULL);

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_en`, `img`, `created_at`, `updated_at`) VALUES
(1, 'مكاتب', 'offices', 'img.png', NULL, NULL),
(2, 'مكاتب', 'offices', NULL, NULL, NULL),
(3, 'مكاتب', 'offices', 'img.png', NULL, NULL);

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'riyadh', 1, NULL, NULL);

--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `status`, `body`, `reply`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'testing ', NULL, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

--
-- Dumping data for table `contentions`
--

INSERT INTO `contentions` (`id`, `title`, `status`, `sup_commendation`, `sup_investigtion`, `complain_reason`, `order_id`, `claimant_id`, `supervisor_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(1, 'test Contentions', 'panding', 'test Contentionstest Contentions ', 'test Contentionstest Contentions', 'test Contentionstest Contentionstest Contentions', 1, 1, 1, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'السعودية', 'Saudi', NULL, NULL);

--
-- Dumping data for table `delivery_offers`
--

INSERT INTO `delivery_offers` (`id`, `fees`, `status`, `max_rate`, `min_rate`, `driver_id`, `order_id`, `created_at`, `updated_at`) VALUES
(1, '100', 'pending', '18', '12', 1, 1, '2020-12-15 18:00:00', '2020-12-15 18:00:00');

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `cabtin_name`, `carNumber`, `license_no`, `carType`, `img`, `ssl`, `trader_id`, `user_id`, `account_status`, `proveType_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '12121212', '12121', 'toyota', 'img/ss.png', '213443567', NULL, 4, 'reviewing', 1, '2020-12-14 18:00:00', NULL),
(2, NULL, '12121212', '12121', 'toyota', 'img/ss.png', '213443567', NULL, 4, 'reviewing', 1, '2020-12-14 15:00:00', NULL);

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
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

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `operation_code`, `payment_method`, `delivery_location`, `deosInclude_delivery`, `delivery_fees`, `riva_fees`, `tax`, `sub_total`, `total`, `isPaid`, `status`, `qutation_id`, `client_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, 'E121', 'cash', 'lan,lat', '0', '10', 0, '16.5', '100', '116.5', 1, 'pending', 1, 1, 1, '2020-12-14 18:00:00', NULL),
(2, 'E121', 'cash', 'lan,lat', '1', '10', 0, '16.5', '100', '116.5', 0, 'pending', 1, 1, 1, '2020-12-14 15:00:00', NULL);

--
-- Dumping data for table `prove_types`
--

INSERT INTO `prove_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(2, 'جواز سفر', 'Passport', NULL, NULL),
(3, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(4, 'جواز سفر', 'Passport', NULL, NULL);

--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `sub_total`, `delivery_fee`, `includeDelivery`, `rival_fees`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 0.00, 10.00, 1, NULL, 1, 2, NULL, NULL),
(2, 'panding', 0.00, 0.00, 0, NULL, 1, 2, NULL, NULL),
(3, 'panding', 10.00, 0.00, 0, NULL, 2, 2, '2020-12-08 05:23:14', NULL),
(4, 'panding', 100.00, 0.00, 0, NULL, 1, 2, '2020-12-08 05:23:18', NULL);

--
-- Dumping data for table `qutation_items`
--

INSERT INTO `qutation_items` (`id`, `price`, `qty`, `includeVat`, `img`, `item_desc`, `note`, `qutition_id`, `qutation_order_item_id`, `created_at`, `updated_at`) VALUES
(1, 10, 2, 0, 'char.jpg', 'desc item', 'notes', 1, 2, '2020-12-14 18:00:00', NULL),
(2, 10, 1, 0, 'table.jpg', 'desc item', 'notes', 1, 2, '2020-12-14 15:00:00', NULL);

--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `client_id`, `cat_id`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'online', 1, 1, 'pending', '2020-12-22 14:18:14', NULL),
(2, 'panding', 'online', 1, 1, 'pending', '2020-12-22 02:24:17', NULL);

--
-- Dumping data for table `qutation_order_items`
--

INSERT INTO `qutation_order_items` (`id`, `name`, `qty`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(1, 'رفوف جدار خشبية', '1', 'رف خشبي الون احمر', 1, NULL, NULL),
(2, 'كرسي خشبي ', '1', 'رف خشبي الون احمر', 1, NULL, NULL),
(3, 'رفوف جدار خشبية', '1', 'رف خشبي الون احمر', 2, NULL, NULL),
(4, 'كرسي خشبي ', '3', 'رف خشبي الون احمر', 1, '2020-12-07 08:51:37', NULL);

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('OH0z5SmiFgkh15kePokTAueZAPiiO254GWByGBco', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTVmaEkxOFdrN3dEdXoyc0pUNk9UVnpZTWkzWXVLVEdNbTZlNFJMZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMS9PcmRlcnMvMSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1608718003);

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `valuee`, `created_at`, `updated_at`) VALUES
(1, 'rival_tax', 0.15, '2020-12-21 21:00:00', NULL),
(2, 'tax', 0.15, '2020-12-21 21:00:00', NULL);

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `activityName`, `CRN`, `tax_no`, `address`, `address_2`, `mailBox`, `account_status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'AL-MENSAH', '210029911', '', NULL, NULL, NULL, 'verified', 1, 1, NULL, NULL),
(2, 'AL-MENSAH', '210029911', '', NULL, NULL, NULL, 'verified', 1, 2, NULL, NULL);

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `group_id`, `phone`, `localization`, `player_id`, `isSuspend`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'client', 1, '0509875995', 'lag,lat', '', NULL, 'test@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'trader', 2, '05098765595', 'lan,long', '', NULL, 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'Rival ', 3, '123456', 'lan', '', NULL, 'adming@gmail.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'driver_account', 4, '11223344', 'lan', '', NULL, 'driver@test.com', NULL, '123456', NULL, NULL, NULL, NULL, NULL, 1, '2020-12-14 18:00:00', NULL);

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `balance`, `balance_string`, `password`, `wallet_no`, `isSuspend`, `user_id`, `lastActivity`, `created_at`, `updated_at`) VALUES
(1, 75.00, '', '1234', 'E8876', '0', 1, '20-12-2020', '2020-12-18 18:00:00', NULL);