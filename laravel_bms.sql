-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 04:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_bms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `booking_datetime` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL COMMENT '1-booked,2-booking cancelled,3-booking fullfilled',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `booking_datetime`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(4, '11', '2023-06-21', 1, 1, '2023-06-25 11:04:40', '2023-06-25 11:06:03'),
(7, '11', '2023-06-15', 3, 2, '2023-06-26 04:50:40', '2023-06-26 08:47:46'),
(8, 'test', '2023-06-15', 1, 7, '2023-06-26 08:14:10', '2023-06-26 08:14:10'),
(9, 'test 2', '1111-11-11', 2, 7, '2023-06-26 08:14:29', '2023-06-26 08:14:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_14_091152_create_bookings_table', 1),
(6, '2023_06_14_091620_create_webpage_table', 1),
(7, '2023_06_14_092713_create_jobs_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `user_type` smallint(6) DEFAULT NULL COMMENT '1-admin,2-users',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone_no`, `user_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'BMS Admin', 'bms@yopmail.com', NULL, '9869285224', 1, '$2y$10$NMYZohYZSxM/i58viQGKXeAgbaonyISTdvwpiYn9M8VVeHJcBmu12', NULL, '2023-06-21 13:28:37', '2023-06-26 03:56:04'),
(2, 'kapil', 'ksbcell12@gmail.com', NULL, '1234567891', NULL, '$2y$10$H8.tVwuOrafxDFx2Y3fHluieE.Syo0gcSvu/EiDka6zNIFewMwS5S', NULL, '2023-06-22 05:53:48', '2023-06-26 08:48:03'),
(4, 'studentfeedback', 'admin@admin.com', NULL, '1234567890', 2, '$2y$10$MzLH386b3cybgpo0wgLfJ.1ikTHpFX6FzugTQUB1/5r3gVRm7DHKG', NULL, '2023-06-24 03:42:27', '2023-06-24 03:42:27'),
(6, 'test1', 'admin1@admin.com', NULL, '1234567890', 2, '$2y$10$uhDbYfjaEC/RRnq6L./s3uqbm9bnrf/UdLwYYiE07sZ8gi/MDA9ya', NULL, '2023-06-26 01:53:34', '2023-06-26 01:53:46'),
(7, 'test2', 'test@gmail.com', NULL, '1234567890', NULL, '$2y$10$coTqRT1rvGsqFpZA6p4R1O3PJcinovl.VYF250pNgSBjfgZnMzd3e', NULL, '2023-06-26 08:13:28', '2023-06-26 08:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE `webpage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `html` text DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`id`, `name`, `slug`, `html`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 'about-us', 'about-us', '<section class=\"container m-4\" id=\"about-us\">\n            <h6 class=\"display-5 text-center\">About Us</h6>\n            <div class=\"row\">\n                <div class=\"col-md-5\">\n                    <div class=\"container\">\n                        <img src=\"http://127.0.0.1:8000/assets/images/logo.png\" class=\"d-block w-100\" alt=\"about us\">\n                    </div>\n                </div>\n                <div class=\"col-md-7\">\n                    <p style=\"text-align: justify;\">\n                    <h1 class=\"text-center\" style=\"font-family: cursive;\">Introducing Kapil\'s</h1>\n                    <br>\n                    <p style=\"text-align: justify;\">Our hotel was founded by Mr. Sunil Bhatia, a\n                        visionary entrepreneur with a passion for creating exceptional hospitality experiences. With his\n                        keen business acumen and commitment to excellence, Mr. Bhatia established our hotel as a premier\n                        destination for luxury and comfort.</p>\n                    <br>\n                    <p style=\"text-align: justify;\"> Overseeing the day-to-day operations and ensuring the highest\n                        standards of service is Mr. Kapil\n                        Bhatia, our esteemed manager. With a wealth of experience in the hospitality industry, Mr.\n                        Bhatia leads our dedicated team to provide personalized and memorable experiences for our valued\n                        guests. His leadership and attention to detail ensure that every aspect of your stay is\n                        meticulously taken care of.</p>\n                    <br>\n                    <p style=\"text-align: justify;\">Under the guidance of Mr. Sunil Bhatia and the expertise of Mr.\n                        Kapil Bhatia, our hotel has\n                        flourished into a renowned establishment that epitomizes luxury, elegance, and exceptional\n                        service. We are proud to have such passionate individuals leading our team, dedicated to\n                        creating unforgettable moments for every guest who walks through our doors.</p>\n                    </p>\n                </div>\n            </div>\n            <div class=\"row\">\n                <h6 class=\"display-6 text-center\">What Makes us Unique</h6>\n                <div class=\"col-md-4\">\n                    <div class=\"container text-center\">\n                        <span class=\"bi bi-person color-teal icon-lg\"></span>\n                        <p>Custom Tailored user option</p>\n                    </div>\n                </div>\n                <div class=\"col-md-4\">\n                    <div class=\"container text-center\">\n                        <span class=\"bi bi-shield-shaded color-teal icon-lg\"></span>\n                        <p>Privacy First Approach</p>\n                    </div>\n                </div>\n                <div class=\"col-md-4\">\n                    <div class=\"container text-center\">\n                        <span class=\"bi bi-list color-teal icon-lg\"></span>\n                        <p>Multiple Variations</p>\n                    </div>\n                </div>\n            </div>\n        </section>', 1, 1, 1, '2023-06-26 00:37:32', '2023-06-26 08:26:16'),
(9, 'team', 'team', '<section id=\"team\" class=\"container m-4\">\n            <h6 class=\"display-5 text-center\"> Our Innovative Team</h6>\n            <div class=\"container\">\n                <div class=\"row\">\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\n                        <div class=\"card\" style=\"width: 300px;\">\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.jpg\">\n                            <div class=\"card-body text-center\">\n                                <h4 class=\"card-title\">Sunil G. Bhatia</h4>\n                                <p class=\"card-text\">Founder of the Hotel</p>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\n                        <div class=\"card\" style=\"width: 300px;\">\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.jpg\">\n                            <div class=\"card-body text-center\">\n                                <h4 class=\"card-title\">Kapil Sunil Bhatia</h4>\n                                <p class=\"card-text\">Manager of the Hotel</p>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-md-4 d-flex align-center justify-content-center\">\n                        <div class=\"card\" style=\"width: 300px;\">\n                            <img class=\"card-img-top\" src=\"http://localhost:8000/assets/images/person.jpg\">\n                            <div class=\"card-body text-center\">\n                                <h4 class=\"card-title\">Radha Sunil Bhatia</h4>\n                                <p class=\"card-text\">Treasurer</p>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-facebook icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-instagram icon-sm m-2\"></i></a>\n                                <a href=\"#\" style=\"color: black;\"><i class=\"bi bi-linkedin icon-sm m-2\"></i></a>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </section>', 1, 1, 1, '2023-06-26 04:28:24', '2023-06-26 08:26:59'),
(10, 'Contact Us', 'contact-us', ' <section id=\"contact\" class=\"container m-4\">\n            <h6 class=\"display-5 text-center\">Contact Us</h6>\n            <div class=\"row\">\n                <div class=\"col-md-6\">\n                    <div class=\"container p-3\">\n                        <p class=\"text-muted text-center fs-3\">Here\'s our contact info</p>\n                        <div class=\"text-black-s text-center fs-4\">Our email</div>\n                        <div class=\"text-black-50 text-center fs-5\">kapils@hotel.com</div>\n                        <div class=\"text-black-s text-center fs-4\">Our Phone No.</div>\n                        <div class=\"text-black-50 text-center fs-5\">+91 77108 86248</div>\n                        <div class=\"text-black-s text-center fs-4\">Our Address</div>\n                        <div class=\"text-black-50 text-center fs-5\">Navi Mumbai, Ulwe<br>Mumbai 410 206</div>\n                    </div>\n                </div>\n                <div class=\"col-md-6\">\n                    <div class=\"container\">\n                        <p class=\"text-muted text-center fs-3\">You can also Write to us</p>\n                        <div class=\"container p-3\">\n                            <div class=\"card shadow\">\n                                <div class=\"card-body\">\n                                    <form>\n                                        <div class=\"form-group\">\n                                            <label for=\"name\" class=\"form-label\"> Enter Your Name</label>\n                                            <input type=\"text\" class=\"form-control\" name=\"name\" id=\"name\">\n                                        </div>\n                                        <div class=\"form-group\">\n                                            <label for=\"emailid\" class=\"form-label\"> Enter Your Email</label>\n                                            <input type=\"text\" class=\"form-control\" name=\"email\" id=\"emailid\">\n                                        </div>\n                                        <div class=\"form-group\">\n                                            <label for=\"subject\" class=\"form-label\"> Enter Your Name</label>\n                                            <input type=\"text\" class=\"form-control\" name=\"subject\" id=\"subject\">\n                                        </div>\n                                        <div class=\"form-group\">\n                                            <label for=\"message\" class=\"form-label\"> Enter Your Message</label>\n                                            <textarea type=\"text\" class=\"form-control\" name=\"message\"\n                                                id=\"message\"></textarea>\n                                        </div>\n                                        <div class=\"form-group text-center\">\n                                            <input type=\"submit\" class=\"btn btn-outline-dark\" value=\"Send Message\">\n                                        </div>\n                                    </form>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </section>', 1, 1, NULL, '2023-06-26 04:30:13', '2023-06-26 04:30:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
