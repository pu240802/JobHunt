-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 09:55 AM
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
-- Database: `jobhunt_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `photo`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Nhật Phương', 'nguyenthinhatphuong02@gmail.com', '$2y$10$YMsS1fkeVdG8bUTKTqS9O.Gk51kGp9GhAOxI9Zzpf6YLITaX.Q0ru', 'admin.jpg', '9653f741be4af226f3a88085503553fca6761a26648f3de3412bfd6b57ba6918', NULL, '2024-03-25 00:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_listing_ad` varchar(255) DEFAULT NULL,
  `job_listing_ad_url` varchar(255) NOT NULL,
  `job_listing_ad_status` varchar(255) NOT NULL,
  `company_listing_ad` varchar(255) NOT NULL,
  `company_listing_ad_url` varchar(255) DEFAULT NULL,
  `company_listing_ad_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `job_listing_ad`, `job_listing_ad_url`, `job_listing_ad_status`, `company_listing_ad`, `company_listing_ad_url`, `company_listing_ad_status`, `created_at`, `updated_at`) VALUES
(1, 'job_listing_ad.jpg', 'https:/www.google.com', 'Hide', 'company_listing_ad.jpg', 'https:/www.yahoo.com', 'Hide', NULL, '2024-04-20 06:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_job_listing` text NOT NULL,
  `banner_job_detail` text NOT NULL,
  `banner_job_categories` text NOT NULL,
  `banner_company_listing` text NOT NULL,
  `banner_company_detail` text NOT NULL,
  `banner_pricing` text NOT NULL,
  `banner_blog` text NOT NULL,
  `banner_post` text NOT NULL,
  `banner_faq` text NOT NULL,
  `banner_contact` text NOT NULL,
  `banner_terms` text NOT NULL,
  `banner_privacy` text NOT NULL,
  `banner_signup` text NOT NULL,
  `banner_login` text NOT NULL,
  `banner_forget_password` text NOT NULL,
  `banner_company_panel` text NOT NULL,
  `banner_candidate_panel` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `banner_job_listing`, `banner_job_detail`, `banner_job_categories`, `banner_company_listing`, `banner_company_detail`, `banner_pricing`, `banner_blog`, `banner_post`, `banner_faq`, `banner_contact`, `banner_terms`, `banner_privacy`, `banner_signup`, `banner_login`, `banner_forget_password`, `banner_company_panel`, `banner_candidate_panel`, `created_at`, `updated_at`) VALUES
(1, 'banner_job_listing.jpg', 'banner_job_detail.jpg', 'banner_job_categories.jpg', 'banner_company_listing.jpg', 'banner_company_detail.jpg', 'banner_pricing.jpg', 'banner_blog.jpg', 'banner_post.jpg', 'banner_faq.jpg', 'banner_contact.jpg', 'banner_terms.jpg', 'banner_privacy.jpg', 'banner_signup.jpg', 'banner_login.jpg', 'banner_forget_password.jpg', 'banner_company_panel.jpg', 'banner_candidate_panel.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `designation`, `username`, `email`, `password`, `token`, `photo`, `biography`, `phone`, `country`, `address`, `state`, `city`, `zip_code`, `gender`, `marital_status`, `date_of_birth`, `website`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Heo', NULL, 'Heo', 'nguyenthinhatphuong02@gmail.com', '$2y$10$S0XsOG6W7.0uXhsYTFWxZe5LukvvPWZoPWbgle9RLFZ1R.EhrMqEC', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-04-05 00:16:12', '2024-04-05 00:41:21'),
(4, 'Pu heo', '1', 'Pu', '6151071085@st.utc2.edu.vn', '$2y$10$rZ2x61wsiUFITNfpjr4bZeOKfVY3B9ar99JnDiQKOKY7YwDKS2jAu', '', 'candidate_photo_1712910067.jpg', '<p>1</p>', '1', 'Vietnam', '1', '1', '1', '1', 'Male', 'Unmarried', '2024-04-12', '1', 1, '2024-04-05 00:58:08', '2024-04-12 01:57:30'),
(6, 'Diem', NULL, 'diem', 'diem@gmail.com', '$2y$10$2I/8xVNF0l/.Wd2EGxscQOvIH3juZAbt38X3RsJU/m0hvjM5nf2US', '', 'candidate_photo_1715235448.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', 'Married', NULL, NULL, 1, '2024-05-08 23:13:09', '2024-05-08 23:17:28'),
(7, 'Sang', NULL, 'sang', 'sang@gmail.com', '$2y$10$LnGwx/y.PL3GnQING.tlpeb0BuYA2FuXahjlZwyBOWF7pu6JpHVAO', '', 'candidate_photo_1715236693.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Male', 'Married', NULL, NULL, 1, '2024-05-08 23:35:51', '2024-05-08 23:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_applications`
--

CREATE TABLE `candidate_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cover_letter` text NOT NULL,
  `status` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_applications`
--

INSERT INTO `candidate_applications` (`id`, `candidate_id`, `job_id`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'hiii baby hhhhhhhhhhhhhhhhhhhhhh\n\nEEe', 'Applied', '2024-04-19 03:11:05', '2024-04-20 01:57:08'),
(3, 4, 1, 'hi My name is Phuong.', 'Approved', '2024-05-03 08:02:44', '2024-05-03 08:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_awards`
--

CREATE TABLE `candidate_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_awards`
--

INSERT INTO `candidate_awards` (`id`, `candidate_id`, `title`, `description`, `date`, `created_at`, `updated_at`) VALUES
(1, 4, '12', '21', '34', '2024-04-13 01:46:59', '2024-04-13 01:48:45'),
(2, 4, '43', '37', '59', '2024-04-13 01:47:10', '2024-04-13 01:48:55'),
(4, 6, 'test', 'test', 'test', '2024-05-08 23:20:13', '2024-05-08 23:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_bookmarks`
--

CREATE TABLE `candidate_bookmarks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_bookmarks`
--

INSERT INTO `candidate_bookmarks` (`id`, `candidate_id`, `job_id`, `created_at`, `updated_at`) VALUES
(8, 4, 3, '2024-04-19 01:57:39', '2024-04-19 01:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_education`
--

CREATE TABLE `candidate_education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `level` text NOT NULL,
  `institute` text NOT NULL,
  `degree` text NOT NULL,
  `passing_year` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_education`
--

INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `institute`, `degree`, `passing_year`, `created_at`, `updated_at`) VALUES
(1, 4, '1', '1', '1', '1', '2024-04-12 20:48:34', '2024-04-12 20:48:34'),
(2, 4, '21', '21', '21', '21', '2024-04-12 20:48:47', '2024-04-12 21:18:03'),
(4, 6, 'test', 'test', 'test', 'test', '2024-05-08 23:19:12', '2024-05-08 23:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_experiences`
--

CREATE TABLE `candidate_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `company` text NOT NULL,
  `designation` text NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_experiences`
--

INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `designation`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(2, 4, '12', '1', '12', '14', '2024-04-13 00:38:51', '2024-04-13 00:49:05'),
(3, 4, '1', '1', '2', '3', '2024-04-13 00:40:07', '2024-04-13 00:40:07'),
(4, 6, 'test', 'test', 'test', 'test', '2024-05-08 23:19:56', '2024-05-08 23:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_resumes`
--

CREATE TABLE `candidate_resumes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `file` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_resumes`
--

INSERT INTO `candidate_resumes` (`id`, `candidate_id`, `name`, `file`, `created_at`, `updated_at`) VALUES
(1, 4, 'Resume 1', 'resume_1713001914.docx', '2024-04-13 02:31:49', '2024-04-13 02:53:12'),
(4, 6, 'Test Resume 2', 'resume_1715235523.pdf', '2024-05-08 23:18:43', '2024-05-08 23:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_skills`
--

CREATE TABLE `candidate_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `percentage` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate_skills`
--

INSERT INTO `candidate_skills` (`id`, `candidate_id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 4, '1', '1', '2024-04-12 23:10:19', '2024-04-12 23:10:19'),
(2, 4, '21', '21', '2024-04-12 23:10:26', '2024-04-12 23:12:23'),
(4, 4, '43', '43', '2024-04-12 23:13:50', '2024-04-12 23:13:58'),
(5, 6, 'test', '76', '2024-05-08 23:19:31', '2024-05-08 23:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `person_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_location_id` int(11) DEFAULT NULL,
  `company_industry_id` int(11) DEFAULT NULL,
  `company_size_id` int(11) DEFAULT NULL,
  `founded_on` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `oh_mon` varchar(255) DEFAULT NULL,
  `oh_tue` varchar(255) DEFAULT NULL,
  `oh_wed` varchar(255) DEFAULT NULL,
  `oh_thu` varchar(255) DEFAULT NULL,
  `oh_fri` varchar(255) DEFAULT NULL,
  `oh_sat` varchar(255) DEFAULT NULL,
  `oh_sun` varchar(255) DEFAULT NULL,
  `map_code` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `person_name`, `username`, `email`, `password`, `token`, `logo`, `phone`, `address`, `company_location_id`, `company_industry_id`, `company_size_id`, `founded_on`, `website`, `description`, `oh_mon`, `oh_tue`, `oh_wed`, `oh_thu`, `oh_fri`, `oh_sat`, `oh_sun`, `map_code`, `facebook`, `twitter`, `linkedin`, `instagram`, `status`, `created_at`, `updated_at`) VALUES
(3, 'FPT', 'Nhật Phương', 'Phương', '6151071085@st.utc2.edu.vn', '$2y$10$46WTLrAH93TiUAHnECtB5.F3m7nClt5jlPoX8OZB3CQ27JUyFE/pG', '', 'company_logo_1712649129.png', '0363419330', '1', 6, 4, 4, '1984', '1', '<p>1</p>', '1', '1', '1', '1', '1', '1', '1', 'qqqqqq', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'https://www.instagram.com', 1, '2024-04-04 19:10:25', '2024-04-10 02:17:04'),
(4, 'ABC', 'XYZ', 'xyz', '12345@gmail.com', '$2y$10$R3ViVYnwzsigwz0b3wAa7OWfN91bcSoPsRzTfECB4DC2N1qq6B8/q', '', 'company_logo_1715234962.png', '1', '1', 2, 1, 1, '1990', '1', '<p>1</p>', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', 1, '2024-05-08 22:51:00', '2024-05-09 02:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `company_industries`
--

CREATE TABLE `company_industries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_industries`
--

INSERT INTO `company_industries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Accounting Firm', '2024-04-07 22:40:10', '2024-04-07 22:40:10'),
(2, 'It Company', '2024-04-07 22:40:36', '2024-04-07 22:40:36'),
(3, 'Software Company', '2024-04-07 22:41:10', '2024-04-07 22:41:10'),
(4, 'Real Estate Company', '2024-04-07 22:41:23', '2024-04-07 22:41:23'),
(5, 'Law Firm', '2024-04-07 22:41:31', '2024-04-07 22:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `company_locations`
--

CREATE TABLE `company_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_locations`
--

INSERT INTO `company_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bình Định', '2024-04-07 20:06:16', '2024-04-07 20:06:16'),
(2, 'Cần Thơ', '2024-04-07 20:06:25', '2024-04-07 20:06:25'),
(3, 'Hồ Chí Minh', '2024-04-07 20:06:36', '2024-04-07 20:06:36'),
(4, 'Nha Trang', '2024-04-07 20:06:42', '2024-04-07 20:06:42'),
(5, 'Phú Yên', '2024-04-07 20:06:54', '2024-04-07 20:06:54'),
(6, 'Quảng Ngãi', '2024-04-07 20:07:04', '2024-04-07 20:07:04'),
(7, 'Vũng Tàu', '2024-04-07 20:07:12', '2024-04-07 20:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `company_photos`
--

CREATE TABLE `company_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_photos`
--

INSERT INTO `company_photos` (`id`, `company_id`, `photo`, `created_at`, `updated_at`) VALUES
(3, 3, 'company_photo_1712655795.jpg', '2024-04-09 02:43:15', '2024-04-09 02:43:15'),
(4, 3, 'company_photo_1712662999.jpg', '2024-04-09 04:43:19', '2024-04-09 04:43:19'),
(5, 3, 'company_photo_1712663108.jpg', '2024-04-09 04:45:08', '2024-04-09 04:45:08'),
(6, 3, 'company_photo_1712663163.jpg', '2024-04-09 04:46:03', '2024-04-09 04:46:03'),
(7, 3, 'company_photo_1712663170.jpg', '2024-04-09 04:46:10', '2024-04-09 04:46:10'),
(8, 4, 'company_photo_1715251349.jpg', '2024-05-09 03:42:29', '2024-05-09 03:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `company_sizes`
--

CREATE TABLE `company_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_sizes`
--

INSERT INTO `company_sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2-5 Persons', '2024-04-08 00:44:52', '2024-04-08 00:44:52'),
(2, '5-10 Persons', '2024-04-08 00:45:02', '2024-04-08 00:45:02'),
(3, '10-20 Persons', '2024-04-08 00:45:10', '2024-04-08 00:45:10'),
(4, '20-50 Persons', '2024-04-08 00:45:18', '2024-04-08 00:45:18'),
(5, '50-100 Persons', '2024-04-08 00:45:36', '2024-04-08 00:45:40'),
(6, '100+ Persons', '2024-04-08 00:45:55', '2024-04-08 00:45:55');

-- --------------------------------------------------------

--
-- Table structure for table `company_videos`
--

CREATE TABLE `company_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_videos`
--

INSERT INTO `company_videos` (`id`, `company_id`, `video_id`, `created_at`, `updated_at`) VALUES
(6, 3, 'QyhwSYhX09s', '2024-04-10 01:41:53', '2024-04-10 01:41:53'),
(7, 4, 'fNxjNFiwxiA', '2024-05-09 03:43:20', '2024-05-09 03:43:20');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet saperet dolores has no?', '<p>Lorem ipsum dolor sit amet, saperet dolores has no. Liber graeci cu vix, qui altera prodesset eu. Ad quod hinc accusamus quo, mel eu congue propriae, eum te eirmod vidisse omnesque. Eirmod dissentiunt cu vel, at qui propriae reformidans accommodare. Enim ridens scriptorem no duo.</p>', '2024-03-31 21:36:45', '2024-03-31 21:36:45'),
(2, 'Ut per oratio altera scripserit vel movet commodo ei?', '<p>Ut per oratio altera scripserit, vel movet commodo ei, dolorem dignissim cotidieque no mei. Mea id hendrerit adolescens scribentur. Ad facilis conceptam sit. Ut has odio maiorum voluptua. Suscipit omittantur nam ex.</p>', '2024-03-31 21:39:18', '2024-03-31 21:39:18'),
(3, 'In tation percipitur sea?', '<p>In tation percipitur sea. Te molestie ocurreret nam. Animal gloriatur vis in, vis ea malis volutpat definitiones, ad pri principes consetetur. Pri te noluisse omittantur, vix sumo incorrupte interpretaris ei, ius ne nisl bonorum temporibus.</p>', '2024-03-31 21:39:47', '2024-03-31 21:39:47'),
(4, 'Ius ei facer rationibus et duis recusabo ius?', '<p>Ius ei facer rationibus, et duis recusabo ius, cu cum tota scaevola philosophia. Ne mea causae dolorem neglegentur, tollit laudem mollis mei ad. Iisque dolorem incorrupte te qui, ei populo denique philosophia sit. Ancillae mediocritatem eum in, vel et mollis fabulas, eum dolorum docendi vituperata in. Ea graeci saperet iudicabit cum, mea oporteat intellegebat definitionem id, copiosae eloquentiam cu nam. Cu eam dolor tibique, id eos vidisse nominavi deseruisse, deserunt antiopam et pro. Inani ridens recusabo his ut, affert altera id qui.</p>', '2024-03-31 21:40:16', '2024-03-31 21:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `responsibility` text DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `benefit` text DEFAULT NULL,
  `deadline` text DEFAULT NULL,
  `vacancy` int(11) NOT NULL,
  `job_category_id` int(11) NOT NULL,
  `job_location_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `job_experience_id` int(11) NOT NULL,
  `job_gender_id` int(11) NOT NULL,
  `job_salary_range_id` int(11) NOT NULL,
  `map_code` text DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `is_urgent` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `title`, `description`, `responsibility`, `skill`, `education`, `benefit`, `deadline`, `vacancy`, `job_category_id`, `job_location_id`, `job_type_id`, `job_experience_id`, `job_gender_id`, `job_salary_range_id`, `map_code`, `is_featured`, `is_urgent`, `created_at`, `updated_at`) VALUES
(1, 3, 'qqq111', '<p>\"qqqq1</p>', '<p>qq1</p>', '<p>\"qqqq1</p>', '<p>13333</p>', '<p>1</p>', '2024-05-11 00:00:00', 1, 2, 5, 3, 1, 1, 1, '1', 0, 0, '2024-04-11 02:34:20', '2024-04-16 18:05:16'),
(2, 3, 'test', '<p>hayyyyyy</p>', '<p>aaaaa</p>', '<p>hayyyyyy</p>', '<p>aaaa</p>', NULL, '2024-05-20 00:00:00', 2, 13, 2, 4, 3, 2, 6, 'qqqqq', 1, 1, '2024-04-11 02:35:30', '2024-04-11 02:35:30'),
(6, 3, 'tesst 4', '<p>44444</p>', '<p>4444</p>', '<p>44444</p>', '<p>4444</p>', '<p>44444</p>', '2024-04-12 00:00:00', 3, 2, 6, 3, 1, 1, 1, NULL, 0, 0, '2024-04-11 21:47:01', '2024-04-11 21:47:01');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `icon` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `icon`, `created_at`, `updated_at`) VALUES
(2, 'Accounting', 'fas fa-landmark', '2024-04-06 04:03:07', '2024-04-06 04:03:07'),
(3, 'Engineering', 'fas fa-magic', '2024-04-06 04:03:48', '2024-04-06 04:03:48'),
(4, 'Medical', 'fas fa-stethoscope', '2024-04-06 04:04:13', '2024-04-06 04:04:13'),
(5, 'Production', 'fas fa-sitemap', '2024-04-06 04:04:38', '2024-04-06 04:04:38'),
(6, 'Data Entry', 'fas fa-share-alt', '2024-04-06 04:05:07', '2024-04-06 04:05:07'),
(7, 'Marketing', 'fas fa-bullhorn', '2024-04-06 04:05:35', '2024-04-06 04:05:35'),
(8, 'Technician', 'fas fa-street-view', '2024-04-06 04:06:10', '2024-04-06 04:06:10'),
(9, 'Security', 'fas fa-lock', '2024-04-06 04:06:35', '2024-04-06 04:06:35'),
(10, 'Garments', 'fas fa-users', '2024-04-06 04:07:01', '2024-04-06 04:07:01'),
(11, 'Telecommunication', 'fas fa-vector-square', '2024-04-06 04:07:27', '2024-04-06 04:07:27'),
(12, 'Education', 'fas fa-user-graduate', '2024-04-06 04:08:13', '2024-04-06 04:08:13'),
(13, 'Commercial', 'fas fa-suitcase', '2024-04-06 04:08:38', '2024-04-06 04:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `job_experiences`
--

CREATE TABLE `job_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_experiences`
--

INSERT INTO `job_experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fresher', '2024-04-06 05:21:40', '2024-04-06 05:21:40'),
(2, '1Year', '2024-04-06 05:21:55', '2024-04-06 05:21:55'),
(3, '2Years', '2024-04-06 05:22:02', '2024-04-06 05:22:02'),
(4, '3Years', '2024-04-06 05:22:09', '2024-04-06 05:22:09'),
(5, '4Years', '2024-04-06 05:22:17', '2024-04-06 05:22:17'),
(6, '5Years', '2024-04-06 05:22:24', '2024-04-06 05:22:24'),
(7, '5+ Years', '2024-04-06 05:22:36', '2024-04-06 05:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `job_genders`
--

CREATE TABLE `job_genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_genders`
--

INSERT INTO `job_genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2024-04-06 06:18:46', '2024-04-06 06:18:46'),
(2, 'Female', '2024-04-06 06:18:56', '2024-04-06 06:18:56'),
(3, 'Not Specified', '2024-04-06 06:19:35', '2024-04-06 06:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `job_locations`
--

CREATE TABLE `job_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_locations`
--

INSERT INTO `job_locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '2024-04-06 03:30:26', '2024-04-06 03:30:26'),
(2, 'Quảng Ngãi', '2024-04-06 03:30:40', '2024-04-06 03:30:40'),
(3, 'Bình Định', '2024-04-06 03:30:51', '2024-04-06 03:30:51'),
(5, 'Vũng Tàu', '2024-04-06 03:31:08', '2024-04-06 03:31:08'),
(6, 'Nha Trang', '2024-04-06 03:31:18', '2024-04-06 03:31:18'),
(7, 'Phú Yên', '2024-04-06 03:34:34', '2024-04-06 03:34:34');

-- --------------------------------------------------------

--
-- Table structure for table `job_salary_ranges`
--

CREATE TABLE `job_salary_ranges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_salary_ranges`
--

INSERT INTO `job_salary_ranges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '$100 - $500', '2024-04-06 06:34:12', '2024-04-06 06:34:12'),
(2, '$500 - $1000', '2024-04-06 06:37:15', '2024-04-06 06:37:15'),
(3, '$1000 - $1500', '2024-04-06 06:37:33', '2024-04-06 06:37:33'),
(4, '$1500 - $2000', '2024-04-06 06:37:43', '2024-04-06 06:37:43'),
(5, '$2000 - $2500', '2024-04-06 06:37:57', '2024-04-06 06:37:57'),
(6, '$2500 - $3000', '2024-04-06 06:38:10', '2024-04-06 06:38:10'),
(9, '$3000 - $3500', '2024-04-06 06:39:33', '2024-04-06 06:39:33'),
(10, '$3500 - $4000', '2024-04-06 06:39:44', '2024-04-06 06:39:44'),
(11, '$4000+', '2024-04-06 06:40:10', '2024-04-06 06:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `job_types`
--

CREATE TABLE `job_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_types`
--

INSERT INTO `job_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Part Time', '2024-04-06 04:48:38', '2024-04-06 04:48:38'),
(3, 'Contractual', '2024-04-06 04:48:52', '2024-04-06 04:48:52'),
(4, 'Internship', '2024-04-06 04:49:14', '2024-04-06 04:49:14'),
(5, 'Freelance', '2024-04-06 04:49:27', '2024-04-06 04:49:27'),
(8, 'FullTime', '2024-05-09 01:26:32', '2024-05-09 01:26:40');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_14_085338_create_admin_table', 1),
(12, '2024_03_26_021359_create_page_home_items_table', 2),
(15, '2024_03_28_020723_create_why_choose_item_table', 4),
(16, '2024_03_28_140307_create_testimonials_table', 5),
(17, '2024_03_29_095642_create_posts_table', 6),
(19, '2024_03_31_033509_create_faqs_table', 7),
(21, '2024_04_01_071911_create_page_faq_items_table', 8),
(22, '2024_04_01_084805_create_page_blog_items_table', 9),
(23, '2024_04_02_041629_create_page_term_items_table', 10),
(24, '2024_04_02_065825_create_page_privacy_items_table', 11),
(26, '2024_04_02_090042_create_page_contact_items_table', 12),
(28, '2024_04_03_041019_create_page_job_category_items_table', 13),
(29, '2024_04_03_050627_create_packages_table', 14),
(30, '2024_04_03_151137_create_page_pricing_items_table', 15),
(31, '2024_04_04_040344_create_page_other_items_table', 16),
(32, '2024_04_04_135938_create_companies_table', 17),
(33, '2024_04_05_063552_create_candidates_table', 18),
(34, '2024_04_05_141900_create_orders_table', 19),
(36, '2024_04_06_101952_create_job_locations_table', 20),
(37, '2024_03_26_060035_create_job_categories_table', 21),
(38, '2024_04_06_113534_create_job_types_table', 22),
(39, '2024_04_06_120559_create_job_experiences_table', 23),
(40, '2024_04_06_130940_create_job_genders_table', 24),
(41, '2024_04_06_132219_create_job_salary_ranges_table', 25),
(42, '2024_04_08_024534_create_company_locations_table', 26),
(43, '2024_04_08_052723_create_company_industries_table', 27),
(44, '2024_04_08_073600_create_company_sizes_table', 28),
(45, '2024_04_09_090520_create_company_photos_table', 29),
(46, '2024_04_10_070906_create_company_videos_table', 30),
(47, '2024_04_11_064936_create_jobs_table', 31),
(48, '2024_04_12_092017_create_candidate_education_table', 32),
(49, '2024_04_13_055428_create_candidate_skills_table', 33),
(50, '2024_04_13_072111_create_candidate_experiences_table', 34),
(51, '2024_04_13_083424_create_candidate_awards_table', 35),
(52, '2024_04_13_085916_create_candidate_resumes_table', 36),
(53, '2024_04_19_051429_create_candidate_bookmarks_table', 37),
(54, '2024_04_19_093637_create_candidate_applications_table', 38),
(55, '2024_04_20_092331_create_advertisements_table', 39),
(56, '2024_04_22_092141_create_banners_table', 40),
(57, '2024_04_26_155432_create_subscribers_table', 41),
(58, '2024_05_04_031916_create_settings_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `paid_amount` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `currently_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `company_id`, `package_id`, `order_no`, `paid_amount`, `payment_method`, `start_date`, `expire_date`, `currently_active`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '1712382437', '19', 'PayPal', '2024-04-06', '2024-04-13', 0, '2024-04-05 22:47:17', '2024-04-09 04:32:36'),
(2, 3, 2, '1712383285', '29', 'PayPal', '2024-04-06', '2024-05-06', 0, '2024-04-05 23:01:25', '2024-04-09 04:32:36'),
(3, 3, 1, '1712386348', '19', 'PayPal', '2024-04-06', '2024-04-13', 0, '2024-04-05 23:52:28', '2024-04-09 04:32:36'),
(4, 3, 3, '1712386477', '49', 'PayPal', '2024-04-06', '2024-06-05', 0, '2024-04-05 23:54:37', '2024-04-09 04:32:36'),
(5, 3, 1, '1712661832', '19', 'PayPal', '2024-04-09', '2024-04-16', 0, '2024-04-09 04:23:52', '2024-04-09 04:32:36'),
(6, 3, 2, '1712662356', '29', 'PayPal', '2024-04-09', '2024-05-09', 1, '2024-04-09 04:32:36', '2024-04-09 04:32:36'),
(7, 4, 1, '1715234285', '19', 'PayPal', '2024-05-09', '2024-05-16', 0, '2024-05-08 22:58:05', '2024-05-09 03:41:45'),
(8, 4, 2, '1715251305', '29', 'PayPal', '2024-05-09', '2024-06-08', 1, '2024-05-09 03:41:45', '2024-05-09 03:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(200) NOT NULL,
  `package_price` smallint(4) NOT NULL,
  `package_days` smallint(4) NOT NULL,
  `package_display_time` varchar(100) NOT NULL,
  `total_allowed_jobs` tinyint(4) NOT NULL,
  `total_allowed_featured_jobs` tinyint(4) NOT NULL,
  `total_allowed_photo` tinyint(4) NOT NULL,
  `total_allowed_video` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_price`, `package_days`, `package_display_time`, `total_allowed_jobs`, `total_allowed_featured_jobs`, `total_allowed_photo`, `total_allowed_video`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 19, 7, '1 Week', 2, 0, 0, 0, '2024-04-02 23:28:31', '2024-04-11 03:01:31'),
(2, 'Standard', 29, 30, '1 Month', 4, 2, 5, 5, '2024-04-02 23:29:34', '2024-04-11 03:01:17'),
(3, 'Gold', 49, 60, '2 Months', -1, 15, 15, 10, '2024-04-02 23:31:01', '2024-04-02 23:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `page_blog_items`
--

CREATE TABLE `page_blog_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_blog_items`
--

INSERT INTO `page_blog_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Blog', 'Blog', 'Blog', NULL, '2024-04-01 19:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `page_contact_items`
--

CREATE TABLE `page_contact_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `map_code` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contact_items`
--

INSERT INTO `page_contact_items` (`id`, `heading`, `map_code`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.3974423954996!2d106.75276100635529!3d10.8573452999698!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175273c71e2ec6d%3A0x84a4dbc6b0476de!2zNzEvMTAvOS8z!5e0!3m2!1svi!2s!4v1712049659544!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Contact', 'Contact', NULL, '2024-04-02 02:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `page_faq_items`
--

CREATE TABLE `page_faq_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_faq_items`
--

INSERT INTO `page_faq_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Freequently Asked Question(FAQ)', 'FAQ', 'FAQ', NULL, '2024-04-01 00:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `page_home_items`
--

CREATE TABLE `page_home_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `text` text DEFAULT NULL,
  `job_title` text NOT NULL,
  `job_category` text NOT NULL,
  `job_location` text NOT NULL,
  `search` text NOT NULL,
  `background` text NOT NULL,
  `job_category_heading` text NOT NULL,
  `job_category_subheading` text DEFAULT NULL,
  `job_category_status` text NOT NULL,
  `why_choose_heading` text NOT NULL,
  `why_choose_subheading` text DEFAULT NULL,
  `why_choose_background` text NOT NULL,
  `why_choose_status` text NOT NULL,
  `featured_jobs_heading` text NOT NULL,
  `featured_jobs_subheading` text NOT NULL,
  `featured_jobs_status` text NOT NULL,
  `testimonial_heading` text NOT NULL,
  `testimonial_background` text NOT NULL,
  `testimonial_status` text NOT NULL,
  `blog_heading` text NOT NULL,
  `blog_subheading` text DEFAULT NULL,
  `blog_status` text NOT NULL,
  `title` text NOT NULL,
  `meta_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_home_items`
--

INSERT INTO `page_home_items` (`id`, `heading`, `text`, `job_title`, `job_category`, `job_location`, `search`, `background`, `job_category_heading`, `job_category_subheading`, `job_category_status`, `why_choose_heading`, `why_choose_subheading`, `why_choose_background`, `why_choose_status`, `featured_jobs_heading`, `featured_jobs_subheading`, `featured_jobs_status`, `testimonial_heading`, `testimonial_background`, `testimonial_status`, `blog_heading`, `blog_subheading`, `blog_status`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Find Your Desired Job', 'Search the best, perfect and suitable jobs that matches your skills in your expertise area.', 'Job Title', 'Job Category', 'Job Location', 'Search', 'banner_home.jpg', 'Job Categories', 'Get the list of all the popular job categories here', 'Show', 'Why Choose Us', 'Our Methods to help you build your career in future', 'why_choose_home_background.jpg', 'Show', 'Featured Jobs', 'Find the awesome jobs that matches your skill', 'Show', 'Our Happy Clients.', 'testimonial_home_background.jpg', 'Show', 'Latest News1', 'Check our latest news from the following section', 'Show', 'JobHunt-A Complete Job Directory Website', 'JobHunt-A Complete Job Directory Website', NULL, '2024-04-03 09:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `page_job_category_items`
--

CREATE TABLE `page_job_category_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_job_category_items`
--

INSERT INTO `page_job_category_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Job Categories', 'Job Categories', 'Job Categories', NULL, '2024-04-02 21:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `page_other_items`
--

CREATE TABLE `page_other_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_page_heading` text NOT NULL,
  `login_page_title` text DEFAULT NULL,
  `login_page_meta_description` text DEFAULT NULL,
  `signup_page_heading` text NOT NULL,
  `signup_page_title` text DEFAULT NULL,
  `signup_page_meta_description` text DEFAULT NULL,
  `forget_password_page_heading` text NOT NULL,
  `forget_password_page_title` text DEFAULT NULL,
  `forget_password_page_meta_description` text DEFAULT NULL,
  `job_listing_page_heading` text NOT NULL,
  `job_listing_page_title` text DEFAULT NULL,
  `job_listing_page_meta_description` text DEFAULT NULL,
  `company_listing_page_heading` text NOT NULL,
  `company_listing_page_title` text DEFAULT NULL,
  `company_listing_page_meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_other_items`
--

INSERT INTO `page_other_items` (`id`, `login_page_heading`, `login_page_title`, `login_page_meta_description`, `signup_page_heading`, `signup_page_title`, `signup_page_meta_description`, `forget_password_page_heading`, `forget_password_page_title`, `forget_password_page_meta_description`, `job_listing_page_heading`, `job_listing_page_title`, `job_listing_page_meta_description`, `company_listing_page_heading`, `company_listing_page_title`, `company_listing_page_meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Login', 'Login', 'Login', 'Create Account', 'Signup', 'Signup', 'ForgetPassword', 'ForgetPassword', 'ForgetPassword', 'Job Listing1', 'Job Listing1', 'Job Listing 1', 'Company Listing', 'Company Listing1', 'Company Listing3', NULL, '2024-05-03 20:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `page_pricing_items`
--

CREATE TABLE `page_pricing_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_pricing_items`
--

INSERT INTO `page_pricing_items` (`id`, `heading`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Pricing', 'Pricing', 'Pricing', NULL, '2024-04-03 08:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `page_privacy_items`
--

CREATE TABLE `page_privacy_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_privacy_items`
--

INSERT INTO `page_privacy_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, enim mazim sensibus ne eam, id postea alterum appareat vis. Ius iudico sententiae necessitatibus ex, dico falli quaeque in eum. Id nominati scriptorem mea, alii diam oratio sit te. No pri copiosae ponderum liberavisse, assum quodsi philosophia ut qui. Pro ea labore semper tacimates, vitae iudico ornatus sed at.</p>\r\n<p>Eum utroque elaboraret no, nec ei dico nonumes, sit at iisque dolores voluptatibus. Molestie expetendis eam in, vero choro repudiare vix ad. Summo quando persecuti eum et, pri ut rebum atqui. Eu per modo nostro conceptam, albucius deserunt aliquando cu mea. Audire volutpat has ad, eos ea erat instructior, pro labitur efficiantur no. Doming aeterno ad mei.</p>\r\n<p>Est id possim quaeque expetendis, et qui vitae congue posidonium. Ius atqui doctus suavitate at. No duo ignota euripidis assueverit, probatus referrentur vel te, eam deleniti accusamus consetetur cu. Eu minim graece qualisque mea. Ad eruditi adipiscing moderatius eum.</p>\r\n<p>Pro facer populo an, et his soluta inimicus. Petentium patrioque id cum, ad duo graeci quodsi maiestatis. Vim veritus sensibus ne, movet errem audire an est, tempor mentitum ne pri. Cum facer minim in, vix affert quidam ceteros id, cu sed ipsum harum intellegebat.</p>\r\n<p>Ludus congue laboramus ad sea, est ea vero reque definiebas. Vocent ullamcorper an nec. Noster audiam gubergren cu quo, mea at paulo aeterno. Eu iusto vituperata sed, mundi decore melius pro ne, vix eu idque latine placerat.</p>', 'Privacy Policy', 'Privacy Policy', NULL, '2024-04-02 00:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `page_term_items`
--

CREATE TABLE `page_term_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_term_items`
--

INSERT INTO `page_term_items` (`id`, `heading`, `content`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms  of Use', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: #212529; font-family: \'Work Sans\', sans-serif; font-size: 15px; background-color: #ffffff;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>', 'Terms  of Use', 'Terms  of Use', NULL, '2024-04-01 21:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `heading` text NOT NULL,
  `slug` text NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `total_view` text NOT NULL,
  `photo` text NOT NULL,
  `title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `slug`, `short_description`, `description`, `total_view`, `photo`, `title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum or lipsum is simply', 'lorem-ipsum-or-lipsum-is-simply', 'Lorem ipsum or lipsum is simply a dummy text for the printing and typesetting industry.', 'Lorem ipsum or lipsum is simply', '2', 'post_1711722306.jpg', 'Lorem ipsum or lipsum is simply', NULL, '2024-03-29 07:25:06', '2024-04-01 20:18:29'),
(2, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lorem ipsum dolor sit amet', '2', 'post_1711722904.jpg', 'Lorem ipsum dolor sit amet', NULL, '2024-03-29 07:35:04', '2024-04-01 20:18:46'),
(3, 'Various versions of Lorem ipsum are available in the market', 'various-versions-of-Lorem-ipsum-are-available-in-the-market', 'Various versions of Lorem ipsum are available in the market. Still, the majority has suffered alteration in some form, like by injected words or randomized words which do not even look slightly believable.', 'Various versions of Lorem ipsum are available in the market', '3', 'post_1711723560.jpg', 'Various versions of Lorem ipsum are available in the market', NULL, '2024-03-29 07:46:00', '2024-04-01 20:52:53'),
(4, 'At vero eos et accusamus', 'at-vero-eos-et-accusamus', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', 'At vero eos et accusamus', '0', 'post_1711723971.jpg', 'At vero eos et accusamus', NULL, '2024-03-29 07:52:51', '2024-04-01 20:19:20'),
(5, 'On the other hand', 'on-the-other-hand', 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain', 'On the other hand', '2', 'post_1711724039.jpg', 'On the other hand', NULL, '2024-03-29 07:53:59', '2024-04-01 20:19:34'),
(6, 'However, since textual fidelity was unimportant', 'since-textual-fidelity-was-unimportant', 'value=\"However, since textual fidelity was unimportant to the goal of having random text to fill a page, it has degraded over the centuries, into \"Lorem ipsum...\".\r\n\r\nThe point of using this text, or some other text of incidental intelligibility, is that it has a more-or-less normal (for English and Latin, at least) distribution of ascenders, descenders, and word-lengths, as opposed to just using \"abc 123 abc 123\", \"Content here content here\", or the like.\"', 'However, since textual fidelity was unimportant', '6', 'post_1711724355.jpg', 'However, since textual fidelity was unimportant', NULL, '2024-03-29 07:59:15', '2024-04-01 20:33:26'),
(7, 'Lorem ipsum or lipsum is simply11112222233333', 'lorem-ipsum-or-lipsum1', '11111111111111111ddddddd', 'Lorem ipsum or lipsum is simply11112222233333', '8', 'post_1711771485.jpg', 'Lorem ipsum or lipsum is simply11112222233333', NULL, '2024-03-29 08:04:33', '2024-04-04 01:56:36'),
(9, '11111   p1', 'pppp2', 'ppppppp3', '2222', '4', 'post_1712027806.jpg', 'pppppppppp5', NULL, '2024-04-01 20:06:42', '2024-04-26 07:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `top_bar_phone` text DEFAULT NULL,
  `top_bar_email` text DEFAULT NULL,
  `footer_phone` text DEFAULT NULL,
  `footer_email` text DEFAULT NULL,
  `footer_address` text DEFAULT NULL,
  `facebook` text DEFAULT NULL,
  `twitter` text DEFAULT NULL,
  `pinterest` text DEFAULT NULL,
  `linkedin` text DEFAULT NULL,
  `instagram` text DEFAULT NULL,
  `copyright_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `top_bar_phone`, `top_bar_email`, `footer_phone`, `footer_email`, `footer_address`, `facebook`, `twitter`, `pinterest`, `linkedin`, `instagram`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'logo.jpg', 'favicon.jpg', '0363419330', 'contact@gmail.com', '0363419330', 'contact@gmail.com', '71/10/9/3 đường số 4, Linh Tây, TP Thủ Đức', 'https://www.facebook.com/profile.php?id=100027585192363', 'https://www.facebook.com/profile.php?id=100027585192363', 'https://www.facebook.com/profile.php?id=100027585192363', 'https://www.facebook.com/profile.php?id=100027585192363', 'https://www.facebook.com/profile.php?id=100027585192363', 'Copyright 2024, Nhật Phương. All Rights Reserved', NULL, '2024-05-05 19:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(6, 'phuong@gmail.com', '', 1, '2024-04-28 08:20:35', '2024-04-28 08:21:09'),
(9, 'per@bd.com', '', 1, '2024-04-30 01:56:39', '2024-04-30 01:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `comment` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `comment`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Robert Krol', 'CEO, ABC Company', 'Lorem ipsum dolor sit amet, an labores   explicari qui, eu nostrum copiosae  argumentum has. Latine propriae quo no,   unum ridens. Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum  copiosae argumentum has. Latine propriae quo no, unum ridens.', 'testimonial_1711640633.jpg', '2024-03-28 08:43:53', '2024-03-28 08:43:53'),
(2, 'Sal Harvey', 'Director, DEF Company', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae    argumentum has. Latine propriae quo no, unum ridens. Lorem ipsum dolor sit amet,  an labores explicari qui, eu nostrum  copiosae argumentum has. Latine propriae  quo no, unum ridens.', 'testimonial_1711640793.jpg', '2024-03-28 08:46:33', '2024-03-28 08:46:33'),
(4, '111rr', '111rr444', '11111111\r\n                            rrr', 'testimonial_1711701435.png', '2024-03-29 01:35:43', '2024-03-29 01:37:48');

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
-- Table structure for table `why_choose_item`
--

CREATE TABLE `why_choose_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `heading` text NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_item`
--

INSERT INTO `why_choose_item` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-briefcase', 'Quick Apply', 'You can just create your account in our website and apply for desired job very quickly.', '2024-03-27 20:38:08', '2024-03-27 22:09:24'),
(2, 'fas fa-search', 'Search Tool', 'We provide a perfect and advanced search tool for job seekers, employers or companies.', '2024-03-27 20:42:37', '2024-03-27 22:07:57'),
(3, 'fas fa-share-alt', 'Best Companies', 'The best and reputed worldwide companies registered here and so you will get the quality jobs.', '2024-03-27 20:43:14', '2024-03-27 20:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_education`
--
ALTER TABLE `candidate_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_industries`
--
ALTER TABLE `company_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_locations`
--
ALTER TABLE `company_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_photos`
--
ALTER TABLE `company_photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_sizes`
--
ALTER TABLE `company_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_videos`
--
ALTER TABLE `company_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_experiences`
--
ALTER TABLE `job_experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_genders`
--
ALTER TABLE `job_genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_locations`
--
ALTER TABLE `job_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_types`
--
ALTER TABLE `job_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_home_items`
--
ALTER TABLE `page_home_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_other_items`
--
ALTER TABLE `page_other_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_term_items`
--
ALTER TABLE `page_term_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `why_choose_item`
--
ALTER TABLE `why_choose_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `candidate_applications`
--
ALTER TABLE `candidate_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `candidate_awards`
--
ALTER TABLE `candidate_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_bookmarks`
--
ALTER TABLE `candidate_bookmarks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `candidate_education`
--
ALTER TABLE `candidate_education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_experiences`
--
ALTER TABLE `candidate_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_resumes`
--
ALTER TABLE `candidate_resumes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `candidate_skills`
--
ALTER TABLE `candidate_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `company_industries`
--
ALTER TABLE `company_industries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_locations`
--
ALTER TABLE `company_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `company_photos`
--
ALTER TABLE `company_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_sizes`
--
ALTER TABLE `company_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `company_videos`
--
ALTER TABLE `company_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `job_experiences`
--
ALTER TABLE `job_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_genders`
--
ALTER TABLE `job_genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_locations`
--
ALTER TABLE `job_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_salary_ranges`
--
ALTER TABLE `job_salary_ranges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `job_types`
--
ALTER TABLE `job_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `page_blog_items`
--
ALTER TABLE `page_blog_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_contact_items`
--
ALTER TABLE `page_contact_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_faq_items`
--
ALTER TABLE `page_faq_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_home_items`
--
ALTER TABLE `page_home_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_job_category_items`
--
ALTER TABLE `page_job_category_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_other_items`
--
ALTER TABLE `page_other_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_pricing_items`
--
ALTER TABLE `page_pricing_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_privacy_items`
--
ALTER TABLE `page_privacy_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page_term_items`
--
ALTER TABLE `page_term_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_choose_item`
--
ALTER TABLE `why_choose_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
