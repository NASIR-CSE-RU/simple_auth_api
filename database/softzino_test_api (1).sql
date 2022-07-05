-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 04, 2022 at 09:45 PM
-- Server version: 8.0.27-0ubuntu0.21.04.1
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `softzino_test_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1a54441f9504862ead1a8fedecacc22d610bc6ecc41e3553cbd475f5b5febea952460601f78efd50', 53, 2, NULL, '[]', 1, '2022-07-03 14:03:18', '2022-07-03 14:03:18', '2023-07-03 20:03:18'),
('1fc5b129c19d7012a51d87580586a4d92ec2489a780cba5e9c48b7b7c4e3083737c0dc49eb96d26f', 53, 2, NULL, '[]', 1, '2022-07-04 14:52:36', '2022-07-04 14:52:36', '2023-07-04 20:52:36'),
('35faca09d00993b516f3b369d5498944b7cc72800f6c6ff44593dae477841bdc0a704ca2be08cad1', 53, 2, NULL, '[]', 0, '2022-07-03 13:34:02', '2022-07-03 13:34:02', '2023-07-03 19:34:02'),
('39079363ea7f0e32ec2efa2148d3675831745753620c0e5687672299d738bb2f05da24fabc44237f', 53, 2, NULL, '[]', 0, '2022-07-03 13:05:50', '2022-07-03 13:05:50', '2023-07-03 19:05:50'),
('430fae802e8e750842e9d0ea7e5c17bdc8e77732d65fddbb6995e678ac6ef7892582b731d003734d', 53, 2, NULL, '[]', 1, '2022-07-03 14:04:18', '2022-07-03 14:04:18', '2023-07-03 20:04:18'),
('4bc437dbcb42277fc382cf05d858993d830385aec897c20213ca638066beabce38bb43cdb581eaff', 53, 2, NULL, '[]', 0, '2022-07-03 13:55:47', '2022-07-03 13:55:47', '2023-07-03 19:55:47'),
('555c4349e6525eeb0031bcccbe1113ce37af7a88f55ac1db8d87fd1c5a7027a40256fbb0de2ea51b', 53, 2, NULL, '[]', 1, '2022-07-03 14:17:17', '2022-07-03 14:17:17', '2023-07-03 20:17:17'),
('591e8e1df7c4227d0e6d2f0a08ebb4b0305ce52fb7d2aeb0438438f42389c68861c581de4217f4d0', 53, 2, NULL, '[]', 1, '2022-07-03 13:56:17', '2022-07-03 13:56:17', '2023-07-03 19:56:17'),
('5b1c6b01ac03f96a0e3b2bf169d8d9582b6abff806e91c4f9442a6d94c7c48916ee1b9c2330fea1f', 53, 2, NULL, '[]', 1, '2022-07-04 14:51:38', '2022-07-04 14:51:38', '2023-07-04 20:51:38'),
('5cceb2d0c9a0816ac13d1c90c4cc8eb6de7a807f8136d91dff4402e8b11d1eeab5b6a69ff5a25f27', 53, 2, NULL, '[]', 1, '2022-07-04 10:13:31', '2022-07-04 10:13:31', '2023-07-04 16:13:31'),
('5e7333789f0a14a985862896951055e514d8a8de192b2ae428152aafebdb627a0b5e5319e426cf76', 53, 2, NULL, '[]', 0, '2022-07-04 14:54:11', '2022-07-04 14:54:11', '2023-07-04 20:54:11'),
('7270543a2c179dc1c8a1007b6d25a8f0caf7952971e2b12cfced6fcabe33b6109f4865fdb75d2d2c', 53, 2, NULL, '[]', 1, '2022-07-04 14:45:15', '2022-07-04 14:45:15', '2023-07-04 20:45:15'),
('97fd156b4049d4c7503be53bd07910a649a6951647ff0ad7ebebabe681010ced2f38e71f212cffe3', 53, 2, NULL, '[]', 1, '2022-07-04 15:38:39', '2022-07-04 15:38:39', '2023-07-04 21:38:39'),
('a76dd7d8a2955000fb1969697afef7882b0fa5540280418df6034a6141dfa3fa93362d3a8e225493', 53, 2, NULL, '[]', 0, '2022-07-03 13:52:37', '2022-07-03 13:52:37', '2023-07-03 19:52:37'),
('a85bb8eb9854545c883bccfd99284aa4acbb0d3e7c4acb0893cf0381e8e3e8e9fd5a8559117b7a8c', 53, 2, NULL, '[]', 1, '2022-07-04 10:06:47', '2022-07-04 10:06:47', '2023-07-04 16:06:47'),
('ac8922cb539e195b75bd5f44859a279e3a34264e539c02008b9fd66da41d330818639f1e9d667277', 53, 2, NULL, '[]', 0, '2022-07-04 10:19:58', '2022-07-04 10:19:58', '2023-07-04 16:19:58'),
('ae6ec9f74097b5331b397a88caa9c325ee6d7a47b0564ef9c92b03265175727a7b5026b41401ebad', 53, 2, NULL, '[]', 0, '2022-07-03 13:13:20', '2022-07-03 13:13:20', '2023-07-03 19:13:20'),
('cab033e7a113c7f118f6b7bcb1323ffbf2c546129c6ca9fd5cd929a0408f7f68474518bb9762a73a', 53, 2, NULL, '[]', 1, '2022-07-04 14:26:11', '2022-07-04 14:26:11', '2023-07-04 20:26:11'),
('d4522a9aaffb2404fb796b45fb4ed8c6576ed1213061b81714654fca0d1004fde32555522fd529d7', 53, 2, NULL, '[]', 1, '2022-07-04 14:52:23', '2022-07-04 14:52:23', '2023-07-04 20:52:23'),
('d81e03a3c549ab95a6ec39c93b0583b4a0c1b4ca4692b414ff5645d83a0dad2035ff45c6ebd1687b', 53, 2, NULL, '[]', 1, '2022-07-04 14:26:36', '2022-07-04 14:26:36', '2023-07-04 20:26:36'),
('e40a390c9c30a11ed7a8a2d660ac8f3e3ff419f3704ccafd910951f593c7172bb6caa2fe514f8e6b', 53, 2, NULL, '[]', 1, '2022-07-03 14:15:11', '2022-07-03 14:15:11', '2023-07-03 20:15:11'),
('f01c957bd00fd0a30bfd3bf2d914ed9b707bae172cb60f069a3c269880c506d57712b3dea725ccdd', 53, 2, NULL, '[]', 1, '2022-07-04 14:34:33', '2022-07-04 14:34:33', '2023-07-04 20:34:33'),
('f7be19a8a87fc60354691947d1e88d301f1a0d2c0cd238fc2e8b9e5caca7bc85acd1dd909a8d5afd', 53, 2, NULL, '[]', 0, '2022-07-04 15:41:50', '2022-07-04 15:41:50', '2023-07-04 21:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'Gg3YzkBqCwurWGKyAtzqmXxv2PKc5gA8eNXLqlBh', 'http://localhost', 1, 0, 0, '2022-07-03 10:15:51', '2022-07-03 10:15:51'),
(2, NULL, 'Laravel Password Grant Client', 'LmqKHt3AGkfQmJGOqms3GjM7g212q8068d6utRZg', 'http://localhost', 0, 1, 0, '2022-07-03 10:15:51', '2022-07-03 10:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-03 10:15:51', '2022-07-03 10:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('2c20ce845831e71439c7c43802503d452fc1bf97a8c4333bb528dda6e5ddc7e4e0b624adec6e933b', '1a54441f9504862ead1a8fedecacc22d610bc6ecc41e3553cbd475f5b5febea952460601f78efd50', 0, '2023-07-03 20:03:18'),
('2edeca95eccaaefa8b0d4011935901a9e2523630b3337aa99b660ffce16f096b42511112037ddca0', '5b1c6b01ac03f96a0e3b2bf169d8d9582b6abff806e91c4f9442a6d94c7c48916ee1b9c2330fea1f', 0, '2023-07-04 20:51:38'),
('303d3bd71063fc19bc7e5a0b5f0a1988fcb8593570c771f4117c0b6c56fc1eb8362c2483158185be', '7270543a2c179dc1c8a1007b6d25a8f0caf7952971e2b12cfced6fcabe33b6109f4865fdb75d2d2c', 0, '2023-07-04 20:45:15'),
('41670b87554fb3f14d559ab052e83f75fc80cc5cb67c133490ba7c2bce8e30f17d68c5c9f1c10ab2', '430fae802e8e750842e9d0ea7e5c17bdc8e77732d65fddbb6995e678ac6ef7892582b731d003734d', 0, '2023-07-03 20:04:18'),
('426099ac8d368c567770b746e42502638d69fb3a76cfa99a4495dd8f129aaffee45e24eb0aa7cf73', 'ac8922cb539e195b75bd5f44859a279e3a34264e539c02008b9fd66da41d330818639f1e9d667277', 0, '2023-07-04 16:19:58'),
('4c9d2b12434c72e0ffe7632b239d141df0c035bdd6e2b4057a8c0528486dc948aab02cd0a16b6bfc', '1fc5b129c19d7012a51d87580586a4d92ec2489a780cba5e9c48b7b7c4e3083737c0dc49eb96d26f', 0, '2023-07-04 20:52:36'),
('4e3b98520b679730f9830b9f2d2da94183ef7bd831990e22691d8f996c2dfb3d97ebbb1e0160fe55', '5e7333789f0a14a985862896951055e514d8a8de192b2ae428152aafebdb627a0b5e5319e426cf76', 0, '2023-07-04 20:54:11'),
('58b38fa7fbae3bd48354b545a78a469b5babc7480af845b278578fc4c0801240052b921363f4e76c', 'a85bb8eb9854545c883bccfd99284aa4acbb0d3e7c4acb0893cf0381e8e3e8e9fd5a8559117b7a8c', 0, '2023-07-04 16:06:47'),
('705c2292aad154cee4579a28497fe0262416786b08c59c917d74b35f7c0ee8bef41b07cd918ab15b', '555c4349e6525eeb0031bcccbe1113ce37af7a88f55ac1db8d87fd1c5a7027a40256fbb0de2ea51b', 0, '2023-07-03 20:17:17'),
('737b9eb765b9c747a3e23e284f721164c7be216be87e75bdc0e50c50fd259bc541dd896670fdd285', 'd81e03a3c549ab95a6ec39c93b0583b4a0c1b4ca4692b414ff5645d83a0dad2035ff45c6ebd1687b', 0, '2023-07-04 20:26:36'),
('7ddb0cdecb442849ef88d469df2463b0b0faab1cea55daf9e1df397cc80b37eed1b71a160197bc58', 'd4522a9aaffb2404fb796b45fb4ed8c6576ed1213061b81714654fca0d1004fde32555522fd529d7', 0, '2023-07-04 20:52:23'),
('88ed4b30322b63cea942e755ea4231580f3d28e2e574b6f64e580d2c7630ff799f7e33dea47d87f4', '4bc437dbcb42277fc382cf05d858993d830385aec897c20213ca638066beabce38bb43cdb581eaff', 0, '2023-07-03 19:55:47'),
('8ba9bb710f31ec2508eb3505dee66f1efe29039e75465eb0014142ada9f396d77609a3428535b230', '35faca09d00993b516f3b369d5498944b7cc72800f6c6ff44593dae477841bdc0a704ca2be08cad1', 0, '2023-07-03 19:34:02'),
('8e98a4b330ace07c3dc67e5b78f2db1159fe31d64aad133c484b5ff768622e41c070090f6605e67e', 'a76dd7d8a2955000fb1969697afef7882b0fa5540280418df6034a6141dfa3fa93362d3a8e225493', 0, '2023-07-03 19:52:37'),
('a5021ec99ee2bca52ac7885042e0e23bec26509c74d464cd2a2da1981cc2ca5e942d960c9eb3a42b', '97fd156b4049d4c7503be53bd07910a649a6951647ff0ad7ebebabe681010ced2f38e71f212cffe3', 0, '2023-07-04 21:38:39'),
('ac7bb60114452d74e446948d1bf8797b78c55dcaf5c80f43a41a5f7601c21dc1989dc31cd9251c6d', 'e40a390c9c30a11ed7a8a2d660ac8f3e3ff419f3704ccafd910951f593c7172bb6caa2fe514f8e6b', 0, '2023-07-03 20:15:11'),
('b9dd7def66c6289319d498da8b869852f8a8525e06e1b5d8343f3d53b701870d747fddb71eab2411', 'f7be19a8a87fc60354691947d1e88d301f1a0d2c0cd238fc2e8b9e5caca7bc85acd1dd909a8d5afd', 0, '2023-07-04 21:41:50'),
('bca1c72bd27c93f46a9b50f014a1d8703db7b0c3ce43c6222677dd808b4e6092e2dfc478309a062a', '591e8e1df7c4227d0e6d2f0a08ebb4b0305ce52fb7d2aeb0438438f42389c68861c581de4217f4d0', 0, '2023-07-03 19:56:17'),
('c71a8d5f210a7881c33788ac34f275f5c27bcbdcf2cb87cac2f1ab701bacd6fa05190fcdc6ed48fa', '5cceb2d0c9a0816ac13d1c90c4cc8eb6de7a807f8136d91dff4402e8b11d1eeab5b6a69ff5a25f27', 0, '2023-07-04 16:13:31'),
('dbf8716633bd61ce371b6e4e252bc52a50aa37317280195e387f3c3c0f1e2fe6798cf095a441cc3f', 'cab033e7a113c7f118f6b7bcb1323ffbf2c546129c6ca9fd5cd929a0408f7f68474518bb9762a73a', 0, '2023-07-04 20:26:11'),
('dd974e5d62d628a3c65950b61945cf153a5213f0c762cffe3f986b0dd83d20b46e51d96bc4dec5ef', 'f01c957bd00fd0a30bfd3bf2d914ed9b707bae172cb60f069a3c269880c506d57712b3dea725ccdd', 0, '2023-07-04 20:34:33'),
('fb5d4d244b1ca5cac711ceba61479859bcdf18a249c07c917ef0660a2b17c64c1a395528ea4dd7dc', 'ae6ec9f74097b5331b397a88caa9c325ee6d7a47b0564ef9c92b03265175727a7b5026b41401ebad', 0, '2023-07-03 19:13:20'),
('fc11c4be95fe5f0ba267e26530ff84805bf112f2ce6d3249d3ddc807760ee80ba822ccd0d3c581fb', '39079363ea7f0e32ec2efa2148d3675831745753620c0e5687672299d738bb2f05da24fabc44237f', 0, '2023-07-03 19:05:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `date_of_birth`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Darryl Bergnaum DVM', 'koch.harmony@example.com', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$bZ4oHw7T4p9u10Zpmhgs/.bhsZ8nLaOE.CBBYV0beEGCaULyHtbre', 'BaTnfvF8Rz', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(2, 'Miss Vivienne Robel II', 'santiago52@example.net', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$GO.iU.zW3QhmSIzDmMEcAOVRbANdjxRMD3sMdos7eo2TAyvGRBzs6', '3aws9O1ujS', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(3, 'Dana Harber', 'lisa.osinski@example.com', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$rND5pbkV3hHHB5bB6UjIh.ixg3wcFewiTK3.lwt3vw0qPnwqRGJtG', '3zS2iXKBIM', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(4, 'Arielle Lueilwitz PhD', 'addie.reynolds@example.org', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$Q/jXKVdjXD1cXsP39dSmW.3OldaBzrEx.rJUZCJJ2s1EaXyENGphi', 'WpgDD83DqS', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(5, 'Faustino Barrows', 'emilie96@example.net', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$jFXt3iyQA3epJ21tSMmkNuTzWNIjgSRV1MNKwxb5WmIlfJCpSUdBO', 'phQpKmhiUC', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(6, 'Fiona Herman', 'lubowitz.kaitlin@example.net', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$bZjE5ezd0wT8k.6MYLK.5.S8SJu4/u.Dj.8UJNS9mNV/HIIxh0ZxS', 'ZiKX90gWY3', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(7, 'Dr. Elza Jast Sr.', 'jessica.carroll@example.org', '2021-09-18 11:29:14', NULL, '2021-09-18 11:29:14', '$2y$10$tjFzrCWAinxbW3xOiyIcTuoytr2Vmv/iarOiHMc5vn3TKU9tENPEm', 't0Mlcrl8ZF', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(8, 'Alda Lynch', 'eliza23@example.net', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$euXZmXilUgCH1A3yRq6WeO7wC1mgiVJ5k5LSesnsD90iL5IVPxL6a', 'muQswuvvWH', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(9, 'Durward Bailey', 'gorczany.alicia@example.net', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$7bLeNDjA42KJ5UU7.al9ROaMy9tOF0PmChEJECZeyUD34NX6sNaqC', 'jaSOR3bvCr', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(10, 'Dr. Cameron Kutch DDS', 'droob@example.org', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$G8b2Hzh1md6EJ9l7gzIuAOIknkgmf03tUN/Zbpi.44e5fftbOP/la', 'vHhTckdodo', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(11, 'Jimmie Mann', 'giovani.christiansen@example.com', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$BFZhCWNwGTIpvKQAAGNcxOEIFWABmeleZrx5X9G1h2wrtK9Dk0rJy', 'goHmG494at', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(12, 'Andy Mayert', 'prudence.bogisich@example.net', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$8.LlGELC.rdGcZH0K7UtgerJoaL4p8iP4WgJOp8wj3x7XYi.Q3cBu', 'pSQxMvCMJW', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(13, 'Ciara Fadel', 'zwalker@example.net', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$X5ZwJMt2Nr19OSZ3ZoW0KurnTIeemLM5nsH9ewr6vUJ3VbMnxmDVm', 'jUPQMmb9IJ', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(14, 'Cali Hayes', 'amya68@example.com', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$cDKQHZMHHmT5MR4x3V.RT.P1DzUKEcXANjEcUgMoAO2Lfh0/ufrb2', 'izRRExAMvd', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(15, 'Thalia Sipes', 'danny47@example.com', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$S4QFcEHSdOvpz.YtWRGavefILnTHQ/9qpToFwQp9rUh.TBEKqPiIq', 'cEX9YkruWq', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(16, 'Kamryn Bahringer Jr.', 'kyler.rippin@example.com', '2021-09-18 11:29:15', NULL, '2021-09-18 11:29:15', '$2y$10$VZdC/MZN4njHthiQXI8qEeaD8EdM1E1vNTydqll04aE8GVxjAr/7W', 'dBecNncH5v', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(17, 'Marcellus Runolfsson', 'larson.hoyt@example.com', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$59YL7VfeGl6mHjxlXbpck.I8gUEH4fmUMUpneckA8KSrj8OejuSFK', 'lKo9aIaTwb', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(18, 'Prof. Evert Aufderhar', 'yluettgen@example.net', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$9XAtIWYFZ3Jsw9ORyAu8VeFXJamP68ucA6tisSU33hpGJT3Z/JFge', 'kWTlqCQdMr', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(19, 'Dr. Marcos King V', 'agreen@example.org', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$9ye5/gbqiPm06RfzV3Y5DOGEW5dBsPB.nwklJ5xGwDR3JE2/kZyKO', 'qCbkBf8qlj', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(20, 'Lourdes Von', 'dubuque.hoyt@example.net', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$K1Na/mmbEtU3n9iFYk.oIOjLmLzExNMDaf3a5egvadFU3pZmnOSdS', 'THaIWyhwDV', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(21, 'Jewell Parisian', 'lheaney@example.com', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$..TZGVI.7wVtjmPkYowPyuYwlGb4S0/H6r889BdXDMX7/y/mby0Xm', 'YBXLFeuTqB', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(22, 'Emerald Reilly Sr.', 'meagan.hyatt@example.org', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$cUrWDBD5XjlEpp..kr2xeekLJtQB3dgnYOQWmmzbJiXR97Dcs3MoO', 'fq7Hk4Bt9d', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(23, 'Jairo Gibson PhD', 'lee.hermann@example.org', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$3LoNOy7W2sBKkQmKEJCn5O2Ctejl3YN25Vk4a/Urqzph4vzAi9kSG', 'ZKSB1ClTE3', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(24, 'Chance Hirthe', 'uzzal@example.com', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$rOuWfUvAv2F8Ett5i1PDD.PSMXmXBdQhBvZGW4RMDCTwwPBr8/yMq', 'pQ6ogcDkiA', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(25, 'Jamie Kub', 'virgil.boyle@example.net', '2021-09-18 11:29:16', NULL, '2021-09-18 11:29:16', '$2y$10$OJA7Cf4zronL3aqXVDQpmuXFT.s6A4YWtRfDazZrEFNdBTxVCN3eu', 'ypuEUvoMAb', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(26, 'Jaylon Kirlin Jr.', 'maxie.jakubowski@example.net', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$DB8YTJCaRVXpkRf0veRoy.CDf5ZSWuQt0TGf.e0oZvvkA67vML/Km', '2i6sI3ehJf', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(27, 'Ms. Gretchen Mante', 'stracke.cynthia@example.com', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$AFCuqQi6HYwGntJKAJWb0OM/heWk7zX.NZRENX99UKvYu8jBkZrfm', 'kea2P8WcQO', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(28, 'Prof. Omer Emmerich Sr.', 'dannie.langosh@example.org', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$9dl6b/2xP4c13AcoWOdXlOiDmMwTQ3oTfuoSFPIJCoL7AxEanOu.m', 'HzmyDPWLVf', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(29, 'Bette Treutel', 'koch.maximus@example.org', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$eS9O0PMbSiHBj.1n0YyC2eba/8lWr/AslDPOe02.a/E.178xXcWsC', 'JHqjGcKhvG', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(30, 'Miss Jana Reilly', 'erdman.camden@example.com', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$Um7J790Zmrwvmi/h6AtZL.vKh3DyUs9Ncg5sv2S/x6NpseSCDxE7C', '3vzd3ToIj5', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(31, 'Lenora Sauer II', 'hackett.stevie@example.com', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$F4.qZbLmY9QtjOkQ3NaKGe3UNWU8Xaw0EETkxF0E7ghPPQaBXyeV2', '0DffUqSPoA', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(32, 'Prof. Eleanore Beer Sr.', 'erwin81@example.net', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$E4EbRi6xpwGUqu9Q5DMeJ.cXRwObjZ7gwtzq7/gZZ7wE4MXyyFHGO', 'AhH1aqjgYK', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(33, 'Dr. Jennyfer Gibson', 'greenfelder.adaline@example.com', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$/lnI73cMbsz.kbpAtSDDrOrASrNC4xwcVOT03FMAuF5i48f4mMUhe', 'YHA4Iv9sOe', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(34, 'Regan Connelly', 'isabella.strosin@example.net', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$yfLu9y71jx61OEMSmRGk0.NRFZFAIseq25R7Zz.rozcIFPV0SwugO', '5Y2ue3AJuS', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(35, 'Rosamond Kemmer', 'kuhlman.justen@example.net', '2021-09-18 11:29:17', NULL, '2021-09-18 11:29:17', '$2y$10$AjUX7XS80IEISsRdttmBou17T4VpWhC7h4SBiw0hJvR4CFVnS8GSe', '3bDOmI4fig', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(36, 'Stevie Champlin I', 'hazle.rowe@example.org', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$wrJK9NAz/NaPP/SiRMtxqe8.Wj/mAK4XGKJL3OptIuP7kyUyL0xsq', 'KIKzgdrA1S', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(37, 'Amina Koch', 'dell.nikolaus@example.org', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$NE4VQ1U9Nz0JlaUAnYmutuWgdodA3uKborPt3I2679e8Lj/eTJP52', '6TqYKGccSP', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(38, 'Mr. Hazel Blick PhD', 'lakin.percival@example.com', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$By5.enYrTgjECkQA8nRBUuRHk60/WXxIuIKd35NVZQWX4FkqJo56G', 'ANQOeJxe9P', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(39, 'Ms. Magdalena Kuhic', 'rodriguez.ivy@example.net', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$f3pFv71nxUA23uJaK0VEme7KdfpZThLn/jbD6oaAXRELvgmfx.x72', 'sIKhbUgULu', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(40, 'Bobby Kuhlman', 'harvey.colten@example.org', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$jFJXHzuAsroSSuXfsZn7Zu6CP3u7B0zt/BoOyb3stJupUIjeu9Jha', '5lfRVDLyrH', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(41, 'Abbey Lang', 'eli.daugherty@example.org', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$XEsSN3nUtc1g0XMSpytIT.9K.dkRnBbQc6gAZvyBP7BTb0toS5ruG', 'TqyroNoIFJ', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(42, 'Adella Rippin', 'austin86@example.net', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$TgKEHOsaUVhffyHqblfM.ez.JgArFnaPa0jdp6lWuFy/.trxCWtEq', 'Cc5h9dGmOg', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(43, 'Layne Hand', 'frances.fisher@example.net', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$f4W4it3wDxMdeYcM9coEauIWzpS615z9VeMC2YBENp6dcq1tNlfFC', 'Tzj87I4b9j', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(44, 'Gerda Bergnaum', 'roob.madison@example.org', '2021-09-18 11:29:18', NULL, '2021-09-18 11:29:18', '$2y$10$p5PcfINwtvEbjzeetDkXauvu1vg41AuXnwbf6GqYLuQfO4Q9GcOay', '7OCV3JhYI7', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(45, 'Dayton Leuschke', 'wmayert@example.net', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$LABUdK.reFrEwtX4z4Z.nu1XnaSNOKvz3B1hElpLtVwBggobgl.Wu', 'vd9Zxx2qeW', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(46, 'Mrs. Elinor Volkman', 'wlittle@example.net', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$dyEbKkYTq1yQqdjHgENljuN0Y9G1byducc1c1UXTkkNk/oJn5bHi.', 'TmStUP9EWs', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(47, 'Nelson Schowalter II', 'dkoepp@example.org', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$LVW6JzmqGYMeK2.FAmtWA.rV2EKM2C6KkhNQjYEIFCVg4uyMhG8uu', 'zZYaJ5w6fO', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(48, 'Columbus Kutch', 'leuschke.trever@example.com', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$sIch2YLMTidC9bJFLUMnQ.20tojW7wmEg56KpnC5rZpdBEZZNeAMC', '0Hc3FUuSwz', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(49, 'Myles Walter II', 'martina.sawayn@example.org', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$cPZ0H5lbEW0VDYcGoSWQVeACLagEz7g4lvHzdRWPtq38rfyniiWYy', '5Xw7dMmrpt', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(50, 'Providenci Champlin', 'krajcik.dewayne@example.net', '2021-09-18 11:29:19', NULL, '2021-09-18 11:29:19', '$2y$10$ba/fOF54wFKNovFmcPN0wOlpVQngsQk/NGnpXnktZtGOUKmelUbqO', 'phm1DFkyiB', '2021-09-18 11:29:19', '2021-09-18 11:29:19'),
(51, 'Juyel Ahmed', 'sohel_ruet@yahoo.com', '2021-09-17 18:00:00', NULL, NULL, '$2y$10$Vl6w6H0Sf4x.qFu4D4.fk.ucYPe6sFuBdzp2BwWsLvkCgsywxVw/W', NULL, '2021-09-18 11:37:36', '2021-09-18 11:37:36'),
(52, 'bazarbondhu', 'superadmin@gmail.com', '2022-07-11 18:00:00', NULL, NULL, '$2y$10$YQIk/Z.MkdgddLQQhAuAVuUBJBxI1jrHN5hIpRKPq7YfJtmVoB3X.', NULL, '2022-07-02 10:22:30', '2022-07-02 10:22:30'),
(53, 'Hacked', 'ask@gmail.com', '2022-07-12 18:00:00', NULL, NULL, '$2y$10$EIEqNwe8VLzZKtNhxZSkPOy3QCF5rZKMi.2qPcdSsZAbs754C6yXa', NULL, '2022-07-02 11:19:59', '2022-07-02 11:19:59'),
(54, 'bazarbondhu', 'admin@spagreen.net', '2022-07-14 18:00:00', NULL, NULL, '$2y$10$N9qdEe47phqXVp8/u55Q5uBuUXkd.1gDYB23ndxOqM3Qg3cnkd0qS', NULL, '2022-07-02 13:00:28', '2022-07-02 13:00:28');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
