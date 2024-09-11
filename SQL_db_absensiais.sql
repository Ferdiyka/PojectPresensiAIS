-- Adminer 4.8.1-dev MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `attendance_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `attendance` (`attendance_id`, `gate`, `code`, `name`, `group`, `date`, `time`, `state`, `photo`, `created_at`, `updated_at`) VALUES
(1,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:07:30',	'IN',	'20241234.jpg',	'2024-09-10 18:07:30',	'2024-09-10 18:07:30'),
(2,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:07:51',	'IN',	'20241234.jpg',	'2024-09-10 18:07:51',	'2024-09-10 18:07:51'),
(3,	'Pos 2',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:08:48',	'IN',	'20241234.jpg',	'2024-09-10 18:08:48',	'2024-09-10 18:08:48'),
(4,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:21:26',	'OUT',	'20241234.jpg',	'2024-09-10 18:21:26',	'2024-09-10 18:21:26'),
(5,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:21:40',	'IN',	'20241234.jpg',	'2024-09-10 18:21:40',	'2024-09-10 18:21:40'),
(6,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:21:54',	'OUT',	'20241234.jpg',	'2024-09-10 18:21:54',	'2024-09-10 18:21:54'),
(7,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:24:05',	'IN',	'20241234.jpg',	'2024-09-10 18:24:05',	'2024-09-10 18:24:05'),
(8,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:24:13',	'OUT',	'20241234.jpg',	'2024-09-10 18:24:13',	'2024-09-10 18:24:13'),
(9,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:24:22',	'IN',	'20241234.jpg',	'2024-09-10 18:24:22',	'2024-09-10 18:24:22'),
(10,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:24:30',	'OUT',	'20241234.jpg',	'2024-09-10 18:24:30',	'2024-09-10 18:24:30'),
(11,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:24:40',	'IN',	'20241234.jpg',	'2024-09-10 18:24:40',	'2024-09-10 18:24:40'),
(12,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:25:50',	'OUT',	'20241234.jpg',	'2024-09-10 18:25:50',	'2024-09-10 18:25:50'),
(13,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:26:08',	'IN',	'20241234.jpg',	'2024-09-10 18:26:08',	'2024-09-10 18:26:08'),
(14,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:30:39',	'OUT',	'20241234.jpg',	'2024-09-10 18:30:39',	'2024-09-10 18:30:39'),
(15,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:31:36',	'IN',	'20241234.jpg',	'2024-09-10 18:31:36',	'2024-09-10 18:31:36'),
(16,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:36:34',	'OUT',	'20241234.jpg',	'2024-09-10 18:36:34',	'2024-09-10 18:36:34'),
(17,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:45:40',	'IN',	'20241234.jpg',	'2024-09-10 18:45:40',	'2024-09-10 18:45:40'),
(18,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:45:51',	'OUT',	'20241234.jpg',	'2024-09-10 18:45:51',	'2024-09-10 18:45:51'),
(19,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:46:06',	'IN',	'20241234.jpg',	'2024-09-10 18:46:06',	'2024-09-10 18:46:06'),
(20,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:46:45',	'OUT',	'20241234.jpg',	'2024-09-10 18:46:45',	'2024-09-10 18:46:45'),
(21,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:46:57',	'IN',	'20241234.jpg',	'2024-09-10 18:46:57',	'2024-09-10 18:46:57'),
(22,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:47:08',	'OUT',	'20241234.jpg',	'2024-09-10 18:47:08',	'2024-09-10 18:47:08'),
(23,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:48:45',	'IN',	'20241234.jpg',	'2024-09-10 18:48:45',	'2024-09-10 18:48:45'),
(24,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:49:35',	'OUT',	'20241234.jpg',	'2024-09-10 18:49:35',	'2024-09-10 18:49:35'),
(25,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:50:41',	'IN',	'20241234.jpg',	'2024-09-10 18:50:41',	'2024-09-10 18:50:41'),
(26,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:51:57',	'OUT',	'20241234.jpg',	'2024-09-10 18:51:57',	'2024-09-10 18:51:57'),
(27,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:55:22',	'IN',	'20241234.jpg',	'2024-09-10 18:55:22',	'2024-09-10 18:55:22'),
(28,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:57:09',	'OUT',	'20241234.jpg',	'2024-09-10 18:57:10',	'2024-09-10 18:57:10'),
(29,	'Pos 2',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:58:48',	'IN',	'20241234.jpg',	'2024-09-10 18:58:48',	'2024-09-10 18:58:48'),
(30,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:59:00',	'OUT',	'20241234.jpg',	'2024-09-10 18:59:00',	'2024-09-10 18:59:00'),
(31,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'01:59:34',	'IN',	'20241234.jpg',	'2024-09-10 18:59:34',	'2024-09-10 18:59:34'),
(32,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:00:03',	'OUT',	'20241234.jpg',	'2024-09-10 19:00:03',	'2024-09-10 19:00:03'),
(33,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:01:10',	'IN',	'20241234.jpg',	'2024-09-10 19:01:10',	'2024-09-10 19:01:10'),
(34,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:02:41',	'OUT',	'20241234.jpg',	'2024-09-10 19:02:41',	'2024-09-10 19:02:41'),
(35,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:04:28',	'IN',	'20241234.jpg',	'2024-09-10 19:04:28',	'2024-09-10 19:04:28'),
(36,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:05:50',	'OUT',	'20241234.jpg',	'2024-09-10 19:05:50',	'2024-09-10 19:05:50'),
(37,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:07:42',	'IN',	'20241234.jpg',	'2024-09-10 19:07:42',	'2024-09-10 19:07:42'),
(38,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:07:59',	'OUT',	'20241234.jpg',	'2024-09-10 19:07:59',	'2024-09-10 19:07:59'),
(39,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:08:15',	'IN',	'20241234.jpg',	'2024-09-10 19:08:15',	'2024-09-10 19:08:15'),
(40,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:08:31',	'OUT',	'20241234.jpg',	'2024-09-10 19:08:31',	'2024-09-10 19:08:31'),
(41,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:08:53',	'IN',	'20241234.jpg',	'2024-09-10 19:08:53',	'2024-09-10 19:08:53'),
(42,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:09:21',	'OUT',	'20241234.jpg',	'2024-09-10 19:09:21',	'2024-09-10 19:09:21'),
(43,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:09:52',	'IN',	'20241234.jpg',	'2024-09-10 19:09:52',	'2024-09-10 19:09:52'),
(44,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:10:27',	'OUT',	'20241234.jpg',	'2024-09-10 19:10:27',	'2024-09-10 19:10:27'),
(45,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:11:39',	'IN',	'20241234.jpg',	'2024-09-10 19:11:39',	'2024-09-10 19:11:39'),
(46,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:13:19',	'OUT',	'20241234.jpg',	'2024-09-10 19:13:19',	'2024-09-10 19:13:19'),
(47,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:13:34',	'IN',	'20241234.jpg',	'2024-09-10 19:13:34',	'2024-09-10 19:13:34'),
(48,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:13:59',	'OUT',	'20241234.jpg',	'2024-09-10 19:13:59',	'2024-09-10 19:13:59'),
(49,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:14:10',	'IN',	'20241234.jpg',	'2024-09-10 19:14:10',	'2024-09-10 19:14:10'),
(50,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:14:21',	'OUT',	'20241234.jpg',	'2024-09-10 19:14:21',	'2024-09-10 19:14:21'),
(51,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:15:30',	'IN',	'20241234.jpg',	'2024-09-10 19:15:30',	'2024-09-10 19:15:30'),
(52,	'Pos 3',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:19:21',	'OUT',	'20241234.jpg',	'2024-09-10 19:19:21',	'2024-09-10 19:19:21'),
(53,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:22:19',	'IN',	'20241235.jpg',	'2024-09-10 19:22:19',	'2024-09-10 19:22:19'),
(54,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:23:00',	'OUT',	'20241235.jpg',	'2024-09-10 19:23:00',	'2024-09-10 19:23:00'),
(55,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:23:04',	'IN',	'20241234.jpg',	'2024-09-10 19:23:04',	'2024-09-10 19:23:04'),
(56,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:23:15',	'IN',	'20241235.jpg',	'2024-09-10 19:23:15',	'2024-09-10 19:23:15'),
(57,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:23:26',	'OUT',	'20241235.jpg',	'2024-09-10 19:23:26',	'2024-09-10 19:23:26'),
(58,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:23:28',	'OUT',	'20241234.jpg',	'2024-09-10 19:23:28',	'2024-09-10 19:23:28'),
(59,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:23:39',	'IN',	'20241235.jpg',	'2024-09-10 19:23:39',	'2024-09-10 19:23:39'),
(60,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:23:41',	'IN',	'20241234.jpg',	'2024-09-10 19:23:41',	'2024-09-10 19:23:41'),
(61,	'Pos 1',	'20241236',	'Lala',	'Year 5L',	'2024-09-11',	'02:26:28',	'IN',	'20241236.png',	'2024-09-10 19:26:28',	'2024-09-10 19:26:28'),
(62,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:26:45',	'OUT',	'20241235.jpg',	'2024-09-10 19:26:45',	'2024-09-10 19:26:45'),
(63,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:26:47',	'OUT',	'20241234.jpg',	'2024-09-10 19:26:47',	'2024-09-10 19:26:47'),
(64,	'Pos 1',	'20241236',	'Lala',	'Year 5L',	'2024-09-11',	'02:26:52',	'OUT',	'20241236.png',	'2024-09-10 19:26:52',	'2024-09-10 19:26:52'),
(65,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:28:02',	'IN',	'20241234.jpg',	'2024-09-10 19:28:02',	'2024-09-10 19:28:02'),
(66,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:28:04',	'IN',	'20241235.jpg',	'2024-09-10 19:28:04',	'2024-09-10 19:28:04'),
(67,	'Pos 1',	'20241236',	'Lala',	'Year 5L',	'2024-09-11',	'02:28:06',	'IN',	'20241236.png',	'2024-09-10 19:28:06',	'2024-09-10 19:28:06'),
(68,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:28:19',	'OUT',	'20241234.jpg',	'2024-09-10 19:28:19',	'2024-09-10 19:28:19'),
(69,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:28:22',	'OUT',	'20241235.jpg',	'2024-09-10 19:28:22',	'2024-09-10 19:28:22'),
(70,	'Pos 1',	'20241236',	'Lala',	'Year 5L',	'2024-09-11',	'02:28:24',	'OUT',	'20241236.png',	'2024-09-10 19:28:24',	'2024-09-10 19:28:24'),
(71,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:28:35',	'IN',	'20241234.jpg',	'2024-09-10 19:28:35',	'2024-09-10 19:28:35'),
(72,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:28:39',	'IN',	'20241235.jpg',	'2024-09-10 19:28:39',	'2024-09-10 19:28:39'),
(73,	'Pos 1',	'20241236',	'Lala',	'Year 5L',	'2024-09-11',	'02:28:41',	'IN',	'20241236.png',	'2024-09-10 19:28:41',	'2024-09-10 19:28:41'),
(74,	'Pos 1',	'20241235',	'Budi',	'Year 4L',	'2024-09-11',	'02:28:55',	'OUT',	'20241235.jpg',	'2024-09-10 19:28:55',	'2024-09-10 19:28:55'),
(75,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:28:57',	'OUT',	'20241234.jpg',	'2024-09-10 19:28:57',	'2024-09-10 19:28:57'),
(76,	'Pos 1',	'par1father',	'Park Ji Sung',	'Director',	'2024-09-11',	'02:31:58',	'IN',	'par1father.png',	'2024-09-10 19:31:58',	'2024-09-10 19:31:58'),
(77,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'02:32:10',	'IN',	'20241234.jpg',	'2024-09-10 19:32:10',	'2024-09-10 19:32:10'),
(78,	'Pos 1',	'hr1',	'Nana',	'HR',	'2024-09-11',	'02:36:46',	'IN',	'hr1.jpg',	'2024-09-10 19:36:46',	'2024-09-10 19:36:46'),
(79,	'Pos 1',	'par2father',	'Asep',	'PNS',	'2024-09-11',	'02:36:53',	'IN',	'par2father.png',	'2024-09-10 19:36:53',	'2024-09-10 19:36:53'),
(80,	'Pos 1',	'par1mother',	'Cindy',	'House Wife',	'2024-09-11',	'02:39:17',	'IN',	'par1mother.jpg',	'2024-09-10 19:39:17',	'2024-09-10 19:39:17'),
(81,	'Pos 1',	'it123',	'Tono',	'IT',	'2024-09-11',	'02:41:08',	'IN',	'it123.jpg',	'2024-09-10 19:41:08',	'2024-09-10 19:41:08'),
(82,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'03:03:43',	'OUT',	'20241234.jpg',	'2024-09-10 20:03:43',	'2024-09-10 20:03:43'),
(83,	'Pos 1',	'20241234',	'Park Ji Min',	'Year 5L',	'2024-09-11',	'03:03:55',	'IN',	'20241234.jpg',	'2024-09-10 20:03:55',	'2024-09-10 20:03:55');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_reset_tokens_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(4,	'2019_12_14_000001_create_personal_access_tokens_table',	1),
(5,	'2024_09_10_170926_create_parents_table',	1),
(6,	'2024_09_10_170936_create_students_table',	1),
(7,	'2024_09_10_170941_create_staff_table',	1),
(8,	'2024_09_10_170947_create_student_parent_table',	1),
(10,	'2024_09_10_170952_create_attendance_table',	2);

DROP TABLE IF EXISTS `parents`;
CREATE TABLE `parents` (
  `parentcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`parentcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `parents` (`parentcode`, `name`, `position`, `photo`, `created_at`, `updated_at`) VALUES
('par1father',	'Park Ji Sung',	'Director',	'par1father.png',	NULL,	NULL),
('par1mother',	'Cindy',	'House Wife',	'par1mother.jpg',	NULL,	NULL),
('par2father',	'Asep',	'PNS',	'par2father.png',	NULL,	NULL);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff` (
  `staffcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`staffcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `staff` (`staffcode`, `name`, `position`, `photo`, `created_at`, `updated_at`) VALUES
('hr1',	'Nana',	'HR',	'hr1.jpg',	NULL,	NULL),
('it123',	'Tono',	'IT',	'it123.jpg',	NULL,	NULL);

DROP TABLE IF EXISTS `student_parent`;
CREATE TABLE `student_parent` (
  `SID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `student_parent_sid_foreign` (`SID`),
  KEY `student_parent_parentcode_foreign` (`parentcode`),
  CONSTRAINT `student_parent_parentcode_foreign` FOREIGN KEY (`parentcode`) REFERENCES `parents` (`parentcode`) ON DELETE CASCADE,
  CONSTRAINT `student_parent_sid_foreign` FOREIGN KEY (`SID`) REFERENCES `students` (`SID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `student_parent` (`SID`, `parentcode`, `created_at`, `updated_at`) VALUES
('20241234',	'par1father',	NULL,	NULL),
('20241234',	'par1mother',	NULL,	NULL);

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `SID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `students` (`SID`, `name`, `class`, `photo`, `created_at`, `updated_at`) VALUES
('20241234',	'Park Ji Min',	'Year 5L',	'20241234.jpg',	NULL,	NULL),
('20241235',	'Budi',	'Year 4L',	'20241235.jpg',	NULL,	NULL),
('20241236',	'Lala',	'Year 5L',	'20241236.png',	NULL,	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2024-09-11 03:27:40
