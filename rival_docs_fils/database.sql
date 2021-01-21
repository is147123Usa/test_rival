
INSERT INTO `categories` (`id`, `name`, `name_en`, `img`, `created_at`, `updated_at`) VALUES
(1, 'دهانات و زينة المنازل', 'painting and decorating', NULL, NULL, NULL),
(2, 'اثاث و مكاتب', 'furnuture and office ', NULL, NULL, NULL);


INSERT INTO `countries` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'السعودية', 'Saudi', '2021-01-06 21:00:00', NULL),
(2, 'السودان', 'Sudan', '2021-01-17 21:00:00', NULL);


INSERT INTO `cities` (`id`, `name`, `name_en`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'الرياض', 'Riyadh', 1, '2021-01-06 21:00:00', NULL),
(2, 'جدة', 'jeddah', 1, '2021-01-06 21:00:00', NULL),
(3, 'الدمام', 'Dammam', 1, '2021-01-06 21:00:00', NULL),
(4, 'الخرطوم', 'Khartoum', 2, '2021-01-17 21:00:00', NULL);


INSERT INTO `prove_types` (`id`, `name`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'هوية وطنية', 'Citizen ID', NULL, NULL),
(2, 'هوية مقيم', 'Iqama', NULL, NULL);


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


INSERT INTO `traders` (`id`, `activityName`, `CRN`, `tax_no`, `address`, `address_2`, `mailBox`, `spicalizition_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'TopLine1', '112212111', '10000011222', NULL, NULL, NULL, 1, 1, '2021-01-07 11:10:36', '2021-01-07 11:10:36'),
(3, 'TopLine1', '112212111', '10000011222', NULL, NULL, NULL, 1, 5, '2021-01-07 11:11:13', '2021-01-07 11:11:13'),
(4, 'fsdfd', '564654', '445645', 'dffdgdf', NULL, NULL, NULL, NULL, '2021-01-19 06:29:57', '2021-01-19 06:29:57'),
(5, 'sads', '1212', '765765', 'sdsd', NULL, NULL, NULL, 1, '2021-01-19 06:38:26', '2021-01-19 06:38:26'),
(6, 'aaaa', '1111', '1111', '1', NULL, NULL, NULL, 1, '2021-01-19 06:52:17', '2021-01-19 06:52:17'),
(7, 'testing testing', '11111', '121212', 'eee', NULL, NULL, 1, 18, '2021-01-20 05:14:48', '2021-01-20 05:14:48'),
(8, 'testing testing', '11111', '121212', 'eee', NULL, NULL, 1, 19, '2021-01-20 05:17:26', '2021-01-20 05:17:26'),
(9, 'testing testing', '11111', '121212', 'eee', NULL, NULL, 1, 20, '2021-01-20 05:19:09', '2021-01-20 05:19:09');


INSERT INTO `settings` (`id`, `name`, `valuee`, `created_at`, `updated_at`) VALUES
(1, 'rival', '0.01', '2021-01-18 21:00:00', NULL);



INSERT INTO `qutation_orders` (`id`, `qutastion_status`, `payMethod`, `Status`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(40, NULL, 'OnDelivery', 'pending', 18, 1, '2021-01-20 07:43:34', '2021-01-20 07:43:34');


INSERT INTO `qutation_order_items` (`id`, `name`, `qty`, `item_desc`, `qutation_order_id`, `created_at`, `updated_at`) VALUES
(21, 'ss', '111', 'zzz', 40, '2021-01-20 07:43:34', '2021-01-20 07:43:34');


INSERT INTO `qutations` (`id`, `status`, `sub_total`, `delivery_fee`, `paymentMethod`, `includeDelivery`, `rival_fees`, `qutation_order_id`, `trader_id`, `created_at`, `updated_at`) VALUES
(27, 'pending', 1332.00, NULL, NULL, 1, '13.32', 40, 7, '2021-01-20 07:44:28', '2021-01-20 07:44:28'),
(28, 'pending', 1332.00, NULL, NULL, 1, '13.32', 40, 7, '2021-01-20 07:47:44', '2021-01-20 07:47:44'),
(29, 'pending', 1332.00, 18.00, NULL, 0, '13.32', 40, 7, '2021-01-20 09:23:26', '2021-01-20 09:23:26'),
(30, 'pending', 1332.00, 18.00, NULL, 0, '13.32', 40, 7, '2021-01-20 09:24:05', '2021-01-20 09:24:05'),
(31, 'pending', 1332.00, 18.00, 'OnDelivery', 0, '13.32', 40, 7, '2021-01-20 09:24:46', '2021-01-20 09:24:46');



INSERT INTO `qutation_items` (`id`, `price`, `qty`, `img`, `item_desc`, `note`, `qutition_id`, `qutation_order_item_id`, `created_at`, `updated_at`) VALUES
(15, 12, 111, 'kk', 'asas', 'asas', 27, NULL, '2021-01-20 07:44:28', '2021-01-20 07:44:28'),
(16, 12, 111, 'kk', 'asas', 'asas', 28, NULL, '2021-01-20 07:47:44', '2021-01-20 07:47:44'),
(17, 12, 111, 'kk', 'rr', 'rr', 31, NULL, '2021-01-20 09:24:46', '2021-01-20 09:24:46');

INSERT INTO `qutation_orders` ( `qutastion_status`, `payMethod`, `Status`, `client_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(NULL, 'visa', 'pending', 24, 1, '2021-01-20 11:27:11', '2021-01-20 11:27:11');
