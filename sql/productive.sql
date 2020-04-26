-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 04:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `productive`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `token`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 2, '8A29B5u6p7rBQaBhJGZud6Tldoq8MEGBFUC2DRs6Hl3bgGUYAFx7HCfJ2fU4djB8', '0.0.0.0', '2020-04-24 02:07:00', '2020-04-24 02:07:00');

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
-- Table structure for table `laravel2step`
--

CREATE TABLE `laravel2step` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` bigint(20) UNSIGNED NOT NULL,
  `authCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authCount` int(11) NOT NULL,
  `authStatus` tinyint(1) NOT NULL DEFAULT 0,
  `authDate` datetime DEFAULT NULL,
  `requestDate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker`
--

CREATE TABLE `laravel_blocker` (
  `id` int(10) UNSIGNED NOT NULL,
  `typeId` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker`
--

INSERT INTO `laravel_blocker` (`id`, `typeId`, `value`, `note`, `userId`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'test.com', 'Block all domains/emails @test.com', NULL, '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(2, 3, 'test.ca', 'Block all domains/emails @test.ca', NULL, '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(3, 3, 'fake.com', 'Block all domains/emails @fake.com', NULL, '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(4, 3, 'example.com', 'Block all domains/emails @example.com', NULL, '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(5, 3, 'mailinator.com', 'Block all domains/emails @mailinator.com', NULL, '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_blocker_types`
--

CREATE TABLE `laravel_blocker_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_blocker_types`
--

INSERT INTO `laravel_blocker_types` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'email', 'E-mail', '2020-04-24 01:42:48', '2020-04-24 01:42:48', NULL),
(2, 'ipAddress', 'IP Address', '2020-04-24 01:42:48', '2020-04-24 01:42:48', NULL),
(3, 'domain', 'Domain Name', '2020-04-24 01:42:48', '2020-04-24 01:42:48', NULL),
(4, 'user', 'User', '2020-04-24 01:42:48', '2020-04-24 01:42:48', NULL),
(5, 'city', 'City', '2020-04-24 01:42:48', '2020-04-24 01:42:48', NULL),
(6, 'state', 'State', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(7, 'country', 'Country', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(8, 'countryCode', 'Country Code', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(9, 'continent', 'Continent', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(10, 'region', 'Region', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laravel_logger_activity`
--

CREATE TABLE `laravel_logger_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `route` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipAddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userAgent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `methodType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laravel_logger_activity`
--

INSERT INTO `laravel_logger_activity` (`id`, `description`, `userType`, `userId`, `route`, `ipAddress`, `userAgent`, `locale`, `referer`, `methodType`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-04-24 02:05:32', '2020-04-24 02:05:32', NULL),
(2, 'Viewed home', 'Registered', 2, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-04-24 02:05:32', '2020-04-24 02:05:32', NULL),
(3, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'POST', '2020-04-24 02:05:42', '2020-04-24 02:05:42', NULL),
(4, 'Logged In', 'Registered', 1, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-04-24 02:05:56', '2020-04-24 02:05:56', NULL),
(5, 'Viewed home', 'Registered', 1, 'http://127.0.0.1:8000/home', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-04-24 02:05:56', '2020-04-24 02:05:56', NULL),
(6, 'Viewed users', 'Registered', 1, 'http://127.0.0.1:8000/users', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/home', 'GET', '2020-04-24 02:06:04', '2020-04-24 02:06:04', NULL),
(7, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users', 'GET', '2020-04-24 02:06:16', '2020-04-24 02:06:16', NULL),
(8, 'Edited users/2', 'Registered', 1, 'http://127.0.0.1:8000/users/2', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/2/edit', 'PUT', '2020-04-24 02:06:29', '2020-04-24 02:06:29', NULL),
(9, 'Viewed users/2/edit', 'Registered', 1, 'http://127.0.0.1:8000/users/2/edit', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/2/edit', 'GET', '2020-04-24 02:06:31', '2020-04-24 02:06:31', NULL),
(10, 'Logged Out', 'Registered', 1, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/users/2/edit', 'POST', '2020-04-24 02:06:36', '2020-04-24 02:06:36', NULL),
(11, 'Logged In', 'Registered', 2, 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'POST', '2020-04-24 02:06:51', '2020-04-24 02:06:51', NULL),
(12, 'Viewed activation-required', 'Registered', 2, 'http://127.0.0.1:8000/activation-required', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/login', 'GET', '2020-04-24 02:06:51', '2020-04-24 02:06:51', NULL),
(13, 'Viewed activation', 'Registered', 2, 'http://127.0.0.1:8000/activation', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/activation-required', 'GET', '2020-04-24 02:06:56', '2020-04-24 02:06:56', NULL),
(14, 'Logged Out', 'Registered', 2, 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://127.0.0.1:8000/activation-required', 'POST', '2020-04-24 02:07:14', '2020-04-24 02:07:14', NULL),
(15, 'Logged In', 'Registered', 1, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 03:58:09', '2020-04-25 03:58:09', NULL),
(16, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'GET', '2020-04-25 03:58:09', '2020-04-25 03:58:09', NULL),
(17, 'Viewed profile/eliseo.hagenes', 'Registered', 1, 'http://localhost/productive/public/profile/eliseo.hagenes', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/home', 'GET', '2020-04-25 03:58:18', '2020-04-25 03:58:18', NULL),
(18, 'Viewed profile/eliseo.hagenes/edit', 'Registered', 1, 'http://localhost/productive/public/profile/eliseo.hagenes/edit', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/profile/eliseo.hagenes', 'GET', '2020-04-25 03:58:23', '2020-04-25 03:58:23', NULL),
(19, 'Edited profile/1/updateUserPassword', 'Registered', 1, 'http://localhost/productive/public/profile/1/updateUserPassword', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/profile/eliseo.hagenes/edit', 'PUT', '2020-04-25 03:58:46', '2020-04-25 03:58:46', NULL),
(20, 'Viewed profile/eliseo.hagenes/edit', 'Registered', 1, 'http://localhost/productive/public/profile/eliseo.hagenes/edit', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/profile/eliseo.hagenes/edit', 'GET', '2020-04-25 03:58:48', '2020-04-25 03:58:48', NULL),
(21, 'Viewed users', 'Registered', 1, 'http://localhost/productive/public/users', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/profile/eliseo.hagenes/edit', 'GET', '2020-04-25 03:58:52', '2020-04-25 03:58:52', NULL),
(22, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost/productive/public/users/2/edit', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/users', 'GET', '2020-04-25 03:58:57', '2020-04-25 03:58:57', NULL),
(23, 'Edited users/2', 'Registered', 1, 'http://localhost/productive/public/users/2', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/users/2/edit', 'PUT', '2020-04-25 03:59:14', '2020-04-25 03:59:14', NULL),
(24, 'Viewed users/2/edit', 'Registered', 1, 'http://localhost/productive/public/users/2/edit', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/users/2/edit', 'GET', '2020-04-25 03:59:16', '2020-04-25 03:59:16', NULL),
(25, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/', 'GET', '2020-04-25 03:59:22', '2020-04-25 03:59:22', NULL),
(26, 'Logged Out', 'Registered', 1, 'http://localhost/productive/public/logout', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/home', 'POST', '2020-04-25 03:59:28', '2020-04-25 03:59:28', NULL),
(27, 'Logged In', 'Registered', 1, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 04:02:51', '2020-04-25 04:02:51', NULL),
(28, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'GET', '2020-04-25 04:02:51', '2020-04-25 04:02:51', NULL),
(29, 'Logged Out', 'Registered', 1, 'http://localhost/productive/public/logout', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/home', 'POST', '2020-04-25 04:03:10', '2020-04-25 04:03:10', NULL),
(30, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 08:24:47', '2020-04-25 08:24:47', NULL),
(31, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 08:24:56', '2020-04-25 08:24:56', NULL),
(32, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 08:25:01', '2020-04-25 08:25:01', NULL),
(33, 'Failed Login Attempt', 'Guest', NULL, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 08:25:37', '2020-04-25 08:25:37', NULL),
(34, 'Logged In', 'Registered', 1, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-25 08:25:44', '2020-04-25 08:25:44', NULL),
(35, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'GET', '2020-04-25 08:25:45', '2020-04-25 08:25:45', NULL),
(36, 'Viewed users', 'Registered', 1, 'http://localhost/productive/public/users', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/blog', 'GET', '2020-04-25 08:58:32', '2020-04-25 08:58:32', NULL),
(37, 'Viewed users/1/edit', 'Registered', 1, 'http://localhost/productive/public/users/1/edit', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/users', 'GET', '2020-04-25 08:58:38', '2020-04-25 08:58:38', NULL),
(38, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/', 'GET', '2020-04-25 08:58:46', '2020-04-25 08:58:46', NULL),
(39, 'Viewed themes', 'Registered', 1, 'http://localhost/productive/public/themes', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/home', 'GET', '2020-04-25 08:58:52', '2020-04-25 08:58:52', NULL),
(40, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/', 'GET', '2020-04-25 08:59:13', '2020-04-25 08:59:13', NULL),
(41, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/', 'GET', '2020-04-25 09:00:05', '2020-04-25 09:00:05', NULL),
(42, 'Viewed logs', 'Registered', 1, 'http://localhost/productive/public/logs', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/home', 'GET', '2020-04-25 09:00:14', '2020-04-25 09:00:14', NULL),
(43, 'Viewed routes', 'Registered', 1, 'http://localhost/productive/public/routes', '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Mobile Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/logs', 'GET', '2020-04-25 09:00:28', '2020-04-25 09:00:28', NULL),
(44, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'GET', '2020-04-25 10:22:48', '2020-04-25 10:22:48', NULL),
(45, 'Logged In', 'Registered', 1, 'http://localhost/productive/public/login', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'POST', '2020-04-26 07:53:43', '2020-04-26 07:53:43', NULL),
(46, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', 'http://localhost/productive/public/login', 'GET', '2020-04-26 07:53:44', '2020-04-26 07:53:44', NULL),
(47, 'Viewed home', 'Registered', 1, 'http://localhost/productive/public/home', '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/80.0.3987.163 Chrome/80.0.3987.163 Safari/537.36', 'en-US,en;q=0.9', NULL, 'GET', '2020-04-26 08:42:53', '2020-04-26 08:42:53', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_15_105324_create_roles_table', 1),
(4, '2016_01_15_114412_create_role_user_table', 1),
(5, '2016_01_26_115212_create_permissions_table', 1),
(6, '2016_01_26_115523_create_permission_role_table', 1),
(7, '2016_02_09_132439_create_permission_user_table', 1),
(8, '2017_03_09_082449_create_social_logins_table', 1),
(9, '2017_03_09_082526_create_activations_table', 1),
(10, '2017_03_20_213554_create_themes_table', 1),
(11, '2017_03_21_042918_create_profiles_table', 1),
(12, '2017_11_04_103444_create_laravel_logger_activity_table', 1),
(13, '2017_12_09_070937_create_two_step_auth_table', 1),
(14, '2019_02_19_032636_create_laravel_blocker_types_table', 1),
(15, '2019_02_19_045158_create_laravel_blocker_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2020_04_26_043121_create_notices_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `description`, `model`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Can View Users', 'view.users', 'Can view users', 'Permission', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(2, 'Can Create Users', 'create.users', 'Can create new users', 'Permission', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(3, 'Can Edit Users', 'edit.users', 'Can edit users', 'Permission', '2020-04-24 01:42:49', '2020-04-24 01:42:49', NULL),
(4, 'Can Delete Users', 'delete.users', 'Can delete users', 'Permission', '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL),
(2, 2, 1, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL),
(3, 3, 1, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL),
(4, 4, 1, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `github_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `theme_id`, `location`, `bio`, `twitter_username`, `github_username`, `avatar`, `avatar_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-04-24 01:42:55', '2020-04-24 01:42:55'),
(2, 2, 1, NULL, NULL, NULL, NULL, NULL, 0, '2020-04-24 01:42:55', '2020-04-24 01:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `level`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 'Admin Role', 5, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL),
(2, 'User', 'user', 'User Role', 1, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL),
(3, 'Unverified', 'unverified', 'Unverified Role', 0, '2020-04-24 01:42:50', '2020-04-24 01:42:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2020-04-24 01:42:55', '2020-04-24 01:42:55', NULL),
(4, 2, 2, '2020-04-25 03:59:15', '2020-04-25 03:59:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `link`, `notes`, `status`, `taggable_type`, `taggable_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Default', 'null', NULL, 1, 'theme', 1, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(2, 'Darkly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css', NULL, 1, 'theme', 2, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(3, 'Cyborg', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cyborg/bootstrap.min.css', NULL, 1, 'theme', 3, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(4, 'Cosmo', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cosmo/bootstrap.min.css', NULL, 1, 'theme', 4, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(5, 'Cerulean', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/cerulean/bootstrap.min.css', NULL, 1, 'theme', 5, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(6, 'Flatly', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css', NULL, 1, 'theme', 6, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(7, 'Journal', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/journal/bootstrap.min.css', NULL, 1, 'theme', 7, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(8, 'Lumen', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lumen/bootstrap.min.css', NULL, 1, 'theme', 8, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(9, 'Paper', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/paper/bootstrap.min.css', NULL, 1, 'theme', 9, '2020-04-24 01:42:51', '2020-04-24 01:42:53', NULL),
(10, 'Readable', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/readable/bootstrap.min.css', NULL, 1, 'theme', 10, '2020-04-24 01:42:51', '2020-04-24 01:42:54', NULL),
(11, 'Sandstone', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sandstone/bootstrap.min.css', NULL, 1, 'theme', 11, '2020-04-24 01:42:51', '2020-04-24 01:42:54', NULL),
(12, 'Simplex', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/simplex/bootstrap.min.css', NULL, 1, 'theme', 12, '2020-04-24 01:42:51', '2020-04-24 01:42:54', NULL),
(13, 'Slate', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css', NULL, 1, 'theme', 13, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(14, 'Spacelab', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/spacelab/bootstrap.min.css', NULL, 1, 'theme', 14, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(15, 'Superhero', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/superhero/bootstrap.min.css', NULL, 1, 'theme', 15, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(16, 'United', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/united/bootstrap.min.css', NULL, 1, 'theme', 16, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(17, 'Yeti', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/yeti/bootstrap.min.css', NULL, 1, 'theme', 17, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(18, 'Bootstrap 4.3.1', 'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css', NULL, 1, 'theme', 18, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(19, 'Materialize', 'https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.css', NULL, 1, 'theme', 19, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(20, 'Material Design for Bootstrap (MDB) 4.8.7', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.7/css/mdb.css', NULL, 1, 'theme', 20, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(21, 'mdbootstrap', 'https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.3.1/css/mdb.min.css', NULL, 1, 'theme', 21, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(22, 'Litera', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/litera/bootstrap.min.css', NULL, 1, 'theme', 22, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(23, 'Lux', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/lux/bootstrap.min.css', NULL, 1, 'theme', 23, '2020-04-24 01:42:52', '2020-04-24 01:42:54', NULL),
(24, 'Materia', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css', NULL, 1, 'theme', 24, '2020-04-24 01:42:53', '2020-04-24 01:42:55', NULL),
(25, 'Minty', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/minty/bootstrap.min.css', NULL, 1, 'theme', 25, '2020-04-24 01:42:53', '2020-04-24 01:42:55', NULL),
(26, 'Pulse', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/pulse/bootstrap.min.css', NULL, 1, 'theme', 26, '2020-04-24 01:42:53', '2020-04-24 01:42:55', NULL),
(27, 'Sketchy', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/sketchy/bootstrap.min.css', NULL, 1, 'theme', 27, '2020-04-24 01:42:53', '2020-04-24 01:42:55', NULL),
(28, 'Solar', 'https://maxcdn.bootstrapcdn.com/bootswatch/4.3.1/solar/bootstrap.min.css', NULL, 1, 'theme', 28, '2020-04-24 01:42:53', '2020-04-24 01:42:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_confirmation_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signup_sm_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `activated`, `token`, `signup_ip_address`, `signup_confirmation_ip_address`, `signup_sm_ip_address`, `admin_ip_address`, `updated_ip_address`, `deleted_ip_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'eliseo.hagenes', 'Tracy', 'Pouros', 'admin@admin.com', NULL, '$2y$10$/UKNVCamAUv9c4fuI1aeqeDX6KxaMooggd7FSCYdxqNkWT/4Iux..', NULL, 1, 'n2EUJlZZabSqIsNB6n1kAeEx5f3foOGidE4ln31y5xOc2wlMkqSfMSy4Hn6onNa7', NULL, '17.99.220.88', NULL, '42.137.246.61', '::1', NULL, '2020-04-24 01:42:55', '2020-04-25 03:58:47', NULL),
(2, 'selina30', 'Marcos', 'Swift', 'user@user.com', NULL, '$2y$10$p7/dZUwK6i8Mf9tm/li7KO9xVnL2Mvz.ypfYm7zM2IjWYxPPcGf3y', NULL, 1, 'JrWXJinl4MMMf3RmwCaPJns3pyUQaA0tz7CJ2LRcFnsIVn7KdFl3TmuvdiZHhWMx', '115.232.16.31', '130.251.205.35', NULL, NULL, '::1', NULL, '2020-04-24 01:42:55', '2020-04-25 03:59:15', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laravel2step_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_value_unique` (`value`),
  ADD KEY `laravel_blocker_typeid_index` (`typeId`),
  ADD KEY `laravel_blocker_userid_index` (`userId`);

--
-- Indexes for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laravel_blocker_types_slug_unique` (`slug`);

--
-- Indexes for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_index` (`permission_id`),
  ADD KEY `permission_user_user_id_index` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_theme_id_foreign` (`theme_id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_index` (`role_id`),
  ADD KEY `role_user_user_id_index` (`user_id`);

--
-- Indexes for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_logins_user_id_index` (`user_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`),
  ADD UNIQUE KEY `themes_link_unique` (`link`),
  ADD KEY `themes_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  ADD KEY `themes_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_name_unique` (`name`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel2step`
--
ALTER TABLE `laravel2step`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laravel_blocker_types`
--
ALTER TABLE `laravel_blocker_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laravel_logger_activity`
--
ALTER TABLE `laravel_logger_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_logins`
--
ALTER TABLE `social_logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activations`
--
ALTER TABLE `activations`
  ADD CONSTRAINT `activations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel2step`
--
ALTER TABLE `laravel2step`
  ADD CONSTRAINT `laravel2step_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laravel_blocker`
--
ALTER TABLE `laravel_blocker`
  ADD CONSTRAINT `laravel_blocker_typeid_foreign` FOREIGN KEY (`typeId`) REFERENCES `laravel_blocker_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_logins`
--
ALTER TABLE `social_logins`
  ADD CONSTRAINT `social_logins_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
