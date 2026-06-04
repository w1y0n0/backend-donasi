-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250514.f6d6473767
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2026 at 05:40 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_donasi_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_58a529729abdfedf1f6a0f17c1ebdaf4', 'i:1;', 1780544141),
('laravel_cache_58a529729abdfedf1f6a0f17c1ebdaf4:timer', 'i:1780544141;', 1780544141),
('laravel_cache_admin@gmail.com|127.0.0.1', 'i:1;', 1780544091),
('laravel_cache_admin@gmail.com|127.0.0.1:timer', 'i:1780544091;', 1780544091),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a', 'i:2;', 1780544091),
('laravel_cache_c525a5357e97fef8d3db25841c86da1a:timer', 'i:1780544091;', 1780544091),
('laravel_cache_fortify.2fa_codes.040630aa0f705e71966374cea806bf2d', 'i:59351469;', 1780544141);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `target_donation` bigint NOT NULL,
  `max_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `slug`, `category_id`, `target_donation`, `max_date`, `description`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'BANJIR! 99 RT Terendam Banjir Hingga 1.5 M', 'banjir-99-rt-terendam-banjir-hingga-15-m', 1, 50000000, '2026-06-30', '<p>Tercatat ada <strong>26 titik yang mengalami banjir,</strong> bahkan di wilayah Cipinang Melayu, warga di 6 RT mengungsi sementara akibat rumah terendam banjir.</p>', 'mCJ2pJEzzZ1p7Jce2qfTIgYmbX4NLoCN8ONWBwOY.png', 1, '2026-06-01 18:18:51', '2026-06-01 18:22:53'),
(2, 'Pahala Tak Terputus! Bangun Masjid Terkena Gempa', 'pahala-tak-terputus-bangun-masjid-terkena-gempa', 2, 1000000000, '2026-08-10', '<p>Sebagaimana kehilangan rumah, Sulawesi Barat menyimpan luka mendalam ketika masjid-masjid mereka hancur akibat gempa.</p>', 'cIQjG2k7UKCkJxk2NiHmJ0XSV3c2DVHHZja83GdW.png', 1, '2026-06-01 23:57:02', '2026-06-01 23:57:25'),
(3, 'KRISIS AIR! Sedekah Bangun Sumur di Pelosok Jabar', 'krisis-air-sedekah-bangun-sumur-di-pelosok-jabar', 3, 500000000, '2026-07-11', '<p><span style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; border: 0px solid #e5e7eb; box-sizing: border-box; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-weight: bold; color: #3a3a3a; font-family: Rubik, \'Rubik Fallback\', ui-sans-serif, system-ui, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">Di tengah keindahan alam Jawa Barat, terdapat 15 titik pemukiman yang tengah berjuang melawan dahaga.</span><span style=\"color: #3a3a3a; font-family: Rubik, \'Rubik Fallback\', ui-sans-serif, system-ui, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">&nbsp;</span></p>\r\n<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; border: 0px solid #e5e7eb; box-sizing: border-box; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 1rem 0px; line-height: 1.5; color: #3a3a3a; font-family: Rubik, \'Rubik Fallback\', ui-sans-serif, system-ui, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">Warga di pegunungan dan pesisir kesulitan mengakses air bersih akibat mahalnya biaya pengeboran sumur. Bayangkan, untuk sekadar mandi dan memasak, mereka harus rela mengantri berjam-jam dan merogoh kocek hingga Rp20.000 per jerigen!</p>\r\n<p style=\"--tw-border-spacing-x: 0; --tw-border-spacing-y: 0; --tw-translate-x: 0; --tw-translate-y: 0; --tw-rotate: 0; --tw-skew-x: 0; --tw-skew-y: 0; --tw-scale-x: 1; --tw-scale-y: 1; --tw-scroll-snap-strictness: proximity; --tw-ring-offset-width: 0px; --tw-ring-offset-color: #fff; --tw-ring-color: rgba(59,130,246,.5); --tw-ring-offset-shadow: 0 0 #0000; --tw-ring-shadow: 0 0 #0000; --tw-shadow: 0 0 #0000; --tw-shadow-colored: 0 0 #0000; border: 0px solid #e5e7eb; box-sizing: border-box; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin: 1rem 0px; line-height: 1.5; color: #3a3a3a; font-family: Rubik, \'Rubik Fallback\', ui-sans-serif, system-ui, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; background-color: #ffffff;\">Kondisi ini semakin memprihatinkan karena air adalah sumber kehidupan. Tanpa air bersih, warga kesulitan menjalankan aktivitas sehari-hari, bahkan untuk mengairi lahan pertanian mereka. Padahal, bertani adalah mata pencaharian utama yang menopang hidup keluarga mereka.</p>', 'FbcPv0rmIiTUREQRJCMEyCllZGTRXBEWcYw0NV4G.png', 1, '2026-06-03 20:44:27', '2026-06-03 20:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kemanusiaan', 'kemanusiaan', 'LRy4JlgNs0V2WQvxGwJxRcTN8holdO2sMZrLjiR6.png', '2026-06-01 18:11:19', '2026-06-01 18:12:45'),
(2, 'Rumah Ibadah', 'rumah-ibadah', 'YnMw6SnPabMWStpDqbavmzuuCUDf3bqmJC8xNdw0.png', '2026-06-01 23:03:13', '2026-06-01 23:03:13'),
(3, 'Bencana Alam', 'bencana-alam', 'AvKgJohixaGrbKoPMdY3vGmeV9xTuKVwGtlR8yD9.png', '2026-06-01 23:03:28', '2026-06-01 23:03:28'),
(4, 'Balita', 'balita', 'lh3lQ3eww7rg92eYQLVzTw0AyocGsANxceSgBo0s.png', '2026-06-01 23:32:45', '2026-06-01 23:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int UNSIGNED NOT NULL,
  `donatur_id` int UNSIGNED NOT NULL,
  `amount` bigint NOT NULL,
  `pray` text COLLATE utf8mb4_unicode_ci,
  `snap_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','success','expired','failed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donaturs`
--

CREATE TABLE `donaturs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donaturs`
--

INSERT INTO `donaturs` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kurnia Andi Nugroho', 'kurnia@gmail.com', NULL, '$2y$12$gon9GzvNQqjJqYKq4wO6c.BJ88GrVZFmSl/KJMAKL4lzmZFonJ.Zm', 'ROgCmAnKRm0Vp2KFKesIYYA8zjvnB30zosLpcipZ.png', NULL, '2026-06-01 22:39:57', '2026-06-02 00:42:26'),
(2, 'Faisal Mahadi', 'faisal@gmail.com', NULL, '$2y$12$lJPhlZ3r.PG0JNKeCkAdAOdE38KnCkRkry6.iCMbs.RtgRBTjAEDa', 'kpRbwxhwhiZEPTHL9zSN2LVV8YbKLNBsXtp5VZCL.png', NULL, '2026-06-03 17:59:07', '2026-06-03 20:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_05_31_055635_create_categories_table', 1),
(5, '2026_05_31_055916_create_campaigns_table', 1),
(6, '2026_05_31_060138_create_donaturs_table', 1),
(7, '2026_05_31_071102_create_donations_table', 1),
(8, '2026_05_31_071158_create_sliders_table', 1),
(9, '2026_06_01_023042_add_two_factor_columns_to_users_table', 1),
(10, '2026_06_02_033548_create_oauth_auth_codes_table', 2),
(11, '2026_06_02_033549_create_oauth_access_tokens_table', 2),
(12, '2026_06_02_033550_create_oauth_refresh_tokens_table', 2),
(13, '2026_06_02_033551_create_oauth_clients_table', 2),
(14, '2026_06_02_033552_create_oauth_device_codes_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0055d2e51f728e0855cd30c3d76c7a8c5143702f10b462990f00e267dcda91ac51a39b5c2c0e5c3b', 2, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-03 19:30:37', '2026-06-03 19:30:37', '2027-06-04 02:30:37'),
('1959f17af4e7787e6465a2061ab5ed940ee5c08b8752654735b759fb60118bc3e0e7f0bcedb40499', 2, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-03 20:03:47', '2026-06-03 20:03:47', '2027-06-04 03:03:47'),
('33ab3acb42af8de44363b1d5e9951ba66cb3ffdaf7bace065ed381e1eed9203b055fe17e05db0b39', 2, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-03 18:45:40', '2026-06-03 18:45:40', '2027-06-04 01:45:40'),
('879792d00d9de4d059935e449b6b0b7e0afb4f97203f7c3b082d3e8deaac0f39b5f00ff9a8a94d3b', 1, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-01 22:39:57', '2026-06-01 22:39:57', '2027-06-02 05:39:57'),
('bf10e1fa0a56b3491959a5c2a5b7ccf5b21a4edc1d2c358b6f3cd99d61f84d6e79c4c0186603e2a8', 1, '019e8691-557c-7287-85c0-b0605b9ac677', 'healthCheck', '[]', 0, '2026-06-01 22:38:09', '2026-06-01 22:38:09', '2027-06-02 05:38:09'),
('ca3930b001ab8023ccd6f77ba462a84b3735165825ca6267f7b3a2c1c9aa2307d85a9ba353234ecf', 2, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-03 17:59:07', '2026-06-03 17:59:07', '2027-06-04 00:59:07'),
('e8138e6bba16ded0a1c0686c3416bba0e5c1d326ddd1e3499ccb7a06137c43e9d6cd6ae3a7fb701b', 1, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-01 22:51:49', '2026-06-01 22:51:49', '2027-06-02 05:51:49'),
('f0526cfbff400c7932afe8965ec97cf71d62c97d9d11d43673b84995771dcef480aa52b40b0ebd16', 1, '019e8691-557c-7287-85c0-b0605b9ac677', 'authToken', '[]', 0, '2026-06-02 00:32:59', '2026-06-02 00:32:59', '2027-06-02 07:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_uris` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `grant_types` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `owner_type`, `owner_id`, `name`, `secret`, `provider`, `redirect_uris`, `grant_types`, `revoked`, `created_at`, `updated_at`) VALUES
('019e8666-da67-70e5-b120-9e4ace213ccc', NULL, NULL, 'Laravel', '$2y$12$X6eWEEo3sWfELisDWR.NsenpuEIOhFduJnBe1i1muY9brXBY1hoGO', NULL, '[]', '[\"personal_access\"]', 0, '2026-06-01 20:35:48', '2026-06-01 20:35:48'),
('019e8691-557c-7287-85c0-b0605b9ac677', NULL, NULL, 'Donatur Personal Access Client', '$2y$12$ZhJvfFEGpAwR8DwHHvQfPeJvYKvBqqRMLkvd88cixqyDD.dRHuYrq', 'donaturs', '[]', '[\"personal_access\"]', 0, '2026-06-01 21:22:12', '2026-06-01 21:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_device_codes`
--

CREATE TABLE `oauth_device_codes` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_code` char(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `user_approved_at` datetime DEFAULT NULL,
  `last_polled_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` char(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('60bftQsnJz7wYucBZhvzOEv2RLsPmK0GtBFKIMQX', NULL, '127.0.0.1', 'PostmanRuntime/7.39.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOEpmUFVaNnJHaDNuQzFLUjVLRGxzVGlLUHpPR0hoNWkwYkZRclFMdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1780384487),
('k2EVqylHa6uJz0t2NFhjrGrYQsysTLAcVBdKLIyg', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSUhSQ1lReUhPSGV1NnpuUUFtSGM4dkszNjVPZTJTd2huMVRSUmxmUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9jYW1wYWlnbiI7czo1OiJyb3V0ZSI7czoyMDoiYWRtaW4uY2FtcGFpZ24uaW5kZXgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU6ImxvZ2luIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1780545166),
('V8YAmEVCJ5MRHEQVadDlxWK6s3liq6DlwvVWRMW4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQkh4ZXNyRGlWb1hyTVNhT3UxRnhMS1JiMXB5Zkd1amdwVFhudW4zUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9kb25hdGlvbiI7czo1OiJyb3V0ZSI7czoyMDoiYWRtaW4uZG9uYXRpb24uaW5kZXgiO31zOjU6ImxvZ2luIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1780388916);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'WIELIsN43e6N7voj3UCuuw3bX8dSEtBdJKKOIBXw.png', '#', '2026-06-01 19:57:54', '2026-06-01 19:57:54'),
(2, 'GxMiyV0XZDEEuo89KeFwOTNIziUbCdnKj7zATbOV.png', '#', '2026-06-01 19:58:45', '2026-06-01 19:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Arya Widi Pratama', 'admin@gmail.com', NULL, '$2y$12$ggPE.PzdrYtvCHFuWx0Zi.HTcWEtCaTqX8qeGVodp0N8Q6ERN/OzS', 'eyJpdiI6IkxxWFB4Zm05V1ZMSVduWndyMFM3TXc9PSIsInZhbHVlIjoieVUvWkNUaVBUSC80UXZZck50azZFOGl6MCtJTFA2a0F6bnR2S2tOYitJVT0iLCJtYWMiOiI3ODk0NzkwYmNkOTExYmI2OGFkZGVmM2E2OTJkOGIxYzc3M2RlOWIxNjk0ZjNkYmRhZTA0MjA5Mzc4ZDI1MjA4IiwidGFnIjoiIn0=', 'eyJpdiI6Im0rRDc2eHBTVWVHZjBSYzRoejVhbkE9PSIsInZhbHVlIjoiZW5zaE9VL0kvck1iYkR2MlBkOUtaZy9HdkJpbkZZbHg4c0RFclJoVVJDMGhOb21JWUlnUHBnand0NjE5V2NnaUExVTdsVUN6RVdzV2JWQXk0bUtBUXhoVVBjVDNLbGttN1dEU0p0WFIzcEpIb3dJM3luRS9JS0ZyTmlPNTlzQXp0WW5Nb2w5Qk55S0hrN25rc3Z6OURhNlhJWlBnWnMyaEorczFQWmZjcDBSdzcyNFRFY1R5dHNZcWdPQnh5M0VyOEtlRGxTUE5JNE1zN01xUllRREd0VUpxK1hZTktwaUVUOUwwcUhIbkNtYTRsWlNOVzFhVnZ2TmZrTDVqYTVDQ2hXWkZPN0JUN2o5T3hQQnBERGpFTVE9PSIsIm1hYyI6ImJjM2I0MTBjODkyYzczNWUyMzUzMTVjOWU1NWRmZmE2ZTcwZDZiNDIwZjFhY2E3ZGEzNDU3NGEwOTAzZjIxOTEiLCJ0YWciOiIifQ==', NULL, NULL, NULL, NULL, '2026-06-01 19:45:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donaturs`
--
ALTER TABLE `donaturs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `donaturs_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_owner_type_owner_id_index` (`owner_type`,`owner_id`);

--
-- Indexes for table `oauth_device_codes`
--
ALTER TABLE `oauth_device_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `oauth_device_codes_user_code_unique` (`user_code`),
  ADD KEY `oauth_device_codes_user_id_index` (`user_id`),
  ADD KEY `oauth_device_codes_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donaturs`
--
ALTER TABLE `donaturs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
