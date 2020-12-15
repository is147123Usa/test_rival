Dummy Data ,Rival ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'riyadh', 1, NULL, NULL);

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'السعودية', 'Saudi', NULL, NULL);

--
-- Dumping data for table `qutation_orders`
--


INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'panding', 'online', 1, 1, NULL, NULL);

--
-- Dumping data for table `qutation_order_items`
--


INSERT INTO `qutation_order_items` (`id`, `name`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(1, 'مكتب خشبي ٢ متر', 'اتمنى يكون الون احمر', 1, NULL, NULL),
(3, 'رفوف جدار خشبية', 'رف خشبي الون احمر', 1, NULL, NULL);

--
-- Dumping data for table `traders`
--


INSERT INTO `traders` (`id`, `activityName`, `CRN`, `account_status`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'AL-mensah ', '12121212', 'confirmed', 1, 2, NULL, NULL);


--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `group_id`, `phone`, `localization`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `city_id`) VALUES
(1, 'client', 1, '0509875995', 'lag,lat', 'test@gmail.com', NULL, '123456', NULL, NULL, NULL, 1),
(2, 'trader', 2, '05098765595', 'lan,long', 'trader@gmail.com', NULL, '123456', NULL, NULL, NULL, 1),
(3, 'Rival ', 3, '123456', 'lan', 'adming@gmail.com', NULL, '', NULL, NULL, NULL, 1);


