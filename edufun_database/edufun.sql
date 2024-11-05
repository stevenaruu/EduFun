-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 10:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Interactive Multimedia', '2024-11-02 07:41:34', '2024-11-02 07:41:34'),
(2, 'Sofware Engineering', '2024-11-02 07:41:34', '2024-11-02 07:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `date` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_detail`
--

INSERT INTO `category_detail` (`id`, `category_id`, `title`, `image`, `description`, `writer_id`, `date`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 'Est debitis rerum suscipit.', 'https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149131656.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Est ut quisquam autem at sit similique voluptate. Hic voluptate quo dignissimos dolor sit earum et. Aut est veritatis vitae quae. Consectetur numquam similique quia possimus laboriosam.', 1, '29 March 2022', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(2, 2, 'Qui quae non saepe eveniet et excepturi quas.', 'https://img.freepik.com/free-vector/copy-space-blue-circuits-digital-background_23-2148821699.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Sunt et nisi quae ea. Fuga praesentium deleniti necessitatibus ipsam quibusdam odio esse. Illo voluptatum possimus illum dignissimos.', 2, '14 March 2012', 4, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(3, 1, 'Minima iste numquam velit accusantium consequatur explicabo eligendi.', 'https://img.freepik.com/free-vector/realistic-background-futuristic-style_23-2149129125.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Reiciendis eius et atque qui. Deleniti dolor nisi itaque deserunt velit cum. Facilis ut molestias ab natus. Animi ea neque a optio modi et ipsa.', 1, '28 October 2017', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(4, 2, 'Non iusto omnis vitae et.', 'https://img.freepik.com/free-vector/network-mesh-wire-digital-technology-background_1017-27428.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Officia rem dicta aliquam in accusantium tempore eos. Quasi temporibus voluptates eum cumque laboriosam et beatae aut. Commodi quibusdam quisquam vitae aut ea porro occaecati dicta.', 3, '17 December 2010', 2, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(5, 1, 'Non reiciendis nihil hic et ut.', 'https://img.freepik.com/free-vector/background-realistic-abstract-technology-particle_23-2148431735.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Laboriosam enim temporibus placeat qui. Dolore nihil nemo sunt quasi molestiae accusantium qui. Ducimus in quo ipsam aperiam. Consequatur earum laudantium ab eius molestias possimus.', 1, '14 April 2023', 4, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(6, 2, 'Cumque id et praesentium vitae provident.', 'https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149131656.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Sed omnis maxime id suscipit aliquam ut. Qui molestias est sit architecto sequi ipsam. Inventore eum et dignissimos qui incidunt quia.', 3, '29 August 1996', 2, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(7, 1, 'Veniam quos totam quam beatae ea autem eos.', 'https://img.freepik.com/free-vector/white-technology-background_23-2148403782.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Aspernatur vel nihil ut accusantium. Voluptates minima atque eveniet ut.', 1, '16 December 2023', 2, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(8, 1, 'Consequatur sed praesentium et.', 'https://img.freepik.com/free-vector/gradient-technology-symbols-background_23-2149110134.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Magni eos voluptate et vel voluptatum. Vel dolor deleniti corrupti porro. Blanditiis autem et quod aut harum.', 1, '22 June 2013', 2, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(9, 2, 'Non expedita magni sit corporis.', 'https://img.freepik.com/free-vector/abstract-technological-background_23-2148897676.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Necessitatibus consequatur et accusamus reprehenderit. Laboriosam laborum nemo ab maxime. Dolores animi pariatur nemo quod aliquam quidem. Et provident ipsam rerum magnam magni.', 2, '28 November 1983', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(10, 2, 'Dignissimos iusto omnis similique accusantium.', 'https://img.freepik.com/free-vector/abstract-technological-background_23-2148897676.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Dolorem autem ut non quibusdam ex. Culpa est eaque nostrum voluptate sequi. Unde iste earum ipsa explicabo quidem eligendi aspernatur minima.', 2, '19 February 2021', 3, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(11, 2, 'Amet in rerum maxime.', 'https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149122416.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Eum fuga sed unde aspernatur. Voluptas consequatur ea dolorem quo perspiciatis. Non praesentium tenetur tenetur laborum natus. Et repellendus error doloremque.', 3, '28 June 2018', 5, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(12, 2, 'Totam itaque quo labore dolores.', 'https://img.freepik.com/free-vector/white-technology-background_23-2148403782.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Similique rerum sequi atque debitis laborum. Et sit nihil ut sunt ut tenetur rerum. Suscipit eum architecto ut voluptatem ipsam rerum sit.', 3, '12 August 1983', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(13, 2, 'Ratione et et rem.', 'https://img.freepik.com/free-vector/realistic-background-futuristic-style_23-2149129125.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Ut sapiente ab qui vel beatae eos omnis itaque. Ut est ab voluptas. Eligendi cupiditate deserunt nam reiciendis.', 2, '20 November 2018', 5, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(14, 1, 'Rerum et saepe cumque ipsum nihil architecto sit.', 'https://img.freepik.com/free-vector/copy-space-blue-circuits-digital-background_23-2148821699.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Blanditiis in mollitia sed minus. Ut corrupti officia fugit natus rerum. Autem consectetur ea error totam quasi. Officiis fugiat nam commodi ullam.', 1, '08 September 1988', 4, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(15, 2, 'Reiciendis ea et officia est enim eligendi quia.', 'https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149131656.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Officia suscipit fuga quo praesentium. Ut quo illo dolorem quaerat praesentium omnis vero. Et voluptatum esse consectetur autem quisquam illum. Doloremque labore sint in illo nemo.', 2, '14 August 2013', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(16, 2, 'Commodi aut placeat doloremque expedita praesentium ut nemo.', 'https://img.freepik.com/free-vector/network-mesh-wire-digital-technology-background_1017-27428.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Velit quos et aut quod vitae accusantium est. Similique dolorem ut perferendis nihil. Ut deserunt cum nobis et vel totam similique a.', 2, '18 March 1992', 4, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(17, 1, 'Perferendis enim aut quisquam nostrum.', 'https://img.freepik.com/free-vector/gradient-technology-futuristic-background_23-2149131656.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Ut alias tempora nemo est. Debitis quidem nisi asperiores aperiam. Sint veniam sit veniam et ut eaque.', 1, '04 December 1989', 4, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(18, 2, 'In dolores eos reprehenderit qui laboriosam quas.', 'https://img.freepik.com/free-vector/white-technology-background_23-2148403782.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Qui sapiente est enim doloremque odit dolores. Excepturi quia praesentium dolores molestiae. Quae incidunt odio et ratione. Dignissimos aliquam qui sed qui.', 3, '10 September 2018', 3, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(19, 2, 'Expedita saepe blanditiis ut vitae quia.', 'https://img.freepik.com/free-vector/realistic-background-futuristic-style_23-2149129125.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Excepturi praesentium ea vel fuga sapiente repellat dolor ipsam. Autem et dolor tenetur iusto repellat sequi. In aut impedit a saepe. Soluta voluptas ut consectetur distinctio eos.', 3, '14 February 2005', 1, '2024-11-02 07:44:23', '2024-11-02 07:44:23'),
(20, 2, 'Perspiciatis corporis dolor quisquam in sit fugiat.', 'https://img.freepik.com/free-vector/realistic-background-futuristic-style_23-2149129125.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', 'Consectetur inventore quo sequi unde culpa ad esse. Eius maiores quisquam impedit quasi corporis sed molestias. Consequuntur sit id enim aut laboriosam. Iusto ut exercitationem est magnam cumque quo. Aliquam qui rerum dolores natus.', 3, '14 July 1985', 5, '2024-11-02 07:44:23', '2024-11-02 07:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_01_034820_create_category_table', 1),
(5, '2024_11_01_035002_create_writer_table', 1),
(6, '2024_11_01_040318_create_category_detail_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7DnHs1zFA82P6q9YCHkLyv4yoikP733Rw3Pmcxz2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHljRmVwdE5ZbGQ3WkpqeDdRNDBxT2RYNHRvNk1CNTRvblRhMk1TNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730799105),
('COpoXKanFq6RINtPbRXa89fsty1NcJC85DR6ipu1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNW4wYXRJd1ZPS1BZVTYwemF6Qml2UmhOUzgwM2xVZVVrVGc3WkxiNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kZXRhaWxzLzE2Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730561011);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writer`
--

CREATE TABLE `writer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writer`
--

INSERT INTO `writer` (`id`, `name`, `category_id`, `specialist`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Raka Putra Wicaksono', 1, 'Spesialis Interactive Multimedia', 'https://img.freepik.com/free-psd/3d-illustration-business-man-with-glasses_23-2149436194.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', '2024-11-02 07:41:37', '2024-11-02 07:41:37'),
(2, 'Bia Mecca Annisa', 2, 'Spesialis Software Engineering', 'https://img.freepik.com/free-psd/3d-illustration-person-with-glasses_23-2149436191.jpg?ga=GA1.1.834139058.1727840811&semt=ais_hybrid', '2024-11-02 07:41:37', '2024-11-02 07:41:37'),
(3, 'Abi Firmansyah', 2, 'Spesialis Software Engineering', 'https://img.freepik.com/free-psd/3d-illustration-person-with-punk-hair-jacket_23-2149436198.jpg?t=st=1730539302~exp=1730542902~hmac=d81d55bb19a0cba67733612a29d3cb642ce607d045f3152f0951c7ceed3ed367&w=740', '2024-11-02 07:41:37', '2024-11-02 07:41:37');

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_detail_category_id_foreign` (`category_id`),
  ADD KEY `category_detail_writer_id_foreign` (`writer_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `writer_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writer`
--
ALTER TABLE `writer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD CONSTRAINT `category_detail_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_detail_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `writer`
--
ALTER TABLE `writer`
  ADD CONSTRAINT `writer_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
