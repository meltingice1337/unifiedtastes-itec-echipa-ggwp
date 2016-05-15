-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2016 at 06:29 AM
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
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `event_id`, `updated_at`, `created_at`) VALUES
(1, 'Can i come and drink soda ?', 1, 1, '2016-05-15 02:51:25', '2016-05-15 02:51:25'),
(2, 'It was nice.', 4, 7, '2016-05-15 03:13:58', '2016-05-15 03:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `icon` text NOT NULL,
  `location` text NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `date` text NOT NULL,
  `expired` int(1) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `icon`, `location`, `start_time`, `end_time`, `date`, `expired`, `updated_at`, `created_at`) VALUES
(1, 'Beer Meetup', 'I want to drink a beer.', 'images/drink.png', 'Beerotekha', '15:20', '16:15', '15.05.2016', 0, '2016-05-15 02:50:57', '2016-05-15 02:50:57'),
(2, 'I want a pizza', 'Looking forward to grab a pizza', 'images/food.png', 'San Marzzano', '06:15', '08:30', '15.05.2016', 1, '2016-05-15 03:17:24', '2016-05-15 02:53:43'),
(3, 'Play LOL', 'Want to play LOL with someone. anyone?', 'images/games.png', 'Timisoara Lolish', '18:30', '18:55', '15.05.2016', 0, '2016-05-15 02:55:24', '2016-05-15 02:55:24'),
(4, 'Movie time', 'i want to go see a movie.', 'images/movie.png', 'Cinema City', '19:25', '21:25', '15.05.2016', 0, '2016-05-15 02:58:11', '2016-05-15 02:58:11'),
(5, 'Walk on Bega River', 'I need a break! I would like to take a walk.', 'images/walk.png', 'Bega River', '16:30', '17:30', '16.05.2016', 0, '2016-05-15 02:59:58', '2016-05-15 02:59:58'),
(6, 'I''m not sure yet', '<script>alert("jk");</script>', 'images/unknown.png', 'nowhere', '00:00', '23:59', '19.05.2016', 0, '2016-05-15 03:04:18', '2016-05-15 03:04:18'),
(7, 'Shopping', 'Want to buy some new jeans.', 'images/unknown.png', 'Iulius Mall', '06:09', '06:14', '15.05.2016', 1, '2016-05-15 03:09:09', '2016-05-15 03:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `event_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `name`, `event_id`, `updated_at`, `created_at`) VALUES
(1, 'beer', 1, '2016-05-15 02:50:57', '2016-05-15 02:50:57'),
(2, 'ruby', 1, '2016-05-15 02:50:57', '2016-05-15 02:50:57'),
(3, 'dota2', 2, '2016-05-15 02:53:43', '2016-05-15 02:53:43'),
(4, 'code', 2, '2016-05-15 02:53:43', '2016-05-15 02:53:43'),
(5, 'lol', 3, '2016-05-15 02:55:24', '2016-05-15 02:55:24'),
(6, 'games', 3, '2016-05-15 02:55:24', '2016-05-15 02:55:24'),
(7, 'movie', 4, '2016-05-15 02:58:11', '2016-05-15 02:58:11'),
(8, 'tvseries', 4, '2016-05-15 02:58:11', '2016-05-15 02:58:11'),
(9, 'food', 5, '2016-05-15 02:59:58', '2016-05-15 02:59:58'),
(10, 'science', 5, '2016-05-15 02:59:58', '2016-05-15 02:59:58'),
(11, 'not sure', 6, '2016-05-15 03:04:18', '2016-05-15 03:04:18'),
(12, 'shopping', 7, '2016-05-15 03:08:41', '2016-05-15 03:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE `user_event` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_event`
--

INSERT INTO `user_event` (`id`, `user_id`, `event_id`, `updated_at`, `created_at`) VALUES
(1, 4, 1, '2016-05-15 02:50:57', '0000-00-00 00:00:00'),
(4, 4, 3, '2016-05-15 02:55:24', '0000-00-00 00:00:00'),
(5, 4, 4, '2016-05-15 02:58:11', '0000-00-00 00:00:00'),
(6, 4, 5, '2016-05-15 02:59:58', '0000-00-00 00:00:00'),
(7, 4, 6, '2016-05-15 03:04:18', '0000-00-00 00:00:00'),
(8, 4, 2, '2016-05-15 03:05:50', '0000-00-00 00:00:00'),
(9, 4, 7, '2016-05-15 03:08:41', '0000-00-00 00:00:00'),
(10, 1, 7, '2016-05-15 03:10:53', '0000-00-00 00:00:00'),
(11, 1, 1, '2016-05-15 03:50:42', '0000-00-00 00:00:00'),
(12, 1, 4, '2016-05-15 04:06:54', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_event`
--
ALTER TABLE `user_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
