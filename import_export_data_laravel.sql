-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2022 at 05:45 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `import_export_data_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `salary`, `department`, `created_at`, `updated_at`) VALUES
(1, 'akshar', 'as.sparkle21@gmail.com', '1234567890', '20000', 'PHP', '2022-05-27 00:44:42', '2022-05-27 00:44:42'),
(2, 'akshar', 'admin@gmail.com', '1234567890', '20000', 'PHP', '2022-05-27 00:45:28', '2022-05-27 00:45:28'),
(3, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-05-28 00:44:34', '2022-05-28 00:44:34'),
(4, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-05-28 00:47:45', '2022-05-28 00:47:45'),
(5, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-05-28 00:48:17', '2022-05-28 00:48:17'),
(6, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-05-28 00:50:00', '2022-05-28 00:50:00'),
(7, 'akshar', 'as.sparkle21@gmail.com', '1234567890', '20000', 'PHP', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(8, 'akshar', 'admin@gmail.com', '1234567890', '20000', 'PHP', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(9, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(10, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(11, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(12, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-28 23:02:22', '2022-07-28 23:02:22'),
(13, 'akshar', 'as.sparkle21@gmail.com', '1234567890', '20000', 'PHP', '2022-07-29 03:13:38', '2022-07-29 03:13:38'),
(14, 'akshar', 'admin@gmail.com', '1234567890', '20000', 'PHP', '2022-07-29 03:13:38', '2022-07-29 03:13:38'),
(15, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-29 03:13:38', '2022-07-29 03:13:38'),
(16, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-29 03:13:38', '2022-07-29 03:13:38'),
(17, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-29 03:13:38', '2022-07-29 03:13:38'),
(18, 'rajesh', 'rajesh@gmail.com', '12345', '10000', 'java', '2022-07-29 03:13:38', '2022-07-29 03:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_27_054814_create_employees_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
