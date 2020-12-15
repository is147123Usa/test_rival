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
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `group_id`, `phone`, `localization`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `city_id`) VALUES
('client', 1, '0509875995', 'lag,lat', 'test@gmail.com', NULL, '123456', NULL, NULL, NULL, 1),
('trader', 2, '05098765595', 'lan,long', 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, 1),
('Rival ', 3, '123456', 'lan', 'adming@gmail.com', NULL, '', NULL, NULL, NULL, 1);

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
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_orders` (`qutastion_status`, `payMethod`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(  'panding', 'online', 1, 1, NULL, NULL);

--
-- Dumping data for table `qutation_orders`
--

INSERT INTO `qutation_order_items` ( `name`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
('رفوف جدار خشبية', 'رف خشبي الون احمر',1, NULL, NULL),
('رفوف جدار خشبية', 'رف خشبي الون احمر',1, NULL, NULL);

