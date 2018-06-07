-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2018 at 12:00 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codehacking`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'PHP', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2018_05_26_100420_create_roles_table', 1),
(14, '2018_05_28_085524_add_photo_id_to_users_table', 1),
(15, '2018_05_28_093128_create_photos_table', 2),
(16, '2018_05_31_093644_create_posts_table', 3),
(19, '2018_06_02_100307_create_categories_table', 4),
(20, '2018_06_03_084029_make_photo_id_nullable', 5),
(21, '2018_06_03_085644_delete_posts_with_user_relation', 6),
(22, '2018_06_04_093307_add_slug_clumn_posts_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arifcse11@gmail.com', '$2y$10$2G9DuFuWofECaU78KwYmFuvo8eNTbTsWr9ZVCCQ5st5jykCaAAZWa', '2018-05-30 04:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `file`, `created_at`, `updated_at`) VALUES
(53, '1528269857No_Image.jpg', '2018-06-06 01:24:17', '2018-06-06 01:24:17'),
(54, '1528269857user_male2-512.png', '2018-06-06 01:24:17', '2018-06-06 01:24:17'),
(55, '1528269857user-male-icon.png', '2018-06-06 01:24:17', '2018-06-06 01:24:17'),
(56, '15282700222nd post-2 (1).jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(57, '15282700222nd post-2.jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(58, '1528270022icon_user_male.jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(59, '1528270022fifa-world-cup-2018.png', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(60, '1528270022male-user-profile-picture_318-37825.jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(61, '1528270022male-user-shadow_318-34042.jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(62, '1528270022No_Image.jpg', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(63, '1528270022user_male2-512.png', '2018-06-06 01:27:02', '2018-06-06 01:27:02'),
(64, '1528270022user-male-icon.png', '2018-06-06 01:27:02', '2018-06-06 01:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `photo_id`, `title`, `body`, `created_at`, `updated_at`, `slug`) VALUES
(1, 8, 2, 13, 'My First Post', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2018-05-30 18:00:00', '2018-06-04 04:41:45', 'my-first-post'),
(8, 10, 2, 16, 'My Third Post', 'Hello', '2018-06-03 04:42:59', '2018-06-03 04:42:59', NULL),
(9, 8, 2, 20, 'My Third Post Updated', 'Hello', '2018-06-04 03:35:53', '2018-06-04 03:37:17', 'my-third-post-updated'),
(10, 8, 2, 21, 'My Third Post', 'Hello', '2018-06-04 03:36:12', '2018-06-04 03:36:12', 'my-third-post-1'),
(11, 8, 2, NULL, 'Post With Image', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/images/shares/No_Image.jpg\" alt=\"\" /></p>\r\n<p><strong>Hello</strong></p>', '2018-06-05 01:43:41', '2018-06-05 04:54:15', 'post-with-image');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Author', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `photo_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `is_active`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `photo_id`) VALUES
(8, 1, 1, 'Arif', 'arifcse11@gmail.com', '$2y$10$RcfaLCupbx/vf6ATJurOhe2NW/MtmojvkGDx5assw4Qe3GUJMdDSi', 'vzqUJqAGNdW4Z5Jxfo0h4eVyAVE85y4XDDyH2mNHkpc8OtTIvxMYilCtMuqh', '2018-05-31 01:30:03', '2018-06-02 01:58:06', ''),
(10, 1, 1, 'Lejon Khan', 'lejon@gmail.com', '$2y$10$x306mFgm2FB1HCj26suqqOjv1AzQ8AdHnJ9ZWvrEPVmb01PgoPFzW', 'RvQj6BinqvUO142KCRHqy9kFjMs7yQ2PiVYLu20btxhllJRaAOXxrpUmhERG', '2018-06-03 04:42:25', '2018-06-03 04:42:25', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_index` (`user_id`),
  ADD KEY `posts_category_id_index` (`category_id`),
  ADD KEY `posts_photo_id_index` (`photo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
