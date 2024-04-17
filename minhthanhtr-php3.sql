-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2024 at 03:54 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minhthanhtr-php3`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_15_142911_create_students_table', 1);

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
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `code`, `name`, `email`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(1, '5Quia.', 'Et blanditiis et praesentium ipsa voluptatum.', 'furman28@hermann.com', '+1-352-843-9252', 'https://via.placeholder.com/640x480.png/00ff11?text=repellat', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(2, '6Illo.', 'Nihil rerum dolorem alias.', 'maia25@gmail.com', '760.803.1519', 'https://via.placeholder.com/640x480.png/00ff00?text=nulla', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(3, '0Nobis.', 'Ut qui incidunt aut quia animi.', 'rnader@sauer.biz', '(561) 422-6432', 'https://via.placeholder.com/640x480.png/00aa88?text=impedit', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(4, '3Itaque.', 'Aut dolorem sit delectus est sint.', 'kilback.raegan@hoppe.com', '641-704-8122', 'https://via.placeholder.com/640x480.png/00ccdd?text=repudiandae', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(5, '8Ad.', 'Vel minus distinctio aut ut placeat perspiciatis.', 'jacynthe.collier@gmail.com', '1-269-405-2597', 'https://via.placeholder.com/640x480.png/002244?text=explicabo', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(6, '0Itaque.', 'Voluptatem aperiam laboriosam aut.', 'emann@schulist.com', '(458) 642-5143', 'https://via.placeholder.com/640x480.png/00aacc?text=illo', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(7, '0Vitae id.', 'Maiores autem eius qui incidunt.', 'kshlerin.sandy@koch.com', '575-218-7125', 'https://via.placeholder.com/640x480.png/009955?text=nemo', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(8, '2Quam qui.', 'Id et harum dicta rerum.', 'maddison52@dickens.com', '+15597218629', 'https://via.placeholder.com/640x480.png/00ffbb?text=deserunt', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(9, '3Sit rem.', 'Inventore et rem at quo sit reiciendis.', 'nfay@yahoo.com', '+18479226217', 'https://via.placeholder.com/640x480.png/008888?text=est', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(10, '6Dolores.', 'Ut consequuntur est et illum itaque dolores.', 'reichel.jairo@prosacco.com', '+14305667010', 'https://via.placeholder.com/640x480.png/003355?text=cum', '2024-04-15 07:44:03', '2024-04-15 07:44:03'),
(11, 'sffds', 'Trần Minh Thành', 'thanh@fpt.edu.vn', '0904143512', NULL, '2024-04-15 08:48:27', '2024-04-15 08:48:27'),
(16, 'sdfe22222', 'Trần Minh Thành22222', 'thanhtmph44057pt.edu.vn22', '0904143512', 'students/EsbGkf2OqrM4ZHoXqUMe3Oq5tRfWzuXnG7mQWygX.jpg', '2024-04-15 08:50:28', '2024-04-15 08:50:28'),
(17, 'wrw', 'erre', 'minhthanh1909tb@gmail.comeerr', '23532', 'students/OHMNPSaJO09hCoGb72eivqLSz8fINpVQBV1RhbDf.jpg', '2024-04-15 08:53:17', '2024-04-15 08:53:17'),
(19, '22333', '4444', 'thanh@fpt.edu.vn4', '3434', 'students/3Fe6cL1RduIE0BPYGHI3gHprFxWbfMH8dbXhb1YE.jpg', '2024-04-15 09:06:59', '2024-04-15 09:06:59'),
(20, 'erew', 'rể', 'thanh@fpt.edu.vn27', '442', 'posts/82pAUiQdASMLkryHmqNCnI7KqWfFSXI7414Qcg7i.jpg', '2024-04-15 09:07:25', '2024-04-15 09:07:25'),
(21, 'sffds2', '23', '223@fsd.vb', '3232', 'students/TUy8i6H4zp6TPJkQrUwzSMMMZie5Xlaf3Xmv7NYw.jpg', '2024-04-15 09:08:50', '2024-04-15 09:08:50'),
(22, 'sffds122', '1122', '22', 'ewwewe233', 'students/OVKgAAJAnBKP5CMYFFP3KZGzuXLBrcJ2xBusBmEG.jpg', '2024-04-15 09:10:24', '2024-04-15 09:36:37'),
(25, 'ahii23', 'ahii', 'minht@sjksd.com', 'ahii', 'students/CnhG4r57VKuH98YgfWgWXO32Bm1Lrl3yGxv1s2cJ.jpg', '2024-04-15 10:25:22', '2024-04-15 10:26:40'),
(26, '1132', 'Trần Minh Thành', 'minhthanhtr.wk@gmail.com', '0904143512', 'students/UR89FwVYnkCquNLzwjzFi4lKvFuOHjiD9Z9iP7ty.jpg', '2024-04-16 20:28:13', '2024-04-16 20:29:06'),
(27, '8Non qui.', 'Ex voluptatibus et omnis rem.', 'homenick.gayle@hotmail.com', '+1-878-307-6287', 'https://via.placeholder.com/640x480.png/00bbcc?text=deserunt', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(28, '8Ea et.', 'Deserunt autem est unde quaerat non.', 'devante15@hotmail.com', '+1.445.842.5062', 'https://via.placeholder.com/640x480.png/006688?text=nam', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(29, '5Non et.', 'Illum quis illo vero illum accusamus ipsa.', 'hirthe.xander@donnelly.net', '+19716563922', 'https://via.placeholder.com/640x480.png/00aabb?text=qui', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(30, '3Quis.', 'Ut voluptas nostrum ipsum officia.', 'edgar89@hotmail.com', '+1-313-883-9058', 'https://via.placeholder.com/640x480.png/0000ff?text=dolores', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(31, '3Modi quo.', 'Eaque quia et dolore corporis nulla natus.', 'sibyl26@cruickshank.com', '+1 (458) 565-8884', 'https://via.placeholder.com/640x480.png/005500?text=rerum', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(32, '9Delectus.', 'Nam et hic dolore cupiditate aliquam.', 'kole00@wuckert.com', '+1 (808) 964-1511', 'https://via.placeholder.com/640x480.png/006688?text=debitis', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(33, '0Tenetur.', 'Dignissimos et maiores nesciunt et ipsa nemo.', 'dessie.casper@goldner.net', '+1-707-515-3791', 'https://via.placeholder.com/640x480.png/0044dd?text=nihil', '2024-04-16 20:29:52', '2024-04-16 20:29:52'),
(37, '1510', 'Trần Minh Thành', 'minhthanh1909tb@gmail.com', '0904 143 512', 'students/qBirOFpGu0SZQqrmoxCqoe4ovBz7EXUEqOSD8yOM.jpg', '2024-04-16 20:44:13', '2024-04-16 20:44:13'),
(38, '1199', 'Nguyễn Ngọc Nam Phong', 'phongnnn@fsk.sjs', '093843833', 'students/dIK4ouU6uRj8V481UL0R7vRttw5umzMaKTMwwibx.jpg', '2024-04-16 20:50:12', '2024-04-16 20:50:12'),
(39, '23233', 'Lê Đình Tuấn', 'tuandl@dd.22', '8483343', 'students/zU7gfnik37PrT2WxQsG9yZJVHcP202WuFYhwJfAK.jpg', '2024-04-16 20:50:40', '2024-04-16 20:50:54'),
(40, '199', 'Minh Thành Trần', 'minhthanhtr.wk@gmail.com11', '094334', 'students/f7UZfLEbp2Bg9dYLWQKJiEyLKQC6RBHV5pegOAGa.jpg', '2024-04-16 20:51:35', '2024-04-16 20:51:35');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_code_unique` (`code`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
