-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2016 at 06:10 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unifiedtastes`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interests` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `remember_token`, `interests`, `created_at`, `updated_at`) VALUES
(1, 'Costolas Darius', 'dariuscostolas@yahoo.com', '$2y$10$er6wJ79njzF99rfXkIFKsOS5D8Ap/qfG8Sr9BfIAh9eQng91zrZNO', 'images/b08b92bc78.png', 'V0hLzBnaoUJHIxv89Eg2mnj7V1ms3QF2aybTibh2nzx68GAi9Zma9Zy76Dph', '["pizza","stick","barbie","dogs","dogs ","ewq","wdogs","picnic","sarpe","tvseries"]', '2016-05-14 07:15:16', '2016-05-15 04:00:46'),
(2, 'eqweqSdSDA', 'dariuscew321qostolas@yahoo.com', '$2y$10$er6wJ79njzF99rfXkIFKsOS5D8Ap/qfG8Sr9BfIAhewq9eQng91zrZNO', '', NULL, '', '2016-05-14 07:15:16', '2016-05-14 07:15:16'),
(3, 'Costolaewqs Darius', 'dariuscewqostolas@yahoo.com', '$2y$10$er6wJ79njzF99rfXkIFKsOS5D8Ap/qfG8Sr9BfIAhewq9eQng91zrZNO', '', NULL, '', '2016-05-14 07:15:16', '2016-05-14 07:15:16'),
(4, 'Raul Gherasim', 'gherasimraul@yahoo.com', '$2y$10$BdNXryIOxQU/gUrZC.VWV.4p73/Qk6NENmGTbCYMd8ZSDIaXHZCfW', 'images/profilepicture.jpg', 'uxYwaCkFl6lLnaIPYBqGjtrbCGYrwXqEv0Mpgsvj0eghk1H7OqHxuYsOt6bE', '["popa","dogs"]', '2016-05-14 21:58:00', '2016-05-15 03:33:24');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
