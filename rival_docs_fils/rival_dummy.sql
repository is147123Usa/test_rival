--
-- Dumping data for DB `Rival`
--

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` ( `name`, `name_en`, `created_at`, `updated_at`) VALUES
( 'السعودية', 'Saudi', NULL, NULL);

--
-- Dumping data for table `cities`
--
INSERT INTO `cities` ( `name`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
( 'الرياض', 'riyadh', 1, NULL, NULL);


--
-- Dumping data for table `prove_types`
--

INSERT INTO `prove_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(null, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(null, 'جواز سفر', 'Passport', NULL, NULL);


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `group_id`, `phone`, `localization`, `email`, `email_verified_at`, `password`, `remember_token`, `player_id`, `created_at`, `updated_at`, `city_id`) VALUES
(null, 'client', 1, '0509875995', 'lag,lat', 'test@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, 1),
(null, 'trader', 2, '05098765595', 'lan,long', 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, NULL, 1),
(null, 'Rival ', 3, '123456', 'lan', 'adming@gmail.com', NULL, '', NULL, NULL, NULL, NULL, 1),
(null, 'driver_account', 4, '11223344', 'lan', 'driver@test.com', NULL, '123456', NULL, NULL, '2020-12-14 21:00:00', NULL, NULL);

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (  `name`, `name_en`, `img`, `created_at`, `updated_at`) VALUES
( 'مكاتب', 'offices', 'img.png', NULL, NULL);


--
-- Dumping data for table `traders`
--

INSERT INTO `traders` ( `activityName`, `CRN`, `account_status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
( 'AL-MENSAH', '210029911', 'verified', 1, 2, NULL, NULL);


--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `carNumber`, `license_no`, `carType`, `img`, `ssl`, `user_id`, `prove_type_id`, `created_at`, `updated_at`) VALUES
(NULL, '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 4, 1, '2020-12-14 21:00:00', NULL);


--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`qutastion_status`, `payMethod`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(  'panding', 'online', 1, 1, NULL, NULL);

--
-- Dumping data for table `qutation_orders`
--


INSERT INTO `qutation_order_items` (`id`, `name`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(NULL, 'رفوف جدار خشبية', 'رف خشبي الون احمر', 1, NULL, NULL),
(NULL, 'كرسي خشبي ', 'رف خشبي الون احمر', 1, NULL, NULL);

--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `total`, `delivery_fee`, `includeDelivery`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(null, 'panding', 0.00, 0.00, 0, 1, 2, NULL, NULL);


--
-- Dumping data for table `orders`
--

--
-- Dumping data for table `qutation_items`
--

INSERT INTO `qutation_items` (`price`, `img`, `item_desc`, `note`, `qutition_id`, `qutation_order_item_id`, `created_at`, `updated_at`) VALUES
('10', 'img/pic.ong', 'desc item', 'notes', 1, 2, '2020-12-14 21:00:00', NULL);


INSERT INTO `orders` (`id`, `operation_code`, `payment_method`, `delivery_location`, `deosInclude_delivery`, `delivery_fees`, `tax`, `sub-total`, `total`, `qutation_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(null, 'E121', 'cash', 'lan,lat', '0', '10', '16.5', '100', '116.5', 1, 1, '2020-12-14 21:00:00', NULL);



INSERT INTO `admins` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2020-12-15 21:00:00', NULL);


--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_en`, `img`, `created_at`, `updated_at`) VALUES
(NULL, 'مكاتب', 'offices', NULL, NULL, NULL),
(NULL, 'مكاتب', 'offices', 'img.png', NULL, NULL);


--
-- Dumping data for table `contact_forms`
--

INSERT INTO `contact_forms` (`id`, `status`, `body`, `reply`, `sender_id`, `created_at`, `updated_at`) VALUES
(NULL, 'panding', 'testing ', NULL, 1, '2020-12-15 21:00:00', '2020-12-15 21:00:00');


--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `cabtin_name`, `carNumber`, `license_no`, `carType`, `img`, `ssl`, `user_id`, `account_status`, `prove_type_id`, `created_at`, `updated_at`) VALUES
(NULL, NULL, '12121212', '12121', 'toyota', 'img/ss.png', '213443567', 4, 'reviewing', 1, '2020-12-14 18:00:00', NULL);


--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `operation_code`, `payment_method`, `delivery_location`, `deosInclude_delivery`, `delivery_fees`, `tax`, `sub-total`, `total`, `qutation_id`, `client_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(NULL, 'E121', 'cash', 'lan,lat', '0', '10', '16.5', '100', '116.5', 1, NULL, 1, '2020-12-14 18:00:00', NULL);


--
-- Dumping data for table `prove_types`
--

INSERT INTO `prove_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(NULL, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(NULL, 'جواز سفر', 'Passport', NULL, NULL);


--
-- Dumping data for table `qutations`
--

INSERT INTO `qutations` (`id`, `status`, `total`, `delivery_fee`, `includeDelivery`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(NULL, 'panding', 0.00, 0.00, 0, 1, 2, NULL, NULL);

--
-- Dumping data for table `qutation_items`
--

INSERT INTO `qutation_items` (`id`, `price`, `img`, `item_desc`, `note`, `qutition_id`, `qutation_order_item_id`, `created_at`, `updated_at`) VALUES
(NULL, '10', 'img/pic.ong', 'desc item', 'notes', 1, 2, '2020-12-14 18:00:00', NULL);


--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(NULL, 'panding', 'online', 1, 1, NULL, NULL);

--
-- Dumping data for table `qutation_order_items`
--

INSERT INTO `qutation_order_items` (`id`, `name`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(NULL, 'رفوف جدار خشبية', 'رف خشبي الون احمر', 1, NULL, NULL),
(NULL, 'كرسي خشبي ', 'رف خشبي الون احمر', 1, NULL, NULL);

--
-- Dumping data for table `traders`
--

INSERT INTO `traders` (`id`, `activityName`, `CRN`, `account_status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(NULL, 'AL-MENSAH', '210029911', 'verified', 1, 2, NULL, NULL);


--
-- Dumping data for table `contentions`
--

INSERT INTO `contentions` (`id`, `title`, `status`, `sup_commendation`, `sup_investigtion`, `complain_reason`, `order_id`, `claimant_id`, `supervisor_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(NULL, 'test Contentions', 'panding', 'test Contentionstest Contentions ', 'test Contentionstest Contentions', 'test Contentionstest Contentionstest Contentions', 1, 1, 1, 1, '2020-12-15 21:00:00', '2020-12-15 21:00:00');


--
-- Dumping data for table `delivery_offers`
--

INSERT INTO `delivery_offers` (`id`, `fees`, `status`, `max_rate`, `min_rate`, `driver_id`, `order_id`, `created_at`, `updated_at`) VALUES
(null, '100', 'pending', '18', '12', 1, 1, '2020-12-15 21:00:00', '2020-12-15 21:00:00');
