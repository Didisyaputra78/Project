-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Waktu pembuatan: 14 Bulan Mei 2023 pada 17.03
-- Versi server: 8.0.32
-- Versi PHP: 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larasosmed`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `feed`
--

CREATE TABLE `feed` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_show` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feed`
--

INSERT INTO `feed` (`id`, `id_user`, `caption`, `is_show`, `created_at`, `updated_at`) VALUES
('44340640-4239-4fdc-b9c1-01d1a84c6de3', '14b76eea-f25f-11ed-8cad-0242ac120002', 'Feed Dummy', 1, '2023-05-14 16:08:44', '2023-05-14 16:08:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_attachment`
--

CREATE TABLE `feed_attachment` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feed_attachment`
--

INSERT INTO `feed_attachment` (`id`, `id_feed`, `attachment`, `created_at`, `updated_at`) VALUES
('31b76c16-8df5-4910-adb1-f0272b88d5d7', '44340640-4239-4fdc-b9c1-01d1a84c6de3', 'feed_lkix5pqh.png', '2023-05-14 16:08:44', '2023-05-14 16:08:44'),
('feeadb0b-790e-48bf-aef4-d2a2e3a0560f', '44340640-4239-4fdc-b9c1-01d1a84c6de3', 'feed_35kp28ip.png', '2023-05-14 16:08:44', '2023-05-14 16:08:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_comment`
--

CREATE TABLE `feed_comment` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feed_comment`
--

INSERT INTO `feed_comment` (`id`, `id_feed`, `id_user`, `id_parent`, `comment`, `created_at`, `updated_at`) VALUES
('77c5d29e-1495-42c6-97d1-68ea7b9ef435', '44340640-4239-4fdc-b9c1-01d1a84c6de3', '3b932b7d-f25f-11ed-8cad-0242ac120002', NULL, 'Dummy comment', '2023-05-14 16:15:50', '2023-05-14 16:15:50'),
('89a16960-59c4-4019-90c5-7ce41156a0f6', '44340640-4239-4fdc-b9c1-01d1a84c6de3', '3b932b7d-f25f-11ed-8cad-0242ac120002', '77c5d29e-1495-42c6-97d1-68ea7b9ef435', 'Dummy comment child', '2023-05-14 16:17:00', '2023-05-14 16:17:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_like`
--

CREATE TABLE `feed_like` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feed_like`
--

INSERT INTO `feed_like` (`id`, `id_feed`, `id_user`, `created_at`, `updated_at`) VALUES
('8ff6be25-6085-4b0c-b5bb-5deb56d2cac3', '44340640-4239-4fdc-b9c1-01d1a84c6de3', '3b932b7d-f25f-11ed-8cad-0242ac120002', '2023-05-14 16:09:11', '2023-05-14 16:09:11'),
('f09306cc-cc9a-437c-a559-cdb5be3bd912', 'd209689f-b7ed-4382-9b04-b4dcbb3ba706', '3b932b7d-f25f-11ed-8cad-0242ac120002', '2023-05-14 16:06:01', '2023-05-14 16:06:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feed_share`
--

CREATE TABLE `feed_share` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_feed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `feed_share`
--

INSERT INTO `feed_share` (`id`, `id_feed`, `id_user`, `created_at`, `updated_at`) VALUES
('dc2caf15-7941-4a94-8103-18081465f32a', '44340640-4239-4fdc-b9c1-01d1a84c6de3', '3b932b7d-f25f-11ed-8cad-0242ac120002', '2023-05-14 16:24:31', '2023-05-14 16:24:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `following`
--

CREATE TABLE `following` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `id_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `following` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `following`
--

INSERT INTO `following` (`id`, `id_user`, `following`, `created_at`, `updated_at`) VALUES
('0b79955f-7b51-432f-8b54-c62d6e750897', '14b76eea-f25f-11ed-8cad-0242ac120002', '3b932b7d-f25f-11ed-8cad-0242ac120002', '2023-05-14 16:52:55', '2023-05-14 16:52:55'),
('d1fa65b6-d1cb-413a-840a-b4e8c8bfbe70', '3b932b7d-f25f-11ed-8cad-0242ac120002', '14b76eea-f25f-11ed-8cad-0242ac120002', '2023-05-14 16:53:42', '2023-05-14 16:53:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2014_10_12_000000_create_users_table', 1),
(17, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(18, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(19, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(20, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(21, '2016_06_01_000004_create_oauth_clients_table', 1),
(22, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(28, '2023_05_14_085517_create_feed_like_table', 1),
(30, '2023_05_14_085554_create_feed_share_table', 1),
(31, '2023_05_14_084652_create_followers_table', 2),
(32, '2023_05_14_084701_create_following_table', 3),
(35, '2023_05_14_152719_create_feed_attachment_table', 5),
(37, '2023_05_14_085125_create_feed_table', 6),
(38, '2023_05_14_085533_create_feed_comment_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5d37d9cfcfa79d6f93374e37832938ccd4b85a9f68f4142b80204d21a2fe109ecbde622360c4aa53', '14b76eea-f25f-11ed-8cad-0242ac120002', '87139537-d5a3-44b0-9da8-90f146e5b138', 'Personal Access Token', '[]', 1, '2023-05-14 13:57:22', '2023-05-14 14:05:40', '2023-11-14 13:57:22'),
('9172a526f9b89c6869c9d2d5f7559fea72ed3f5efd6c2e29a50c7c2181a0d78070c88c84d2920cbf', '14b76eea-f25f-11ed-8cad-0242ac120002', '87139537-d5a3-44b0-9da8-90f146e5b138', 'Personal Access Token', '[]', 0, '2023-05-14 14:05:59', '2023-05-14 14:05:59', '2023-11-14 14:05:59'),
('b952fa9e1b5ccd7c6e8c2f8a16444a495097067579943fa27887141e0c8386c64cfa3425cae7689e', '246d834f-f258-11ed-8cad-0242ac120002', '87139537-d5a3-44b0-9da8-90f146e5b138', 'Personal Access Token', '[]', 0, '2023-05-14 13:06:37', '2023-05-14 13:06:37', '2023-11-14 13:06:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('4f1cf7fd-21e3-4731-bb4d-b37290725fb0', NULL, 'Laravel Password Grant Client', 'zcxwzIvDnxOfPi9HMcx0t9vztuAikBNAKT5haOYb', 'users', 'http://localhost', 0, 1, 0, '2023-05-14 13:05:10', '2023-05-14 13:05:10'),
('87139537-d5a3-44b0-9da8-90f146e5b138', NULL, 'Laravel Personal Access Client', 'ZStBvT4LqnUKbcCg03ITShIAl0cLEM8k7Zg9U0pT', NULL, 'http://localhost', 1, 0, 0, '2023-05-14 13:05:10', '2023-05-14 13:05:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '87139537-d5a3-44b0-9da8-90f146e5b138', '2023-05-14 13:05:10', '2023-05-14 13:05:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT (uuid()),
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `date_of_birth`, `phone_number`, `email`, `email_verified_at`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('14b76eea-f25f-11ed-8cad-0242ac120002', 'John', 'Doe', '1995-01-01', '089626426145', 'triarrohman@gmail.com', NULL, 'johndoe', '$2y$10$3l7XZZ185zMZ0Q4md/8b7eR8s0SkkflHh/FKTuolFVqtXbNymwPYm', NULL, '2023-05-14 13:56:10', '2023-05-14 14:05:34'),
('3b932b7d-f25f-11ed-8cad-0242ac120002', 'Jane', 'Doe', '1995-01-01', '089626426144', 'triarrohman1@gmail.com', NULL, 'janedoe', '$2y$10$0sJkMoCTwmiEU6rvbUnnoeEhgycIwRCTnim8vZ3ajBnRez92KHMPq', NULL, '2023-05-14 13:57:15', '2023-05-14 13:57:15');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_id_user_index` (`id_user`);

--
-- Indeks untuk tabel `feed_attachment`
--
ALTER TABLE `feed_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_attachment_id_feed_index` (`id_feed`),
  ADD KEY `feed_attachment_attachment_index` (`attachment`);

--
-- Indeks untuk tabel `feed_comment`
--
ALTER TABLE `feed_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_comment_id_feed_index` (`id_feed`),
  ADD KEY `feed_comment_id_user_index` (`id_user`);

--
-- Indeks untuk tabel `feed_like`
--
ALTER TABLE `feed_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_like_id_feed_index` (`id_feed`),
  ADD KEY `feed_like_id_user_index` (`id_user`);

--
-- Indeks untuk tabel `feed_share`
--
ALTER TABLE `feed_share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feed_share_id_feed_index` (`id_feed`),
  ADD KEY `feed_share_id_user_index` (`id_user`);

--
-- Indeks untuk tabel `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`),
  ADD KEY `following_id_user_index` (`id_user`),
  ADD KEY `following_following_index` (`following`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
