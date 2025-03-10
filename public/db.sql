-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 21, 2024 at 04:16 PM
-- Server version: 8.0.39-0ubuntu0.22.04.1
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fixit_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED NOT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  `alternative_phone` bigint DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `availability_radius` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `service_id`, `is_primary`, `latitude`, `longitude`, `area`, `postal_code`, `country_id`, `state_id`, `city`, `address`, `type`, `alternative_name`, `code`, `alternative_phone`, `status`, `created_at`, `updated_at`, `deleted_at`, `company_id`, `availability_radius`) VALUES
(2, 6, NULL, 1, NULL, NULL, 'Queen Street West', 'M5H2N2', 124, 666, 'Toronto', '456 Queen St W, Suite 700, Toronto, ON M5H 2N2', 'home', NULL, 1, NULL, 0, '2024-06-13 12:06:45', '2024-06-13 12:06:45', NULL, NULL, NULL),
(4, 8, NULL, 1, NULL, NULL, 'Surry Hills', '2010', 36, 266, 'Sydney', '321 Crown St, Unit 5, Sydney, NSW 2010', 'home', NULL, 1, NULL, 0, '2024-06-13 12:11:31', '2024-06-13 12:11:31', NULL, NULL, NULL),
(5, 9, NULL, 1, NULL, NULL, 'Andheri West', '400053', 356, 22, 'Mumbai', '654 Lokhandwala Complex, Andheri West, Mumbai, MH 400053', 'home', NULL, 1, NULL, 0, '2024-06-13 12:13:25', '2024-06-13 12:13:25', NULL, NULL, NULL),
(6, 10, NULL, 1, NULL, NULL, 'Manhattan', '10001', 840, 3787, 'New York', '111 Broadway, Apt 23C, New York, NY 10001', 'home', NULL, 1, NULL, 0, '2024-06-13 12:17:44', '2024-06-13 12:17:44', NULL, NULL, NULL),
(7, 11, NULL, 1, NULL, NULL, 'Docklands', '3008', 36, 273, 'Melbourne', '222 Collins St, Suite 800, Melbourne, VIC 3008', 'home', NULL, 1, NULL, 0, '2024-06-13 12:19:34', '2024-06-13 12:19:34', NULL, NULL, NULL),
(8, 12, NULL, 1, NULL, NULL, 'Chamberí', '28010', 724, 3150, 'Madrid', '333 Gran Vía, 5th Floor, Madrid, 28010', 'home', NULL, 1, NULL, 0, '2024-06-13 12:21:29', '2024-06-13 12:21:29', NULL, NULL, NULL),
(9, 13, NULL, 1, NULL, NULL, 'Sandton', '2196', 710, 3098, 'Johannesburg', '444 Rivonia Rd, Apt 12D, Sandton, Johannesburg, 2196', 'home', NULL, 1, NULL, 0, '2024-06-13 12:23:19', '2024-06-13 12:23:19', NULL, NULL, NULL),
(10, 14, NULL, 1, NULL, NULL, 'Parnell', '1052', 554, 2501, 'Auckland', '555 Parnell Rd, Unit 9, Parnell, Auckland, 1052', 'home', NULL, 1, NULL, 0, '2024-06-13 12:25:21', '2024-06-13 12:25:21', NULL, NULL, NULL),
(11, 15, NULL, 1, NULL, NULL, 'Orchard', '238841', 702, 3049, 'Singapore', '666 Orchard Rd, Apt 34B, Orchard, Singapore, 238841', 'home', NULL, 1, NULL, 0, '2024-06-13 12:28:11', '2024-06-13 12:28:11', NULL, NULL, NULL),
(12, 16, NULL, 1, NULL, NULL, 'Gangnam', '06164', 408, 1953, 'Seoul', '777 Teheran-ro, Suite 1800, Gangnam, Seoul, 06164', 'home', NULL, 1, NULL, 0, '2024-06-13 12:30:36', '2024-06-13 12:30:36', NULL, NULL, NULL),
(13, 17, NULL, 1, NULL, NULL, 'Trastevere', '00153', 380, 1771, 'Rome', '999 Via della Lungara, 3rd Floor, Trastevere, Rome, 00153', 'home', NULL, 1, NULL, 0, '2024-06-13 12:32:25', '2024-06-13 12:32:25', NULL, NULL, NULL),
(14, 18, NULL, 1, NULL, NULL, 'Edgbaston', 'B152TT', 840, 3754, 'Birmingham', '1010 Bristol Rd, Suite 400, Edgbaston, Birmingham, B15 2TT', 'home', NULL, 1, NULL, 0, '2024-06-13 12:34:47', '2024-06-13 12:34:47', NULL, NULL, NULL),
(15, 19, NULL, 1, NULL, NULL, 'Temple Bar', 'D02XY78', 372, 1686, 'Dublin', '1111 Fleet St, Apt 45A, Temple Bar, Dublin, D02 XY78', 'home', NULL, 1, NULL, 0, '2024-06-13 12:36:49', '2024-06-13 12:36:49', NULL, NULL, NULL),
(16, 20, NULL, 1, NULL, NULL, 'Downtown', '90001', 840, 3757, 'Los Angeles', '123 Main St, Apt 4B, Los Angeles, CA 90001', 'home', NULL, 1, NULL, 0, '2024-06-13 13:15:15', '2024-06-13 13:15:15', NULL, NULL, NULL),
(17, 21, NULL, 1, NULL, NULL, 'Canary Wharf', 'E145AB', 4, 42, 'London', '1 Canada Square, London, E14 5AB', 'home', NULL, 1, NULL, 0, '2024-06-13 13:33:01', '2024-06-13 13:33:01', NULL, NULL, NULL),
(18, 22, NULL, 1, NULL, NULL, 'Centro', '28001', 724, 3150, 'Madrid', '456 Calle de Alcalá, Madrid, 28001', 'work', NULL, 1, NULL, 0, '2024-06-13 13:38:24', '2024-06-13 13:38:24', NULL, NULL, NULL),
(19, 23, NULL, 1, NULL, NULL, 'Financial District', 'M5H2N2', 124, 655, 'Toronto', '789 Bay St, Suite 2100, Toronto, ON M5H 2N2', 'home', NULL, 1, NULL, 0, '2024-06-13 13:48:52', '2024-06-13 13:48:52', NULL, NULL, NULL),
(20, 24, NULL, 1, NULL, NULL, 'Indiranagar', '560038', 356, 17, 'Bangalore', '123 5th Main, Indiranagar, Bangalore, 560038', 'home', NULL, 1, NULL, 0, '2024-06-13 13:52:49', '2024-06-13 13:52:49', NULL, NULL, NULL),
(21, 25, NULL, 1, NULL, NULL, 'Downtown', '90001', 840, 3757, 'Los Angeles', '123 Main St, Apt 4B, Los Angeles, CA 90001', 'home', 'John Doe', 1, 555654423, 0, '2024-06-13 15:20:26', '2024-06-13 15:20:26', NULL, NULL, NULL),
(22, 26, NULL, 1, NULL, NULL, 'Canary Wharf', 'E145AB', 818, 1013, 'London', '1 Canada Square, London, E14 5AB', 'home', 'Jane Smith', 44, 456625523, 0, '2024-06-13 15:24:07', '2024-06-13 15:24:07', NULL, NULL, NULL),
(23, 27, NULL, 1, NULL, NULL, 'Mitte', '10117', 276, 1316, 'Berlin', '123 Unter den Linden, Berlin, 10117', 'other', 'Harry Brown', 49, 305555759, 0, '2024-06-13 15:26:24', '2024-06-13 15:26:24', NULL, NULL, NULL),
(24, 28, NULL, 1, NULL, NULL, 'Orchard', '238841', 702, 3049, 'Singapore', '456 Orchard Rd, Singapore, 238841', 'home', NULL, 1, NULL, 0, '2024-06-14 04:18:09', '2024-06-14 04:18:09', NULL, NULL, NULL),
(25, 29, NULL, 1, NULL, NULL, 'Downtown', '11511', 818, 1015, 'Cairo', '456 Tahrir Square, Cairo, 11511', 'work', NULL, 1, NULL, 0, '2024-06-14 04:33:17', '2024-06-14 04:33:17', NULL, NULL, NULL),
(28, 30, NULL, 1, NULL, NULL, 'Upper East Side', '10028', 840, 3787, 'New York', '456 Lexington Avenue', 'home', NULL, 1, NULL, 0, '2024-06-14 09:29:49', '2024-06-14 09:29:49', NULL, NULL, NULL),
(29, 31, NULL, 1, NULL, NULL, 'Market Street', '94103', 840, 3757, 'San Francisco', '123 Market Street, Suite 400', 'home', NULL, 1, NULL, 0, '2024-06-14 10:16:21', '2024-06-14 10:16:21', NULL, NULL, NULL),
(30, 32, NULL, 1, NULL, NULL, 'Central Business District', '2000', 36, 266, 'Sydney', '789 George Street, Apt 101', 'home', NULL, 1, NULL, 0, '2024-06-14 10:19:50', '2024-06-14 10:19:50', NULL, NULL, NULL),
(31, 33, NULL, 1, NULL, NULL, 'Mitte', '10117', 276, 1316, 'Berlin', '123 Unter den Linden, 2nd Floor', 'home', NULL, 1, NULL, 0, '2024-06-14 10:27:57', '2024-06-14 10:27:57', NULL, NULL, NULL),
(32, 34, NULL, 1, NULL, NULL, 'Salamanca', '28006', 724, 3150, 'Madrid', '45 Calle de Serrano, Office 301', 'home', NULL, 1, NULL, 0, '2024-06-14 10:31:40', '2024-06-14 10:31:40', NULL, NULL, NULL),
(33, 35, NULL, 1, NULL, NULL, 'Mission District', '94110', 840, 3757, 'San Francisco', '456 Oak St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:19:53', '2024-06-14 14:19:53', NULL, NULL, NULL),
(34, 36, NULL, 1, NULL, NULL, 'Manhattan', '10001', 840, 3787, 'New York City', '789 Elm St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:23:07', '2024-06-14 14:23:07', NULL, NULL, NULL),
(35, 37, NULL, 1, NULL, NULL, 'Downtown', '77002', 840, 3800, 'Houston', '101 Main St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:26:37', '2024-06-14 14:26:37', NULL, NULL, NULL),
(36, 38, NULL, 1, NULL, NULL, 'Williamsburg', '11211', 840, 3787, 'Brooklyn', '123 Maple St', 'work', NULL, 1, NULL, 0, '2024-06-14 14:32:57', '2024-06-14 14:32:57', NULL, NULL, NULL),
(37, 39, NULL, 1, NULL, NULL, 'Union Square', '94102', 840, 3757, 'San Francisco', '789 Chestnut St', 'work', NULL, 1, NULL, 0, '2024-06-14 14:37:00', '2024-06-14 14:37:00', NULL, NULL, NULL),
(38, 40, NULL, 1, NULL, NULL, 'Little India', '77004', 840, 3800, 'Houston', '456 Walnut St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:41:01', '2024-06-14 14:41:01', NULL, NULL, NULL),
(39, 41, NULL, 1, NULL, NULL, 'Downtown', '78701', 840, 3800, 'Austin', '789 Main St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:44:06', '2024-06-14 14:44:06', NULL, NULL, NULL),
(40, 42, NULL, 1, NULL, NULL, 'Chinatown', '94108', 840, 3757, 'San Francisco', '555 Grant Ave', 'home', NULL, 1, NULL, 0, '2024-06-14 14:47:42', '2024-06-14 14:47:42', NULL, NULL, NULL),
(41, 43, NULL, 1, NULL, NULL, 'Downtown', '78205', 840, 3800, 'San Antonio', '101 Broadway St', 'home', NULL, 1, NULL, 0, '2024-06-14 14:51:39', '2024-06-14 14:51:39', NULL, NULL, NULL),
(42, 44, NULL, 1, NULL, NULL, 'Chinatown', '90012', 840, 3757, 'Los Angeles', '123 Spring St', 'home', NULL, 1, 9563556644, 0, '2024-06-14 14:55:03', '2024-06-14 14:55:03', NULL, NULL, NULL),
(43, 45, NULL, 1, NULL, NULL, 'Uptown', '75201', 840, 3800, 'Dallas', '789 Pine St', 'home', NULL, 1, NULL, 0, '2024-06-14 15:03:40', '2024-06-14 15:03:40', NULL, NULL, NULL),
(44, 46, NULL, 1, NULL, NULL, 'Little Tehran', '90024', 840, 3757, 'Los Angeles', '555 Olive St', 'home', NULL, 1, NULL, 0, '2024-06-14 15:08:14', '2024-06-14 15:08:14', NULL, NULL, NULL),
(45, 47, NULL, 1, NULL, NULL, 'Jamaica', '11432', 840, 3787, 'Queens', '456 Maple Ave', 'home', NULL, 1, NULL, 0, '2024-06-14 15:31:04', '2024-06-14 15:31:04', NULL, NULL, NULL),
(46, 48, NULL, 1, NULL, NULL, 'Westside', 'Westside', 840, 3800, 'San Antonio', '78207', 'home', NULL, 1, NULL, 0, '2024-06-14 15:41:06', '2024-06-14 15:41:06', NULL, NULL, NULL),
(47, 49, NULL, 1, NULL, NULL, 'Garment District', '10018', 840, 3787, 'Manhattan', '456 Silk St', 'home', NULL, 1, NULL, 0, '2024-06-14 15:44:42', '2024-06-14 15:44:42', NULL, NULL, NULL),
(48, 50, NULL, 1, NULL, NULL, 'East Dallas', '75204', 840, 3800, 'Dallas', '101 Water St', 'home', NULL, 1, NULL, 0, '2024-06-14 15:48:27', '2024-06-14 15:48:27', NULL, NULL, NULL),
(49, NULL, 3, 1, NULL, NULL, 'Andheri East', '400069', 356, 22, 'Mumbai', '123 MG Road, Andheri East, Mumbai, Maharashtra, 400069', 'home', NULL, 1, NULL, 0, '2024-06-14 16:12:40', '2024-06-14 16:12:40', NULL, NULL, NULL),
(50, NULL, 4, 0, NULL, NULL, 'Hinjewadi', '411057', 356, 22, 'Pune', '456 IT Park Road, Hinjewadi, Pune, Maharashtra, 411057', 'home', NULL, 1, NULL, 0, '2024-06-14 16:16:21', '2024-06-14 16:16:21', NULL, NULL, NULL),
(51, NULL, 5, 0, NULL, NULL, 'Dharampeth', '440010', 356, 22, 'Nagpur', '789 Main Street, Dharampeth, Nagpur, Maharashtra, 440010', 'home', NULL, 1, NULL, 0, '2024-06-14 16:19:54', '2024-06-14 16:19:54', NULL, NULL, NULL),
(52, NULL, 6, 0, NULL, NULL, 'Gangapur Road', '422005', 356, 22, 'Nashik', '654 Mahatma Nagar, Gangapur Road, Nashik, Maharashtra, 422005', 'home', NULL, 1, NULL, 0, '2024-06-14 16:24:23', '2024-06-14 16:24:23', NULL, NULL, NULL),
(53, NULL, 7, 0, NULL, NULL, 'CIDCO', '431003', 356, 22, 'Aurangabad', '987 Aurangabad-Mumbai Highway, CIDCO, Aurangabad, Maharashtra, 431003', 'home', NULL, 1, NULL, 0, '2024-06-14 16:29:54', '2024-06-14 16:29:54', NULL, NULL, NULL),
(54, NULL, 8, 0, NULL, NULL, 'Bandra West', '400050', 356, 22, 'Mumbai', '12 Hill Road, Bandra West, Mumbai, Maharashtra, 400050', 'home', NULL, 1, NULL, 0, '2024-06-14 16:42:06', '2024-06-14 16:42:06', NULL, NULL, NULL),
(55, NULL, 9, 0, NULL, NULL, 'Koregaon Park', '411001', 356, 22, 'Pune', '34 North Main Road, Koregaon Park, Pune, Maharashtra, 411001', 'home', NULL, 1, NULL, 0, '2024-06-14 16:46:08', '2024-06-14 16:46:08', NULL, NULL, NULL),
(56, NULL, 10, 0, NULL, NULL, 'Civil Lines', '440001', 356, 22, 'Nagpur', '56 Residency Road, Civil Lines, Nagpur, Maharashtra, 440001', 'home', NULL, 1, NULL, 0, '2024-06-14 16:51:34', '2024-06-14 16:51:34', NULL, NULL, NULL),
(57, NULL, 11, 0, NULL, NULL, 'Vartak Nagar', '400606', 356, 22, 'Thane', '78 Gokhale Road, Vartak Nagar, Thane, Maharashtra, 400606', 'home', NULL, 1, NULL, 0, '2024-06-14 16:55:47', '2024-06-14 16:55:47', NULL, NULL, NULL),
(58, NULL, 12, 0, NULL, NULL, 'Kothrud', '411038', 356, 22, 'Pune', '45 Paud Road, Kothrud, Pune, Maharashtra, 411038', 'home', NULL, 1, NULL, 0, '2024-06-14 16:59:04', '2024-06-14 16:59:04', NULL, NULL, NULL),
(59, 51, NULL, 1, NULL, NULL, 'Little Tokyo', '90012', 840, 3757, 'Los Angeles', '456 Pine St', 'work', NULL, 1, NULL, 0, '2024-06-15 05:35:18', '2024-06-15 05:35:18', NULL, NULL, NULL),
(60, 52, NULL, 1, NULL, NULL, 'Downtown', '75201', 840, 3800, 'Dallas', '456 Water St', 'home', NULL, 1, NULL, 0, '2024-06-15 05:50:55', '2024-06-15 05:50:55', NULL, NULL, NULL),
(61, 53, NULL, 1, NULL, NULL, 'Little Tokyo', '90012', 840, 3757, 'Los Angeles', '789 Cherry St', 'home', NULL, 1, NULL, 0, '2024-06-15 05:58:22', '2024-06-15 05:58:22', NULL, NULL, NULL),
(62, 54, NULL, 1, NULL, NULL, 'Carlton', '3053', 36, 273, 'Carlton', '987 Swanston Street', 'home', NULL, 1, NULL, 0, '2024-06-15 06:16:57', '2024-06-24 12:42:29', NULL, NULL, NULL),
(63, 55, NULL, 1, NULL, NULL, 'Hyde Park', '5061', 36, 270, 'Unley', '456 King William Road', 'home', NULL, 1, NULL, 0, '2024-06-15 06:19:44', '2024-06-24 12:41:06', NULL, NULL, NULL),
(64, 56, NULL, 1, NULL, NULL, 'Adelaide CBD', '5000', 36, 270, 'Adelaide', '321 Hutt Street', 'home', NULL, 1, NULL, 0, '2024-06-15 06:22:37', '2024-06-24 12:39:34', NULL, NULL, NULL),
(65, 57, NULL, 1, NULL, NULL, 'Docklands', '3008', 36, 273, 'Melbourne', '789 Bourke Street', 'home', NULL, 1, NULL, 0, '2024-06-15 06:25:30', '2024-06-24 12:30:57', NULL, NULL, NULL),
(66, 58, NULL, 1, NULL, NULL, 'Adelaide CBD', '5000', 36, 270, 'Adelaide', '123 Rundle Street', 'home', NULL, 1, NULL, 0, '2024-06-15 06:33:47', '2024-06-24 12:27:50', NULL, NULL, NULL),
(67, 59, NULL, 1, NULL, NULL, 'Northbridge', '6003', 36, 275, 'Perth', '456 Murray Street', 'home', NULL, 1, NULL, 0, '2024-06-15 07:07:38', '2024-06-24 12:25:34', NULL, NULL, NULL),
(68, 60, NULL, 1, NULL, NULL, 'Fortitude Valley', '4006', 36, 269, 'Brisbane', '789 Adelaide Street', 'home', NULL, 1, NULL, 0, '2024-06-15 07:10:13', '2024-06-24 12:20:12', NULL, NULL, NULL),
(69, 61, NULL, 1, NULL, NULL, 'North Adelaide', '5006', 36, 270, 'Adelaide', '654 King William Street', 'home', NULL, 1, NULL, 0, '2024-06-15 07:13:49', '2024-06-24 12:16:02', NULL, NULL, NULL),
(70, 62, NULL, 1, NULL, NULL, 'Southbank', '3006', 36, 273, 'Melbourne', '654 Flinders Street', 'home', NULL, 1, NULL, 0, '2024-06-15 07:16:46', '2024-06-24 12:18:02', NULL, NULL, NULL),
(71, NULL, 13, 0, NULL, NULL, 'California Street, San Francisco, CA, USA', '20005', 840, 3757, 'San Francisco', 'California Street, San Francisco, CA, USA', 'home', NULL, 1, NULL, 0, '2024-06-15 08:53:50', '2024-06-15 08:53:50', NULL, NULL, NULL),
(72, NULL, 14, 0, NULL, NULL, '1234 Oak Street Apt 101', '62701', 840, 3766, 'Springfield', '1234 Oak Street Apt 101', 'home', NULL, 1, NULL, 0, '2024-06-15 09:02:45', '2024-06-15 09:02:45', NULL, NULL, NULL),
(73, NULL, 15, 0, NULL, NULL, 'Westwood', '90024', 840, 3757, 'Los Angeles', '1234 Westwood Blvd., Suite 500', 'home', NULL, 1, NULL, 0, '2024-06-15 09:38:14', '2024-06-15 09:38:14', NULL, NULL, NULL),
(74, NULL, 16, 0, NULL, NULL, '123 Wall St., Suite 100', '10018', 840, 3757, 'Midtown Manhattan', '123 Wall St., Suite 100', 'home', NULL, 1, NULL, 0, '2024-06-15 09:43:20', '2024-06-15 09:43:20', NULL, NULL, NULL),
(75, NULL, 17, 0, NULL, NULL, 'Midtown Manhattan', '10018', 840, 3787, 'New York City', '123 Wall St., Suite 100', 'home', NULL, 1, NULL, 0, '2024-06-15 09:49:13', '2024-06-15 09:49:13', NULL, NULL, NULL),
(76, NULL, 18, 0, NULL, NULL, 'Midtown Manhattan', '10018', 840, 3787, 'New York City', '123 Wall St., Suite 100', 'home', NULL, 1, NULL, 0, '2024-06-15 09:54:36', '2024-06-15 09:54:36', NULL, NULL, NULL),
(77, NULL, 19, 0, NULL, NULL, 'Midtown Manhattan', '20056', 840, 3787, 'New York City', 'Midtown Manhattan 20056', 'home', NULL, 1, NULL, 0, '2024-06-15 10:06:37', '2024-06-15 10:06:37', NULL, NULL, NULL),
(78, NULL, 20, 0, NULL, NULL, 'Hollywood', '90028', 840, 3757, 'Los Angeles', '123 Hollywood Blvd', 'home', NULL, 1, NULL, 0, '2024-06-15 10:25:03', '2024-06-15 10:25:03', NULL, NULL, NULL),
(79, NULL, 21, 0, NULL, NULL, 'Mayfair', 'W1J7BX', 882, 2990, 'London', '456 Mayfair St', 'home', NULL, 1, NULL, 0, '2024-06-15 10:30:04', '2024-06-15 10:30:04', NULL, NULL, NULL),
(80, NULL, 22, 0, NULL, NULL, 'CBD', '3000', 36, 273, 'Melbourne', '789 Collins St', 'home', NULL, 1, NULL, 0, '2024-06-15 10:34:36', '2024-06-15 10:34:36', NULL, NULL, NULL),
(81, NULL, 23, 0, NULL, NULL, 'Canary Wharf', '20056', 840, 3757, 'New York', 'Califonia new your 20056', 'home', NULL, 1, NULL, 0, '2024-06-15 10:47:53', '2024-06-15 10:47:53', NULL, NULL, NULL),
(82, NULL, 24, 0, NULL, NULL, '123 Cool Breeze Avenue', '12345', 840, 3757, 'Summerville', '123 Cool Breeze Avenue Summerville', 'work', NULL, 1, NULL, 0, '2024-06-17 09:02:52', '2024-06-17 09:02:52', NULL, NULL, NULL),
(83, NULL, 25, 0, NULL, NULL, '456 Shiny Lane', '67890', 840, 3800, 'Autotown', '456 Shiny Lane, Texas', 'home', NULL, 1, NULL, 0, '2024-06-17 09:16:45', '2024-06-17 09:16:45', NULL, NULL, NULL),
(84, NULL, 26, 0, NULL, NULL, '789 Cool Air Boulevard', '98765', 840, 3804, 'Chilltown', '789 Cool Air Boulevard, Florida', 'home', NULL, 1, NULL, 0, '2024-06-17 09:23:55', '2024-06-17 09:23:55', NULL, NULL, NULL),
(85, NULL, 27, 0, NULL, NULL, '101 Quick Fix Road', '11223', 840, 3787, 'Rapid City', '101 Quick Fix Road, New York', 'home', NULL, 1, NULL, 0, '2024-06-17 09:30:40', '2024-06-17 09:30:40', NULL, NULL, NULL),
(86, NULL, 28, 0, NULL, NULL, '202 Waterworks Lane', '75432', 840, 3800, 'Flowville', '202 Waterworks Lane, Texas 75432', 'home', NULL, 1, NULL, 0, '2024-06-17 09:50:21', '2024-06-17 09:50:21', NULL, NULL, NULL),
(87, NULL, 29, 0, NULL, NULL, '303 Bright Spark Avenue', '94123', 840, 3757, 'Electro City', '303 Bright Spark Avenue, Electro City', 'home', NULL, 1, NULL, 0, '2024-06-17 09:54:17', '2024-06-17 09:54:17', NULL, NULL, NULL),
(88, NULL, 30, 0, NULL, NULL, '123 Sparkling Street', '90210', 840, 3757, 'Cleanville', '123 Sparkling Street, California 90210', 'home', NULL, 1, NULL, 0, '2024-06-17 10:09:41', '2024-06-17 10:09:41', NULL, NULL, NULL),
(89, NULL, 31, 0, NULL, NULL, '456 Fresh Carpet Lane', '90210', 581, 3808, 'Cleanville', '456 Fresh Carpet Lane', 'home', NULL, 1, NULL, 0, '2024-06-17 10:13:09', '2024-06-17 10:13:09', NULL, NULL, NULL),
(90, NULL, 32, 0, NULL, NULL, '789 Clear View Road', '90210', 840, 3757, 'Cleanville', '789 Clear View Road, Cleanville', 'home', NULL, 1, NULL, 0, '2024-06-17 10:16:56', '2024-06-17 10:16:56', NULL, NULL, NULL),
(91, NULL, 33, 0, NULL, NULL, '123 Crafted Lane', '75001', 840, 3800, 'Furnitureville', '123 Crafted Lane, Furnitureville', 'home', NULL, 1, NULL, 0, '2024-06-17 10:30:52', '2024-06-17 10:30:52', NULL, NULL, NULL),
(92, NULL, 34, 0, NULL, NULL, '456 Renewal Avenue', '75001', 840, 3800, 'Furnitureville', '456 Renewal Avenue, Furnitureville', 'home', NULL, 1, NULL, 0, '2024-06-17 10:39:32', '2024-06-17 10:39:32', NULL, NULL, NULL),
(93, NULL, 35, 0, NULL, NULL, '789 Culinary Lane', '90210', 840, 3757, 'Kitchenville', '789 Culinary Lane', 'home', NULL, 1, NULL, 0, '2024-06-17 11:03:03', '2024-06-17 11:03:03', NULL, NULL, NULL),
(94, NULL, 36, 0, NULL, NULL, '123 Bath Avenue', '10101', 840, 3787, 'Batheville', '123 Bath Avenue, Batheville', 'home', NULL, 1, NULL, 0, '2024-06-17 11:14:18', '2024-06-17 11:14:18', NULL, NULL, NULL),
(95, NULL, 37, 0, NULL, NULL, '456 Craft Street', '75001', 840, 3800, 'Cabinetville', '456 Craft Street, Cabinetville', 'home', NULL, 1, NULL, 0, '2024-06-17 11:36:05', '2024-06-17 11:36:05', NULL, NULL, NULL),
(96, NULL, 38, 0, NULL, NULL, 'Floorville', '90210', 840, 3757, '123 Timber Lane', '123 Timber Lane, Floorville', 'home', NULL, 1, NULL, 0, '2024-06-17 12:21:12', '2024-06-17 12:21:12', NULL, NULL, NULL),
(97, NULL, 39, 0, NULL, NULL, '456 Maple Avenue', '90210', 840, 3757, 'Floorville', '456 Maple Avenue, California', 'home', NULL, 1, NULL, 0, '2024-06-17 12:27:15', '2024-06-17 12:27:15', NULL, NULL, NULL),
(98, NULL, 40, 0, NULL, NULL, '789 Pattern Place', '90210', 840, 3757, 'Floorville', '789 Pattern Place, 90210', 'home', NULL, 1, NULL, 0, '2024-06-17 12:30:44', '2024-06-17 12:30:44', NULL, NULL, NULL),
(99, NULL, 41, 0, NULL, NULL, 'Florida, 123 Deck Lane', '33101', 840, 3757, 'Outdoorville', '123 Deck Lane, Florida', 'home', NULL, 1, NULL, 0, '2024-06-17 12:37:54', '2024-06-17 12:37:54', NULL, NULL, NULL),
(100, NULL, 42, 0, NULL, NULL, '456 Renewal Avenue', '33101', 840, 3753, 'Outdoorville', 'Outdoorville', 'home', NULL, 1, NULL, 0, '2024-06-17 12:41:02', '2024-06-17 12:41:02', NULL, NULL, NULL),
(101, NULL, 43, 0, NULL, NULL, '789 Care Street', '33101', 840, 3774, 'Outdoorville', '789 Care Street', 'home', NULL, 1, NULL, 0, '2024-06-17 12:44:03', '2024-06-17 12:44:03', NULL, NULL, NULL),
(102, NULL, 44, 0, NULL, NULL, '123 Culinary Lane', '10001', 840, 3787, 'Gourmetville', '123 Culinary Lane, New York 10001', 'home', NULL, 1, NULL, 0, '2024-06-17 12:52:15', '2024-06-17 12:52:15', NULL, NULL, NULL),
(103, NULL, 45, 0, NULL, NULL, '456 Celebration Avenue', '10001', 840, 3787, 'Gourmetville', '456 Celebration Avenue, Gourmetville', 'home', NULL, 1, NULL, 0, '2024-06-17 12:56:10', '2024-06-17 12:56:10', NULL, NULL, NULL),
(105, 2, NULL, 1, NULL, NULL, 'Downtown', '90001', 784, 3634, 'Los Angeles', '1234 Elm Street, Apartment 56', 'home', NULL, 1, NULL, 0, '2024-07-22 21:15:32', '2024-07-22 21:15:32', NULL, NULL, NULL),
(106, 3, NULL, 1, NULL, NULL, 'Los Angeles County', '90001', 840, 3800, 'Torrance', 'California 91, Torrance, CA, USA', NULL, NULL, NULL, NULL, 0, '2024-07-22 22:54:09', '2024-07-22 22:54:09', NULL, NULL, NULL),
(107, 4, NULL, 1, '21.1982944', '72.7961018', 'Adajan', '395009', 784, 3634, 'Surat', 'Adajan, 324', 'home', NULL, NULL, NULL, 1, '2024-07-23 01:03:45', '2024-07-23 01:03:45', NULL, NULL, 0),
(108, 2, NULL, 0, '21.1982974', '72.7961014', NULL, '12345', 840, 3757, 'los Angeles', '123 main street', 'home', 'jack', 1, 22554433, 1, '2024-07-24 04:11:03', '2024-07-24 04:11:03', NULL, NULL, NULL),
(109, 2, NULL, 0, '21.1983', '72.7960946', NULL, '67890', 840, 3800, 'Austin', '456', 'home', 'office', 1, 365241, 1, '2024-07-24 04:12:29', '2024-07-24 04:12:29', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `user_id`, `bank_name`, `holder_name`, `account_number`, `branch_name`, `ifsc_code`, `swift_code`, `created_at`, `updated_at`) VALUES
(1, 3, 'Example Bank Name', 'Provider Example', '12345678901', 'Eample Branch Name', 'IFSC12345CODE', 'SWIFT12345CODE', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(2, 20, 'Bank of America', 'Sarah Johnson', '1234567890', 'Downtown', 'BOFAUS3N', 'BOFAUS3NXXX', '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
(3, 21, 'HSBC', 'John Smith', '9876543210', 'City of London', 'HBUKGB4B', 'HBUKGB4BXXX', '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
(4, 22, 'Santander', 'Carlos Ramirez', '1122334455', 'Madrid Central', 'BSCHESMM', 'BSCHESMMXXX', '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
(5, 23, 'TD Canada Trust', 'Emma Thompson', '3344556677', 'Toronto Downtown', 'TDOMCATTTOR', 'TDOMCATTTORXXX', '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
(6, 24, 'State Bank of India', 'Priya Kapoor', '5566778899', 'Bangalore Main', 'SBIN0001234', 'SBININBBXXX', '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
(7, 30, 'Capital One', 'Emily Turner', '123456789012', 'Manhattan Branch', 'CPONUS33', 'CPONUS33XXX', '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
(8, 31, 'Bank of America', 'John Doe', '1234567890', 'Main Street Branch', 'BOFAUS3N', 'BOFAUS3NXXX', '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
(9, 32, 'Commonwealth Bank', 'Emily Johnson', '3344556677', 'Sydney Central Branch', 'CTBAAU2S', 'CTBAAU2SXXX', '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
(10, 33, 'Deutsche Bank', 'Mark Wilson', '6677889900', 'Berlin Main Branch', 'DEUTDEBB', 'DEUTDEBBXXX', '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
(11, 34, 'Banco Santander', 'Maria Garcia', '1122334455', 'Madrid Central Branch', 'BSCHESMM', 'BSCHESMMXXX', '2024-06-14 10:31:40', '2024-06-14 10:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_offer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `type`, `related_id`, `status`, `is_offer`, `created_at`, `updated_at`) VALUES
(1, '50% off in Cleaning', 'category', 7, 1, 0, '2024-06-14 12:04:20', '2024-06-14 12:05:24'),
(2, 'On first 50 booking', 'category', 13, 1, 0, '2024-06-14 12:05:12', '2024-06-14 12:05:12'),
(3, 'Most valuable offer', 'category', 37, 1, 1, '2024-06-14 12:14:37', '2024-06-14 12:14:37'),
(4, 'Most valuable offer', 'category', 25, 1, 1, '2024-06-14 12:17:59', '2024-06-14 12:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_featured` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_by_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `description`, `content`, `meta_title`, `meta_description`, `is_featured`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Top 10 Must-Have Home Services for a Stress-Free Living', 'top-10-must-have-home-services-for-a-stress-free-living', 'Explore essential home services that can help you maintain a stress-free living environment.', '<p>In today\'s fast-paced world, maintaining a stress-free home environment can be challenging. The demands of work, family, and social commitments leave little time for household chores and maintenance. This is where professional home services come to the rescue, ensuring your home remains a sanctuary of peace and comfort. Here are the top 10 must-have home services for stress-free living:</p>\r\n<h3>1. House Cleaning Services</h3>\r\n<p>Regular cleaning services keep your home sparkling clean, eliminating dust, dirt, and allergens. Professional cleaners tackle hard-to-reach areas, ensuring a thorough clean and a healthy living environment.</p>\r\n<h3>2. AC Maintenance and Repair</h3>\r\n<p>Regular air conditioning maintenance ensures your system runs efficiently, preventing unexpected breakdowns and keeping your home cool during hot weather. Timely repairs also extend the lifespan of your AC unit.</p>\r\n<h3>3. Plumbing Services</h3>\r\n<p>From fixing leaky faucets to unclogging drains, professional plumbers handle all your plumbing needs. This prevents water damage, reduces the risk of mold growth, and maintains a smoothly running household.</p>\r\n<h3>4. Electrician Services</h3>\r\n<p>Whether it\'s installing new lighting fixtures or repairing electrical issues, skilled electricians ensure your home\'s electrical system is safe and functional. This reduces the risk of electrical hazards and enhances your home\'s comfort.</p>\r\n<h3>5. Pest Control Services</h3>\r\n<p>Keep your home free from pests with regular pest control services. Professional exterminators identify and eliminate infestations, ensuring a pest-free environment and protecting your health and property.</p>\r\n<h3>6. Gardening and Landscaping</h3>\r\n<p>A well-maintained garden enhances the beauty of your home. Gardening services include lawn care, pruning, and landscape design, creating a serene outdoor space for relaxation and enjoyment.</p>\r\n<h3>7. Handyman Services</h3>\r\n<p>From minor repairs to major renovations, a handyman can tackle various tasks around the house, saving you time and effort. Their expertise ensures that your home is always in top condition.</p>\r\n<h3>8. Home Security Systems</h3>\r\n<p>Installing a home security system provides peace of mind by protecting your home from intruders and emergencies. Regular maintenance ensures the system is always operational, safeguarding your family and property.</p>\r\n<h3>9. Carpet and Upholstery Cleaning</h3>\r\n<p>Professional cleaning services remove deep-seated dirt and stains from carpets and upholstery, extending their lifespan and keeping your home fresh. This enhances indoor air quality and the overall cleanliness of your home.</p>\r\n<h3>10. Cooking Services</h3>\r\n<p>Personal chefs or meal prep services take the hassle out of daily cooking, providing healthy, delicious meals tailored to your preferences. This saves time and ensures you and your family enjoy nutritious, home-cooked meals.</p>\r\n<p>Investing in these essential home services not only maintains the functionality and aesthetics of your home but also significantly reduces stress. By outsourcing these tasks to professionals, you can focus on enjoying your living space and spending quality time with your loved ones. A clean, well-maintained home contributes to a healthier lifestyle, enhances your well-being, and ultimately provides a stress-free living environment. Embrace these services and transform your home into a sanctuary where you can relax, unwind, and recharge.</p>', 'Top 10 Must-Have Home Services for a Stress-Free Living', 'Explore essential home services that can help you maintain a stress-free living environment.', 1, 1, 1, '2024-06-14 13:10:04', '2024-06-24 10:50:11', NULL),
(2, 'Why Regular AC Maintenance is Essential for Your Home', 'why-regular-ac-maintenance-is-essential-for-your-home', 'Learn about the importance of regular AC maintenance and how it can benefit your home.', '<p>Regular air conditioning maintenance is a crucial aspect of home care that is often overlooked. However, it plays a significant role in ensuring the comfort, efficiency, and longevity of your cooling system. Here are several reasons why regular AC maintenance is essential for your home:</p>\r\n<h3>1. Improved Energy Efficiency</h3>\r\n<p>Routine maintenance helps your air conditioner run more efficiently by ensuring all components are clean and functioning correctly. A well-maintained AC unit uses less energy to cool your home, which can significantly reduce your energy bills.</p>\r\n<h3>2. Extended Lifespan</h3>\r\n<p>Regular maintenance extends the lifespan of your air conditioning unit. By addressing minor issues before they become major problems, you can avoid costly repairs or premature replacement of your system.</p>\r\n<h3>3. Better Air Quality</h3>\r\n<p>A well-maintained AC unit improves indoor air quality by reducing the accumulation of dust, allergens, and other pollutants. Regular cleaning and filter changes prevent these contaminants from circulating throughout your home, creating a healthier living environment.</p>\r\n<h3>4. Consistent Cooling Performance</h3>\r\n<p>Maintenance ensures that your AC unit performs consistently, providing reliable cooling throughout the hottest months. Regular check-ups can identify and resolve issues that may cause uneven cooling or system inefficiencies.</p>\r\n<h3>5. Prevention of Major Breakdowns</h3>\r\n<p>Routine inspections and tune-ups help detect potential problems early, preventing unexpected and costly breakdowns. This proactive approach saves you from the discomfort and inconvenience of a malfunctioning AC unit during peak usage times.</p>\r\n<h3>6. Cost Savings on Repairs</h3>\r\n<p>By addressing small issues during regular maintenance, you can avoid expensive repair bills. Preventative maintenance is generally more affordable than emergency repairs or complete system replacements.</p>\r\n<h3>7. Enhanced Safety</h3>\r\n<p>Regular maintenance ensures that your AC unit operates safely. Technicians check for potential hazards such as refrigerant leaks or electrical issues, reducing the risk of accidents or damage to your home.</p>\r\n<h3>8. Warranty Compliance</h3>\r\n<p>Many AC manufacturers require regular maintenance to keep the warranty valid. Skipping maintenance can void your warranty, leaving you responsible for any repair costs that would have otherwise been covered.</p>\r\n<h3>9. Environmental Benefits</h3>\r\n<p>An efficiently running AC unit has a lower carbon footprint. By keeping your system in top condition, you contribute to environmental sustainability by reducing energy consumption and greenhouse gas emissions.</p>\r\n<h3>10. Peace of Mind</h3>\r\n<p>Knowing that your AC unit is well-maintained gives you peace of mind. You can relax and enjoy a comfortable home environment, confident that your cooling system is reliable and efficient.</p>\r\n<p>In conclusion, regular AC maintenance is essential for ensuring the efficiency, longevity, and reliability of your air conditioning system. By investing in routine check-ups and cleanings, you can enjoy lower energy bills, improved air quality, and consistent cooling performance. Don\'t wait for your AC unit to break down&mdash;schedule regular maintenance to keep your home cool and comfortable all year round.</p>', 'Why Regular AC Maintenance is Essential for Your Home', 'Learn about the importance of regular AC maintenance and how it can benefit your home.', 1, 1, 1, '2024-06-14 13:11:52', '2024-06-24 10:47:05', NULL),
(3, 'The Ultimate Guide to Choosing the Best Spa Services Near You', 'the-ultimate-guide-to-choosing-the-best-spa-services-near-you', 'Find out how to select the perfect spa services to relax and rejuvenate your mind and body.', '<p>Choosing the best spa services can be a daunting task, especially with so many options available. Whether you\'re looking for a relaxing massage, a rejuvenating facial, or a luxurious body treatment, it\'s important to choose a spa that meets your needs and provides the level of service you deserve. Here are some tips to help you choose the best spa services near you:</p>\r\n<h3>1. Determine Your Needs</h3>\r\n<p>Before you start looking for a spa, determine what services you\'re interested in. Are you looking for a specific treatment, such as a deep tissue massage or a body wrap? Or are you looking for a spa that offers a variety of services so you can try different treatments?</p>\r\n<h3>2. Research Spas in Your Area</h3>\r\n<p>Once you know what services you\'re looking for, research spas in your area that offer those services. Look for spas with positive reviews and a good reputation for providing high-quality services.</p>\r\n<h3>3. Consider the Spa\'s Atmosphere</h3>\r\n<p>The atmosphere of a spa can greatly impact your experience. Consider whether you prefer a spa with a tranquil and relaxing atmosphere or one that is more lively and energetic.</p>\r\n<h3>4. Check for Cleanliness and Hygiene</h3>\r\n<p>It\'s important to choose a spa that prioritizes cleanliness and hygiene. Check online reviews or visit the spa in person to ensure that it meets your standards for cleanliness.</p>\r\n<h3>5. Ask About the Spa\'s Credentials</h3>\r\n<p>Before booking a service, ask about the spa\'s credentials. Find out if the spa is licensed and if the therapists are certified. This will ensure that you receive safe and professional services.</p>\r\n<h3>6. Inquire About Pricing and Packages</h3>\r\n<p>Before booking a service, inquire about pricing and packages. Ask about any discounts or promotions that may be available, and choose a spa that offers services within your budget.</p>\r\n<h3>7. Read Reviews and Testimonials</h3>\r\n<p>Reading reviews and testimonials from previous clients can give you insight into the quality of services offered by a spa. Look for spas with positive reviews and satisfied customers.</p>\r\n<h3>8. Visit the Spa Before Booking</h3>\r\n<p>If possible, visit the spa in person before booking a service. This will give you the opportunity to check out the facilities, meet the staff, and get a feel for the spa\'s atmosphere.</p>\r\n<h3>9. Trust Your Instincts</h3>\r\n<p>Ultimately, trust your instincts when choosing a spa. If something doesn\'t feel right or if you\'re not comfortable, it\'s okay to look elsewhere. Choose a spa that makes you feel welcome and valued.</p>\r\n<p>By following these tips, you can choose the best spa services near you and enjoy a relaxing and rejuvenating experience. Whether you\'re looking for a quick massage or a full day of pampering, choosing the right spa is key to ensuring a memorable and enjoyable experience.</p>', 'The Ultimate Guide to Choosing the Best Spa Services Near You', 'Find out how to select the perfect spa services to relax and rejuvenate your mind and body.', 1, 1, 1, '2024-06-14 13:13:36', '2024-06-24 10:51:10', NULL),
(4, '5 Reasons to Hire a Professional for Your Haircut', '5-reasons-to-hire-a-professional-for-your-haircut', 'Learn why it\'s beneficial to hire a professional for your haircut and how it can make a difference in your style.', '<p>When it comes to getting a haircut, many people are tempted to save money by cutting their own hair or going to a budget salon. However, hiring a professional hairstylist offers several advantages that make it worth the investment. Here are five reasons to hire a professional for your haircut:</p>\r\n<h3>1. Expertise and Experience</h3>\r\n<p>Professional hairstylists have the training and experience to create a hairstyle that suits your face shape, hair type, and lifestyle. They can also offer advice on hair care and styling techniques.</p>\r\n<h3>2. Quality Results</h3>\r\n<p>Professional hairstylists use high-quality tools and products to ensure a professional finish. They can also provide personalized recommendations for products that will help maintain your hairstyle.</p>\r\n<h3>3. Personalized Service</h3>\r\n<p>Professional hairstylists take the time to listen to your needs and preferences. They can work with you to create a hairstyle that reflects your personality and style.</p>\r\n<h3>4. Up-to-Date Techniques</h3>\r\n<p>Professional hairstylists stay up-to-date with the latest trends and techniques in hair cutting and styling. They can offer modern and stylish options that you may not be able to achieve on your own.</p>\r\n<h3>5. Convenience</h3>\r\n<p>Visiting a professional salon for your haircut is convenient and can save you time and effort. You can relax and enjoy the experience while your hairstylist takes care of the rest.</p>\r\n<p>Overall, hiring a professional hairstylist for your haircut offers several benefits, including expertise, quality results, personalized service, up-to-date techniques, and convenience. If you want a haircut that looks great and makes you feel confident, consider booking an appointment with a professional hairstylist.</p>', '5 Reasons to Hire a Professional for Your Haircut', 'Learn why it\'s beneficial to hire a professional for your haircut and how it can make a difference in your style.', 1, 1, 1, '2024-06-14 13:15:20', '2024-06-24 10:58:42', NULL),
(5, 'Spring Cleaning Made Easy: Tips from the Experts', 'spring-cleaning-made-easy-tips-from-the-experts', 'Get expert tips on how to make spring cleaning a breeze and keep your home looking fresh and clean.', '<p>Spring is the perfect time to give your home a thorough cleaning and fresh start. Whether you\'re tackling a few cluttered areas or deep cleaning your entire house, these expert tips will help you make the most of your spring cleaning efforts.</p>\r\n<h3>1. Make a Plan</h3>\r\n<p>Before you start cleaning, make a list of all the areas you want to tackle. This will help you stay organized and ensure that no area is overlooked.</p>\r\n<h3>2. Declutter First</h3>\r\n<p>Before you start cleaning, take some time to declutter your home. Get rid of items you no longer need or use to free up space and make cleaning easier.</p>\r\n<h3>3. Use the Right Tools</h3>\r\n<p>Make sure you have all the necessary cleaning supplies before you start. This includes cleaning solutions, microfiber cloths, sponges, and scrub brushes.</p>\r\n<h3>4. Work from Top to Bottom</h3>\r\n<p>Start cleaning high surfaces, such as ceilings and shelves, and work your way down to the floors. This will help you avoid spreading dust and dirt to areas you\'ve already cleaned.</p>\r\n<h3>5. Clean Room by Room</h3>\r\n<p>Focus on cleaning one room at a time to avoid feeling overwhelmed. Start with the rooms you use most frequently, such as the kitchen and living room.</p>\r\n<h3>6. Don\'t Forget the Details</h3>\r\n<p>Pay attention to often overlooked areas, such as baseboards, ceiling fans, and light fixtures. These areas can collect dust and dirt and should be included in your cleaning routine.</p>\r\n<h3>7. Freshen Up Fabrics</h3>\r\n<p>Don\'t forget to freshen up your fabrics, such as curtains, rugs, and upholstery. You can vacuum, spot clean, or even wash these items to remove dirt and odors.</p>\r\n<h3>8. Get the Whole Family Involved</h3>\r\n<p>Spring cleaning doesn\'t have to be a solo effort. Get the whole family involved by assigning tasks and working together to clean and organize your home.</p>\r\n<h3>9. Take Breaks</h3>\r\n<p>Spring cleaning can be physically and mentally exhausting, so be sure to take breaks when needed. Stay hydrated and listen to your body.</p>\r\n<h3>10. Reward Yourself</h3>\r\n<p>After you\'ve completed your spring cleaning, reward yourself for a job well done. Treat yourself to a relaxing bath or a day out to enjoy your clean and organized home.</p>\r\n<p>By following these expert tips, you can make spring cleaning a breeze and enjoy a clean, fresh home all season long.</p>', 'Spring Cleaning Made Easy: Tips from the Experts', 'Get expert tips on how to make spring cleaning a breeze and keep your home looking fresh and clean.', 1, 1, 1, '2024-06-14 13:36:40', '2024-06-24 10:52:59', NULL),
(6, 'How to Choose the Right Vendor for Your Home Repair Needs', 'how-to-choose-the-right-vendor-for-your-home-repair-needs', 'Discover the key factors to consider when choosing a vendor for your home repair needs and ensure quality service.', '<p>When it comes to home repairs, choosing the right vendor is crucial. Whether you\'re looking for a plumber, electrician, or general contractor, selecting the right vendor can ensure that the job is done correctly and efficiently. Here are some tips to help you choose the right vendor for your home repair needs:</p>\r\n<h3>1. Determine Your Needs</h3>\r\n<p>Before you start looking for a vendor, determine exactly what repairs you need. This will help you narrow down your options and find a vendor who specializes in the type of work you need done.</p>\r\n<h3>2. Ask for Recommendations</h3>\r\n<p>Ask friends, family, and neighbors for recommendations. Word of mouth is often the best way to find a reliable and trustworthy vendor.</p>\r\n<h3>3. Do Your Research</h3>\r\n<p>Once you have a list of potential vendors, do some research to learn more about each one. Check their website, read reviews, and look for any certifications or accreditations they may have.</p>\r\n<h3>4. Get Multiple Quotes</h3>\r\n<p>Before you hire a vendor, get quotes from several different companies. This will help you compare prices and services to find the best option for your budget.</p>\r\n<h3>5. Check References</h3>\r\n<p>Ask the vendor for references from past clients. Contact these references to learn more about their experience working with the vendor and the quality of the work performed.</p>\r\n<h3>6. Verify Insurance and Licensing</h3>\r\n<p>Make sure the vendor is properly insured and licensed to perform the work in your area. This will protect you in case of any accidents or issues during the repair process.</p>\r\n<h3>7. Ask About Guarantees</h3>\r\n<p>Find out if the vendor offers any guarantees or warranties on their work. This can give you peace of mind knowing that they stand behind their services.</p>\r\n<h3>8. Consider Communication</h3>\r\n<p>Choose a vendor who communicates clearly and promptly. You should feel comfortable asking questions and discussing your needs with them.</p>\r\n<h3>9. Trust Your Instincts</h3>\r\n<p>Ultimately, trust your instincts when choosing a vendor. If something doesn\'t feel right or if you\'re not comfortable, it\'s okay to look for another option.</p>\r\n<h3>10. Review the Contract Carefully</h3>\r\n<p>Before you sign a contract, review it carefully to ensure that all the details of the job are included. Make sure you understand the terms and conditions before work begins.</p>\r\n<p>By following these tips, you can choose the right vendor for your home repair needs and ensure that the job is done right the first time.</p>', 'How to Choose the Right Vendor for Your Home Repair Needs', 'Discover the key factors to consider when choosing a vendor for your home repair needs and ensure quality service.', 1, 1, 1, '2024-06-14 13:38:27', '2024-06-24 10:54:01', NULL),
(7, 'Benefits of Professional AC Installation: What You Need to Know', 'benefits-of-professional-ac-installation-what-you-need-to-know', 'Learn about the benefits of professional AC installation and why it\'s essential for your home\'s comfort.', '<p>When it comes to installing a new air conditioning system, many homeowners are tempted to tackle the job themselves to save money. However, professional AC installation offers several benefits that make it a worthwhile investment. Here\'s what you need to know:</p>\r\n<h3>1. Proper Sizing</h3>\r\n<p>Professional HVAC technicians have the knowledge and experience to properly size your AC unit for your home. This ensures that your new system is not too small, which can lead to inadequate cooling, or too large, which can result in higher energy bills and reduced comfort.</p>\r\n<h3>2. Correct Installation</h3>\r\n<p>Professional installation ensures that your AC unit is installed correctly and according to manufacturer specifications. This helps prevent issues such as leaks, improper airflow, and premature breakdowns.</p>\r\n<h3>3. Energy Efficiency</h3>\r\n<p>A properly installed AC unit operates more efficiently, leading to lower energy bills and reduced energy consumption. Professional installation also ensures that your system meets energy efficiency standards.</p>\r\n<h3>4. Warranty Protection</h3>\r\n<p>Many manufacturers require professional installation to validate the warranty on your new AC unit. Professional installation ensures that your warranty remains valid and protects you in case of any issues with your system.</p>\r\n<h3>5. Safety</h3>\r\n<p>Professional installation ensures that your AC unit is installed safely and according to building codes. This helps prevent issues such as electrical hazards and carbon monoxide leaks.</p>\r\n<h3>6. Proper Airflow</h3>\r\n<p>Professional installation ensures that your AC unit is properly sized and installed for optimal airflow. This helps ensure even cooling throughout your home and reduces strain on your system.</p>\r\n<h3>7. Longevity</h3>\r\n<p>Proper installation and regular maintenance can help extend the life of your AC unit. Professional installation ensures that your system is installed correctly from the start, reducing the risk of premature breakdowns.</p>\r\n<h3>8. Improved Comfort</h3>\r\n<p>A properly installed AC unit provides better and more consistent cooling, leading to improved comfort in your home. Professional installation ensures that your system is set up to provide maximum comfort.</p>\r\n<p>Overall, professional AC installation offers several benefits that make it a smart choice for homeowners. From proper sizing to energy efficiency, professional installation can help ensure that your new AC unit operates smoothly and efficiently for years to come.</p>', 'Benefits of Professional AC Installation: What You Need to Know', 'Learn about the benefits of professional AC installation and why it\'s essential for your home\'s comfort.', 1, 1, 1, '2024-06-14 13:48:18', '2024-06-24 10:56:14', NULL),
(8, 'Transform Your Home with Our Comprehensive Cleaning Services', 'transform-your-home-with-our-comprehensive-cleaning-services', 'Explore how our comprehensive cleaning services can transform your home and create a healthier living environment.', '<p>Is your home in need of a deep clean? Our comprehensive cleaning services can transform your living space into a pristine and inviting environment. Whether you\'re looking to refresh your home for a special occasion or simply want to maintain a clean and healthy living environment, our team of experienced cleaners is here to help.</p>\r\n<h3>Tailored Cleaning Solutions</h3>\r\n<p>We understand that every home is unique, which is why we offer tailored cleaning solutions to meet your specific needs. Whether you need a one-time deep clean or regular maintenance cleaning, we can create a cleaning plan that works for you.</p>\r\n<h3>Thorough and Efficient Cleaning</h3>\r\n<p>Our team is trained to deliver thorough and efficient cleaning services, ensuring that every corner of your home is spotless. From dusting and vacuuming to mopping and disinfecting, we use the latest cleaning techniques and eco-friendly products to achieve exceptional results.</p>\r\n<h3>Professional and Reliable Service</h3>\r\n<p>You can trust our team to provide professional and reliable service every time. We arrive on time, equipped with all the necessary tools and supplies to complete the job efficiently. Your satisfaction is our top priority, and we strive to exceed your expectations with every cleaning.</p>\r\n<h3>Affordable Rates</h3>\r\n<p>Transforming your home doesn\'t have to break the bank. We offer competitive rates for our comprehensive cleaning services, making it easy and affordable to maintain a clean and healthy living environment.</p>\r\n<h3>Book Your Cleaning Today</h3>\r\n<p>Ready to transform your home? Contact us today to schedule your comprehensive cleaning service. Our friendly team is here to answer any questions you may have and help you create a cleaning plan that fits your needs and budget. Transform your home with our comprehensive cleaning services and enjoy a clean and healthy living environment.</p>', 'Transform Your Home with Our Comprehensive Cleaning Services', 'Explore how our comprehensive cleaning services can transform your home and create a healthier living environment.', 1, 1, 1, '2024-06-14 13:57:05', '2024-06-24 10:49:43', NULL),
(9, 'Expert Tips for Maintaining a Clean and Healthy Home', 'expert-tips-for-maintaining-a-clean-and-healthy-home', 'Get expert tips on how to maintain a clean and healthy home year-round and improve your quality of life.', '<p>Keeping your home clean and healthy is essential for your wellbeing. From reducing allergens to preventing the spread of germs, maintaining a clean home can have a positive impact on your health. Here are some expert tips for keeping your home clean and healthy:</p>\r\n<h3>1. Establish a Cleaning Routine</h3>\r\n<p>Set aside time each week for cleaning tasks, such as vacuuming, dusting, and mopping. Having a regular cleaning routine will help you stay on top of household chores and maintain a clean home.</p>\r\n<h3>2. Use the Right Cleaning Products</h3>\r\n<p>Use cleaning products that are safe and effective for your home. Look for products that are eco-friendly and free from harsh chemicals.</p>\r\n<h3>3. Declutter Regularly</h3>\r\n<p>Get rid of items you no longer need or use to reduce clutter in your home. Clutter can attract dust and make cleaning more difficult.</p>\r\n<h3>4. Focus on High-Touch Surfaces</h3>\r\n<p>Pay extra attention to high-touch surfaces, such as doorknobs, light switches, and countertops. These areas can harbor germs and should be cleaned regularly.</p>\r\n<h3>5. Keep Your Kitchen Clean</h3>\r\n<p>The kitchen is a breeding ground for bacteria. Clean countertops, sinks, and appliances regularly to prevent the spread of germs.</p>\r\n<h3>6. Maintain Your Bathroom</h3>\r\n<p>Keep your bathroom clean and dry to prevent mold and mildew growth. Clean the toilet, sink, and shower regularly to maintain a healthy environment.</p>\r\n<h3>7. Wash Bedding and Linens Frequently</h3>\r\n<p>Wash bedding and linens, such as sheets and towels, regularly to remove dirt, dust, and allergens. Use hot water and a detergent that kills bacteria.</p>\r\n<h3>8. Vacuum and Dust Regularly</h3>\r\n<p>Use a vacuum cleaner with a HEPA filter to remove dust, dirt, and allergens from carpets and rugs. Dust surfaces regularly to prevent buildup.</p>\r\n<h3>9. Control Humidity Levels</h3>\r\n<p>Keep humidity levels in your home between 30-50% to prevent mold and mildew growth. Use a dehumidifier if necessary.</p>\r\n<h3>10. Open Windows for Fresh Air</h3>\r\n<p>Open windows regularly to let in fresh air and improve ventilation. This can help reduce indoor air pollution and improve air quality.</p>\r\n<p>By following these expert tips, you can maintain a clean and healthy home for you and your family. A clean home not only looks great but also contributes to a healthier living environment.</p>', 'Expert Tips for Maintaining a Clean and Healthy Home', 'Get expert tips on how to maintain a clean and healthy home year-round and improve your quality of life.', 1, 1, 1, '2024-06-14 13:58:58', '2024-06-24 10:54:59', NULL),
(10, 'The Importance of Regular Spa Treatments for Your Wellbeing', 'the-importance-of-regular-spa-treatments-for-your-wellbeing', 'Discover the importance of regular spa treatments for your overall wellbeing and how they can benefit you.', '<p>Regular spa treatments are not just a luxury; they are essential for your overall wellbeing. In today\'s fast-paced world, it\'s important to take time for yourself and prioritize self-care. Spa treatments offer a variety of benefits for both your physical and mental health. Here are some reasons why regular spa treatments are important:</p>\r\n<h3>1. Stress Relief</h3>\r\n<p>One of the primary benefits of spa treatments is stress relief. Massages, facials, and other spa treatments can help relax your body and mind, reducing stress levels and promoting a sense of calm and relaxation.</p>\r\n<h3>2. Pain Relief</h3>\r\n<p>Many spa treatments, such as massages and hydrotherapy, can help relieve pain and discomfort in your muscles and joints. These treatments can improve circulation, reduce inflammation, and promote healing.</p>\r\n<h3>3. Improved Skin Health</h3>\r\n<p>Facials, body wraps, and other spa treatments can improve the health and appearance of your skin. These treatments can help cleanse, exfoliate, and moisturize your skin, leaving it looking and feeling rejuvenated.</p>\r\n<h3>4. Detoxification</h3>\r\n<p>Spa treatments such as saunas and body wraps can help detoxify your body by eliminating toxins and impurities through sweating. This can improve your overall health and wellbeing.</p>\r\n<h3>5. Improved Sleep</h3>\r\n<p>Regular spa treatments can help improve your sleep quality by promoting relaxation and reducing stress. This can lead to better overall health and a greater sense of wellbeing.</p>\r\n<h3>6. Boosted Immunity</h3>\r\n<p>Some spa treatments, such as aromatherapy and hydrotherapy, can help boost your immune system. These treatments can help your body fight off illness and infection, keeping you healthy.</p>\r\n<h3>7. Mental Clarity</h3>\r\n<p>Spa treatments can help improve your mental clarity and focus by reducing stress and promoting relaxation. This can improve your overall cognitive function and productivity.</p>\r\n<h3>8. Enhanced Mood</h3>\r\n<p>Regular spa treatments can help enhance your mood by promoting relaxation and reducing stress. This can lead to a greater sense of happiness and wellbeing.</p>\r\n<p>Overall, regular spa treatments are essential for maintaining your physical and mental health. By taking time for yourself and prioritizing self-care, you can improve your overall wellbeing and enjoy a happier, healthier life.</p>', 'The Importance of Regular Spa Treatments for Your Wellbeing', 'Discover the importance of regular spa treatments for your overall wellbeing and how they can benefit you.', 1, 1, 1, '2024-06-14 14:01:25', '2024-06-24 10:52:11', NULL),
(11, 'Why Hiring Professionals for Home Repairs Saves You Time and Money', 'why-hiring-professionals-for-home-repairs-saves-you-time-and-money', 'Learn about the advantages of hiring professionals for home repairs and how it can save you time and money in the long run.', '<p>When it comes to home repairs, many homeowners are tempted to take the DIY route to save money. However, hiring professionals for home repairs can actually save you both time and money in the long run. Here are several reasons why investing in professional services is a wise decision:</p>\r\n<h3>1. Expertise and Experience</h3>\r\n<p>Professional repair technicians have the training and experience to handle a wide range of home repair tasks. Their expertise ensures that repairs are done correctly the first time, reducing the likelihood of future issues and costly rework.</p>\r\n<h3>2. Quality Workmanship</h3>\r\n<p>Professionals use high-quality materials and tools to complete repairs. Their attention to detail and adherence to industry standards result in durable, long-lasting repairs that stand the test of time.</p>\r\n<h3>3. Time Efficiency</h3>\r\n<p>Homeowners often underestimate the time required for DIY repairs. Professionals can complete repairs quickly and efficiently, freeing up your time for other important tasks and activities.</p>\r\n<h3>4. Cost-Effective Solutions</h3>\r\n<p>While it may seem cheaper to do repairs yourself, DIY projects can lead to mistakes that require expensive fixes. Professionals provide cost-effective solutions by getting the job done right the first time, preventing additional expenses down the line.</p>\r\n<h3>5. Safety</h3>\r\n<p>Home repairs can involve risks, such as electrical work, plumbing, or structural repairs. Professionals are trained to handle these tasks safely, minimizing the risk of accidents and injuries.</p>\r\n<h3>6. Access to Specialized Tools</h3>\r\n<p>Professionals have access to specialized tools and equipment that are often necessary for certain repairs. Purchasing or renting these tools for a one-time repair can be costly and impractical for homeowners.</p>\r\n<h3>7. Warranty and Guarantees</h3>\r\n<p>Many professional repair services offer warranties and guarantees on their work. This provides peace of mind, knowing that if something goes wrong, the issue will be resolved at no additional cost to you.</p>\r\n<h3>8. Avoiding Hidden Costs</h3>\r\n<p>DIY repairs can sometimes uncover hidden issues that require additional expertise and resources. Professionals can identify and address these underlying problems, preventing unexpected costs from arising.</p>\r\n<h3>9. Increased Home Value</h3>\r\n<p>Quality repairs and maintenance by professionals can increase the value of your home. Whether you plan to sell your home in the future or simply want to maintain its value, professional repairs are a smart investment.</p>\r\n<h3>10. Stress Reduction</h3>\r\n<p>Attempting complex repairs on your own can be stressful and frustrating. Hiring professionals allows you to avoid this stress, knowing that skilled technicians are handling the repairs efficiently and effectively.</p>\r\n<p>In conclusion, while DIY repairs may seem like a cost-saving measure, hiring professionals for home repairs offers numerous benefits. Their expertise, efficiency, and quality workmanship save you time, money, and stress. Investing in professional repair services ensures that your home remains in excellent condition, providing a safe and comfortable living environment for you and your family.</p>', 'Why Hiring Professionals for Home Repairs Saves You Time and Money', 'Learn about the advantages of hiring professionals for home repairs and how it can save you time and money in the long run.', 1, 1, 1, '2024-06-14 14:03:15', '2024-06-24 10:48:50', NULL),
(12, 'A Complete Guide to Our Home Service Offerings', 'a-complete-guide-to-our-home-service-offerings', 'Explore our comprehensive range of home services and find the right solutions for your home.', '<h3>1. HVAC Services</h3>\r\n<p>We offer comprehensive HVAC services, including installation, repair, and maintenance of heating, ventilation, and air conditioning systems.</p>\r\n<h3>2. Plumbing Services</h3>\r\n<p>Our plumbing services include everything from leak detection and repair to drain cleaning and fixture installation.</p>\r\n<h3>3. Electrical Services</h3>\r\n<p>We offer a full range of electrical services, including wiring, lighting installation, and electrical panel upgrades.</p>\r\n<h3>4. Appliance Repair</h3>\r\n<p>Our team can repair a wide range of appliances, including refrigerators, dishwashers, washing machines, and dryers.</p>\r\n<h3>5. Home Security</h3>\r\n<p>We offer home security services, including installation of security cameras, alarms, and smart locks.</p>\r\n<h3>6. Home Automation</h3>\r\n<p>Our home automation services allow you to control your home\'s lighting, temperature, and security systems remotely.</p>\r\n<h3>7. Roofing and Siding</h3>\r\n<p>We provide roofing and siding services, including repairs, replacements, and installations.</p>\r\n<h3>8. Painting Services</h3>\r\n<p>Our painting services include interior and exterior painting, as well as staining and sealing.</p>\r\n<h3>9. Carpentry Services</h3>\r\n<p>We offer carpentry services, including furniture assembly, custom cabinetry, and trim installation.</p>\r\n<h3>10. Home Cleaning</h3>\r\n<p>Our home cleaning services include regular maintenance cleaning, deep cleaning, and move-in/move-out cleaning.</p>\r\n<p>Whatever your home service needs may be,has you covered. Our team of professionals is dedicated to providing high-quality service and ensuring your complete satisfaction. Contact us today to learn more about our home service offerings and schedule an appointment.</p>', 'A Complete Guide to Our Home Service Offerings', 'Explore our comprehensive range of home services and find the right solutions for your home.', 0, 1, 1, '2024-06-14 14:06:59', '2024-06-24 10:57:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 55, NULL, NULL, NULL),
(2, 2, 56, NULL, NULL, NULL),
(3, 3, 57, NULL, NULL, NULL),
(4, 4, 58, NULL, NULL, NULL),
(5, 5, 59, NULL, NULL, NULL),
(6, 6, 61, NULL, NULL, NULL),
(7, 7, 56, NULL, NULL, NULL),
(8, 7, 63, NULL, NULL, NULL),
(9, 8, 59, NULL, NULL, NULL),
(10, 9, 59, NULL, NULL, NULL),
(11, 10, 57, NULL, NULL, NULL),
(12, 11, 64, NULL, NULL, NULL),
(13, 12, 55, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `blog_id`, `tag_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 1, 12, NULL, NULL, NULL),
(3, 1, 30, NULL, NULL, NULL),
(4, 2, 1, NULL, NULL, NULL),
(5, 2, 6, NULL, NULL, NULL),
(6, 2, 7, NULL, NULL, NULL),
(7, 2, 9, NULL, NULL, NULL),
(8, 2, 10, NULL, NULL, NULL),
(9, 3, 11, NULL, NULL, NULL),
(10, 3, 12, NULL, NULL, NULL),
(11, 3, 13, NULL, NULL, NULL),
(12, 4, 15, NULL, NULL, NULL),
(13, 4, 16, NULL, NULL, NULL),
(14, 4, 18, NULL, NULL, NULL),
(15, 4, 29, NULL, NULL, NULL),
(16, 5, 20, NULL, NULL, NULL),
(17, 5, 21, NULL, NULL, NULL),
(18, 5, 22, NULL, NULL, NULL),
(19, 5, 24, NULL, NULL, NULL),
(20, 6, 1, NULL, NULL, NULL),
(21, 6, 26, NULL, NULL, NULL),
(22, 6, 30, NULL, NULL, NULL),
(23, 7, 1, NULL, NULL, NULL),
(24, 7, 6, NULL, NULL, NULL),
(25, 7, 7, NULL, NULL, NULL),
(26, 8, 1, NULL, NULL, NULL),
(27, 8, 14, NULL, NULL, NULL),
(28, 8, 20, NULL, NULL, NULL),
(29, 8, 22, NULL, NULL, NULL),
(30, 9, 1, NULL, NULL, NULL),
(31, 9, 14, NULL, NULL, NULL),
(32, 9, 20, NULL, NULL, NULL),
(33, 10, 11, NULL, NULL, NULL),
(34, 10, 12, NULL, NULL, NULL),
(35, 10, 26, NULL, NULL, NULL),
(36, 11, 1, NULL, NULL, NULL),
(37, 11, 3, NULL, NULL, NULL),
(38, 12, 1, NULL, NULL, NULL),
(39, 12, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `booking_number` int DEFAULT NULL,
  `consumer_id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `wallet_balance` decimal(8,2) DEFAULT NULL,
  `convert_wallet_balance` double DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `service_package_id` bigint UNSIGNED DEFAULT NULL,
  `address_id` bigint UNSIGNED DEFAULT NULL,
  `service_price` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `per_serviceman_charge` decimal(8,2) DEFAULT NULL,
  `coupon_total_discount` decimal(8,2) DEFAULT NULL,
  `platform_fees` decimal(8,2) DEFAULT NULL,
  `platform_fees_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required_servicemen` int DEFAULT NULL,
  `total_extra_servicemen` int DEFAULT NULL,
  `total_servicemen` int DEFAULT NULL,
  `total_extra_servicemen_charge` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `booking_status_id` bigint UNSIGNED DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'PENDING',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invoice_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `parent_id`, `booking_number`, `consumer_id`, `coupon_id`, `wallet_balance`, `convert_wallet_balance`, `provider_id`, `service_id`, `service_package_id`, `address_id`, `service_price`, `tax`, `per_serviceman_charge`, `coupon_total_discount`, `platform_fees`, `platform_fees_type`, `required_servicemen`, `total_extra_servicemen`, `total_servicemen`, `total_extra_servicemen_charge`, `subtotal`, `total`, `date_time`, `booking_status_id`, `payment_method`, `payment_status`, `description`, `invoice_url`, `created_by_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1073741824, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '27.00', NULL, '0.00', '10.00', 'fixed', 2, 0, 2, '180.00', '180.00', '217.00', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741824', 2, NULL, '2024-07-22 21:19:30', '2024-07-22 21:20:01'),
(2, 1, 1073741825, 2, NULL, NULL, NULL, 3, 3, NULL, 105, '180.00', '27.00', '90.00', '0.00', '0.00', 'fixed', 2, 0, 2, '180.00', '180.00', '207.00', '2024-07-23 12:44:00', 10, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741825', 2, NULL, '2024-07-22 21:19:30', '2024-07-22 22:27:42'),
(3, NULL, 1073741826, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.38', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '42.50', '42.50', '58.88', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741826', 2, NULL, '2024-07-22 23:07:46', '2024-07-22 23:08:29'),
(4, 3, 1073741827, 2, NULL, NULL, NULL, 3, 25, NULL, 105, '42.50', '6.38', '42.50', '0.00', '0.00', 'fixed', 1, 0, 1, '42.50', '42.50', '48.88', '2024-07-23 12:36:00', 3, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741827', 3, NULL, '2024-07-22 23:07:46', '2024-07-23 01:04:29'),
(5, NULL, 1073741828, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6.38', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '42.50', '42.50', '58.88', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741828', 18, NULL, '2024-07-23 01:14:51', '2024-07-23 01:15:25'),
(6, 5, 1073741829, 18, NULL, NULL, NULL, 3, 25, NULL, 14, '42.50', '6.38', '42.50', '0.00', '0.00', 'fixed', 1, 0, 1, '42.50', '42.50', '48.88', '2024-07-25 14:44:00', 10, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741829', 18, NULL, '2024-07-23 01:14:52', '2024-07-23 01:17:29'),
(7, NULL, 1073741830, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.87', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '65.80', '65.80', '85.67', NULL, 1, 'wallet', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741830', 2, NULL, '2024-07-23 02:12:06', '2024-07-23 02:12:07'),
(8, 7, 1073741831, 2, NULL, NULL, NULL, 33, 18, NULL, 105, '65.80', '9.87', '65.80', '0.00', '0.00', 'fixed', 1, 0, 1, '65.80', '65.80', '75.67', '2024-07-24 15:41:00', 10, 'wallet', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741831', 2, NULL, '2024-07-23 02:12:06', '2024-07-23 02:17:44'),
(9, NULL, 1073741832, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.37', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '89.10', '89.10', '112.47', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741832', 2, NULL, '2024-07-23 04:49:30', '2024-07-23 04:50:12'),
(10, 9, 1073741833, 2, NULL, NULL, NULL, 3, 12, NULL, 105, '89.10', '13.37', '89.10', '0.00', '0.00', 'fixed', 1, 0, 1, '89.10', '89.10', '102.47', '2024-07-24 18:17:00', 10, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741833', 2, NULL, '2024-07-23 04:49:30', '2024-07-23 04:54:10'),
(19, NULL, 1073741834, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '13.37', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '89.10', '89.10', '112.47', NULL, 1, 'cash', 'PENDING', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741834', 2, NULL, '2024-07-24 01:15:45', '2024-07-24 01:15:46'),
(20, 19, 1073741835, 2, NULL, NULL, NULL, 3, 12, NULL, 105, '89.10', '13.37', '89.10', '0.00', '0.00', 'fixed', 1, 0, 1, '89.10', '89.10', '102.47', '2024-07-27 14:45:00', 10, 'cash', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741835', 2, NULL, '2024-07-24 01:15:45', '2024-07-24 01:28:54'),
(21, NULL, 1073741836, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '121.50', NULL, '0.00', '10.00', 'fixed', 3, 0, 3, '810.00', '810.00', '941.50', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741836', 2, NULL, '2024-07-24 02:29:29', '2024-07-24 02:30:46'),
(22, 21, 1073741837, 2, NULL, NULL, NULL, 3, 36, NULL, 105, '810.00', '121.50', '270.00', '0.00', '0.00', 'fixed', 3, 0, 3, '810.00', '810.00', '931.50', '2024-07-25 15:59:00', 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741837', 2, NULL, '2024-07-24 02:29:29', '2024-07-24 02:30:46'),
(23, NULL, 1073741838, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25.50', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '170.00', '170.00', '205.50', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741838', 2, NULL, '2024-07-24 02:32:04', '2024-07-24 02:32:20'),
(24, 23, 1073741839, 2, NULL, NULL, NULL, 30, 32, NULL, 105, '170.00', '25.50', '170.00', '0.00', '0.00', 'fixed', 1, 0, 1, '170.00', '170.00', '195.50', '2024-07-28 16:42:00', 4, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741839', 43, NULL, '2024-07-24 02:32:05', '2024-07-24 02:42:15'),
(25, NULL, 1073741840, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4.46', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '29.70', '29.70', '44.16', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741840', 2, NULL, '2024-07-24 02:44:46', '2024-07-24 02:45:06'),
(26, 25, 1073741841, 2, NULL, NULL, NULL, 30, 31, NULL, 105, '29.70', '4.46', '29.70', '0.00', '0.00', 'fixed', 1, 0, 1, '29.70', '29.70', '34.16', '2024-07-28 16:14:00', 7, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741841', 2, NULL, '2024-07-24 02:44:47', '2024-07-24 02:46:20'),
(27, NULL, 1073741842, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12.83', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '85.50', '85.50', '108.33', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741842', 2, NULL, '2024-07-24 02:48:55', '2024-07-24 02:49:11'),
(28, 27, 1073741843, 2, NULL, NULL, NULL, 33, 29, NULL, 105, '85.50', '12.83', '85.50', '0.00', '0.00', 'fixed', 1, 0, 1, '85.50', '85.50', '98.33', '2024-07-27 16:18:00', 8, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741843', 2, NULL, '2024-07-24 02:48:55', '2024-07-24 02:54:00'),
(29, NULL, 1073741844, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8.55', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '57.00', '57.00', '75.55', NULL, 1, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741844', 2, NULL, '2024-07-24 02:55:43', '2024-07-24 02:56:02'),
(30, 29, 1073741845, 2, NULL, NULL, NULL, 33, 19, NULL, 105, '57.00', '8.55', '57.00', '0.00', '0.00', 'fixed', 1, 0, 1, '57.00', '57.00', '65.55', '2024-07-28 16:25:00', 10, 'paypal', 'COMPLETED', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741845', 2, NULL, '2024-07-24 02:55:44', '2024-07-24 02:58:09'),
(31, NULL, 1073741846, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25.50', NULL, '0.00', '10.00', 'fixed', 1, 0, 1, '170.00', '170.00', '205.50', NULL, 1, 'cash', 'PENDING', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741846', 2, NULL, '2024-07-24 03:36:51', '2024-07-24 03:36:53'),
(32, 31, 1073741847, 2, NULL, NULL, NULL, 30, 32, NULL, 105, '170.00', '25.50', '170.00', '0.00', '0.00', 'fixed', 1, 0, 1, '170.00', '170.00', '195.50', '2024-07-24 17:01:00', 6, 'cash', 'PENDING', NULL, 'https://laia.webiots.co.in/booking/invoice/1073741847', 2, NULL, '2024-07-24 03:36:52', '2024-07-24 03:37:14');

-- --------------------------------------------------------

--
-- Table structure for table `booking_reason_logs`
--

CREATE TABLE `booking_reason_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_service`
--

CREATE TABLE `booking_service` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `service_package_id` bigint UNSIGNED DEFAULT NULL,
  `service_price` decimal(8,2) DEFAULT NULL,
  `tax` decimal(8,2) DEFAULT NULL,
  `per_serviceman_charge` decimal(8,2) DEFAULT NULL,
  `total_extra_servicemen` decimal(8,2) DEFAULT NULL,
  `total_extra_servicemen_charge` decimal(8,2) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_servicemen`
--

CREATE TABLE `booking_servicemen` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_servicemen`
--

INSERT INTO `booking_servicemen` (`id`, `booking_id`, `serviceman_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 27, NULL, NULL, NULL),
(2, 2, 25, NULL, NULL, NULL),
(3, 4, 27, NULL, NULL, NULL),
(4, 6, 4, NULL, NULL, NULL),
(5, 8, 58, NULL, NULL, NULL),
(6, 10, 4, NULL, NULL, NULL),
(10, 20, 25, NULL, NULL, NULL),
(12, 24, 43, NULL, NULL, NULL),
(13, 26, 43, NULL, NULL, NULL),
(14, 28, 58, NULL, NULL, NULL),
(15, 30, 58, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `system_reserve` int NOT NULL DEFAULT '0',
  `hexa_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`id`, `name`, `slug`, `sequence`, `description`, `created_by_id`, `system_reserve`, `hexa_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pending', 'pending', 1, NULL, 1, 1, '#FDB448', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(2, 'Accepted', 'accepted', 2, NULL, 1, 1, '#48BFFD', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(3, 'Assigned', 'assigned', 3, NULL, 1, 1, '#AD46FF', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(4, 'On The Way', 'on-the-way', 4, NULL, 1, 1, '#FF7456', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(5, 'Decline', 'decline', 5, NULL, 1, 1, '#FF4B4B', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(6, 'Cancel', 'cancel', 6, NULL, 1, 1, '#FF4B4B', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(7, 'On Going', 'on-going', 7, NULL, 1, 1, '#FF7456', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(8, 'On Hold', 'on-hold', 8, NULL, 1, 1, '#FF1D53', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(9, 'Start Again', 'start-again', 9, NULL, 1, 1, '#FF1D53', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(10, 'Completed', 'completed', 10, NULL, 1, 1, '#5465FF', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL),
(11, 'Pending Approval', 'pending-approval', 11, NULL, 1, 1, '#5498FF', 1, '2024-06-13 11:38:16', '2024-06-13 11:38:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking_status_logs`
--

CREATE TABLE `booking_status_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `booking_id` bigint UNSIGNED NOT NULL,
  `booking_status_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status_logs`
--

INSERT INTO `booking_status_logs` (`id`, `title`, `description`, `booking_id`, `booking_status_id`, `created_at`, `updated_at`) VALUES
(1, 'Pending booking request', 'New booking is added.', 1, 1, '2024-07-22 21:19:30', '2024-07-22 21:19:30'),
(2, 'Pending booking request', 'New booking is added.', 2, 1, '2024-07-22 21:19:30', '2024-07-22 21:19:30'),
(3, 'Booking is Assigned', 'The booking has been assigned.', 2, 3, '2024-07-22 22:18:53', '2024-07-22 22:18:53'),
(4, 'Pending booking request', 'New booking is added.', 3, 1, '2024-07-22 23:07:46', '2024-07-22 23:07:46'),
(5, 'Pending booking request', 'New booking is added.', 4, 1, '2024-07-22 23:07:46', '2024-07-22 23:07:46'),
(6, 'Booking is Assigned', 'The booking has been assigned.', 4, 3, '2024-07-23 01:04:29', '2024-07-23 01:04:29'),
(7, 'Pending booking request', 'New booking is added.', 5, 1, '2024-07-23 01:14:51', '2024-07-23 01:14:51'),
(8, 'Pending booking request', 'New booking is added.', 6, 1, '2024-07-23 01:14:52', '2024-07-23 01:14:52'),
(9, 'Booking is Assigned', 'The booking has been assigned.', 6, 3, '2024-07-23 01:15:49', '2024-07-23 01:15:49'),
(10, 'Pending booking request', 'New booking is added.', 7, 1, '2024-07-23 02:12:06', '2024-07-23 02:12:06'),
(11, 'Pending booking request', 'New booking is added.', 8, 1, '2024-07-23 02:12:06', '2024-07-23 02:12:06'),
(12, 'Booking is Assigned', 'The booking has been assigned.', 8, 3, '2024-07-23 02:12:43', '2024-07-23 02:12:43'),
(13, 'Pending booking request', 'New booking is added.', 9, 1, '2024-07-23 04:49:30', '2024-07-23 04:49:30'),
(14, 'Pending booking request', 'New booking is added.', 10, 1, '2024-07-23 04:49:30', '2024-07-23 04:49:30'),
(15, 'Booking is Assigned', 'The booking has been assigned.', 10, 3, '2024-07-23 04:52:15', '2024-07-23 04:52:15'),
(26, 'Pending booking request', 'New booking is added.', 19, 1, '2024-07-24 01:15:45', '2024-07-24 01:15:45'),
(27, 'Pending booking request', 'New booking is added.', 20, 1, '2024-07-24 01:15:45', '2024-07-24 01:15:45'),
(28, 'Booking is Assigned', 'The booking has been assigned.', 20, 3, '2024-07-24 01:26:00', '2024-07-24 01:26:00'),
(29, 'Pending booking request', 'New booking is added.', 21, 1, '2024-07-24 02:29:29', '2024-07-24 02:29:29'),
(30, 'Pending booking request', 'New booking is added.', 22, 1, '2024-07-24 02:29:29', '2024-07-24 02:29:29'),
(31, 'Pending booking request', 'New booking is added.', 23, 1, '2024-07-24 02:32:04', '2024-07-24 02:32:04'),
(32, 'Pending booking request', 'New booking is added.', 24, 1, '2024-07-24 02:32:05', '2024-07-24 02:32:05'),
(33, 'Booking is Assigned', 'The booking has been assigned.', 24, 3, '2024-07-24 02:36:21', '2024-07-24 02:36:21'),
(34, 'Booking is Assigned', 'The booking has been assigned.', 24, 3, '2024-07-24 02:40:22', '2024-07-24 02:40:22'),
(35, 'Pending booking request', 'New booking is added.', 25, 1, '2024-07-24 02:44:46', '2024-07-24 02:44:46'),
(36, 'Pending booking request', 'New booking is added.', 26, 1, '2024-07-24 02:44:47', '2024-07-24 02:44:47'),
(37, 'Booking is Assigned', 'The booking has been assigned.', 26, 3, '2024-07-24 02:45:52', '2024-07-24 02:45:52'),
(38, 'Pending booking request', 'New booking is added.', 27, 1, '2024-07-24 02:48:55', '2024-07-24 02:48:55'),
(39, 'Pending booking request', 'New booking is added.', 28, 1, '2024-07-24 02:48:55', '2024-07-24 02:48:55'),
(40, 'Booking is Assigned', 'The booking has been assigned.', 28, 3, '2024-07-24 02:51:57', '2024-07-24 02:51:57'),
(41, 'Pending booking request', 'New booking is added.', 29, 1, '2024-07-24 02:55:43', '2024-07-24 02:55:43'),
(42, 'Pending booking request', 'New booking is added.', 30, 1, '2024-07-24 02:55:44', '2024-07-24 02:55:44'),
(43, 'Booking is Assigned', 'The booking has been assigned.', 30, 3, '2024-07-24 02:56:42', '2024-07-24 02:56:42'),
(44, 'Pending booking request', 'New booking is added.', 31, 1, '2024-07-24 03:36:51', '2024-07-24 03:36:51'),
(45, 'Pending booking request', 'New booking is added.', 32, 1, '2024-07-24 03:36:52', '2024-07-24 03:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `booking_transactions`
--

CREATE TABLE `booking_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `commission` decimal(8,2) DEFAULT '0.00',
  `status` int NOT NULL DEFAULT '0',
  `is_featured` int NOT NULL DEFAULT '0',
  `category_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `description`, `parent_id`, `meta_title`, `meta_description`, `commission`, `status`, `is_featured`, `category_type`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 'AC Repair', 'ac-repair', 'Comprehensive AC repair services for all types and brands of air conditioners, ensuring your cooling systems are running efficiently and effectively.', NULL, NULL, NULL, '5.00', 1, 1, 'service', 1, '2024-06-14 10:40:34', '2024-06-14 10:40:34', NULL),
(8, 'AC Installation', 'ac-installation', 'Professional installation of new air conditioning units, ensuring proper setup and optimal performance.', 7, NULL, NULL, '7.00', 1, 1, 'service', 1, '2024-06-14 10:55:48', '2024-06-14 10:55:48', NULL),
(9, 'AC Maintenance', 'ac-maintenance', 'Regular servicing to maintain optimal performance.', 7, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 10:56:47', '2024-06-14 10:56:47', NULL),
(10, 'Emergency Repair', 'emergency-repair', 'Immediate response to urgent repair needs.', 7, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 10:57:19', '2024-06-14 10:57:19', NULL),
(11, 'Duct Cleaning', 'duct-cleaning', 'Cleaning and maintenance of air ducts.', 7, NULL, NULL, '2.00', 1, 1, 'service', 1, '2024-06-14 10:57:46', '2024-06-14 10:57:46', NULL),
(12, 'Thermostat Repair', 'thermostat-repair', 'Fixing or replacing faulty thermostats.', 7, NULL, NULL, '5.00', 1, 1, 'service', 1, '2024-06-14 10:58:16', '2024-06-14 10:58:16', NULL),
(13, 'Cleaning', 'cleaning', 'Comprehensive cleaning services for homes and offices. Our trained staff uses eco-friendly products to ensure a spotless and healthy environment.', NULL, NULL, NULL, '9.00', 1, 1, 'service', 1, '2024-06-14 10:59:19', '2024-06-14 10:59:19', NULL),
(14, 'Residential Cleaning', 'residential-cleaning', 'Detailed cleaning of homes and apartments.', 13, NULL, NULL, '6.00', 1, 1, 'service', 1, '2024-06-14 11:01:57', '2024-06-14 11:01:57', NULL),
(15, 'Office Cleaning', 'office-cleaning', 'Routine cleaning services for office spaces.', 13, NULL, NULL, '7.00', 1, 1, 'service', 1, '2024-06-14 11:02:29', '2024-06-14 11:02:29', NULL),
(16, 'Deep Cleaning', 'deep-cleaning', 'Intensive cleaning for all areas of the home or office.', 13, NULL, NULL, '7.00', 1, 0, 'service', 1, '2024-06-14 11:02:59', '2024-06-14 11:02:59', NULL),
(17, 'Carpet Cleaning', 'carpet-cleaning', 'Professional cleaning of carpets and rugs.', 13, NULL, NULL, '4.00', 1, 0, 'service', 1, '2024-06-14 11:03:22', '2024-06-14 11:03:22', NULL),
(18, 'Window Cleaning', 'window-cleaning', 'Spotless cleaning of interior and exterior windows.', 13, NULL, NULL, '7.00', 1, 0, 'service', 1, '2024-06-14 11:03:44', '2024-06-14 11:03:44', NULL),
(19, 'Carpenter', 'carpenter', 'Skilled carpentry services for building, repairing, and enhancing wooden structures and furniture. Our carpenters deliver craftsmanship with precision and attention to detail.', NULL, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:31:47', '2024-06-14 11:31:47', NULL),
(20, 'Furniture Making', 'furniture-making', 'Custom furniture design and creation.', 19, NULL, NULL, '5.00', 1, 1, 'service', 1, '2024-06-14 11:32:13', '2024-06-14 11:32:13', NULL),
(21, 'Repair Services', 'repair-services', 'Fixing and restoring wooden items.', 19, NULL, NULL, '6.00', 1, 1, 'service', 1, '2024-06-14 11:32:42', '2024-06-14 11:32:42', NULL),
(22, 'Cabinet Installation', 'cabinet-installation', 'Installing and customizing cabinets.', 19, NULL, NULL, '4.00', 1, 0, 'service', 1, '2024-06-14 11:33:05', '2024-06-14 11:33:05', NULL),
(23, 'Wooden Flooring', 'wooden-flooring', 'Laying and polishing wooden floors.', 19, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:33:27', '2024-06-14 11:33:27', NULL),
(24, 'Deck Construction', 'deck-construction', 'Building and maintaining outdoor decks.', 19, NULL, NULL, '4.00', 1, 0, 'service', 1, '2024-06-14 11:33:48', '2024-06-14 11:33:48', NULL),
(25, 'Cooking', 'cooking', 'Professional cooking services for personal and event-based needs. Our chefs prepare delicious and customized meals to suit all dietary preferences.', NULL, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 11:34:19', '2024-06-14 11:34:19', NULL),
(26, 'Personal Chef', 'personal-chef', 'Customized meal preparation for individuals and families.', 25, NULL, NULL, '6.00', 1, 0, 'service', 1, '2024-06-14 11:34:55', '2024-06-14 11:34:55', NULL),
(27, 'Catering Services', 'catering-services', 'Food services for events and gatherings.', 25, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:35:27', '2024-06-14 11:35:27', NULL),
(28, 'Cooking Classes', 'cooking-classes', 'Instructional sessions for aspiring cooks.', 25, NULL, NULL, '6.00', 1, 0, 'service', 1, '2024-06-14 11:35:54', '2024-06-14 11:35:54', NULL),
(29, 'Meal Prep', 'meal-prep', 'Preparing meals for the week based on dietary requirements.', 25, NULL, NULL, '6.00', 1, 0, 'service', 1, '2024-06-14 11:36:15', '2024-06-14 11:36:15', NULL),
(30, 'Special Diets', 'special-diets', 'Cooking for specific diets like keto, vegan, and gluten-free.', 25, NULL, NULL, '7.00', 1, 0, 'service', 1, '2024-06-14 11:36:35', '2024-06-14 11:36:35', NULL),
(31, 'Electrician', 'electrician', 'Certified electrical services for residential and commercial properties. Our electricians handle everything from installations to emergency repairs with utmost safety and expertise.', NULL, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 11:37:10', '2024-06-14 11:37:10', NULL),
(32, 'Wiring Installation', 'wiring-installation', 'Installing and upgrading electrical wiring.', 31, NULL, NULL, '6.00', 1, 0, 'service', 1, '2024-06-14 11:37:35', '2024-06-14 11:37:35', NULL),
(33, 'Lighting', 'lighting', 'Installation and repair of lighting systems.', 31, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:38:10', '2024-06-14 11:38:10', NULL),
(34, 'Circuit Breaker Repair', 'circuit-breaker-repair', 'Fixing and replacing circuit breakers.', 31, NULL, NULL, '6.00', 1, 0, 'service', 1, '2024-06-14 11:38:38', '2024-06-14 11:38:38', NULL),
(35, 'Emergency Services', 'emergency-services', 'Immediate response to electrical emergencies.', 31, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:39:41', '2024-06-14 11:39:41', NULL),
(36, 'Appliance Installation', 'appliance-installation', 'Setting up and connecting electrical appliances.', 31, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:40:05', '2024-06-14 11:40:05', NULL),
(37, 'Painter', 'painter', 'Professional painting services to enhance the aesthetic appeal of your property. Our painters ensure a flawless finish and use high-quality paints for long-lasting results.', NULL, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 11:40:28', '2024-06-14 11:40:28', NULL),
(38, 'Interior Painting', 'interior-painting', 'Painting of interior walls, ceilings, and trim.', 37, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:41:00', '2024-06-14 11:41:00', NULL),
(39, 'Exterior Painting', 'exterior-painting', 'Painting of exterior walls and structures.', 37, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:41:28', '2024-06-14 11:41:28', NULL),
(40, 'Wallpaper Installation', 'wallpaper-installation', 'Applying and removing wallpaper.', 37, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:41:56', '2024-06-14 11:41:56', NULL),
(41, 'Touch-up Services', 'touch-up-services', 'Minor painting repairs and touch-ups.', 37, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:42:18', '2024-06-14 11:42:18', NULL),
(42, 'Decorative Painting', 'decorative-painting', 'Custom and artistic painting designs.', 37, NULL, NULL, '7.00', 1, 0, 'service', 1, '2024-06-14 11:42:39', '2024-06-14 11:42:39', NULL),
(43, 'Plumber', 'plumber', 'Reliable plumbing services for all your needs, from fixing leaks to installing new systems. Our plumbers provide prompt and efficient solutions to ensure smooth water flow and drainage.', NULL, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 11:43:36', '2024-06-14 11:43:36', NULL),
(44, 'Leak Repair', 'leak-repair', 'Fixing leaks in pipes and faucets.', 43, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:44:00', '2024-06-14 11:44:00', NULL),
(45, 'Drain Cleaning', 'drain-cleaning', 'Unclogging and cleaning drains.', 43, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:44:28', '2024-06-14 11:44:28', NULL),
(46, 'Pipe Installation', 'pipe-installation', 'Installing new piping systems.', 43, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:45:15', '2024-06-14 11:45:15', NULL),
(47, 'Water Heater Repair', 'water-heater-repair', 'Fixing and installing water heaters.', 43, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:45:41', '2024-06-14 11:45:41', NULL),
(48, 'Emergency Plumbing', 'emergency-plumbing', '24/7 services for urgent plumbing issues.', 43, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:46:07', '2024-06-14 11:46:07', NULL),
(49, 'Salon', 'salon', 'Top-notch salon services for hair, skin, and nails. Our skilled professionals use the best products and techniques to help you look and feel your best.', NULL, NULL, NULL, '9.00', 1, 0, 'service', 1, '2024-06-14 11:46:33', '2024-06-14 11:46:33', NULL),
(50, 'Haircut', 'haircut', 'Stylish haircuts for men, women, and children.', 49, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:46:57', '2024-06-14 11:46:57', NULL),
(51, 'Hair Coloring', 'hair-coloring', 'Professional coloring services.', 49, NULL, NULL, '7.00', 1, 0, 'service', 1, '2024-06-14 11:47:24', '2024-06-14 11:47:24', NULL),
(52, 'Facials', 'facials', 'Rejuvenating facial treatments.', 49, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:47:48', '2024-06-14 11:47:48', NULL),
(53, 'Manicure & Pedicure', 'manicure-pedicure', 'Nail care and polish services.', 49, NULL, NULL, '5.00', 1, 0, 'service', 1, '2024-06-14 11:48:09', '2024-06-14 11:48:09', NULL),
(54, 'Spa Services', 'spa-services', 'Relaxing spa treatments including massages and skin care.', 49, NULL, NULL, '8.00', 1, 0, 'service', 1, '2024-06-14 11:48:32', '2024-06-14 11:48:32', NULL),
(55, 'Home Services', 'home-services', 'Explore a range of home services to enhance your living experience, from AC repair and installation to spa treatments and more.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:26:38', '2024-06-14 12:26:38', NULL),
(56, 'AC Services', 'ac-services', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:26:54', '2024-06-14 12:26:54', NULL),
(57, 'Spa and Wellness', 'spa-and-wellness', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:27:15', '2024-06-14 12:27:15', NULL),
(58, 'Hair and Beauty', 'hair-and-beauty', 'Stay updated with the latest hair trends, beauty tips, and expert advice on hair care and styling.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:27:28', '2024-06-14 12:27:28', NULL),
(59, 'Cleaning and Organization', 'cleaning-and-organization', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:27:44', '2024-06-14 12:27:44', NULL),
(60, 'Home Improvement', 'home-improvement', 'Explore DIY projects, renovation ideas, and home improvement tips to enhance the look and functionality of your home.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:27:58', '2024-06-14 12:27:58', NULL),
(61, 'Vendor Selection and Tips', 'vendor-selection-and-tips', 'Find guidance on how to choose the right vendors for home services, maintenance, and repairs.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:28:20', '2024-06-14 12:28:20', NULL),
(62, 'Wellbeing and Lifestyle', 'wellbeing-and-lifestyle', 'Discover ways to improve your overall wellbeing, including fitness tips, mental health advice, and lifestyle changes.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:28:33', '2024-06-14 12:28:33', NULL),
(63, 'Home Maintenance', 'home-maintenance', 'Learn about essential home maintenance tasks, seasonal upkeep, and tips for keeping your home in top condition.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:28:46', '2024-06-14 12:28:46', NULL),
(64, 'Professional Services', 'professional-services', 'Explore the benefits of hiring professionals for home services, repairs, and maintenance, and how to find trusted professionals.', NULL, NULL, NULL, '0.00', 1, 0, 'blog', 1, '2024-06-14 12:28:58', '2024-06-14 12:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_zones`
--

CREATE TABLE `category_zones` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_zones`
--

INSERT INTO `category_zones` (`id`, `category_id`, `zone_id`) VALUES
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 13, 2),
(15, 14, 1),
(16, 15, 1),
(17, 16, 1),
(18, 17, 1),
(19, 18, 1),
(20, 19, 1),
(21, 20, 1),
(22, 21, 1),
(23, 22, 1),
(24, 23, 1),
(25, 24, 1),
(26, 25, 1),
(27, 25, 2),
(28, 26, 1),
(29, 26, 2),
(30, 27, 1),
(31, 27, 2),
(32, 28, 1),
(33, 28, 2),
(34, 29, 1),
(35, 29, 2),
(36, 30, 1),
(37, 30, 2),
(38, 31, 1),
(39, 32, 1),
(40, 33, 1),
(41, 34, 1),
(42, 35, 1),
(43, 36, 1),
(44, 37, 1),
(45, 37, 2),
(46, 38, 1),
(47, 38, 2),
(48, 39, 1),
(49, 39, 2),
(50, 40, 1),
(51, 40, 2),
(52, 41, 1),
(53, 41, 2),
(54, 42, 1),
(55, 42, 2),
(56, 43, 1),
(58, 44, 1),
(60, 45, 1),
(61, 46, 1),
(62, 47, 1),
(63, 48, 1),
(64, 49, 1),
(65, 49, 2),
(66, 50, 1),
(67, 50, 2),
(68, 51, 1),
(69, 51, 2),
(70, 52, 1),
(71, 52, 2),
(72, 53, 1),
(73, 53, 2),
(74, 54, 1),
(75, 54, 2);

-- --------------------------------------------------------

--
-- Table structure for table `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_commission` decimal(8,2) DEFAULT '0.00',
  `provider_commission` decimal(8,2) DEFAULT '0.00',
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission_histories`
--

INSERT INTO `commission_histories` (`id`, `admin_commission`, `provider_commission`, `booking_id`, `provider_id`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '16.20', '163.80', 2, 3, 9, '2024-07-22 22:48:46', '2024-07-22 22:48:46', NULL),
(2, '3.83', '38.68', 6, 3, 13, '2024-07-23 01:26:43', '2024-07-23 01:26:43', NULL),
(3, '5.92', '59.88', 8, 33, 49, '2024-07-23 02:51:49', '2024-07-23 02:51:49', NULL),
(4, '8.02', '81.08', 10, 3, 13, '2024-07-24 02:23:10', '2024-07-24 02:23:10', NULL),
(5, '8.02', '81.08', 20, 3, 13, '2024-07-24 02:23:10', '2024-07-24 02:23:10', NULL),
(6, '5.13', '51.87', 30, 33, 49, '2024-07-24 03:05:50', '2024-07-24 03:05:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `phone`, `code`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Company Example', 'company@example.com', '123456789', 91, 'provider company description', '2024-06-13 11:38:15', '2024-06-13 11:38:15', NULL),
(2, 'Tech Solutions Ltd', 'info@techsolutions.com', '256859', 44, NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01', NULL),
(3, 'Innovatech Inc.', 'contact@innovatech.ca', '41625896378', 1, NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52', NULL),
(4, 'Bright Cleaners Ltd.', 'contact@brightcleaners.com', '9655899517', 44, NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49', NULL),
(5, 'Doe Enterprises', 'contact@doeenterprises.com', '9644539853', 1, 'Leading provider of tech solutions.', '2024-06-14 10:16:21', '2024-06-14 10:16:21', NULL),
(6, 'Wilson Technologies', 'contact@wilsontech.de', '3075463102', 49, NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57', NULL),
(7, 'Garcia Innovations', 'info@garciainnovations.es', '9198765432', 34, NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_3166_2` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_3166_3` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `currency`, `currency_symbol`, `iso_3166_2`, `iso_3166_3`, `phone_code`, `flag`, `currency_code`) VALUES
(4, 'Afghanistan', 'afghani', '؋', 'AF', 'AFG', '93', 'AF.png', 'AFN'),
(8, 'Albania', 'lek', 'Lek', 'AL', 'ALB', '355', 'AL.png', 'ALL'),
(10, 'Antarctica', '', '', 'AQ', 'ATA', '672', 'AQ.png', ''),
(12, 'Algeria', 'Algerian dinar', 'DZD', 'DZ', 'DZA', '213', 'DZ.png', 'DZD'),
(16, 'American Samoa', 'US dollar', '$', 'AS', 'ASM', '1', 'AS.png', 'USD'),
(20, 'Andorra', 'euro', '€', 'AD', 'AND', '376', 'AD.png', 'EUR'),
(24, 'Angola', 'kwanza', 'Kz', 'AO', 'AGO', '244', 'AO.png', 'AOA'),
(28, 'Antigua and Barbuda', 'East Caribbean dollar', '$', 'AG', 'ATG', '1', 'AG.png', 'XCD'),
(31, 'Azerbaijan', 'Azerbaijani manat', 'ман', 'AZ', 'AZE', '994', 'AZ.png', 'AZN'),
(32, 'Argentina', 'Argentine peso', '$', 'AR', 'ARG', '54', 'AR.png', 'ARS'),
(36, 'Australia', 'Australian dollar', '$', 'AU', 'AUS', '61', 'AU.png', 'AUD'),
(40, 'Austria', 'euro', '€', 'AT', 'AUT', '43', 'AT.png', 'EUR'),
(44, 'Bahamas', 'Bahamian dollar', '$', 'BS', 'BHS', '1', 'BS.png', 'BSD'),
(48, 'Bahrain', 'Bahraini dinar', 'BHD', 'BH', 'BHR', '973', 'BH.png', 'BHD'),
(50, 'Bangladesh', 'taka (inv.)', 'BDT', 'BD', 'BGD', '880', 'BD.png', 'BDT'),
(51, 'Armenia', 'dram (inv.)', 'AMD', 'AM', 'ARM', '374', 'AM.png', 'AMD'),
(52, 'Barbados', 'Barbados dollar', '$', 'BB', 'BRB', '1', 'BB.png', 'BBD'),
(56, 'Belgium', 'euro', '€', 'BE', 'BEL', '32', 'BE.png', 'EUR'),
(60, 'Bermuda', 'Bermuda dollar', '$', 'BM', 'BMU', '1', 'BM.png', 'BMD'),
(64, 'Bhutan', 'ngultrum (inv.)', 'BTN', 'BT', 'BTN', '975', 'BT.png', 'BTN'),
(68, 'Bolivia, Plurinational State of', 'boliviano', '$b', 'BO', 'BOL', '591', 'BO.png', 'BOB'),
(70, 'Bosnia and Herzegovina', 'convertible mark', 'KM', 'BA', 'BIH', '387', 'BA.png', 'BAM'),
(72, 'Botswana', 'pula (inv.)', 'P', 'BW', 'BWA', '267', 'BW.png', 'BWP'),
(74, 'Bouvet Island', '', 'kr', 'BV', 'BVT', '47', 'BV.png', ''),
(76, 'Brazil', 'real (pl. reais)', 'R$', 'BR', 'BRA', '55', 'BR.png', 'BRL'),
(84, 'Belize', 'Belize dollar', 'BZ$', 'BZ', 'BLZ', '501', 'BZ.png', 'BZD'),
(86, 'British Indian Ocean Territory', 'US dollar', '$', 'IO', 'IOT', '246', 'IO.png', 'USD'),
(90, 'Solomon Islands', 'Solomon Islands dollar', '$', 'SB', 'SLB', '677', 'SB.png', 'SBD'),
(92, 'Virgin Islands, British', 'US dollar', '$', 'VG', 'VGB', '1', 'VG.png', 'USD'),
(96, 'Brunei Darussalam', 'Brunei dollar', '$', 'BN', 'BRN', '673', 'BN.png', 'BND'),
(100, 'Bulgaria', 'lev (pl. leva)', 'лв', 'BG', 'BGR', '359', 'BG.png', 'BGN'),
(104, 'Myanmar', 'kyat', 'K', 'MM', 'MMR', '95', 'MM.png', 'MMK'),
(108, 'Burundi', 'Burundi franc', 'BIF', 'BI', 'BDI', '257', 'BI.png', 'BIF'),
(112, 'Belarus', 'Belarusian rouble', 'p.', 'BY', 'BLR', '375', 'BY.png', 'BYR'),
(116, 'Cambodia', 'riel', '៛', 'KH', 'KHM', '855', 'KH.png', 'KHR'),
(120, 'Cameroon', 'CFA franc (BEAC)', 'FCF', 'CM', 'CMR', '237', 'CM.png', 'XAF'),
(124, 'Canada', 'Canadian dollar', '$', 'CA', 'CAN', '1', 'CA.png', 'CAD'),
(132, 'Cape Verde', 'Cape Verde escudo', 'CVE', 'CV', 'CPV', '238', 'CV.png', 'CVE'),
(136, 'Cayman Islands', 'Cayman Islands dollar', '$', 'KY', 'CYM', '1', 'KY.png', 'KYD'),
(140, 'Central African Republic', 'CFA franc (BEAC)', 'CFA', 'CF', 'CAF', '236', 'CF.png', 'XAF'),
(144, 'Sri Lanka', 'Sri Lankan rupee', '₨', 'LK', 'LKA', '94', 'LK.png', 'LKR'),
(148, 'Chad', 'CFA franc (BEAC)', 'XAF', 'TD', 'TCD', '235', 'TD.png', 'XAF'),
(152, 'Chile', 'Chilean peso', 'CLP', 'CL', 'CHL', '56', 'CL.png', 'CLP'),
(156, 'China', 'renminbi-yuan (inv.)', '¥', 'CN', 'CHN', '86', 'CN.png', 'CNY'),
(158, 'Taiwan, Province of China', 'new Taiwan dollar', 'NT$', 'TW', 'TWN', '886', 'TW.png', 'TWD'),
(162, 'Christmas Island', 'Australian dollar', '$', 'CX', 'CXR', '61', 'CX.png', 'AUD'),
(166, 'Cocos (Keeling) Islands', 'Australian dollar', '$', 'CC', 'CCK', '61', 'CC.png', 'AUD'),
(170, 'Colombia', 'Colombian peso', '$', 'CO', 'COL', '57', 'CO.png', 'COP'),
(174, 'Comoros', 'Comorian franc', 'KMF', 'KM', 'COM', '269', 'KM.png', 'KMF'),
(175, 'Mayotte', 'euro', '€', 'YT', 'MYT', '262', 'YT.png', 'EUR'),
(178, 'Congo', 'CFA franc (BEAC)', 'FCF', 'CG', 'COG', '242', 'CG.png', 'XAF'),
(180, 'Congo, the Democratic Republic of the', 'Congolese franc', 'CDF', 'CD', 'COD', '243', 'CD.png', 'CDF'),
(184, 'Cook Islands', 'New Zealand dollar', '$', 'CK', 'COK', '682', 'CK.png', 'NZD'),
(188, 'Costa Rica', 'Costa Rican colón (pl. colones)', '₡', 'CR', 'CRI', '506', 'CR.png', 'CRC'),
(191, 'Croatia', 'kuna (inv.)', 'kn', 'HR', 'HRV', '385', 'HR.png', 'HRK'),
(192, 'Cuba', 'Cuban peso', '₱', 'CU', 'CUB', '53', 'CU.png', 'CUP'),
(196, 'Cyprus', 'euro', 'CYP', 'CY', 'CYP', '357', 'CY.png', 'EUR'),
(203, 'Czech Republic', 'Czech koruna (pl. koruny)', 'Kč', 'CZ', 'CZE', '420', 'CZ.png', 'CZK'),
(204, 'Benin', 'CFA franc (BCEAO)', 'XOF', 'BJ', 'BEN', '229', 'BJ.png', 'XOF'),
(208, 'Denmark', 'Danish krone', 'kr', 'DK', 'DNK', '45', 'DK.png', 'DKK'),
(212, 'Dominica', 'East Caribbean dollar', '$', 'DM', 'DMA', '1', 'DM.png', 'XCD'),
(214, 'Dominican Republic', 'Dominican peso', 'RD$', 'DO', 'DOM', '1', 'DO.png', 'DOP'),
(218, 'Ecuador', 'US dollar', '$', 'EC', 'ECU', '593', 'EC.png', 'USD'),
(222, 'El Salvador', 'Salvadorian colón (pl. colones)', '$', 'SV', 'SLV', '503', 'SV.png', 'SVC'),
(226, 'Equatorial Guinea', 'CFA franc (BEAC)', 'FCF', 'GQ', 'GNQ', '240', 'GQ.png', 'XAF'),
(231, 'Ethiopia', 'birr (inv.)', 'ETB', 'ET', 'ETH', '251', 'ET.png', 'ETB'),
(232, 'Eritrea', 'nakfa', 'Nfk', 'ER', 'ERI', '291', 'ER.png', 'ERN'),
(233, 'Estonia', 'euro', 'kr', 'EE', 'EST', '372', 'EE.png', 'EUR'),
(234, 'Faroe Islands', 'Danish krone', 'kr', 'FO', 'FRO', '298', 'FO.png', 'DKK'),
(238, 'Falkland Islands (Malvinas)', 'Falkland Islands pound', '£', 'FK', 'FLK', '500', 'FK.png', 'FKP'),
(239, 'South Georgia and the South Sandwich Islands', '', '£', 'GS', 'SGS', '44', 'GS.png', ''),
(242, 'Fiji', 'Fiji dollar', '$', 'FJ', 'FJI', '679', 'FJ.png', 'FJD'),
(246, 'Finland', 'euro', '€', 'FI', 'FIN', '358', 'FI.png', 'EUR'),
(248, 'Åland Islands', 'euro', NULL, 'AX', 'ALA', '358', NULL, 'EUR'),
(250, 'France', 'euro', '€', 'FR', 'FRA', '33', 'FR.png', 'EUR'),
(254, 'French Guiana', 'euro', '€', 'GF', 'GUF', '594', 'GF.png', 'EUR'),
(258, 'French Polynesia', 'CFP franc', 'XPF', 'PF', 'PYF', '689', 'PF.png', 'XPF'),
(260, 'French Southern Territories', 'euro', '€', 'TF', 'ATF', '33', 'TF.png', 'EUR'),
(262, 'Djibouti', 'Djibouti franc', 'DJF', 'DJ', 'DJI', '253', 'DJ.png', 'DJF'),
(266, 'Gabon', 'CFA franc (BEAC)', 'FCF', 'GA', 'GAB', '241', 'GA.png', 'XAF'),
(268, 'Georgia', 'lari', 'GEL', 'GE', 'GEO', '995', 'GE.png', 'GEL'),
(270, 'Gambia', 'dalasi (inv.)', 'D', 'GM', 'GMB', '220', 'GM.png', 'GMD'),
(275, 'Palestinian Territory, Occupied', NULL, '₪', 'PS', 'PSE', '970', 'PS.png', NULL),
(276, 'Germany', 'euro', '€', 'DE', 'DEU', '49', 'DE.png', 'EUR'),
(288, 'Ghana', 'Ghana cedi', '¢', 'GH', 'GHA', '233', 'GH.png', 'GHS'),
(292, 'Gibraltar', 'Gibraltar pound', '£', 'GI', 'GIB', '350', 'GI.png', 'GIP'),
(296, 'Kiribati', 'Australian dollar', '$', 'KI', 'KIR', '686', 'KI.png', 'AUD'),
(300, 'Greece', 'euro', '€', 'GR', 'GRC', '30', 'GR.png', 'EUR'),
(304, 'Greenland', 'Danish krone', 'kr', 'GL', 'GRL', '299', 'GL.png', 'DKK'),
(308, 'Grenada', 'East Caribbean dollar', '$', 'GD', 'GRD', '1', 'GD.png', 'XCD'),
(312, 'Guadeloupe', 'euro', '€', 'GP', 'GLP', '590', 'GP.png', 'EUR '),
(316, 'Guam', 'US dollar', '$', 'GU', 'GUM', '1', 'GU.png', 'USD'),
(320, 'Guatemala', 'quetzal (pl. quetzales)', 'Q', 'GT', 'GTM', '502', 'GT.png', 'GTQ'),
(324, 'Guinea', 'Guinean franc', 'GNF', 'GN', 'GIN', '224', 'GN.png', 'GNF'),
(328, 'Guyana', 'Guyana dollar', '$', 'GY', 'GUY', '592', 'GY.png', 'GYD'),
(332, 'Haiti', 'gourde', 'G', 'HT', 'HTI', '509', 'HT.png', 'HTG'),
(334, 'Heard Island and McDonald Islands', '', '$', 'HM', 'HMD', '61', 'HM.png', ''),
(336, 'Holy See (Vatican City State)', 'euro', '€', 'VA', 'VAT', '39', 'VA.png', 'EUR'),
(340, 'Honduras', 'lempira', 'L', 'HN', 'HND', '504', 'HN.png', 'HNL'),
(344, 'Hong Kong', 'Hong Kong dollar', '$', 'HK', 'HKG', '852', 'HK.png', 'HKD'),
(348, 'Hungary', 'forint (inv.)', 'Ft', 'HU', 'HUN', '36', 'HU.png', 'HUF'),
(352, 'Iceland', 'króna (pl. krónur)', 'kr', 'IS', 'ISL', '354', 'IS.png', 'ISK'),
(356, 'India', 'Indian rupee', '₹', 'IN', 'IND', '91', 'IN.png', 'INR'),
(360, 'Indonesia', 'Indonesian rupiah (inv.)', 'Rp', 'ID', 'IDN', '62', 'ID.png', 'IDR'),
(364, 'Iran, Islamic Republic of', 'Iranian rial', '﷼', 'IR', 'IRN', '98', 'IR.png', 'IRR'),
(368, 'Iraq', 'Iraqi dinar', 'IQD', 'IQ', 'IRQ', '964', 'IQ.png', 'IQD'),
(372, 'Ireland', 'euro', '€', 'IE', 'IRL', '353', 'IE.png', 'EUR'),
(376, 'Israel', 'shekel', '₪', 'IL', 'ISR', '972', 'IL.png', 'ILS'),
(380, 'Italy', 'euro', '€', 'IT', 'ITA', '39', 'IT.png', 'EUR'),
(384, 'Côte d\'Ivoire', 'CFA franc (BCEAO)', 'XOF', 'CI', 'CIV', '225', 'CI.png', 'XOF'),
(388, 'Jamaica', 'Jamaica dollar', '$', 'JM', 'JAM', '1', 'JM.png', 'JMD'),
(392, 'Japan', 'yen (inv.)', '¥', 'JP', 'JPN', '81', 'JP.png', 'JPY'),
(398, 'Kazakhstan', 'tenge (inv.)', 'лв', 'KZ', 'KAZ', '7', 'KZ.png', 'KZT'),
(400, 'Jordan', 'Jordanian dinar', 'JOD', 'JO', 'JOR', '962', 'JO.png', 'JOD'),
(404, 'Kenya', 'Kenyan shilling', 'KES', 'KE', 'KEN', '254', 'KE.png', 'KES'),
(408, 'Korea, Democratic People\'s Republic of', 'North Korean won (inv.)', '₩', 'KP', 'PRK', '850', 'KP.png', 'KPW'),
(410, 'Korea, Republic of', 'South Korean won (inv.)', '₩', 'KR', 'KOR', '82', 'KR.png', 'KRW'),
(414, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'KW', 'KWT', '965', 'KW.png', 'KWD'),
(417, 'Kyrgyzstan', 'som', 'лв', 'KG', 'KGZ', '996', 'KG.png', 'KGS'),
(418, 'Lao People\'s Democratic Republic', 'kip (inv.)', '₭', 'LA', 'LAO', '856', 'LA.png', 'LAK'),
(422, 'Lebanon', 'Lebanese pound', '£', 'LB', 'LBN', '961', 'LB.png', 'LBP'),
(426, 'Lesotho', 'loti (pl. maloti)', 'L', 'LS', 'LSO', '266', 'LS.png', 'LSL'),
(428, 'Latvia', 'euro', 'Ls', 'LV', 'LVA', '371', 'LV.png', 'EUR'),
(430, 'Liberia', 'Liberian dollar', '$', 'LR', 'LBR', '231', 'LR.png', 'LRD'),
(434, 'Libya', 'Libyan dinar', 'LYD', 'LY', 'LBY', '218', 'LY.png', 'LYD'),
(438, 'Liechtenstein', 'Swiss franc', 'CHF', 'LI', 'LIE', '423', 'LI.png', 'CHF'),
(440, 'Lithuania', 'euro', 'Lt', 'LT', 'LTU', '370', 'LT.png', 'EUR'),
(442, 'Luxembourg', 'euro', '€', 'LU', 'LUX', '352', 'LU.png', 'EUR'),
(446, 'Macao', 'pataca', 'MOP', 'MO', 'MAC', '853', 'MO.png', 'MOP'),
(450, 'Madagascar', 'ariary', 'MGA', 'MG', 'MDG', '261', 'MG.png', 'MGA'),
(454, 'Malawi', 'Malawian kwacha (inv.)', 'MK', 'MW', 'MWI', '265', 'MW.png', 'MWK'),
(458, 'Malaysia', 'ringgit (inv.)', 'RM', 'MY', 'MYS', '60', 'MY.png', 'MYR'),
(462, 'Maldives', 'rufiyaa', 'Rf', 'MV', 'MDV', '960', 'MV.png', 'MVR'),
(466, 'Mali', 'CFA franc (BCEAO)', 'XOF', 'ML', 'MLI', '223', 'ML.png', 'XOF'),
(470, 'Malta', 'euro', 'MTL', 'MT', 'MLT', '356', 'MT.png', 'EUR'),
(474, 'Martinique', 'euro', '€', 'MQ', 'MTQ', '596', 'MQ.png', 'EUR'),
(478, 'Mauritania', 'ouguiya', 'UM', 'MR', 'MRT', '222', 'MR.png', 'MRO'),
(480, 'Mauritius', 'Mauritian rupee', '₨', 'MU', 'MUS', '230', 'MU.png', 'MUR'),
(484, 'Mexico', 'Mexican peso', '$', 'MX', 'MEX', '52', 'MX.png', 'MXN'),
(492, 'Monaco', 'euro', '€', 'MC', 'MCO', '377', 'MC.png', 'EUR'),
(496, 'Mongolia', 'tugrik', '₮', 'MN', 'MNG', '976', 'MN.png', 'MNT'),
(498, 'Moldova, Republic of', 'Moldovan leu (pl. lei)', 'MDL', 'MD', 'MDA', '373', 'MD.png', 'MDL'),
(499, 'Montenegro', 'euro', '€', 'ME', 'MNE', '382', 'ME.png', 'EUR'),
(500, 'Montserrat', 'East Caribbean dollar', '$', 'MS', 'MSR', '1', 'MS.png', 'XCD'),
(504, 'Morocco', 'Moroccan dirham', 'MAD', 'MA', 'MAR', '212', 'MA.png', 'MAD'),
(508, 'Mozambique', 'metical', 'MT', 'MZ', 'MOZ', '258', 'MZ.png', 'MZN'),
(512, 'Oman', 'Omani rial', '﷼', 'OM', 'OMN', '968', 'OM.png', 'OMR'),
(516, 'Namibia', 'Namibian dollar', '$', 'NA', 'NAM', '264', 'NA.png', 'NAD'),
(520, 'Nauru', 'Australian dollar', '$', 'NR', 'NRU', '674', 'NR.png', 'AUD'),
(524, 'Nepal', 'Nepalese rupee', '₨', 'NP', 'NPL', '977', 'NP.png', 'NPR'),
(528, 'Netherlands', 'euro', '€', 'NL', 'NLD', '31', 'NL.png', 'EUR'),
(531, 'Curaçao', 'Netherlands Antillean guilder (CW1)', NULL, 'CW', 'CUW', '599', NULL, 'ANG'),
(533, 'Aruba', 'Aruban guilder', 'ƒ', 'AW', 'ABW', '297', 'AW.png', 'AWG'),
(534, 'Sint Maarten (Dutch part)', 'Netherlands Antillean guilder (SX1)', NULL, 'SX', 'SXM', '721', NULL, 'ANG'),
(535, 'Bonaire, Sint Eustatius and Saba', 'US dollar', NULL, 'BQ', 'BES', '599', NULL, 'USD'),
(540, 'New Caledonia', 'CFP franc', 'XPF', 'NC', 'NCL', '687', 'NC.png', 'XPF'),
(548, 'Vanuatu', 'vatu (inv.)', 'Vt', 'VU', 'VUT', '678', 'VU.png', 'VUV'),
(554, 'New Zealand', 'New Zealand dollar', '$', 'NZ', 'NZL', '64', 'NZ.png', 'NZD'),
(558, 'Nicaragua', 'córdoba oro', 'C$', 'NI', 'NIC', '505', 'NI.png', 'NIO'),
(562, 'Niger', 'CFA franc (BCEAO)', 'XOF', 'NE', 'NER', '227', 'NE.png', 'XOF'),
(566, 'Nigeria', 'naira (inv.)', '₦', 'NG', 'NGA', '234', 'NG.png', 'NGN'),
(570, 'Niue', 'New Zealand dollar', '$', 'NU', 'NIU', '683', 'NU.png', 'NZD'),
(574, 'Norfolk Island', 'Australian dollar', '$', 'NF', 'NFK', '672', 'NF.png', 'AUD'),
(578, 'Norway', 'Norwegian krone (pl. kroner)', 'kr', 'NO', 'NOR', '47', 'NO.png', 'NOK'),
(580, 'Northern Mariana Islands', 'US dollar', '$', 'MP', 'MNP', '1', 'MP.png', 'USD'),
(581, 'United States Minor Outlying Islands', 'US dollar', '$', 'UM', 'UMI', '1', 'UM.png', 'USD'),
(583, 'Micronesia, Federated States of', 'US dollar', '$', 'FM', 'FSM', '691', 'FM.png', 'USD'),
(584, 'Marshall Islands', 'US dollar', '$', 'MH', 'MHL', '692', 'MH.png', 'USD'),
(585, 'Palau', 'US dollar', '$', 'PW', 'PLW', '680', 'PW.png', 'USD'),
(586, 'Pakistan', 'Pakistani rupee', '₨', 'PK', 'PAK', '92', 'PK.png', 'PKR'),
(591, 'Panama', 'balboa', 'B/.', 'PA', 'PAN', '507', 'PA.png', 'PAB'),
(598, 'Papua New Guinea', 'kina (inv.)', 'PGK', 'PG', 'PNG', '675', 'PG.png', 'PGK'),
(600, 'Paraguay', 'guaraní', 'Gs', 'PY', 'PRY', '595', 'PY.png', 'PYG'),
(604, 'Peru', 'new sol', 'S/.', 'PE', 'PER', '51', 'PE.png', 'PEN'),
(608, 'Philippines', 'Philippine peso', 'Php', 'PH', 'PHL', '63', 'PH.png', 'PHP'),
(612, 'Pitcairn', 'New Zealand dollar', '$', 'PN', 'PCN', '649', 'PN.png', 'NZD'),
(616, 'Poland', 'zloty', 'zł', 'PL', 'POL', '48', 'PL.png', 'PLN'),
(620, 'Portugal', 'euro', '€', 'PT', 'PRT', '351', 'PT.png', 'EUR'),
(624, 'Guinea-Bissau', 'CFA franc (BCEAO)', 'XOF', 'GW', 'GNB', '245', 'GW.png', 'XOF'),
(626, 'Timor-Leste', 'US dollar', '$', 'TL', 'TLS', '670', 'TL.png', 'USD'),
(630, 'Puerto Rico', 'US dollar', '$', 'PR', 'PRI', '1', 'PR.png', 'USD'),
(634, 'Qatar', 'Qatari riyal', '﷼', 'QA', 'QAT', '974', 'QA.png', 'QAR'),
(638, 'Réunion', 'euro', '€', 'RE', 'REU', '262', 'RE.png', 'EUR'),
(642, 'Romania', 'Romanian leu (pl. lei)', 'lei', 'RO', 'ROU', '40', 'RO.png', 'RON'),
(643, 'Russian Federation', 'Russian rouble', 'руб', 'RU', 'RUS', '7', 'RU.png', 'RUB'),
(646, 'Rwanda', 'Rwandese franc', 'RWF', 'RW', 'RWA', '250', 'RW.png', 'RWF'),
(652, 'Saint Barthélemy', 'euro', NULL, 'BL', 'BLM', '590', NULL, 'EUR'),
(654, 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helena pound', '£', 'SH', 'SHN', '290', 'SH.png', 'SHP'),
(659, 'Saint Kitts and Nevis', 'East Caribbean dollar', '$', 'KN', 'KNA', '1', 'KN.png', 'XCD'),
(660, 'Anguilla', 'East Caribbean dollar', '$', 'AI', 'AIA', '1', 'AI.png', 'XCD'),
(662, 'Saint Lucia', 'East Caribbean dollar', '$', 'LC', 'LCA', '1', 'LC.png', 'XCD'),
(663, 'Saint Martin (French part)', 'euro', NULL, 'MF', 'MAF', '590', NULL, 'EUR'),
(666, 'Saint Pierre and Miquelon', 'euro', '€', 'PM', 'SPM', '508', 'PM.png', 'EUR'),
(670, 'Saint Vincent and the Grenadines', 'East Caribbean dollar', '$', 'VC', 'VCT', '1', 'VC.png', 'XCD'),
(674, 'San Marino', 'euro', '€', 'SM', 'SMR', '378', 'SM.png', 'EUR '),
(678, 'Sao Tome and Principe', 'dobra', 'Db', 'ST', 'STP', '239', 'ST.png', 'STD'),
(682, 'Saudi Arabia', 'riyal', '﷼', 'SA', 'SAU', '966', 'SA.png', 'SAR'),
(686, 'Senegal', 'CFA franc (BCEAO)', 'XOF', 'SN', 'SEN', '221', 'SN.png', 'XOF'),
(688, 'Serbia', 'Serbian dinar', NULL, 'RS', 'SRB', '381', NULL, 'RSD'),
(690, 'Seychelles', 'Seychelles rupee', '₨', 'SC', 'SYC', '248', 'SC.png', 'SCR'),
(694, 'Sierra Leone', 'leone', 'Le', 'SL', 'SLE', '232', 'SL.png', 'SLL'),
(702, 'Singapore', 'Singapore dollar', '$', 'SG', 'SGP', '65', 'SG.png', 'SGD'),
(703, 'Slovakia', 'euro', 'Sk', 'SK', 'SVK', '421', 'SK.png', 'EUR'),
(704, 'Viet Nam', 'dong', '₫', 'VN', 'VNM', '84', 'VN.png', 'VND'),
(705, 'Slovenia', 'euro', '€', 'SI', 'SVN', '386', 'SI.png', 'EUR'),
(706, 'Somalia', 'Somali shilling', 'S', 'SO', 'SOM', '252', 'SO.png', 'SOS'),
(710, 'South Africa', 'rand', 'R', 'ZA', 'ZAF', '27', 'ZA.png', 'ZAR'),
(716, 'Zimbabwe', 'Zimbabwe dollar (ZW1)', 'Z$', 'ZW', 'ZWE', '263', 'ZW.png', 'ZWL'),
(724, 'Spain', 'euro', '€', 'ES', 'ESP', '34', 'ES.png', 'EUR'),
(728, 'South Sudan', 'South Sudanese pound', NULL, 'SS', 'SSD', '211', NULL, 'SSP'),
(729, 'Sudan', 'Sudanese pound', NULL, 'SD', 'SDN', '249', NULL, 'SDG'),
(732, 'Western Sahara', 'Moroccan dirham', 'MAD', 'EH', 'ESH', '212', 'EH.png', 'MAD'),
(740, 'Suriname', 'Surinamese dollar', '$', 'SR', 'SUR', '597', 'SR.png', 'SRD'),
(744, 'Svalbard and Jan Mayen', 'Norwegian krone (pl. kroner)', 'kr', 'SJ', 'SJM', '47', 'SJ.png', 'NOK'),
(748, 'Swaziland', 'lilangeni', 'SZL', 'SZ', 'SWZ', '268', 'SZ.png', 'SZL'),
(752, 'Sweden', 'krona (pl. kronor)', 'kr', 'SE', 'SWE', '46', 'SE.png', 'SEK'),
(756, 'Switzerland', 'Swiss franc', 'CHF', 'CH', 'CHE', '41', 'CH.png', 'CHF'),
(760, 'Syrian Arab Republic', 'Syrian pound', '£', 'SY', 'SYR', '963', 'SY.png', 'SYP'),
(762, 'Tajikistan', 'somoni', 'TJS', 'TJ', 'TJK', '992', 'TJ.png', 'TJS'),
(764, 'Thailand', 'baht (inv.)', '฿', 'TH', 'THA', '66', 'TH.png', 'THB'),
(768, 'Togo', 'CFA franc (BCEAO)', 'XOF', 'TG', 'TGO', '228', 'TG.png', 'XOF'),
(772, 'Tokelau', 'New Zealand dollar', '$', 'TK', 'TKL', '690', 'TK.png', 'NZD'),
(776, 'Tonga', 'pa’anga (inv.)', 'T$', 'TO', 'TON', '676', 'TO.png', 'TOP'),
(780, 'Trinidad and Tobago', 'Trinidad and Tobago dollar', 'TT$', 'TT', 'TTO', '1', 'TT.png', 'TTD'),
(784, 'United Arab Emirates', 'UAE dirham', 'AED', 'AE', 'ARE', '971', 'AE.png', 'AED'),
(788, 'Tunisia', 'Tunisian dinar', 'TND', 'TN', 'TUN', '216', 'TN.png', 'TND'),
(792, 'Turkey', 'Turkish lira (inv.)', '₺', 'TR', 'TUR', '90', 'TR.png', 'TRY'),
(795, 'Turkmenistan', 'Turkmen manat (inv.)', 'm', 'TM', 'TKM', '993', 'TM.png', 'TMT'),
(796, 'Turks and Caicos Islands', 'US dollar', '$', 'TC', 'TCA', '1', 'TC.png', 'USD'),
(798, 'Tuvalu', 'Australian dollar', '$', 'TV', 'TUV', '688', 'TV.png', 'AUD'),
(800, 'Uganda', 'Uganda shilling', 'UGX', 'UG', 'UGA', '256', 'UG.png', 'UGX'),
(804, 'Ukraine', 'hryvnia', '₴', 'UA', 'UKR', '380', 'UA.png', 'UAH'),
(807, 'Macedonia, the former Yugoslav Republic of', 'denar (pl. denars)', 'ден', 'MK', 'MKD', '389', 'MK.png', 'MKD'),
(818, 'Egypt', 'Egyptian pound', '£', 'EG', 'EGY', '20', 'EG.png', 'EGP'),
(826, 'United Kingdom', 'pound sterling', '£', 'GB', 'GBR', '44', 'GB.png', 'GBP'),
(831, 'Guernsey', 'Guernsey pound (GG2)', NULL, 'GG', 'GGY', '44', NULL, 'GGP (GG2)'),
(832, 'Jersey', 'Jersey pound (JE2)', NULL, 'JE', 'JEY', '44', NULL, 'JEP (JE2)'),
(833, 'Isle of Man', 'Manx pound (IM2)', NULL, 'IM', 'IMN', '44', NULL, 'IMP (IM2)'),
(834, 'Tanzania, United Republic of', 'Tanzanian shilling', 'TZS', 'TZ', 'TZA', '255', 'TZ.png', 'TZS'),
(840, 'United States', 'US dollar', '$', 'US', 'USA', '1', 'US.png', 'USD'),
(850, 'Virgin Islands, U.S.', 'US dollar', '$', 'VI', 'VIR', '1', 'VI.png', 'USD'),
(854, 'Burkina Faso', 'CFA franc (BCEAO)', 'XOF', 'BF', 'BFA', '226', 'BF.png', 'XOF'),
(858, 'Uruguay', 'Uruguayan peso', '$U', 'UY', 'URY', '598', 'UY.png', 'UYU'),
(860, 'Uzbekistan', 'sum (inv.)', 'лв', 'UZ', 'UZB', '998', 'UZ.png', 'UZS'),
(862, 'Venezuela, Bolivarian Republic of', 'bolívar fuerte (pl. bolívares fuertes)', 'Bs', 'VE', 'VEN', '58', 'VE.png', 'VEF'),
(876, 'Wallis and Futuna', 'CFP franc', 'XPF', 'WF', 'WLF', '681', 'WF.png', 'XPF'),
(882, 'Samoa', 'tala (inv.)', 'WS$', 'WS', 'WSM', '685', 'WS.png', 'WST'),
(887, 'Yemen', 'Yemeni rial', '﷼', 'YE', 'YEM', '967', 'YE.png', 'YER'),
(894, 'Zambia', 'Zambian kwacha (inv.)', 'ZK', 'ZM', 'ZMB', '260', 'ZM.png', 'ZMW');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('fixed','free_service','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'fixed',
  `amount` decimal(15,2) DEFAULT '0.00',
  `min_spend` decimal(15,2) DEFAULT '0.00',
  `is_unlimited` int DEFAULT '1',
  `usage_per_coupon` int DEFAULT '0',
  `usage_per_customer` int DEFAULT '0',
  `used` int DEFAULT '0',
  `status` int DEFAULT '1',
  `is_expired` int DEFAULT '0',
  `is_apply_all` int DEFAULT '0',
  `is_first_order` int DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `min_spend`, `is_unlimited`, `usage_per_coupon`, `usage_per_customer`, `used`, `status`, `is_expired`, `is_apply_all`, `is_first_order`, `start_date`, `end_date`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'HS50OFF2024', 'percentage', '50.00', '100.00', 1, NULL, NULL, 0, 1, 1, 1, 0, '2024-06-14', '2024-06-28', 1, '2024-06-14 02:53:32', '2024-06-14 02:53:32', NULL),
(2, 'SPRING10', 'fixed', '50.00', '100.00', 0, 30, 1, 0, 1, 0, 1, 1, NULL, NULL, 1, '2024-06-14 03:07:26', '2024-06-14 03:07:26', NULL),
(3, 'EXCLUSIVEVIP', 'fixed', '15.00', '10.00', 1, NULL, NULL, 0, 1, 0, 1, 0, NULL, NULL, 1, '2024-06-14 03:08:52', '2024-06-14 03:08:52', NULL),
(4, 'MOST25', 'fixed', '25.00', '120.00', 1, NULL, NULL, 0, 1, 0, 1, 1, NULL, NULL, 1, '2024-06-14 03:10:16', '2024-06-14 03:10:16', NULL),
(5, 'FABULOUS15', 'percentage', '25.00', '100.00', 0, 1, 1, 0, 1, 1, 1, 1, '2024-06-14', '2024-06-30', 1, '2024-06-14 03:14:05', '2024-06-14 03:14:05', NULL),
(6, 'SAVE20', 'fixed', '20.00', '100.00', 0, 1, 1, 0, 1, 0, 1, 1, NULL, NULL, 1, '2024-06-14 03:14:43', '2024-06-14 03:14:43', NULL),
(7, 'FIXIT5', 'percentage', '10.00', '100.00', 0, 1, 1, 0, 1, 1, 1, 1, '2024-06-18', '2025-04-05', 1, '2024-06-14 03:15:39', '2024-06-14 03:15:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_decimal` decimal(8,2) DEFAULT '2.00',
  `exchange_rate` decimal(8,2) DEFAULT '1.00',
  `thousands_separator` enum('comma','period','space') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'comma',
  `decimal_separator` enum('comma','period','space') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'comma',
  `system_reserve` int NOT NULL DEFAULT '0',
  `status` int DEFAULT '1',
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `no_of_decimal`, `exchange_rate`, `thousands_separator`, `decimal_separator`, `system_reserve`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'USD', '$', '2.00', '1.00', 'comma', 'comma', 0, 1, NULL, '2024-06-13 11:38:13', '2024-06-13 11:38:13', NULL),
(2, 'INR', '₹', '2.00', '82.00', 'comma', 'comma', 0, 1, NULL, '2024-06-13 11:38:13', '2024-06-13 11:38:13', NULL),
(3, 'GBP', '£', '2.00', '100.00', 'comma', 'comma', 0, 1, NULL, '2024-06-13 11:38:13', '2024-06-13 11:38:13', NULL),
(4, 'EUR', '€', '2.00', '56.00', 'comma', 'comma', 0, 1, NULL, '2024-06-13 11:38:13', '2024-06-13 11:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_required` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `title`, `status`, `is_required`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Passport', 1, 0, '2024-06-13 12:47:16', '2024-06-13 12:47:16', NULL),
(2, 'National Identity Card (ID Card)', 1, 0, '2024-06-13 12:47:32', '2024-06-13 12:47:32', NULL),
(3, 'Driver\'s License', 1, 0, '2024-06-13 12:47:40', '2024-06-13 12:47:40', NULL),
(4, 'Social Security Card', 1, 0, '2024-06-13 12:47:48', '2024-06-13 12:47:48', NULL),
(5, 'Voter Identification Card', 1, 0, '2024-06-13 12:47:57', '2024-06-13 12:47:57', NULL),
(6, 'Residence Permit', 1, 0, '2024-06-13 12:48:04', '2024-06-13 12:48:04', NULL),
(7, 'Work Permit', 1, 0, '2024-06-13 12:48:21', '2024-06-13 12:48:21', NULL),
(8, 'Tax Identification Number (TIN) Card', 1, 0, '2024-06-13 12:48:36', '2024-06-13 12:48:36', NULL),
(9, 'Health Insurance Card', 1, 0, '2024-06-13 12:48:44', '2024-06-13 12:48:44', NULL),
(10, 'Employee Identification Card', 1, 0, '2024-06-13 12:49:01', '2024-06-13 12:49:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exclude_services_coupons`
--

CREATE TABLE `exclude_services_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_charges`
--

CREATE TABLE `extra_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `per_service_amount` decimal(8,2) DEFAULT NULL,
  `no_service_done` int DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourite_lists`
--

CREATE TABLE `favourite_lists` (
  `id` bigint UNSIGNED NOT NULL,
  `consumer_id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Afrikaans', 'Afrikaans', NULL, NULL),
(2, 'English', 'English', NULL, NULL),
(3, 'Albanian', 'Albanian', NULL, NULL),
(4, 'Amharic', 'Amharic', NULL, NULL),
(5, 'Arabic', 'Arabic', NULL, NULL),
(6, 'Armenian', 'Armenian', NULL, NULL),
(7, 'Azerbaijani', 'Azerbaijani', NULL, NULL),
(8, 'Basque', 'Basque', NULL, NULL),
(9, 'Belarusian', 'Belarusian', NULL, NULL),
(10, 'Bengali', 'Bengali', NULL, NULL),
(11, 'Bosnian', 'Bosnian', NULL, NULL),
(12, 'Bulgarian', 'Bulgarian', NULL, NULL),
(13, 'Catalan', 'Catalan', NULL, NULL),
(14, 'Cebuano', 'Cebuano', NULL, NULL),
(15, 'Chichewa', 'Chichewa', NULL, NULL),
(16, 'Chinese', 'Chinese', NULL, NULL),
(17, 'Corsican', 'Corsican', NULL, NULL),
(18, 'Croatian', 'Croatian', NULL, NULL),
(19, 'Czech', 'Czech', NULL, NULL),
(20, 'Danish', 'Danish', NULL, NULL),
(21, 'Dutch', 'Dutch', NULL, NULL),
(22, 'Esperanto', 'Esperanto', NULL, NULL),
(23, 'Estonian', 'Estonian', NULL, NULL),
(24, 'Filipino', 'Filipino', NULL, NULL),
(25, 'Finnish', 'Finnish', NULL, NULL),
(26, 'French', 'French', NULL, NULL),
(27, 'Frisian', 'Frisian', NULL, NULL),
(28, 'Galician', 'Galician', NULL, NULL),
(29, 'Georgian', 'Georgian', NULL, NULL),
(30, 'German', 'German', NULL, NULL),
(31, 'Greek', 'Greek', NULL, NULL),
(32, 'Gujarati', 'Gujarati', NULL, NULL),
(33, 'Haitian Creole', 'Haitian Creole', NULL, NULL),
(34, 'Hausa', 'Hausa', NULL, NULL),
(35, 'Hawaiian', 'Hawaiian', NULL, NULL),
(36, 'Hebrew', 'Hebrew', NULL, NULL),
(37, 'Hindi', 'Hindi', NULL, NULL),
(38, 'Hmong', 'Hmong', NULL, NULL),
(39, 'Hungarian', 'Hungarian', NULL, NULL),
(40, 'Icelandic', 'Icelandic', NULL, NULL),
(41, 'Igbo', 'Igbo', NULL, NULL),
(42, 'Indonesian', 'Indonesian', NULL, NULL),
(43, 'Irish', 'Irish', NULL, NULL),
(44, 'Italian', 'Italian', NULL, NULL),
(45, 'Japanese', 'Japanese', NULL, NULL),
(46, 'Javanese', 'Javanese', NULL, NULL),
(47, 'Kannada', 'Kannada', NULL, NULL),
(48, 'Kazakh', 'Kazakh', NULL, NULL),
(49, 'Khmer', 'Khmer', NULL, NULL),
(50, 'Kinyarwanda', 'Kinyarwanda', NULL, NULL),
(51, 'Korean', 'Korean', NULL, NULL),
(52, 'Kurdish', 'Kurdish', NULL, NULL),
(53, 'Kyrgyz', 'Kyrgyz', NULL, NULL),
(54, 'Lao', 'Lao', NULL, NULL),
(55, 'Latin', 'Latin', NULL, NULL),
(56, 'Latvian', 'Latvian', NULL, NULL),
(57, 'Lithuanian', 'Lithuanian', NULL, NULL),
(58, 'Luxembourgish', 'Luxembourgish', NULL, NULL),
(59, 'Macedonian', 'Macedonian', NULL, NULL),
(60, 'Malagasy', 'Malagasy', NULL, NULL),
(61, 'Malay', 'Malay', NULL, NULL),
(62, 'Malayalam', 'Malayalam', NULL, NULL),
(63, 'Maltese', 'Maltese', NULL, NULL),
(64, 'Maori', 'Maori', NULL, NULL),
(65, 'Marathi', 'Marathi', NULL, NULL),
(66, 'Mongolian', 'Mongolian', NULL, NULL),
(67, 'Burmese', 'Burmese', NULL, NULL),
(68, 'Nepali', 'Nepali', NULL, NULL),
(69, 'Norwegian', 'Norwegian', NULL, NULL),
(70, 'Odia', 'Odia', NULL, NULL),
(71, 'Pashto', 'Pashto', NULL, NULL),
(72, 'Persian', 'Persian', NULL, NULL),
(73, 'Polish', 'Polish', NULL, NULL),
(74, 'Portuguese', 'Portuguese', NULL, NULL),
(75, 'Punjabi', 'Punjabi', NULL, NULL),
(76, 'Romanian', 'Romanian', NULL, NULL),
(77, 'Russian', 'Russian', NULL, NULL),
(78, 'Samoan', 'Samoan', NULL, NULL),
(79, 'Scots Gaelic', 'Scots Gaelic', NULL, NULL),
(80, 'Serbian', 'Serbian', NULL, NULL),
(81, 'Sesotho', 'Sesotho', NULL, NULL),
(82, 'Shona', 'Shona', NULL, NULL),
(83, 'Sindhi', 'Sindhi', NULL, NULL),
(84, 'Sinhala', 'Sinhala', NULL, NULL),
(85, 'Slovak', 'Slovak', NULL, NULL),
(86, 'Slovenian', 'Slovenian', NULL, NULL),
(87, 'Somali', 'Somali', NULL, NULL),
(88, 'Spanish', 'Spanish', NULL, NULL),
(89, 'Sundanese', 'Sundanese', NULL, NULL),
(90, 'Swahili', 'Swahili', NULL, NULL),
(91, 'Swedish', 'Swedish', NULL, NULL),
(92, 'Tajik', 'Tajik', NULL, NULL),
(93, 'Tamil', 'Tamil', NULL, NULL),
(94, 'Telugu', 'Telugu', NULL, NULL),
(95, 'Thai', 'Thai', NULL, NULL),
(96, 'Turkish', 'Turkish', NULL, NULL),
(97, 'Ukrainian', 'Ukrainian', NULL, NULL),
(98, 'Urdu', 'Urdu', NULL, NULL),
(99, 'Uyghur', 'Uyghur', NULL, NULL),
(100, 'Uzbek', 'Uzbek', NULL, NULL),
(101, 'Vietnamese', 'Vietnamese', NULL, NULL),
(102, 'Welsh', 'Welsh', NULL, NULL),
(103, 'Xhosa', 'Xhosa', NULL, NULL),
(104, 'Yiddish', 'Yiddish', NULL, NULL),
(105, 'Yoruba', 'Yoruba', NULL, NULL),
(106, 'Zulu', 'Zulu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `locals`
--

CREATE TABLE `locals` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rtl` int DEFAULT '0',
  `status` int DEFAULT '1',
  `system_reserve` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 6, '05a31c02-4d8f-4d70-9b42-30879a2f287d', 'image', '8', '8.png', 'image/png', 'public', 'public', 41058, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:06:45', '2024-06-13 12:06:45'),
(4, 'App\\Models\\User', 8, '0e4262f1-db44-4606-a0ae-9fc34c31556b', 'image', '10', '10.png', 'image/png', 'public', 'public', 49103, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:11:31', '2024-06-13 12:11:31'),
(5, 'App\\Models\\User', 9, '54ddf71b-e5eb-43af-88d6-218f02e0bc32', 'image', '12', '12.png', 'image/png', 'public', 'public', 50547, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:13:25', '2024-06-13 12:13:25'),
(6, 'App\\Models\\User', 10, 'a932d0e7-b6d6-4590-ab51-4e6974e5c740', 'image', '13', '13.png', 'image/png', 'public', 'public', 69681, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:17:44', '2024-06-13 12:17:44'),
(7, 'App\\Models\\User', 11, 'fe9147b6-b50e-4274-b710-51b41ac090d7', 'image', '14', '14.png', 'image/png', 'public', 'public', 53312, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:19:34', '2024-06-13 12:19:34'),
(8, 'App\\Models\\User', 12, 'c4648c06-706d-4daa-ba55-6a8511705941', 'image', '15', '15.png', 'image/png', 'public', 'public', 39420, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:21:29', '2024-06-13 12:21:29'),
(9, 'App\\Models\\User', 13, 'dc59b53b-53cf-4c6d-b274-67e36c5d0f4c', 'image', '21', '21.png', 'image/png', 'public', 'public', 51760, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:23:19', '2024-06-13 12:23:19'),
(10, 'App\\Models\\User', 14, '5d596280-7f8c-4f59-9c0a-eae24c7ccdb5', 'image', '16', '16.png', 'image/png', 'public', 'public', 45138, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:25:21', '2024-06-13 12:25:21'),
(11, 'App\\Models\\User', 15, '1f597a02-3c4b-4952-9cd8-0ddfce4c8577', 'image', '25', '25.png', 'image/png', 'public', 'public', 56765, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:28:11', '2024-06-13 12:28:11'),
(12, 'App\\Models\\User', 16, 'ecd79914-076b-4c7e-a6f9-fe959729e7c8', 'image', '26', '26.png', 'image/png', 'public', 'public', 41838, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:30:36', '2024-06-13 12:30:36'),
(13, 'App\\Models\\User', 17, '4beceb97-8c2f-4275-b169-5e7199653e06', 'image', '17', '17.png', 'image/png', 'public', 'public', 40083, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:32:25', '2024-06-13 12:32:25'),
(14, 'App\\Models\\User', 18, '11cab0c9-6d10-4e02-9838-1db6d5611ce6', 'image', '27', '27.png', 'image/png', 'public', 'public', 49980, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:35:18', '2024-06-13 12:35:18'),
(15, 'App\\Models\\User', 19, '6568330c-1077-4dd3-95b5-5f66e9d1dbb6', 'image', '29', '29.png', 'image/png', 'public', 'public', 49291, '[]', '[]', '[]', '[]', 1, '2024-06-13 12:39:27', '2024-06-13 12:39:27'),
(16, 'App\\Models\\User', 20, '5f321fc1-7c09-4439-b1d8-c4b2e00758e1', 'image', '31', '31.png', 'image/png', 'public', 'public', 54812, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
(17, 'App\\Models\\Company', 2, 'e2bfb83f-670a-497f-a009-5cad37c1128e', 'company_logo', 'company1', 'company1.jpg', 'image/jpeg', 'public', 'public', 9526, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
(18, 'App\\Models\\User', 21, 'a37dd694-811a-43d8-99e3-a6350d18f2f6', 'image', '38', '38.png', 'image/png', 'public', 'public', 66431, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
(19, 'App\\Models\\User', 22, 'e4e9bf04-dde2-4f18-847b-f2bb1e367d59', 'image', '33', '33.png', 'image/png', 'public', 'public', 49768, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
(20, 'App\\Models\\Company', 3, '28a394ee-0b6a-49cd-bf3c-ff48bfdf4ff3', 'company_logo', 'company2', 'company2.jpg', 'image/jpeg', 'public', 'public', 84911, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
(21, 'App\\Models\\User', 23, '69555fea-b685-4cc5-8f26-cba637e018a5', 'image', '37', '37.png', 'image/png', 'public', 'public', 48793, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
(22, 'App\\Models\\User', 24, 'a9c7ceb6-5466-4a9a-a097-5d68d3958c5e', 'image', '40', '40.png', 'image/png', 'public', 'public', 42219, '[]', '[]', '[]', '[]', 1, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
(23, 'App\\Models\\User', 25, '98c0154c-6c52-4292-83fa-578f9efabfbd', 'image', '3', '3.png', 'image/png', 'public', 'public', 49454, '[]', '[]', '[]', '[]', 1, '2024-06-13 15:20:26', '2024-06-13 15:20:26'),
(24, 'App\\Models\\User', 26, 'c885e230-198e-413b-b9d7-76d58bc5798b', 'image', '4', '4.png', 'image/png', 'public', 'public', 47254, '[]', '[]', '[]', '[]', 1, '2024-06-13 15:24:07', '2024-06-13 15:24:07'),
(25, 'App\\Models\\User', 27, '14ab46f5-3d28-4519-bfc2-6fc2955c0b52', 'image', '6', '6.png', 'image/png', 'public', 'public', 52088, '[]', '[]', '[]', '[]', 1, '2024-06-13 15:26:24', '2024-06-13 15:26:24'),
(26, 'App\\Models\\User', 28, '1f6efdf2-4cbd-455a-b3c7-e59a75b2bc19', 'image', '7', '7.png', 'image/png', 'public', 'public', 57795, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:20:27', '2024-06-14 04:20:27'),
(27, 'App\\Models\\User', 29, '05c59ba1-1d6c-4e1e-a211-0ed59a8ba7ce', 'image', '45', '45.png', 'image/png', 'public', 'public', 47159, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:33:17', '2024-06-14 04:33:17'),
(28, 'App\\Models\\Category', 1, 'a44ff5bc-78e3-4068-bd2f-5f72eaf01561', 'image', '1', '1.png', 'image/png', 'public', 'public', 1324, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:41:22', '2024-06-14 04:41:22'),
(29, 'App\\Models\\Category', 2, '132ac1f8-1e80-4297-8968-69fc3877d28e', 'image', '9', '9.png', 'image/png', 'public', 'public', 1324, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:42:32', '2024-06-14 04:42:32'),
(30, 'App\\Models\\Category', 3, 'f6126370-c9b9-414b-ace5-44df7c40bd5f', 'image', '2', '2.png', 'image/png', 'public', 'public', 1755, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:46:01', '2024-06-14 04:46:01'),
(31, 'App\\Models\\Category', 4, 'b3d6aa14-448c-44f3-bdcc-81fabd0f5d27', 'image', '18', '18.png', 'image/png', 'public', 'public', 1755, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:47:00', '2024-06-14 04:47:00'),
(32, 'App\\Models\\Category', 5, '95b4512f-6b15-43bd-8261-018c74db4b11', 'image', '3', '3.png', 'image/png', 'public', 'public', 1739, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:58:20', '2024-06-14 04:58:20'),
(33, 'App\\Models\\Category', 6, 'cd469a85-d16a-4372-a8f9-6ef0d3f07ca6', 'image', 'fi_11311337', 'fi_11311337.png', 'image/png', 'public', 'public', 1397, '[]', '[]', '[]', '[]', 1, '2024-06-14 04:59:21', '2024-06-14 04:59:21'),
(34, 'App\\Models\\Service', 1, '78d13f89-7a84-4899-bbfd-7b1767465c85', 'image', 'Repair_gas_refill', 'Repair_gas_refill.png', 'image/png', 'public', 'public', 122444, '[]', '[]', '[]', '[]', 1, '2024-06-14 05:21:10', '2024-06-14 05:21:10'),
(35, 'App\\Models\\Service', 1, '28a24715-0563-4db3-967c-fd7b35f8d736', 'image', 'Repair_gas_refill2', 'Repair_gas_refill2.png', 'image/png', 'public', 'public', 121179, '[]', '[]', '[]', '[]', 2, '2024-06-14 05:21:10', '2024-06-14 05:21:10'),
(36, 'App\\Models\\Service', 1, 'b866c471-cf5f-4def-99d5-e3679f5e9b2e', 'image', 'Repair_gas_refill3', 'Repair_gas_refill3.png', 'image/png', 'public', 'public', 126440, '[]', '[]', '[]', '[]', 3, '2024-06-14 05:21:10', '2024-06-14 05:21:10'),
(37, 'App\\Models\\Service', 1, '73cd6182-e033-4034-997a-770f69b7f95d', 'thumbnail', 'Repair_gas_refill', 'Repair_gas_refill.png', 'image/png', 'public', 'public', 122444, '[]', '[]', '[]', '[]', 4, '2024-06-14 05:21:10', '2024-06-14 05:21:10'),
(38, 'App\\Models\\Service', 2, 'ccaa7309-fef5-43a3-a2a9-4b25c3fba7dc', 'image', 'Light fitting & repair_2-1', 'Light-fitting-&-repair_2-1.png', 'image/png', 'public', 'public', 108010, '[]', '[]', '[]', '[]', 1, '2024-06-14 05:38:25', '2024-06-14 05:38:25'),
(39, 'App\\Models\\Service', 2, '2910f750-c5c8-4fc9-ae1c-1ab121c0ec90', 'image', 'Light fitting & repair_3', 'Light-fitting-&-repair_3.png', 'image/png', 'public', 'public', 83240, '[]', '[]', '[]', '[]', 2, '2024-06-14 05:38:25', '2024-06-14 05:38:25'),
(40, 'App\\Models\\Service', 2, '95df7da4-edf0-4cac-a569-8b690da2bec1', 'image', 'Light fitting & repair_3-1', 'Light-fitting-&-repair_3-1.png', 'image/png', 'public', 'public', 123878, '[]', '[]', '[]', '[]', 3, '2024-06-14 05:38:25', '2024-06-14 05:38:25'),
(41, 'App\\Models\\Service', 2, 'ca8b7ed4-74fb-476e-98ab-947e7ba550c2', 'thumbnail', 'Light fitting & repair_3-1', 'Light-fitting-&-repair_3-1.png', 'image/png', 'public', 'public', 123878, '[]', '[]', '[]', '[]', 4, '2024-06-14 05:38:25', '2024-06-14 05:38:25'),
(42, 'App\\Models\\Company', 4, '1112e927-e0ac-412f-8df7-6d710569d9b0', 'company_logo', 'company4', 'company4.jpg', 'image/jpeg', 'public', 'public', 3319, '[]', '[]', '[]', '[]', 1, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
(43, 'App\\Models\\User', 30, '81ee0742-a83a-4304-a2a8-1ed7bdf4bba3', 'image', '20', '20.png', 'image/png', 'public', 'public', 52656, '[]', '[]', '[]', '[]', 1, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
(44, 'App\\Models\\Company', 5, '9e8ed44b-7e59-4895-a0dd-f4ba6d4349be', 'company_logo', 'Frame 1', 'Frame-1.png', 'image/png', 'public', 'public', 5429, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
(45, 'App\\Models\\User', 31, '45bf5c3a-24a1-48af-8ca7-322ec57149d8', 'image', '1', '1.png', 'image/png', 'public', 'public', 58869, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
(46, 'App\\Models\\User', 32, 'b58ea519-1535-4b48-8792-a3d529407b74', 'image', '30', '30.png', 'image/png', 'public', 'public', 50967, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
(47, 'App\\Models\\Company', 6, '07dd1276-79b0-4c11-a220-b31939b9a130', 'company_logo', 'Frame 2', 'Frame-2.png', 'image/png', 'public', 'public', 5372, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
(48, 'App\\Models\\User', 33, '3197a89c-d1a3-464b-87ce-6ec9615dc420', 'image', '65', '65.png', 'image/png', 'public', 'public', 53935, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
(49, 'App\\Models\\Company', 7, '4670684e-762a-4f21-be83-7ed70ab3e7d1', 'company_logo', 'Frame 4', 'Frame-4.png', 'image/png', 'public', 'public', 4236, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
(50, 'App\\Models\\User', 34, '94012885-e339-441d-8200-ce7c0820e521', 'image', '23', '23.png', 'image/png', 'public', 'public', 52402, '[]', '[]', '[]', '[]', 1, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
(85, 'App\\Models\\User', 35, '8a4fedbf-484b-4636-9c09-b5a569518893', 'image', '1', '1.png', 'image/png', 'public', 'public', 52276, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:20:19', '2024-06-14 14:20:19'),
(86, 'App\\Models\\User', 36, '6e47b0a7-487c-47b3-bb31-de3011613c27', 'image', '2', '2.png', 'image/png', 'public', 'public', 43390, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:23:21', '2024-06-14 14:23:21'),
(87, 'App\\Models\\User', 37, '516a9030-0a8d-4968-a097-8602329c58bd', 'image', '3', '3.png', 'image/png', 'public', 'public', 57706, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:26:37', '2024-06-14 14:26:37'),
(88, 'App\\Models\\User', 38, 'ed91dc17-7c34-4e20-ba95-396f82f3e8ed', 'image', '5', '5.png', 'image/png', 'public', 'public', 36557, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:32:57', '2024-06-14 14:32:57'),
(89, 'App\\Models\\User', 39, 'd49dbfe2-602d-4eb9-aaa8-095d6c370acc', 'image', '6', '6.png', 'image/png', 'public', 'public', 35943, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:37:00', '2024-06-14 14:37:00'),
(90, 'App\\Models\\User', 40, 'd29ef635-9b7f-48af-b697-493796217a12', 'image', '7', '7.png', 'image/png', 'public', 'public', 63942, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:41:01', '2024-06-14 14:41:01'),
(91, 'App\\Models\\User', 41, '8553da6f-6d75-4af3-8628-0511dcd5bad9', 'image', '8', '8.png', 'image/png', 'public', 'public', 40854, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:44:25', '2024-06-14 14:44:25'),
(92, 'App\\Models\\User', 42, '94a3d899-da71-4faa-8ccf-a2e15963f29d', 'image', '4', '4.png', 'image/png', 'public', 'public', 39961, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:47:59', '2024-06-14 14:47:59'),
(93, 'App\\Models\\User', 43, '8aec3118-80f4-4878-8b39-383f235e1e41', 'image', '14', '14.png', 'image/png', 'public', 'public', 51344, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:51:39', '2024-06-14 14:51:39'),
(94, 'App\\Models\\User', 44, '32a75e0b-bce2-43c3-8bab-725908b77a0a', 'image', '10', '10.png', 'image/png', 'public', 'public', 33687, '[]', '[]', '[]', '[]', 1, '2024-06-14 14:55:32', '2024-06-14 14:55:32'),
(95, 'App\\Models\\User', 45, 'c9f703c5-d218-4f95-a768-c896d59d4180', 'image', '19', '19.png', 'image/png', 'public', 'public', 45173, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:04:12', '2024-06-14 15:04:12'),
(96, 'App\\Models\\User', 46, '1d656921-efb2-4baf-af22-8f58b970023d', 'image', '12', '12.png', 'image/png', 'public', 'public', 50321, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:08:14', '2024-06-14 15:08:14'),
(97, 'App\\Models\\User', 47, 'df5c8e80-15dd-438a-be64-6dcd003b0114', 'image', '13', '13.png', 'image/png', 'public', 'public', 38599, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:31:50', '2024-06-14 15:31:50'),
(98, 'App\\Models\\User', 48, '95fd8fb2-35ec-46f9-9282-1e43311b6f13', 'image', '26', '26.png', 'image/png', 'public', 'public', 37326, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:41:06', '2024-06-14 15:41:06'),
(99, 'App\\Models\\User', 49, '03e25d1f-951f-4f50-80d2-096f2f72e0e8', 'image', '28', '28.png', 'image/png', 'public', 'public', 37077, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:44:42', '2024-06-14 15:44:42'),
(100, 'App\\Models\\User', 50, '96d0b051-152a-4377-ba39-9aa9765f008a', 'image', '32', '32.png', 'image/png', 'public', 'public', 52969, '[]', '[]', '[]', '[]', 1, '2024-06-14 15:48:27', '2024-06-14 15:48:27'),
(117, 'App\\Models\\Service', 7, '114ae823-7057-49b0-a797-916f5d3ba430', 'image', 'Wall painting_1', 'Wall-painting_1.png', 'image/png', 'public', 'public', 101807, '[]', '[]', '[]', '[]', 1, '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(118, 'App\\Models\\Service', 7, '76732ed9-096f-4f6f-b8c4-43d6763a94f7', 'image', 'Wall painting_2', 'Wall-painting_2.png', 'image/png', 'public', 'public', 87846, '[]', '[]', '[]', '[]', 2, '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(119, 'App\\Models\\Service', 7, '115579ef-5aca-4952-accb-1a7a28816a65', 'image', 'Wall painting_3', 'Wall-painting_3.png', 'image/png', 'public', 'public', 128245, '[]', '[]', '[]', '[]', 3, '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(120, 'App\\Models\\Service', 7, 'f5b73830-d3e9-4a75-9a75-281ac840e96a', 'thumbnail', 'Wall painting_1', 'Wall-painting_1.png', 'image/png', 'public', 'public', 101807, '[]', '[]', '[]', '[]', 4, '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(121, 'App\\Models\\Service', 8, 'af29c683-31e7-448a-a590-18e03fdfc3af', 'image', 'Full body massage_1', 'Full-body-massage_1.png', 'image/png', 'public', 'public', 134028, '[]', '[]', '[]', '[]', 1, '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(122, 'App\\Models\\Service', 8, 'e250ca50-4fa6-4a59-ad45-d5a700a6ae16', 'image', 'Full body massage_2', 'Full-body-massage_2.png', 'image/png', 'public', 'public', 121438, '[]', '[]', '[]', '[]', 2, '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(123, 'App\\Models\\Service', 8, 'e621d947-d839-487c-9bc0-42007ba71f1a', 'image', 'Full body massage_3', 'Full-body-massage_3.png', 'image/png', 'public', 'public', 140647, '[]', '[]', '[]', '[]', 3, '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(124, 'App\\Models\\Service', 8, '78d454c3-d9dc-46a3-ab1b-762dcceb1d31', 'thumbnail', 'Full body massage_1', 'Full-body-massage_1.png', 'image/png', 'public', 'public', 134028, '[]', '[]', '[]', '[]', 4, '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(125, 'App\\Models\\Service', 9, 'd840bdb8-4c11-4bfe-96d4-18407431a622', 'image', 'Full body massage_2', 'Full-body-massage_2.png', 'image/png', 'public', 'public', 121438, '[]', '[]', '[]', '[]', 1, '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(126, 'App\\Models\\Service', 9, '8164a57a-0616-41f3-8b88-304187df392a', 'image', 'Full body massage_3', 'Full-body-massage_3.png', 'image/png', 'public', 'public', 140647, '[]', '[]', '[]', '[]', 2, '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(127, 'App\\Models\\Service', 9, 'd5308636-8348-4cc5-a2b0-e2b2ffd4de16', 'thumbnail', 'Hair spa Service_1', 'Hair-spa-Service_1.png', 'image/png', 'public', 'public', 128877, '[]', '[]', '[]', '[]', 3, '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(128, 'App\\Models\\Service', 10, 'c99617b3-e8cd-49ac-af72-028839e27bbc', 'image', 'Ayurvedic Massage , Ayurvedic head massage._1', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._1.png', 'image/png', 'public', 'public', 132418, '[]', '[]', '[]', '[]', 1, '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(129, 'App\\Models\\Service', 10, '17889ceb-51cf-4363-8d94-cbf39acf9ab4', 'image', 'Ayurvedic Massage , Ayurvedic head massage._2', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._2.png', 'image/png', 'public', 'public', 127514, '[]', '[]', '[]', '[]', 2, '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(130, 'App\\Models\\Service', 10, '9a0ebe53-b81e-4de7-85fb-38a83a4fd6b5', 'image', 'Ayurvedic Massage , Ayurvedic head massage._3', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._3.png', 'image/png', 'public', 'public', 104932, '[]', '[]', '[]', '[]', 3, '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(131, 'App\\Models\\Service', 10, '2aa7e8c4-47ba-4fff-98de-ecabcb56bb8a', 'thumbnail', 'Ayurvedic Massage , Ayurvedic head massage._2', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._2.png', 'image/png', 'public', 'public', 127514, '[]', '[]', '[]', '[]', 4, '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(137, 'App\\Models\\User', 51, 'e34c1b4e-7474-4d21-8778-8279baa1c6b0', 'image', '29', '29.png', 'image/png', 'public', 'public', 45671, '[]', '[]', '[]', '[]', 1, '2024-06-15 05:35:18', '2024-06-15 05:35:18'),
(138, 'App\\Models\\User', 52, '1294de7b-5cd6-4325-babc-1dbdae66df08', 'image', '31', '31.png', 'image/png', 'public', 'public', 47808, '[]', '[]', '[]', '[]', 1, '2024-06-15 05:50:55', '2024-06-15 05:50:55'),
(139, 'App\\Models\\User', 53, '163843c0-0bb9-4ba9-afbf-9c6279e246a9', 'image', '32', '32.png', 'image/png', 'public', 'public', 52969, '[]', '[]', '[]', '[]', 1, '2024-06-15 05:58:22', '2024-06-15 05:58:22'),
(140, 'App\\Models\\User', 54, 'dca3d9eb-ab45-4325-8745-9919c02c9ee9', 'image', '36', '36.png', 'image/png', 'public', 'public', 50994, '[]', '[]', '[]', '[]', 1, '2024-06-15 06:16:57', '2024-06-15 06:16:57'),
(141, 'App\\Models\\User', 55, '95b6db52-6202-497a-8f72-969fc6e8d8f1', 'image', '35', '35.png', 'image/png', 'public', 'public', 51114, '[]', '[]', '[]', '[]', 1, '2024-06-15 06:19:44', '2024-06-15 06:19:44'),
(142, 'App\\Models\\User', 56, '567e7a3b-9010-4b49-a5da-6499ffabf1e5', 'image', '30', '30.png', 'image/png', 'public', 'public', 41239, '[]', '[]', '[]', '[]', 1, '2024-06-15 06:22:36', '2024-06-15 06:22:36'),
(143, 'App\\Models\\User', 57, '7fa5a39e-0b59-4909-8bec-72c2cf2695ef', 'image', '23', '23.png', 'image/png', 'public', 'public', 55722, '[]', '[]', '[]', '[]', 1, '2024-06-15 06:26:18', '2024-06-15 06:26:18'),
(144, 'App\\Models\\User', 58, '6987b4e1-d011-4ef6-8106-fa3f9e4b1373', 'image', '40', '40.png', 'image/png', 'public', 'public', 42716, '[]', '[]', '[]', '[]', 1, '2024-06-15 06:33:47', '2024-06-15 06:33:47'),
(145, 'App\\Models\\User', 59, '4174cea2-ad07-4015-b2ad-ec5e679bf923', 'image', '38', '38.png', 'image/png', 'public', 'public', 41938, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:07:38', '2024-06-15 07:07:38'),
(146, 'App\\Models\\User', 60, '5b627682-c2e1-4cce-9c29-4b37dc88db7e', 'image', '39', '39.png', 'image/png', 'public', 'public', 46830, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:10:13', '2024-06-15 07:10:13'),
(147, 'App\\Models\\User', 61, '5dbd5b82-b9d6-4e26-bbd9-7362626cdb27', 'image', '2', '2.png', 'image/png', 'public', 'public', 23297, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:13:49', '2024-06-15 07:13:49'),
(148, 'App\\Models\\User', 62, '82e69ba6-27e7-4ec5-8719-753102252946', 'image', '43', '43.png', 'image/png', 'public', 'public', 63160, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:16:46', '2024-06-15 07:16:46'),
(161, 'App\\Models\\Service', 16, 'c4173382-b225-4539-ba64-f317066bfb93', 'image', 'Face care & Facial+Detan Service For Man_3', 'Face-care-&-Facial+Detan-Service-For-Man_3.png', 'image/png', 'public', 'public', 127470, '[]', '[]', '[]', '[]', 1, '2024-06-15 09:43:20', '2024-06-15 09:43:20'),
(162, 'App\\Models\\Service', 16, '5535b6a9-45bc-40fb-b39a-01b2414138e1', 'thumbnail', 'Face care & Facial+Detan Service For Man_1-1', 'Face-care-&-Facial+Detan-Service-For-Man_1-1.png', 'image/png', 'public', 'public', 110131, '[]', '[]', '[]', '[]', 2, '2024-06-15 09:43:20', '2024-06-15 09:43:20'),
(166, 'App\\Models\\Service', 17, '0ac71122-3928-416e-87df-8dd799cbd1ca', 'image', 'Facial+Detan1', 'Facial+Detan1.png', 'image/png', 'public', 'public', 110131, '[]', '[]', '[]', '[]', 1, '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(167, 'App\\Models\\Service', 17, 'e13e0e4b-3acf-45e0-8e80-b13e1013b42b', 'image', 'Facial+Detan2', 'Facial+Detan2.png', 'image/png', 'public', 'public', 114259, '[]', '[]', '[]', '[]', 2, '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(168, 'App\\Models\\Service', 17, '439413df-bd03-4956-892a-b1800c5c0b0f', 'image', 'Facial+Detan3', 'Facial+Detan3.png', 'image/png', 'public', 'public', 127470, '[]', '[]', '[]', '[]', 3, '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(169, 'App\\Models\\Service', 17, 'cfa4de7e-68cc-487a-a9aa-bd93e2e5c421', 'thumbnail', 'Facial+Detan1', 'Facial+Detan1.png', 'image/png', 'public', 'public', 110131, '[]', '[]', '[]', '[]', 4, '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(193, 'App\\Models\\Category', 7, 'c8c7e6a7-e63f-4975-895b-60456e4eb23d', 'image', '1', '1.png', 'image/png', 'public', 'public', 1933, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:07:22', '2024-06-15 07:07:22'),
(194, 'App\\Models\\Category', 8, '8f57565c-27ce-4104-9084-365cae1bfc27', 'image', '2', '2.png', 'image/png', 'public', 'public', 1961, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:07:31', '2024-06-15 07:07:31'),
(195, 'App\\Models\\Category', 9, '217cd0a0-a723-403f-a7bd-1091d74890f9', 'image', '3', '3.png', 'image/png', 'public', 'public', 1834, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:07:40', '2024-06-15 07:07:40'),
(196, 'App\\Models\\Category', 10, '10d36e1b-52a4-47d2-8ae6-8cbcdf72524f', 'image', '4', '4.png', 'image/png', 'public', 'public', 2108, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:07:50', '2024-06-15 07:07:50'),
(197, 'App\\Models\\Category', 11, '17e41959-3c0e-452d-8486-c59ee212f72c', 'image', '5', '5.png', 'image/png', 'public', 'public', 2073, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:08:01', '2024-06-15 07:08:01'),
(198, 'App\\Models\\Category', 12, '205ccb08-b72c-4908-8f45-97e77ebbeb07', 'image', '6', '6.png', 'image/png', 'public', 'public', 2733, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:08:11', '2024-06-15 07:08:11'),
(200, 'App\\Models\\Category', 14, 'cd205c0a-32a6-4cb2-b62a-158d3c240b57', 'image', '2', '2.png', 'image/png', 'public', 'public', 2699, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:08:39', '2024-06-15 07:08:39'),
(201, 'App\\Models\\Category', 15, '7ba68574-4640-4229-824c-6da4a7a841b7', 'image', '3', '3.png', 'image/png', 'public', 'public', 1650, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:08:49', '2024-06-15 07:08:49'),
(202, 'App\\Models\\Category', 16, '241b529b-73cb-46b1-91dc-a4f7f60b0d70', 'image', '4', '4.png', 'image/png', 'public', 'public', 2144, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:08:58', '2024-06-15 07:08:58'),
(203, 'App\\Models\\Category', 17, '9341b9ab-3874-4914-8de4-282235975315', 'image', '5', '5.png', 'image/png', 'public', 'public', 2249, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:09:11', '2024-06-15 07:09:11'),
(204, 'App\\Models\\Category', 18, '76a80f6c-25c7-4247-9570-1d8a4471989a', 'image', '6', '6.png', 'image/png', 'public', 'public', 1958, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:09:21', '2024-06-15 07:09:21'),
(205, 'App\\Models\\Category', 19, '603b73eb-024f-467a-82d7-747a433fdbf4', 'image', '1', '1.png', 'image/png', 'public', 'public', 1984, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:09:32', '2024-06-15 07:09:32'),
(206, 'App\\Models\\Category', 20, '1919ebc6-f35b-4709-a62c-28cd6ead0583', 'image', '2', '2.png', 'image/png', 'public', 'public', 2047, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:09:45', '2024-06-15 07:09:45'),
(207, 'App\\Models\\Category', 21, '697d99b8-d692-4649-9657-5d7ce2fa3ab5', 'image', '3', '3.png', 'image/png', 'public', 'public', 1992, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:10:00', '2024-06-15 07:10:00'),
(208, 'App\\Models\\Category', 22, 'f41cb639-cc13-47b2-8b07-3d4fe918f5e5', 'image', '4', '4.png', 'image/png', 'public', 'public', 2651, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:10:10', '2024-06-15 07:10:10'),
(209, 'App\\Models\\Category', 23, '2dcffff6-1b2f-4390-a0e4-27601817669f', 'image', '5', '5.png', 'image/png', 'public', 'public', 1671, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:10:58', '2024-06-15 07:10:58'),
(210, 'App\\Models\\Category', 24, 'ebb5a713-9650-45bc-8a6d-926e1de85427', 'image', '6', '6.png', 'image/png', 'public', 'public', 2282, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:11:12', '2024-06-15 07:11:12'),
(211, 'App\\Models\\Category', 25, 'a05592f8-f4ae-403a-ba40-05526dc70487', 'image', '1', '1.png', 'image/png', 'public', 'public', 2700, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:13:03', '2024-06-15 07:13:03'),
(212, 'App\\Models\\Category', 26, '1b7bd6cb-c822-40c1-a598-998b248d175c', 'image', '2', '2.png', 'image/png', 'public', 'public', 2037, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:13:21', '2024-06-15 07:13:21'),
(213, 'App\\Models\\Category', 27, '34125b1a-07a2-48a1-8112-5be6758adebb', 'image', '3', '3.png', 'image/png', 'public', 'public', 1495, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:13:36', '2024-06-15 07:13:36'),
(214, 'App\\Models\\Category', 28, '315ba636-ce2d-4b68-b6bb-dd31453796dd', 'image', '4', '4.png', 'image/png', 'public', 'public', 2041, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:14:43', '2024-06-15 07:14:43'),
(215, 'App\\Models\\Category', 29, '22d6f9f7-152c-4ea6-89e7-4b3a5a6d273c', 'image', '5', '5.png', 'image/png', 'public', 'public', 3096, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:14:56', '2024-06-15 07:14:56'),
(216, 'App\\Models\\Category', 30, 'ebe695f2-bfce-4ebb-8344-91f44dc110dc', 'image', '6', '6.png', 'image/png', 'public', 'public', 2443, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:15:05', '2024-06-15 07:15:05'),
(217, 'App\\Models\\Category', 31, 'd90aa097-e4fb-4ad4-9bfc-f7771cf18cf2', 'image', '1', '1.png', 'image/png', 'public', 'public', 2544, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:15:19', '2024-06-15 07:15:19'),
(218, 'App\\Models\\Category', 32, '7f4b611e-40d4-4895-af94-6c74cc6d3dcf', 'image', '2', '2.png', 'image/png', 'public', 'public', 1855, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:15:31', '2024-06-15 07:15:31'),
(219, 'App\\Models\\Category', 33, 'fdf76e60-76c8-4cc1-a296-5964767a6524', 'image', '3', '3.png', 'image/png', 'public', 'public', 2025, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:15:41', '2024-06-15 07:15:41'),
(220, 'App\\Models\\Category', 34, '96f6092b-a1a8-47d5-a647-9d44e004809d', 'image', '4', '4.png', 'image/png', 'public', 'public', 1640, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:15:52', '2024-06-15 07:15:52'),
(221, 'App\\Models\\Category', 35, 'ac1d8c29-28bc-42b2-917d-732a86fb3df2', 'image', '5', '5.png', 'image/png', 'public', 'public', 2684, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:16:05', '2024-06-15 07:16:05'),
(222, 'App\\Models\\Category', 36, '33413804-b02f-4ea6-a01f-23a809c9b957', 'image', '6', '6.png', 'image/png', 'public', 'public', 2993, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:16:16', '2024-06-15 07:16:16'),
(223, 'App\\Models\\Category', 37, 'af08a1db-0076-4120-8f3e-19a3f86944a0', 'image', '1', '1.png', 'image/png', 'public', 'public', 1928, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:16:30', '2024-06-15 07:16:30'),
(224, 'App\\Models\\Category', 38, '94ab731e-c561-4266-9d08-25d541e851a7', 'image', '2', '2.png', 'image/png', 'public', 'public', 2983, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:16:39', '2024-06-15 07:16:39'),
(225, 'App\\Models\\Category', 39, '2ca8b5c6-a0b2-4889-8b5c-5702b87270cc', 'image', '3', '3.png', 'image/png', 'public', 'public', 2409, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:17:00', '2024-06-15 07:17:00'),
(226, 'App\\Models\\Category', 40, '58f31cf1-d1ce-49ea-8946-2c9e7d2820a0', 'image', '4', '4.png', 'image/png', 'public', 'public', 1782, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:17:16', '2024-06-15 07:17:16'),
(227, 'App\\Models\\Category', 41, '8b655fe8-8943-4e78-a716-d0c9da092f09', 'image', '5', '5.png', 'image/png', 'public', 'public', 2225, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:17:26', '2024-06-15 07:17:26'),
(228, 'App\\Models\\Category', 42, '52941757-027d-455f-8d8d-dec967e698dd', 'image', '6', '6.png', 'image/png', 'public', 'public', 1507, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:17:38', '2024-06-15 07:17:38'),
(229, 'App\\Models\\Category', 43, '142f6b34-7795-4798-af53-e6e8f11a1f69', 'image', '1', '1.png', 'image/png', 'public', 'public', 2502, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:18:11', '2024-06-15 07:18:11'),
(230, 'App\\Models\\Category', 44, '7f829552-2268-455e-9339-499261355539', 'image', '2', '2.png', 'image/png', 'public', 'public', 1689, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:18:23', '2024-06-15 07:18:23'),
(231, 'App\\Models\\Category', 45, 'a0fff877-2930-43d4-a924-b1e99b19d5cd', 'image', '3', '3.png', 'image/png', 'public', 'public', 2523, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:18:40', '2024-06-15 07:18:40'),
(232, 'App\\Models\\Category', 46, '62790e38-cad3-46a9-9952-2fe275caa40c', 'image', '4', '4.png', 'image/png', 'public', 'public', 1877, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:18:52', '2024-06-15 07:18:52'),
(233, 'App\\Models\\Category', 47, '21898a5a-d954-44a7-b429-8ddbbd1f6aed', 'image', '5', '5.png', 'image/png', 'public', 'public', 2580, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:19:03', '2024-06-15 07:19:03'),
(234, 'App\\Models\\Category', 48, '3829ff78-0a85-4339-ab12-b3b7122de3d3', 'image', '6', '6.png', 'image/png', 'public', 'public', 2765, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:19:13', '2024-06-15 07:19:13'),
(235, 'App\\Models\\Category', 49, '8267b610-add4-4b4e-acae-72632ac71c2f', 'image', '1', '1.png', 'image/png', 'public', 'public', 2864, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:19:27', '2024-06-15 07:19:27'),
(236, 'App\\Models\\Category', 50, '0b03caa1-8e29-4cbb-96cb-063643ea229c', 'image', '2', '2.png', 'image/png', 'public', 'public', 2247, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:19:44', '2024-06-15 07:19:44'),
(237, 'App\\Models\\Category', 51, 'ed0da053-7192-4902-a427-5f975057c25b', 'image', '3', '3.png', 'image/png', 'public', 'public', 2440, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:19:55', '2024-06-15 07:19:55'),
(238, 'App\\Models\\Category', 52, 'db1fc18b-836e-4705-bbd6-53fef398e4b8', 'image', '4', '4.png', 'image/png', 'public', 'public', 2448, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:20:24', '2024-06-15 07:20:24'),
(239, 'App\\Models\\Category', 53, '1172f4a2-e49f-474e-9c6f-9859181d41e5', 'image', '5', '5.png', 'image/png', 'public', 'public', 2548, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:20:41', '2024-06-15 07:20:41'),
(240, 'App\\Models\\Category', 54, '23de5744-2b65-43ca-b4f8-76096f4ea51c', 'image', '6', '6.png', 'image/png', 'public', 'public', 1631, '[]', '[]', '[]', '[]', 1, '2024-06-15 07:20:59', '2024-06-15 07:20:59'),
(373, 'App\\Models\\Blog', 2, '795c6f54-ae7e-4c11-98dd-6025212d8f3b', 'image', 'Why Regular AC Maintenance is Essential for Your Home', 'Why-Regular-AC-Maintenance-is-Essential-for-Your-Home.png', 'image/png', 'public', 'public', 412625, '[]', '[]', '[]', '[]', 5, '2024-06-21 10:03:26', '2024-06-21 10:03:26'),
(374, 'App\\Models\\Blog', 2, '76abe439-6dbb-4ad9-8d0d-7292261f9ebb', 'meta_image', 'Why Regular AC Maintenance is Essential for Your Home', 'Why-Regular-AC-Maintenance-is-Essential-for-Your-Home.png', 'image/png', 'public', 'public', 412625, '[]', '[]', '[]', '[]', 6, '2024-06-21 10:03:26', '2024-06-21 10:03:26'),
(375, 'App\\Models\\Blog', 11, 'd780147b-63af-4593-b38b-484938e40e0a', 'image', 'Why Hiring Professionals for Home Repairs Saves You Time and Money-1', 'Why-Hiring-Professionals-for-Home-Repairs-Saves-You-Time-and-Money-1.png', 'image/png', 'public', 'public', 424038, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:03:47', '2024-06-21 10:03:47'),
(376, 'App\\Models\\Blog', 11, '9cc01d0f-3abb-4c3e-90cc-e8106b2af96f', 'meta_image', 'Why Hiring Professionals for Home Repairs Saves You Time and Money-1', 'Why-Hiring-Professionals-for-Home-Repairs-Saves-You-Time-and-Money-1.png', 'image/png', 'public', 'public', 424038, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:03:47', '2024-06-21 10:03:47'),
(377, 'App\\Models\\Blog', 8, 'de95b42f-ef71-4d39-bd19-f26991f20467', 'image', 'Transform Your Home with Our Comprehensive Cleaning Services', 'Transform-Your-Home-with-Our-Comprehensive-Cleaning-Services.png', 'image/png', 'public', 'public', 426775, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:04:26', '2024-06-21 10:04:26'),
(378, 'App\\Models\\Blog', 8, '2fe5557e-6a39-4b50-a7cd-42735b435ce7', 'meta_image', 'Transform Your Home with Our Comprehensive Cleaning Services', 'Transform-Your-Home-with-Our-Comprehensive-Cleaning-Services.png', 'image/png', 'public', 'public', 426775, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:04:27', '2024-06-21 10:04:27'),
(379, 'App\\Models\\Blog', 1, '9a26b64b-bc78-4ece-aa18-4b77244078bf', 'image', 'Top 10 Must-Have Home Services for a Stress-Free Living', 'Top-10-Must-Have-Home-Services-for-a-Stress-Free-Living.png', 'image/png', 'public', 'public', 515513, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:05:02', '2024-06-21 10:05:02'),
(380, 'App\\Models\\Blog', 1, '20eb66cd-40df-4bc9-b4b9-9c8db5a7a8a8', 'meta_image', 'Top 10 Must-Have Home Services for a Stress-Free Living', 'Top-10-Must-Have-Home-Services-for-a-Stress-Free-Living.png', 'image/png', 'public', 'public', 515513, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:05:02', '2024-06-21 10:05:02'),
(385, 'App\\Models\\Blog', 3, 'c2f7992a-6f7a-434f-b90d-5d2c409fa527', 'image', 'The Ultimate Guide to Choosing the Best Spa Services Near You', 'The-Ultimate-Guide-to-Choosing-the-Best-Spa-Services-Near-You.png', 'image/png', 'public', 'public', 377999, '[]', '[]', '[]', '[]', 7, '2024-06-21 10:06:42', '2024-06-21 10:06:42'),
(386, 'App\\Models\\Blog', 3, '8941c0e7-3b91-475d-8d41-203eff51eafb', 'meta_image', 'The Ultimate Guide to Choosing the Best Spa Services Near You', 'The-Ultimate-Guide-to-Choosing-the-Best-Spa-Services-Near-You.png', 'image/png', 'public', 'public', 377999, '[]', '[]', '[]', '[]', 8, '2024-06-21 10:06:42', '2024-06-21 10:06:42'),
(387, 'App\\Models\\Blog', 10, '8ed9bac0-d260-4cf4-8f26-55122696602a', 'image', 'The Importance of Regular Spa Treatments for Your Wellbeing', 'The-Importance-of-Regular-Spa-Treatments-for-Your-Wellbeing.png', 'image/png', 'public', 'public', 402250, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:07:15', '2024-06-21 10:07:15'),
(388, 'App\\Models\\Blog', 10, '4bfa9a51-d565-4c81-ad7a-e9ad63249e4d', 'meta_image', 'The Importance of Regular Spa Treatments for Your Wellbeing', 'The-Importance-of-Regular-Spa-Treatments-for-Your-Wellbeing.png', 'image/png', 'public', 'public', 402250, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:07:15', '2024-06-21 10:07:15'),
(389, 'App\\Models\\Blog', 5, 'de358b7c-9619-4cf4-a19a-77788f03ba65', 'image', 'Spring Cleaning Made Easy_ Tips from the Experts', 'Spring-Cleaning-Made-Easy_-Tips-from-the-Experts.png', 'image/png', 'public', 'public', 398576, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:08:18', '2024-06-21 10:08:18'),
(390, 'App\\Models\\Blog', 5, 'bea15638-20ab-4e85-bdb8-f2def4510941', 'meta_image', 'Spring Cleaning Made Easy_ Tips from the Experts', 'Spring-Cleaning-Made-Easy_-Tips-from-the-Experts.png', 'image/png', 'public', 'public', 398576, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:08:18', '2024-06-21 10:08:18'),
(391, 'App\\Models\\Blog', 6, '5f200510-a771-4235-bded-7a1f44c76458', 'image', 'How to Choose the Right Vendor for Your Home Repair Needs-1', 'How-to-Choose-the-Right-Vendor-for-Your-Home-Repair-Needs-1.png', 'image/png', 'public', 'public', 279570, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:09:26', '2024-06-21 10:09:26'),
(392, 'App\\Models\\Blog', 6, '2d414477-f14f-437d-9a01-c58ea9ab2ace', 'meta_image', 'How to Choose the Right Vendor for Your Home Repair Needs-1', 'How-to-Choose-the-Right-Vendor-for-Your-Home-Repair-Needs-1.png', 'image/png', 'public', 'public', 279570, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:09:26', '2024-06-21 10:09:26'),
(395, 'App\\Models\\Blog', 9, '8387cd92-72dd-4283-a10f-d5d9b4a0dcf5', 'image', 'Expert Tips for Maintaining a Clean and Healthy Home', 'Expert-Tips-for-Maintaining-a-Clean-and-Healthy-Home.png', 'image/png', 'public', 'public', 476053, '[]', '[]', '[]', '[]', 5, '2024-06-21 10:12:34', '2024-06-21 10:12:34'),
(396, 'App\\Models\\Blog', 9, 'a9f1cc21-b12f-40fa-a6ac-1d6bcb23948e', 'meta_image', 'Expert Tips for Maintaining a Clean and Healthy Home', 'Expert-Tips-for-Maintaining-a-Clean-and-Healthy-Home.png', 'image/png', 'public', 'public', 476053, '[]', '[]', '[]', '[]', 6, '2024-06-21 10:12:34', '2024-06-21 10:12:34'),
(397, 'App\\Models\\Blog', 7, 'ca683e0d-c67f-4194-96d8-5822ce31279b', 'image', 'Enhance Your Home’s Comfort with Our AC Services', 'Enhance-Your-Home’s-Comfort-with-Our-AC-Services.png', 'image/png', 'public', 'public', 407582, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:13:30', '2024-06-21 10:13:30'),
(398, 'App\\Models\\Blog', 7, '10194aba-35f1-427f-8f2f-19da9a171cc4', 'meta_image', 'Enhance Your Home’s Comfort with Our AC Services', 'Enhance-Your-Home’s-Comfort-with-Our-AC-Services.png', 'image/png', 'public', 'public', 407582, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:13:30', '2024-06-21 10:13:30'),
(399, 'App\\Models\\Blog', 12, '1d0f31a4-92fa-4ee1-bf8e-a9c60f014189', 'image', 'Customer Stories_ How Our Services Transformed Their Homes', 'Customer-Stories_-How-Our-Services-Transformed-Their-Homes.png', 'image/png', 'public', 'public', 463586, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:14:10', '2024-06-21 10:14:10'),
(400, 'App\\Models\\Blog', 12, '9c046338-7677-4925-b7ca-748bec573d3d', 'meta_image', 'Customer Stories_ How Our Services Transformed Their Homes', 'Customer-Stories_-How-Our-Services-Transformed-Their-Homes.png', 'image/png', 'public', 'public', 463586, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:14:10', '2024-06-21 10:14:10'),
(401, 'App\\Models\\Blog', 4, '3b183e3d-6dce-49c5-b79c-f232553a02cb', 'image', '5 Reasons to Hire a Professional for Your Haircut', '5-Reasons-to-Hire-a-Professional-for-Your-Haircut.png', 'image/png', 'public', 'public', 467228, '[]', '[]', '[]', '[]', 3, '2024-06-21 10:14:35', '2024-06-21 10:14:35'),
(402, 'App\\Models\\Blog', 4, '4fb2c7dc-04bf-46d5-bc39-d0ced1b13ca8', 'meta_image', '5 Reasons to Hire a Professional for Your Haircut', '5-Reasons-to-Hire-a-Professional-for-Your-Haircut.png', 'image/png', 'public', 'public', 467228, '[]', '[]', '[]', '[]', 4, '2024-06-21 10:14:35', '2024-06-21 10:14:35'),
(403, 'App\\Models\\ServicePackage', 6, '2f77d88a-8428-42af-a8db-59b65c177d20', 'image', 'fi_12326825', 'fi_12326825.png', 'image/png', 'public', 'public', 1107, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:20:19', '2024-06-21 10:20:19'),
(404, 'App\\Models\\ServicePackage', 5, '73d28d8f-118e-4de0-8ea8-419bf81d72cb', 'image', 'fi_11211182', 'fi_11211182.png', 'image/png', 'public', 'public', 1432, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:20:34', '2024-06-21 10:20:34'),
(405, 'App\\Models\\ServicePackage', 4, '7f5e84e1-6f4d-44e5-816d-ddf63c38b693', 'image', 'fi_3063129', 'fi_3063129.png', 'image/png', 'public', 'public', 1335, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:21:00', '2024-06-21 10:21:00'),
(406, 'App\\Models\\ServicePackage', 3, 'd06a33c4-01fd-4a8c-bc1e-fb9f5d7d5769', 'image', 'fi_738822', 'fi_738822.png', 'image/png', 'public', 'public', 1031, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:21:18', '2024-06-21 10:21:18'),
(407, 'App\\Models\\ServicePackage', 2, '9939485c-5fe7-494a-83f2-11886413c67d', 'image', 'fi_6018493', 'fi_6018493.png', 'image/png', 'public', 'public', 1141, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:21:36', '2024-06-21 10:21:36'),
(408, 'App\\Models\\ServicePackage', 1, '1e78b100-9bc9-423a-8f6b-481ae2e93b28', 'image', 'fi_11444958', 'fi_11444958.png', 'image/png', 'public', 'public', 1249, '[]', '[]', '[]', '[]', 1, '2024-06-21 10:21:49', '2024-06-21 10:21:49'),
(412, 'App\\Models\\Service', 45, 'ad097928-fce0-4abc-91e5-ff6cead55e91', 'image', 'Event Catering by Personal Chef_2', 'Event-Catering-by-Personal-Chef_2.jpg', 'image/jpeg', 'public', 'public', 192217, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:39:00', '2024-06-22 06:39:00'),
(413, 'App\\Models\\Service', 45, '4649a19d-4676-4013-979f-67f7d221835a', 'image', 'Event Catering by Personal Chef_3', 'Event-Catering-by-Personal-Chef_3.jpg', 'image/jpeg', 'public', 'public', 309735, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:39:00', '2024-06-22 06:39:00'),
(414, 'App\\Models\\Service', 45, '643e0079-25ae-4c34-8f64-aaccbbb4e164', 'thumbnail', 'Event Catering by Personal Chef_1', 'Event-Catering-by-Personal-Chef_1.jpg', 'image/jpeg', 'public', 'public', 245929, '[]', '[]', '[]', '[]', 11, '2024-06-22 06:39:00', '2024-06-22 06:39:00'),
(415, 'App\\Models\\Service', 44, 'c432218e-d5f4-4a14-b8d8-66a4f03726dc', 'image', 'In-Home Personal Chef Service_2', 'In-Home-Personal-Chef-Service_2.jpg', 'image/jpeg', 'public', 'public', 192327, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:39:41', '2024-06-22 06:39:41'),
(416, 'App\\Models\\Service', 44, '34180114-5bc4-4f8a-84cf-ffc659b4afea', 'image', 'In-Home Personal Chef Service_3', 'In-Home-Personal-Chef-Service_3.jpg', 'image/jpeg', 'public', 'public', 217352, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:39:41', '2024-06-22 06:39:41'),
(417, 'App\\Models\\Service', 44, 'ff04fb1f-fd3c-455c-8595-11cbbae8c30e', 'thumbnail', 'In-Home Personal Chef Service_1', 'In-Home-Personal-Chef-Service_1.jpg', 'image/jpeg', 'public', 'public', 287440, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:39:41', '2024-06-22 06:39:41'),
(418, 'App\\Models\\Service', 43, 'e7d51fe0-a002-4d98-844b-849fa64613bc', 'image', 'Deck Maintenance Services_2', 'Deck-Maintenance-Services_2.jpg', 'image/jpeg', 'public', 'public', 357376, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:40:20', '2024-06-22 06:40:20'),
(419, 'App\\Models\\Service', 43, '10f1a60c-16f7-44ca-88f4-82f63ad69e19', 'image', 'Deck Maintenance Services_3', 'Deck-Maintenance-Services_3.jpg', 'image/jpeg', 'public', 'public', 275876, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:40:20', '2024-06-22 06:40:20'),
(420, 'App\\Models\\Service', 43, '6e08a11a-f660-4a25-bbe3-7a97e108288b', 'thumbnail', 'Deck Maintenance Services_1', 'Deck-Maintenance-Services_1.jpg', 'image/jpeg', 'public', 'public', 223587, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:40:20', '2024-06-22 06:40:20'),
(421, 'App\\Models\\Service', 42, 'b3c760f9-7ca8-463d-9bf5-3b9713eb78b5', 'image', 'Deck Repair and Restoration_2', 'Deck-Repair-and-Restoration_2.jpg', 'image/jpeg', 'public', 'public', 383635, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:40:49', '2024-06-22 06:40:49'),
(422, 'App\\Models\\Service', 42, '81a8aee7-e78e-459d-b59d-64ace49aacff', 'image', 'Deck Repair and Restoration_3', 'Deck-Repair-and-Restoration_3.jpg', 'image/jpeg', 'public', 'public', 289846, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:40:49', '2024-06-22 06:40:49'),
(423, 'App\\Models\\Service', 42, '817439b8-b303-40fe-ad0d-e59eabcbb578', 'thumbnail', 'Deck Repair and Restoration_1', 'Deck-Repair-and-Restoration_1.jpg', 'image/jpeg', 'public', 'public', 379445, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:40:49', '2024-06-22 06:40:49'),
(424, 'App\\Models\\Service', 41, '36ad1ba2-f013-46e9-bb42-7a1eed45c9f6', 'image', 'Custom Deck Design and Construction_2', 'Custom-Deck-Design-and-Construction_2.jpg', 'image/jpeg', 'public', 'public', 323525, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:41:27', '2024-06-22 06:41:27'),
(425, 'App\\Models\\Service', 41, '0e1269a2-fde6-4179-901b-14d68183f0a5', 'image', 'Custom Deck Design and Construction_3', 'Custom-Deck-Design-and-Construction_3.jpg', 'image/jpeg', 'public', 'public', 356953, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:41:27', '2024-06-22 06:41:27'),
(426, 'App\\Models\\Service', 41, '0ae74f86-6aeb-45a2-ae4a-fbc4550aef90', 'thumbnail', 'Custom Deck Design and Construction_1', 'Custom-Deck-Design-and-Construction_1.jpg', 'image/jpeg', 'public', 'public', 317354, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:41:27', '2024-06-22 06:41:27'),
(427, 'App\\Models\\Service', 40, '884a40ed-0563-40a0-8776-298c273ae012', 'image', 'Parquet Flooring Installation_2', 'Parquet-Flooring-Installation_2.jpg', 'image/jpeg', 'public', 'public', 247714, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:42:36', '2024-06-22 06:42:36'),
(428, 'App\\Models\\Service', 40, 'fc0c86cd-0ef9-4262-9232-6c623edef448', 'image', 'Parquet Flooring Installation_3', 'Parquet-Flooring-Installation_3.jpg', 'image/jpeg', 'public', 'public', 219960, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:42:36', '2024-06-22 06:42:36'),
(429, 'App\\Models\\Service', 40, '2077411a-5730-4056-932f-475fa0dfdeff', 'thumbnail', 'Parquet Flooring Installation_1', 'Parquet-Flooring-Installation_1.jpg', 'image/jpeg', 'public', 'public', 250777, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:42:36', '2024-06-22 06:42:36'),
(430, 'App\\Models\\Service', 39, '667070dc-bd6e-4ef6-abfa-4c1575001d5f', 'image', 'Laminate Floor Installation_2', 'Laminate-Floor-Installation_2.jpg', 'image/jpeg', 'public', 'public', 270870, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:43:06', '2024-06-22 06:43:06'),
(431, 'App\\Models\\Service', 39, '5f54734c-6d93-4c77-8ba0-f6df3657bd65', 'image', 'Laminate Floor Installation_3', 'Laminate-Floor-Installation_3.jpg', 'image/jpeg', 'public', 'public', 245090, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:43:06', '2024-06-22 06:43:06'),
(432, 'App\\Models\\Service', 39, 'e581c198-64ec-422a-922c-fef45d9bb2a5', 'thumbnail', 'Laminate Floor Installation_1', 'Laminate-Floor-Installation_1.jpg', 'image/jpeg', 'public', 'public', 254166, '[]', '[]', '[]', '[]', 11, '2024-06-22 06:43:06', '2024-06-22 06:43:06'),
(433, 'App\\Models\\Service', 38, '0583ac79-1eb6-4e6d-81e7-c3b01e7ae9b4', 'image', 'Hardwood Floor Installation_2', 'Hardwood-Floor-Installation_2.jpg', 'image/jpeg', 'public', 'public', 374812, '[]', '[]', '[]', '[]', 3, '2024-06-22 06:43:37', '2024-06-22 06:43:37'),
(434, 'App\\Models\\Service', 38, '268ffc8f-0866-4808-b6c2-b42e83d7fd98', 'image', 'Hardwood Floor Installation_3', 'Hardwood-Floor-Installation_3.jpg', 'image/jpeg', 'public', 'public', 374382, '[]', '[]', '[]', '[]', 4, '2024-06-22 06:43:37', '2024-06-22 06:43:37'),
(435, 'App\\Models\\Service', 38, '5949192c-e9e3-4241-a330-676236f5c65c', 'thumbnail', 'Hardwood Floor Installation_1', 'Hardwood-Floor-Installation_1.jpg', 'image/jpeg', 'public', 'public', 377977, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:43:37', '2024-06-22 06:43:37'),
(436, 'App\\Models\\Service', 37, 'fb24cfa3-8ea9-4984-a101-48e11eb6e07a', 'image', 'Custom Cabinet Installation_2', 'Custom-Cabinet-Installation_2.jpg', 'image/jpeg', 'public', 'public', 212264, '[]', '[]', '[]', '[]', 3, '2024-06-22 06:44:10', '2024-06-22 06:44:10'),
(437, 'App\\Models\\Service', 37, 'c58cf61d-96d9-4373-a968-50b7e29323f9', 'image', 'Custom Cabinet Installation_3', 'Custom-Cabinet-Installation_3.jpg', 'image/jpeg', 'public', 'public', 239736, '[]', '[]', '[]', '[]', 4, '2024-06-22 06:44:10', '2024-06-22 06:44:10'),
(438, 'App\\Models\\Service', 37, '680d8af3-a3af-4702-ad4e-0c8db0ca76cf', 'thumbnail', 'Custom Cabinet Installation_1', 'Custom-Cabinet-Installation_1.jpg', 'image/jpeg', 'public', 'public', 266413, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:44:10', '2024-06-22 06:44:10'),
(439, 'App\\Models\\Service', 36, 'e7483e40-f2a2-42ce-958e-18644a8ddd8c', 'image', 'Bathroom Cabinet Installation_2', 'Bathroom-Cabinet-Installation_2.jpg', 'image/jpeg', 'public', 'public', 263660, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:45:03', '2024-06-22 06:45:03'),
(440, 'App\\Models\\Service', 36, '35c30470-f6f8-4877-ac33-83834206eae4', 'image', 'Bathroom Cabinet Installation_3', 'Bathroom-Cabinet-Installation_3.jpg', 'image/jpeg', 'public', 'public', 301740, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:45:03', '2024-06-22 06:45:03'),
(441, 'App\\Models\\Service', 36, '6881a615-2259-4c10-b665-832357149465', 'thumbnail', 'Bathroom Cabinet Installation_1', 'Bathroom-Cabinet-Installation_1.jpg', 'image/jpeg', 'public', 'public', 242123, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:45:03', '2024-06-22 06:45:03'),
(442, 'App\\Models\\Service', 35, '33ba1f4f-2c8a-49db-8385-1a159b377c37', 'image', 'Kitchen Cabinet Installation_2', 'Kitchen-Cabinet-Installation_2.jpg', 'image/jpeg', 'public', 'public', 243519, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:45:55', '2024-06-22 06:45:55'),
(443, 'App\\Models\\Service', 35, '315da5ef-9bb8-4e7b-895a-32624934aaed', 'image', 'Kitchen Cabinet Installation_3', 'Kitchen-Cabinet-Installation_3.jpg', 'image/jpeg', 'public', 'public', 246362, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:45:55', '2024-06-22 06:45:55'),
(444, 'App\\Models\\Service', 35, '73afa979-c80e-4988-a093-89eaf067f269', 'thumbnail', 'Kitchen Cabinet Installation_1', 'Kitchen-Cabinet-Installation_1.jpg', 'image/jpeg', 'public', 'public', 261059, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:45:55', '2024-06-22 06:45:55'),
(445, 'App\\Models\\Service', 34, '07e12576-29bf-48eb-aba5-1ea5a37261ca', 'image', 'Furniture Repair and Restoration_2', 'Furniture-Repair-and-Restoration_2.jpg', 'image/jpeg', 'public', 'public', 264550, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:47:10', '2024-06-22 06:47:10');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(446, 'App\\Models\\Service', 34, '2d2d1efa-8d43-493e-b582-d1056dedd638', 'image', 'Furniture Repair and Restoration_3', 'Furniture-Repair-and-Restoration_3.jpg', 'image/jpeg', 'public', 'public', 239155, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:47:10', '2024-06-22 06:47:10'),
(447, 'App\\Models\\Service', 34, '7b7d370a-d12f-475d-ab6d-0a1e8b13d8f5', 'thumbnail', 'Furniture Repair and Restoration_1', 'Furniture-Repair-and-Restoration_1.jpg', 'image/jpeg', 'public', 'public', 244505, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:47:10', '2024-06-22 06:47:10'),
(448, 'App\\Models\\Service', 33, 'deb9bdde-abde-4c71-8416-fe648bc11fc3', 'image', 'Custom Furniture Design and Build Furniture Making_2', 'Custom-Furniture-Design-and-Build-Furniture-Making_2.jpg', 'image/jpeg', 'public', 'public', 203121, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:47:48', '2024-06-22 06:47:48'),
(449, 'App\\Models\\Service', 33, '675671a6-dd52-42b7-9a91-83211fd4f806', 'image', 'Custom Furniture Design and Build Furniture Making_3', 'Custom-Furniture-Design-and-Build-Furniture-Making_3.jpg', 'image/jpeg', 'public', 'public', 344342, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:47:48', '2024-06-22 06:47:48'),
(450, 'App\\Models\\Service', 33, 'ee2eec72-eb07-48e4-b1cd-6c5d574240aa', 'thumbnail', 'Custom Furniture Design and Build Furniture Making_1', 'Custom-Furniture-Design-and-Build-Furniture-Making_1.jpg', 'image/jpeg', 'public', 'public', 317049, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:47:48', '2024-06-22 06:47:48'),
(451, 'App\\Models\\Service', 32, '96a7a603-d470-485a-92ba-e9aeb7caf0a0', 'image', 'Window Cleaning Service_2', 'Window-Cleaning-Service_2.jpg', 'image/jpeg', 'public', 'public', 175968, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:48:20', '2024-06-22 06:48:20'),
(452, 'App\\Models\\Service', 32, '4073bdaf-37c7-435c-b56b-15eb5bf43fd5', 'image', 'Window Cleaning Service_3', 'Window-Cleaning-Service_3.jpg', 'image/jpeg', 'public', 'public', 213510, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:48:20', '2024-06-22 06:48:20'),
(453, 'App\\Models\\Service', 32, '763b7592-a3f3-43aa-ba3d-f3cdc8e7d5dd', 'thumbnail', 'Window Cleaning Service_1', 'Window-Cleaning-Service_1.jpg', 'image/jpeg', 'public', 'public', 227326, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:48:21', '2024-06-22 06:48:21'),
(454, 'App\\Models\\Service', 31, '63fe8a92-5db4-4a51-9edb-004a9105046d', 'image', 'Carpet Cleaning Service_2', 'Carpet-Cleaning-Service_2.jpg', 'image/jpeg', 'public', 'public', 191764, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:49:03', '2024-06-22 06:49:03'),
(455, 'App\\Models\\Service', 31, 'd13a3803-4dd3-4a19-90f1-95dee200bb78', 'image', 'Carpet Cleaning Service_3', 'Carpet-Cleaning-Service_3.jpg', 'image/jpeg', 'public', 'public', 189589, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:49:03', '2024-06-22 06:49:03'),
(456, 'App\\Models\\Service', 31, 'f50e8ae7-92e1-4d5c-9a4c-3e7e61c828e0', 'thumbnail', 'Carpet Cleaning Service_1', 'Carpet-Cleaning-Service_1.jpg', 'image/jpeg', 'public', 'public', 262782, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:49:03', '2024-06-22 06:49:03'),
(457, 'App\\Models\\Service', 30, 'fe438a19-3f17-49fd-9343-d1ed7216815c', 'image', 'Residential Cleaning Services_2', 'Residential-Cleaning-Services_2.jpg', 'image/jpeg', 'public', 'public', 197134, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:49:45', '2024-06-22 06:49:45'),
(458, 'App\\Models\\Service', 30, 'a952fe00-2940-4dc6-b792-2f83b1c8fd30', 'image', 'Residential Cleaning Services_3', 'Residential-Cleaning-Services_3.jpg', 'image/jpeg', 'public', 'public', 223707, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:49:45', '2024-06-22 06:49:45'),
(459, 'App\\Models\\Service', 30, '9bfb345f-15fc-49cf-b106-0de54e726468', 'thumbnail', 'Residential Cleaning Services_1', 'Residential-Cleaning-Services_1.jpg', 'image/jpeg', 'public', 'public', 228410, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:49:45', '2024-06-22 06:49:45'),
(460, 'App\\Models\\Service', 29, '19a9dd77-d0a5-4963-a327-6989ae91850e', 'image', 'Electrical Emergency Repair Service_2', 'Electrical-Emergency-Repair-Service_2.jpg', 'image/jpeg', 'public', 'public', 143520, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:50:22', '2024-06-22 06:50:22'),
(461, 'App\\Models\\Service', 29, 'e6e6cbe7-2336-4152-8234-c000c8bfd928', 'image', 'Electrical Emergency Repair Service_3', 'Electrical-Emergency-Repair-Service_3.jpg', 'image/jpeg', 'public', 'public', 320222, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:50:22', '2024-06-22 06:50:22'),
(462, 'App\\Models\\Service', 29, '483b84b9-81d5-4897-986e-76e9b4f0adff', 'thumbnail', 'Electrical Emergency Repair Service_1', 'Electrical-Emergency-Repair-Service_1.jpg', 'image/jpeg', 'public', 'public', 211733, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:50:22', '2024-06-22 06:50:22'),
(463, 'App\\Models\\Service', 28, '5111f984-3865-4be3-991a-68a44c0fb330', 'image', 'Plumbing Emergency Repair Service_2', 'Plumbing-Emergency-Repair-Service_2.jpg', 'image/jpeg', 'public', 'public', 231983, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:51:00', '2024-06-22 06:51:00'),
(464, 'App\\Models\\Service', 28, '2a438668-3e31-48e2-acd4-5b75abed09be', 'image', 'Plumbing Emergency Repair Service_3', 'Plumbing-Emergency-Repair-Service_3.jpg', 'image/jpeg', 'public', 'public', 169567, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:51:00', '2024-06-22 06:51:00'),
(465, 'App\\Models\\Service', 28, 'ae33620a-a84f-4fd4-a78c-0d014e98615d', 'thumbnail', 'Plumbing Emergency Repair Service_1', 'Plumbing-Emergency-Repair-Service_1.jpg', 'image/jpeg', 'public', 'public', 233472, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:51:00', '2024-06-22 06:51:00'),
(466, 'App\\Models\\Service', 27, '81d257e3-ceb4-482e-8b7e-3431c445fa59', 'image', 'Emergency Repair Service_2', 'Emergency-Repair-Service_2.jpg', 'image/jpeg', 'public', 'public', 252501, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:51:50', '2024-06-22 06:51:50'),
(467, 'App\\Models\\Service', 27, '73b8eb6a-394c-48eb-be06-4ee61efd9458', 'image', 'Emergency Repair Service_3', 'Emergency-Repair-Service_3.jpg', 'image/jpeg', 'public', 'public', 368458, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:51:50', '2024-06-22 06:51:50'),
(468, 'App\\Models\\Service', 27, '3ac7d831-30b2-4897-af44-cff4fd19285c', 'thumbnail', 'Emergency Repair Service_1', 'Emergency-Repair-Service_1.jpg', 'image/jpeg', 'public', 'public', 298259, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:51:50', '2024-06-22 06:51:50'),
(469, 'App\\Models\\Service', 26, '17cfdb35-d347-4617-8441-148f07918839', 'image', 'AC Installation Service_2', 'AC-Installation-Service_2.jpg', 'image/jpeg', 'public', 'public', 231822, '[]', '[]', '[]', '[]', 8, '2024-06-22 06:53:33', '2024-06-22 06:53:33'),
(470, 'App\\Models\\Service', 26, '0b36a07f-3591-44a1-885b-33aa7ec4bb65', 'image', 'AC Installation Service_3', 'AC-Installation-Service_3.jpg', 'image/jpeg', 'public', 'public', 247285, '[]', '[]', '[]', '[]', 9, '2024-06-22 06:53:33', '2024-06-22 06:53:33'),
(471, 'App\\Models\\Service', 26, '6baef76e-abbc-490e-b8c3-94470f6943d9', 'thumbnail', 'AC Installation Service_1', 'AC-Installation-Service_1.jpg', 'image/jpeg', 'public', 'public', 225706, '[]', '[]', '[]', '[]', 10, '2024-06-22 06:53:33', '2024-06-22 06:53:33'),
(472, 'App\\Models\\Service', 25, '4b7839c2-5b08-4bc6-b2e4-fb9402ac6b41', 'image', 'Car Washing service_2', 'Car-Washing-service_2.png', 'image/png', 'public', 'public', 420624, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:54:49', '2024-06-22 06:54:49'),
(473, 'App\\Models\\Service', 25, 'f5d5ee57-0a61-46c0-b4fd-365073380629', 'image', 'Car Washing service_3', 'Car-Washing-service_3.png', 'image/png', 'public', 'public', 429237, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:54:49', '2024-06-22 06:54:49'),
(474, 'App\\Models\\Service', 25, '5457beb0-e21e-476f-8958-8873d4f087ba', 'thumbnail', 'Car Washing service_1', 'Car-Washing-service_1.png', 'image/png', 'public', 'public', 444275, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:54:49', '2024-06-22 06:54:49'),
(475, 'App\\Models\\Service', 24, '4a2f79b7-15b2-4531-986b-52ac1909d3d4', 'image', 'AC Master Service_2', 'AC-Master-Service_2.jpg', 'image/jpeg', 'public', 'public', 192583, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:55:36', '2024-06-22 06:55:36'),
(476, 'App\\Models\\Service', 24, '0234a201-ca17-4229-997e-5ca476f6e6f4', 'image', 'AC Master Service_3', 'AC-Master-Service_3.jpg', 'image/jpeg', 'public', 'public', 194874, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:55:36', '2024-06-22 06:55:36'),
(477, 'App\\Models\\Service', 24, 'a18728f5-e614-41e8-8f69-54178d9ad636', 'thumbnail', 'Ac master service_1', 'Ac-master-service_1.png', 'image/png', 'public', 'public', 404159, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:55:36', '2024-06-22 06:55:36'),
(478, 'App\\Models\\Service', 23, '6ac44630-a26f-414e-82d0-a0e8b522162f', 'image', 'Plumbing Emergency Repair Service_2', 'Plumbing-Emergency-Repair-Service_2.jpg', 'image/jpeg', 'public', 'public', 231983, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:57:07', '2024-06-22 06:57:07'),
(479, 'App\\Models\\Service', 23, '5f9b3c28-89ef-4a76-b657-951cc5eed8c3', 'image', 'Plumbing Emergency Repair Service_3', 'Plumbing-Emergency-Repair-Service_3.jpg', 'image/jpeg', 'public', 'public', 169567, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:57:07', '2024-06-22 06:57:07'),
(480, 'App\\Models\\Service', 23, '5633504b-7739-4136-81d6-7fe89dd2ca16', 'thumbnail', 'Plumbing Emergency Repair Service_1', 'Plumbing-Emergency-Repair-Service_1.jpg', 'image/jpeg', 'public', 'public', 233472, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:57:07', '2024-06-22 06:57:07'),
(481, 'App\\Models\\Service', 22, '9d09f410-d017-4cbd-a7f1-b038d98c0bb3', 'image', 'Cooking Classes_2', 'Cooking-Classes_2.jpg', 'image/jpeg', 'public', 'public', 324662, '[]', '[]', '[]', '[]', 3, '2024-06-22 06:58:27', '2024-06-22 06:58:27'),
(482, 'App\\Models\\Service', 22, 'ab2bd6ac-343a-442c-8547-f21ef0829835', 'image', 'Cooking Classes_3', 'Cooking-Classes_3.jpg', 'image/jpeg', 'public', 'public', 305609, '[]', '[]', '[]', '[]', 4, '2024-06-22 06:58:27', '2024-06-22 06:58:27'),
(483, 'App\\Models\\Service', 22, '7d17aa2a-4f29-4c0c-8795-6261d783b583', 'thumbnail', 'Cooking Classes_1', 'Cooking-Classes_1.jpg', 'image/jpeg', 'public', 'public', 272630, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:58:27', '2024-06-22 06:58:27'),
(484, 'App\\Models\\Service', 21, '58c7c0ff-5340-475a-b448-faae22f00dcb', 'image', 'Catering Services_2', 'Catering-Services_2.jpg', 'image/jpeg', 'public', 'public', 312952, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:59:10', '2024-06-22 06:59:10'),
(485, 'App\\Models\\Service', 21, '5f10b8d0-5f24-4b5f-9836-061c0fc4514b', 'image', 'Catering Services_3', 'Catering-Services_3.jpg', 'image/jpeg', 'public', 'public', 259258, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:59:10', '2024-06-22 06:59:10'),
(486, 'App\\Models\\Service', 21, '01b12e98-22c1-4df4-ae60-9ea625d5e309', 'thumbnail', 'Catering Services_1', 'Catering-Services_1.jpg', 'image/jpeg', 'public', 'public', 262492, '[]', '[]', '[]', '[]', 7, '2024-06-22 06:59:10', '2024-06-22 06:59:10'),
(487, 'App\\Models\\Service', 20, 'd7b89cfd-31c4-479e-ab2c-589b6da02a87', 'image', 'Personal Chef Service_2', 'Personal-Chef-Service_2.jpg', 'image/jpeg', 'public', 'public', 204280, '[]', '[]', '[]', '[]', 4, '2024-06-22 06:59:55', '2024-06-22 06:59:55'),
(488, 'App\\Models\\Service', 20, '90e90c04-cb35-40cb-8621-ea5c10d7632c', 'image', 'Personal Chef Service_3', 'Personal-Chef-Service_3.jpg', 'image/jpeg', 'public', 'public', 273808, '[]', '[]', '[]', '[]', 5, '2024-06-22 06:59:55', '2024-06-22 06:59:55'),
(489, 'App\\Models\\Service', 20, '473c7724-5941-4701-b52b-59ccef580b27', 'thumbnail', 'Personal Chef Service_1', 'Personal-Chef-Service_1.jpg', 'image/jpeg', 'public', 'public', 250103, '[]', '[]', '[]', '[]', 6, '2024-06-22 06:59:55', '2024-06-22 06:59:55'),
(490, 'App\\Models\\Service', 19, '34b2bfc2-4e78-456b-9670-05abdefc64d2', 'image', 'Full body massage_2', 'Full-body-massage_2.png', 'image/png', 'public', 'public', 421726, '[]', '[]', '[]', '[]', 5, '2024-06-22 07:00:49', '2024-06-22 07:00:49'),
(491, 'App\\Models\\Service', 19, '858410d8-262e-47f1-9983-9bb08815bad9', 'image', 'Full body massage_3', 'Full-body-massage_3.png', 'image/png', 'public', 'public', 523523, '[]', '[]', '[]', '[]', 6, '2024-06-22 07:00:49', '2024-06-22 07:00:49'),
(492, 'App\\Models\\Service', 19, '818f6560-13ff-48d6-ae65-2ced51dd019d', 'thumbnail', 'Full body massage_1', 'Full-body-massage_1.png', 'image/png', 'public', 'public', 457592, '[]', '[]', '[]', '[]', 7, '2024-06-22 07:00:49', '2024-06-22 07:00:49'),
(496, 'App\\Models\\Service', 18, '5feae795-d652-4948-8827-e3cf5a7958df', 'image', 'Face care2', 'Face-care2.png', 'image/png', 'public', 'public', 358364, '[]', '[]', '[]', '[]', 8, '2024-06-22 07:05:18', '2024-06-22 07:05:18'),
(497, 'App\\Models\\Service', 18, '20273448-0b3e-4989-8325-717a72caa961', 'image', 'Face care3', 'Face-care3.png', 'image/png', 'public', 'public', 462336, '[]', '[]', '[]', '[]', 9, '2024-06-22 07:05:18', '2024-06-22 07:05:18'),
(498, 'App\\Models\\Service', 18, 'eec995db-bfe7-4ef2-87a3-7736139fb2af', 'thumbnail', 'Face care', 'Face-care.png', 'image/png', 'public', 'public', 347945, '[]', '[]', '[]', '[]', 10, '2024-06-22 07:05:18', '2024-06-22 07:05:18'),
(499, 'App\\Models\\Service', 15, '84f4e549-21eb-4cff-865e-a3d1d16cf8f6', 'image', 'Chimney sweeping & Cleaning_2', 'Chimney-sweeping-&-Cleaning_2.png', 'image/png', 'public', 'public', 524381, '[]', '[]', '[]', '[]', 5, '2024-06-22 07:06:12', '2024-06-22 07:06:12'),
(500, 'App\\Models\\Service', 15, '4e245abd-89ac-4aa4-a4b8-54fc81e81d97', 'image', 'Chimney sweeping & Cleaning_3', 'Chimney-sweeping-&-Cleaning_3.png', 'image/png', 'public', 'public', 651314, '[]', '[]', '[]', '[]', 6, '2024-06-22 07:06:12', '2024-06-22 07:06:12'),
(501, 'App\\Models\\Service', 15, '3300a71a-601c-429d-8646-aabc53363fa6', 'thumbnail', 'Chimney sweeping & Cleaning_1', 'Chimney-sweeping-&-Cleaning_1.png', 'image/png', 'public', 'public', 578727, '[]', '[]', '[]', '[]', 7, '2024-06-22 07:06:12', '2024-06-22 07:06:12'),
(502, 'App\\Models\\Service', 14, '269d7728-219f-4075-bebe-45aec4124160', 'image', 'Ayurvedic Pain Relief Head, Neck & Shoulder Massage_2', 'Ayurvedic-Pain-Relief-Head,-Neck-&-Shoulder-Massage_2.png', 'image/png', 'public', 'public', 342422, '[]', '[]', '[]', '[]', 5, '2024-06-22 07:07:00', '2024-06-22 07:07:00'),
(503, 'App\\Models\\Service', 14, 'dbbf3b4a-f40d-459d-9425-a4618822a60e', 'image', 'Ayurvedic Pain Relief Head, Neck & Shoulder Massage_3', 'Ayurvedic-Pain-Relief-Head,-Neck-&-Shoulder-Massage_3.png', 'image/png', 'public', 'public', 352462, '[]', '[]', '[]', '[]', 6, '2024-06-22 07:07:00', '2024-06-22 07:07:00'),
(504, 'App\\Models\\Service', 14, 'b34c8a92-544d-47d0-969d-4f5650f3fca2', 'thumbnail', 'Ayurvedic Pain Relief Head, Neck & Shoulder Massage_1', 'Ayurvedic-Pain-Relief-Head,-Neck-&-Shoulder-Massage_1.png', 'image/png', 'public', 'public', 334460, '[]', '[]', '[]', '[]', 7, '2024-06-22 07:07:00', '2024-06-22 07:07:00'),
(505, 'App\\Models\\Service', 13, 'd7c6d160-7f86-4867-bdf6-528c4c771ae3', 'image', 'Ayurvedic Massage , Ayurvedic head massage._2', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._2.png', 'image/png', 'public', 'public', 437731, '[]', '[]', '[]', '[]', 5, '2024-06-22 07:07:59', '2024-06-22 07:07:59'),
(506, 'App\\Models\\Service', 13, '29114415-c25f-4b2d-bdd3-0bf008f7c965', 'image', 'Ayurvedic Massage , Ayurvedic head massage._3', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._3.png', 'image/png', 'public', 'public', 331934, '[]', '[]', '[]', '[]', 6, '2024-06-22 07:07:59', '2024-06-22 07:07:59'),
(507, 'App\\Models\\Service', 13, '8694ee9f-10fa-48f6-a228-d3d7676f2ec7', 'thumbnail', 'Ayurvedic Massage , Ayurvedic head massage._1', 'Ayurvedic-Massage-,-Ayurvedic-head-massage._1.png', 'image/png', 'public', 'public', 446288, '[]', '[]', '[]', '[]', 7, '2024-06-22 07:07:59', '2024-06-22 07:07:59'),
(510, 'App\\Models\\Service', 12, '43e68557-cd25-4467-9fff-c9595bff9965', 'image', 'Bathroom & Kitchen Deep Cleaning_2', 'Bathroom-&-Kitchen-Deep-Cleaning_2.jpg', 'image/jpeg', 'public', 'public', 198462, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:09:05', '2024-06-22 11:09:05'),
(511, 'App\\Models\\Service', 12, '62636a7b-45cd-4131-8c18-da30ed500d53', 'image', 'Bathroom & Kitchen Deep Cleaning_3', 'Bathroom-&-Kitchen-Deep-Cleaning_3.jpg', 'image/jpeg', 'public', 'public', 207574, '[]', '[]', '[]', '[]', 6, '2024-06-22 11:09:05', '2024-06-22 11:09:05'),
(512, 'App\\Models\\Service', 12, '89ea7792-cfbe-43d5-a134-2e35165a2d6c', 'thumbnail', 'Bathroom & Kitchen Deep Cleaning_1', 'Bathroom-&-Kitchen-Deep-Cleaning_1.jpg', 'image/jpeg', 'public', 'public', 204474, '[]', '[]', '[]', '[]', 7, '2024-06-22 11:09:05', '2024-06-22 11:09:05'),
(513, 'App\\Models\\Service', 5, 'f1a6044d-9289-4293-97f5-720246540135', 'image', 'Custom Furniture Making_2', 'Custom-Furniture-Making_2.jpg', 'image/jpeg', 'public', 'public', 296477, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:09:47', '2024-06-22 11:09:47'),
(514, 'App\\Models\\Service', 5, 'e6d0f526-2119-477b-b7cc-b7683823e7e2', 'image', 'Custom Furniture Making_3', 'Custom-Furniture-Making_3.jpg', 'image/jpeg', 'public', 'public', 267180, '[]', '[]', '[]', '[]', 6, '2024-06-22 11:09:47', '2024-06-22 11:09:47'),
(515, 'App\\Models\\Service', 5, 'e810d315-e47f-4579-84f8-30b222ec7be4', 'thumbnail', 'Custom Furniture Making_1', 'Custom-Furniture-Making_1.jpg', 'image/jpeg', 'public', 'public', 288119, '[]', '[]', '[]', '[]', 7, '2024-06-22 11:09:47', '2024-06-22 11:09:47'),
(516, 'App\\Models\\Service', 6, 'd9caf90a-c1e1-48da-b5df-5e73bfb070d3', 'image', 'Electrical Wiring and Installation_2', 'Electrical-Wiring-and-Installation_2.jpg', 'image/jpeg', 'public', 'public', 296283, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:10:36', '2024-06-22 11:10:36'),
(517, 'App\\Models\\Service', 6, '0cacf702-fd10-401c-9446-59b24ef21405', 'image', 'Electrical Wiring and Installation_3', 'Electrical-Wiring-and-Installation_3.jpg', 'image/jpeg', 'public', 'public', 208329, '[]', '[]', '[]', '[]', 6, '2024-06-22 11:10:36', '2024-06-22 11:10:36'),
(518, 'App\\Models\\Service', 6, '2b7699e2-d7dc-4ecb-87e7-2ab9ea40374a', 'thumbnail', 'Electrical Wiring and Installation_1', 'Electrical-Wiring-and-Installation_1.jpg', 'image/jpeg', 'public', 'public', 253865, '[]', '[]', '[]', '[]', 7, '2024-06-22 11:10:36', '2024-06-22 11:10:36'),
(519, 'App\\Models\\Service', 4, '6fe3027e-9b29-4b07-ac45-484ed45392a1', 'image', 'Office Cleaning Service_2', 'Office-Cleaning-Service_2.jpg', 'image/jpeg', 'public', 'public', 214195, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:11:23', '2024-06-22 11:11:23'),
(520, 'App\\Models\\Service', 4, 'c01e366d-81f2-4112-bf8c-c39be674e5e3', 'image', 'Office Cleaning Service_3', 'Office-Cleaning-Service_3.jpg', 'image/jpeg', 'public', 'public', 284154, '[]', '[]', '[]', '[]', 6, '2024-06-22 11:11:23', '2024-06-22 11:11:23'),
(521, 'App\\Models\\Service', 4, '4ee04666-3f78-4326-8421-da0720f8dd03', 'thumbnail', 'Office Cleaning Service_1', 'Office-Cleaning-Service_1.jpg', 'image/jpeg', 'public', 'public', 217130, '[]', '[]', '[]', '[]', 7, '2024-06-22 11:11:23', '2024-06-22 11:11:23'),
(522, 'App\\Models\\Service', 11, '6fd63b40-6bd0-4223-9a34-a3d38c39dc35', 'image', 'Sofa & Carpet Deep Cleaning_2', 'Sofa-&-Carpet-Deep-Cleaning_2.jpg', 'image/jpeg', 'public', 'public', 244189, '[]', '[]', '[]', '[]', 3, '2024-06-22 11:11:57', '2024-06-22 11:11:57'),
(523, 'App\\Models\\Service', 11, '0613d55c-5f43-49f1-a894-15777022f508', 'image', 'Sofa & Carpet Deep Cleaning_3', 'Sofa-&-Carpet-Deep-Cleaning_3.jpg', 'image/jpeg', 'public', 'public', 187623, '[]', '[]', '[]', '[]', 4, '2024-06-22 11:11:57', '2024-06-22 11:11:57'),
(524, 'App\\Models\\Service', 11, 'c67a090b-af41-4d55-94b6-42f8dba16f76', 'thumbnail', 'Sofa & Carpet Deep Cleaning_1', 'Sofa-&-Carpet-Deep-Cleaning_1.jpg', 'image/jpeg', 'public', 'public', 204743, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:11:57', '2024-06-22 11:11:57'),
(525, 'App\\Models\\Service', 3, '9c5ee16d-abe7-44c9-b251-d2a6eba3f9c9', 'image', 'Window Air Conditioner Repair_2', 'Window-Air-Conditioner-Repair_2.jpg', 'image/jpeg', 'public', 'public', 289480, '[]', '[]', '[]', '[]', 5, '2024-06-22 11:12:57', '2024-06-22 11:12:57'),
(526, 'App\\Models\\Service', 3, '66342508-86c5-4778-a88d-dcca56ec2c77', 'image', 'Window Air Conditioner Repair_3', 'Window-Air-Conditioner-Repair_3.jpg', 'image/jpeg', 'public', 'public', 242603, '[]', '[]', '[]', '[]', 6, '2024-06-22 11:12:57', '2024-06-22 11:12:57'),
(527, 'App\\Models\\Service', 3, '8e3dc74c-1305-4043-9b67-319e4f1ba2ef', 'thumbnail', 'Window Air Conditioner Repair_1', 'Window-Air-Conditioner-Repair_1.jpg', 'image/jpeg', 'public', 'public', 231947, '[]', '[]', '[]', '[]', 7, '2024-06-22 11:12:57', '2024-06-22 11:12:57'),
(529, 'App\\Models\\Category', 13, 'ff84ed1a-bc34-44ed-b337-310b34044747', 'image', 'fi_3672490', 'fi_3672490.png', 'image/png', 'public', 'public', 4263, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:15:42', '2024-06-24 10:15:42'),
(530, 'App\\Models\\Currency', 2, '45aebc15-19a6-47e2-93ad-e83253cfc5b7', 'currency', 'in', 'in.png', 'image/png', 'public', 'public', 3206, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:18:35', '2024-06-24 10:18:35'),
(531, 'App\\Models\\Currency', 1, 'cbcf5690-e327-40d9-93fd-1e87c312752d', 'currency', 'us', 'us.png', 'image/png', 'public', 'public', 1630, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:19:54', '2024-06-24 10:19:54'),
(534, 'App\\Models\\Currency', 3, 'e5896ead-98a5-49d7-a77e-7fde812b8830', 'currency', 'au', 'au.png', 'image/png', 'public', 'public', 4810, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:24:55', '2024-06-24 10:24:55'),
(535, 'App\\Models\\Currency', 4, 'b4c4f410-4f2a-4e80-8a3b-d2ccb427b2e8', 'currency', 'de', 'de.png', 'image/png', 'public', 'public', 982, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:25:08', '2024-06-24 10:25:08'),
(536, 'App\\Models\\Banner', 3, '785b677b-bddd-40c2-8746-55faba67c56b', 'image', 'Banner 7', 'Banner-7.png', 'image/png', 'public', 'public', 125576, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:29:26', '2024-06-24 10:29:26'),
(537, 'App\\Models\\Banner', 3, 'c411ed12-4f4f-4765-bdd5-4f5a25bcf7c2', 'image', 'Banner 8', 'Banner-8.png', 'image/png', 'public', 'public', 166331, '[]', '[]', '[]', '[]', 2, '2024-06-24 10:29:26', '2024-06-24 10:29:26'),
(538, 'App\\Models\\Banner', 4, '7188d2b8-746d-4189-b91a-700baba49c47', 'image', 'Banner 9', 'Banner-9.png', 'image/png', 'public', 'public', 203642, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:29:49', '2024-06-24 10:29:49'),
(539, 'App\\Models\\Banner', 4, 'f17f53a5-1902-4765-95a8-aa01037c96b3', 'image', 'Banner 10', 'Banner-10.png', 'image/png', 'public', 'public', 172009, '[]', '[]', '[]', '[]', 2, '2024-06-24 10:29:49', '2024-06-24 10:29:49'),
(540, 'App\\Models\\Banner', 4, '0a9718f9-5eb1-427d-acb9-62f5b401daab', 'image', 'Banner 11', 'Banner-11.png', 'image/png', 'public', 'public', 184283, '[]', '[]', '[]', '[]', 3, '2024-06-24 10:29:49', '2024-06-24 10:29:49'),
(541, 'App\\Models\\Banner', 2, '761a2a2a-6638-44af-b5da-295eb0a1ebf4', 'image', '2', '2.png', 'image/png', 'public', 'public', 92262, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:30:19', '2024-06-24 10:30:19'),
(542, 'App\\Models\\Banner', 1, '54ad94f7-f710-4212-8229-fe9e8a72242a', 'image', '1', '1.png', 'image/png', 'public', 'public', 55080, '[]', '[]', '[]', '[]', 1, '2024-06-24 10:30:33', '2024-06-24 10:30:33'),
(543, 'App\\Models\\Setting', 1, 'c5488836-637a-4d94-a467-09c1fcbc4d9f', 'light_logo', 'Logo-Light', 'Logo-Light.png', 'image/png', 'public', 'public', 9981, '[]', '[]', '[]', '[]', 1, '2024-07-22 08:27:30', '2024-07-22 08:27:30'),
(544, 'App\\Models\\Setting', 1, 'a0c9d90c-84a9-4913-8069-27ad39feae10', 'dark_logo', 'logo', 'logo.png', 'image/png', 'public', 'public', 29355, '[]', '[]', '[]', '[]', 2, '2024-07-22 08:27:30', '2024-07-22 08:27:30'),
(545, 'App\\Models\\Setting', 1, '9b141068-647c-4a8b-9edc-52443171eba1', 'favicon', 'faviconIcon', 'faviconIcon.png', 'image/png', 'public', 'public', 1594, '[]', '[]', '[]', '[]', 3, '2024-07-22 08:27:30', '2024-07-22 08:27:30'),
(546, 'App\\Models\\Setting', 1, '4295bb78-98d1-45e7-85a1-79f34d757861', 'light_logo', 'Logo-Light', 'Logo-Light.png', 'image/png', 'public', 'public', 9981, '[]', '[]', '[]', '[]', 4, '2024-07-22 08:33:14', '2024-07-22 08:33:14'),
(547, 'App\\Models\\Setting', 1, '10649643-b085-4e79-b7c7-527cd7e8a7bd', 'dark_logo', 'logo-dark', 'logo-dark.png', 'image/png', 'public', 'public', 1360, '[]', '[]', '[]', '[]', 5, '2024-07-22 08:33:14', '2024-07-22 08:33:14'),
(549, 'App\\Models\\User', 3, '2f06a540-d5c6-4f3f-9d56-d02d946dac27', 'profile_image', 'scaled_1000074061', 'scaled_1000074061.png', 'image/png', 'public', 'public', 181815, '[]', '[]', '[]', '[]', 1, '2024-07-23 01:03:05', '2024-07-23 01:03:05'),
(551, 'App\\Models\\User', 4, 'c976bb32-f339-4991-a109-8e4d2eb9504e', 'profile_image', '3', '3.png', 'image/png', 'public', 'public', 228235, '[]', '[]', '[]', '[]', 1, '2024-07-23 02:05:49', '2024-07-23 02:05:49'),
(552, 'App\\Models\\ServiceProof', 1, '3fdf3283-ae9f-41c3-aff0-e39a7f1334b3', 'service_proof', 'scaled_65a3eb72-375a-4370-8c9e-745c508a77518760960970164114675', 'scaled_65a3eb72-375a-4370-8c9e-745c508a77518760960970164114675.jpg', 'image/jpeg', 'public', 'public', 144088, '[]', '[]', '[]', '[]', 1, '2024-07-23 02:37:32', '2024-07-23 02:37:32'),
(553, 'App\\Models\\ServiceProof', 2, 'fd9b4a50-8b35-4b45-8179-7cad883d7f6b', 'service_proof', 'scaled_Bathroom-&-Kitchen-Deep-Cleaning_2', 'scaled_Bathroom-&-Kitchen-Deep-Cleaning_2.jpg', 'image/jpeg', 'public', 'public', 29747, '[]', '[]', '[]', '[]', 1, '2024-07-24 01:30:55', '2024-07-24 01:30:55'),
(554, 'App\\Models\\ServiceProof', 3, '263473da-b08b-474c-a1c4-6a51c92bf219', 'service_proof', 'scaled_7c5234ce-a501-4daa-b810-2ab9903aac8d6458234268731502052', 'scaled_7c5234ce-a501-4daa-b810-2ab9903aac8d6458234268731502052.jpg', 'image/jpeg', 'public', 'public', 920086, '[]', '[]', '[]', '[]', 1, '2024-07-24 02:21:02', '2024-07-24 02:21:02'),
(555, 'App\\Models\\Page', 5, 'bfa66e2a-fd5b-46c1-8f9e-45f58a413519', 'app_icon', '24-support', '24-support.png', 'image/png', 'public', 'public', 1883, '[]', '[]', '[]', '[]', 1, '2024-08-02 09:38:03', '2024-08-02 09:38:03'),
(556, 'App\\Models\\Page', 4, '71fb6874-27b4-4b8f-b484-c0a371cdd8a4', 'app_icon', 'info-circle', 'info-circle.png', 'image/png', 'public', 'public', 2062, '[]', '[]', '[]', '[]', 1, '2024-08-02 09:38:19', '2024-08-02 09:38:19'),
(557, 'App\\Models\\Page', 3, 'f940ba37-3336-4f9f-991f-524bf9410a4d', 'app_icon', 'Coin', 'Coin.png', 'image/png', 'public', 'public', 2210, '[]', '[]', '[]', '[]', 1, '2024-08-02 09:38:34', '2024-08-02 09:38:34'),
(558, 'App\\Models\\Page', 2, 'fa460f4a-978a-4c8b-960b-6a21d01aded1', 'app_icon', 'Cancellation', 'Cancellation.png', 'image/png', 'public', 'public', 1635, '[]', '[]', '[]', '[]', 1, '2024-08-02 09:38:49', '2024-08-02 09:38:49'),
(559, 'App\\Models\\Page', 1, 'e08d75db-ab03-4b11-925a-7432e1fd35db', 'app_icon', 'Privacy', 'Privacy.png', 'image/png', 'public', 'public', 1536, '[]', '[]', '[]', '[]', 1, '2024-08-02 09:39:10', '2024-08-02 09:39:10'),
(560, 'App\\Models\\User', 2, 'f0d1866b-db4d-42aa-8ac8-a4227adfd077', 'image', '1', '1.png', 'image/png', 'public', 'public', 160914, '[]', '[]', '[]', '[]', 1, '2024-08-21 10:24:54', '2024-08-21 10:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_24_050852_create_seeders_table', 1),
(6, '2023_06_19_085426_create_media_table', 1),
(7, '2023_06_27_135121_create_permission_tables', 1),
(8, '2023_06_29_080345_create_taxes_table', 1),
(9, '2023_07_05_065133_setup_countries_table', 1),
(10, '2023_07_09_065211_create_zones_table', 1),
(11, '2023_07_10_043819_create_category_table', 1),
(12, '2023_07_19_122313_create_documents_table', 1),
(13, '2023_07_22_091302_create_user_documents_table', 1),
(15, '2023_07_26_055206_create_services_table', 1),
(16, '2023_07_29_090254_create_addresses_table', 1),
(17, '2023_08_24_081526_create_service_packages_table', 1),
(18, '2023_08_25_102424_create_currencies_table', 1),
(19, '2023_08_26_091958_create_blogs_table', 1),
(20, '2023_08_28_092234_create_tags_table', 1),
(21, '2023_08_29_123904_create_bookings_table', 1),
(22, '2023_08_29_125054_create_banners_table', 1),
(23, '2023_09_02_065555_create_time_slots_table', 1),
(24, '2023_09_08_134429_create_wallets_table', 1),
(25, '2023_09_12_093347_create_settings_table', 1),
(26, '2023_09_13_044525_create_time_zones_table', 1),
(27, '2023_09_16_051532_create_favourite_lists_table', 1),
(28, '2023_09_30_060752_create_pages_table', 1),
(29, '2023_10_06_041035_create_rating_table', 1),
(30, '2023_10_06_062104_create_reviews_table', 1),
(31, '2023_10_26_110014_create_languages_table', 1),
(32, '2023_10_26_121530_create_user_expertise_services_table', 1),
(33, '2023_10_31_084153_create_companies_table', 1),
(34, '2023_10_31_141434_create_bank_details_table', 1),
(35, '2023_11_07_110855_create_notifications_table', 1),
(36, '2023_11_18_133437_create_provider_wallets_table', 1),
(37, '2023_11_18_134114_create_provider_transactions_table', 1),
(38, '2023_12_05_062849_create_payment_gateways_table', 1),
(39, '2023_12_11_135826_create_booking_reason_logs_table', 1),
(40, '2023_12_12_132218_create_booking_status_logs_table', 1),
(41, '2023_12_28_055631_add_column_to_addresses_table', 1),
(42, '2023_12_28_122944_add_column_to_users_table', 1),
(43, '2023_12_30_054108_create_service_availabilities_table', 1),
(44, '2023_12_30_055849_create_service_address_table', 1),
(45, '2024_01_08_110422_create_commission_histories_table', 1),
(46, '2024_01_23_095945_create_plans_table', 1),
(47, '2024_01_23_112804_create_user_subscriptions_table', 1),
(48, '2024_01_30_174650_create_jobs_table', 1),
(49, '2024_01_31_160601_create_withdraw_requests_table', 1),
(50, '2024_02_12_150305_create_locals_table', 1),
(51, '2024_04_13_142107_create_service_proofs_table', 1),
(52, '2024_04_19_172431_create_extra_charges_table', 1),
(53, '2024_05_20_105814_create_service_faqs_table', 1),
(54, '2024_05_24_115130_create_push_notifications_table', 1),
(55, '2024_05_31_045337_create_system_langs_table', 1),
(56, '2023_07_24_055205_create_coupons_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 22),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 30),
(3, 'App\\Models\\User', 31),
(3, 'App\\Models\\User', 32),
(3, 'App\\Models\\User', 33),
(3, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35),
(4, 'App\\Models\\User', 36),
(4, 'App\\Models\\User', 37),
(4, 'App\\Models\\User', 38),
(4, 'App\\Models\\User', 39),
(4, 'App\\Models\\User', 40),
(4, 'App\\Models\\User', 41),
(4, 'App\\Models\\User', 42),
(4, 'App\\Models\\User', 43),
(4, 'App\\Models\\User', 44),
(4, 'App\\Models\\User', 45),
(4, 'App\\Models\\User', 46),
(4, 'App\\Models\\User', 47),
(4, 'App\\Models\\User', 48),
(4, 'App\\Models\\User', 49),
(4, 'App\\Models\\User', 50),
(4, 'App\\Models\\User', 51),
(4, 'App\\Models\\User', 52),
(4, 'App\\Models\\User', 53),
(4, 'App\\Models\\User', 54),
(4, 'App\\Models\\User', 55),
(4, 'App\\Models\\User', 56),
(4, 'App\\Models\\User', 57),
(4, 'App\\Models\\User', 58),
(4, 'App\\Models\\User', 59),
(4, 'App\\Models\\User', 60),
(4, 'App\\Models\\User', 61),
(4, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `actions`, `created_at`, `updated_at`) VALUES
(1, 'roles', '{\"index\":\"backend.role.index\",\"create\":\"backend.role.create\",\"edit\":\"backend.role.edit\",\"destroy\":\"backend.role.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(2, 'bank_details', '{\"index\":\"backend.bank_detail.index\",\"create\":\"backend.bank_detail.create\",\"edit\":\"backend.bank_detail.edit\",\"destroy\":\"backend.bank_detail.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3, 'service_categories', '{\"index\":\"backend.service_category.index\",\"create\":\"backend.service_category.create\",\"edit\":\"backend.service_category.edit\",\"destroy\":\"backend.service_category.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(4, 'blog_categories', '{\"index\":\"backend.blog_category.index\",\"create\":\"backend.blog_category.create\",\"edit\":\"backend.blog_category.edit\",\"destroy\":\"backend.blog_category.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(5, 'services', '{\"index\":\"backend.service.index\",\"create\":\"backend.service.create\",\"edit\":\"backend.service.edit\",\"destroy\":\"backend.service.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(6, 'plans', '{\"index\":\"backend.plan.index\",\"create\":\"backend.plan.create\",\"edit\":\"backend.plan.edit\",\"destroy\":\"backend.plan.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(7, 'service_packages', '{\"index\":\"backend.service-package.index\",\"create\":\"backend.service-package.create\",\"edit\":\"backend.service-package.edit\",\"destroy\":\"backend.service-package.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(8, 'bookings', '{\"index\":\"backend.booking.index\",\"create\":\"backend.booking.create\",\"edit\":\"backend.booking.edit\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(9, 'providers', '{\"index\":\"backend.provider.index\",\"create\":\"backend.provider.create\",\"edit\":\"backend.provider.edit\",\"destroy\":\"backend.provider.destroy\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(10, 'provider_wallets', '{\"index\":\"backend.provider_wallet.index\",\"credit\":\"backend.provider_wallet.credit\",\"debit\":\"backend.provider_wallet.debit\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(11, 'commission_histories', '{\"index\":\"backend.commission_history.index\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(12, 'withdraw_requests', '{\"index\":\"backend.withdraw_request.index\",\"create\":\"backend.withdraw_request.create\",\"action\":\"backend.withdraw_request.action\"}', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(13, 'servicemen', '{\"index\":\"backend.serviceman.index\",\"create\":\"backend.serviceman.create\",\"edit\":\"backend.serviceman.edit\",\"destroy\":\"backend.serviceman.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(14, 'coupons', '{\"index\":\"backend.coupon.index\",\"create\":\"backend.coupon.create\",\"edit\":\"backend.coupon.edit\",\"destroy\":\"backend.coupon.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(15, 'wallets', '{\"index\":\"backend.wallet.index\",\"create\":\"backend.wallet.create\",\"edit\":\"backend.wallet.edit\",\"destroy\":\"backend.wallet.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(16, 'sliders', '{\"index\":\"backend.slider.index\",\"create\":\"backend.slider.create\",\"edit\":\"backend.slider.edit\",\"destroy\":\"backend.slider.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(17, 'reviews', '{\"index\":\"backend.review.index\",\"create\":\"backend.review.create\",\"destroy\":\"backend.review.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(18, 'earnings', '{\"index\":\"backend.earning.index\",\"create\":\"backend.earning.create\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(19, 'taxes', '{\"index\":\"backend.tax.index\",\"create\":\"backend.tax.create\",\"edit\":\"backend.tax.edit\",\"destroy\":\"backend.tax.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(20, 'users', '{\"index\":\"backend.user.index\",\"create\":\"backend.user.create\",\"edit\":\"backend.user.edit\",\"destroy\":\"backend.user.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(21, 'payment_transactions', '{\"index\":\"backend.payment_transaction.index\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(22, 'documents', '{\"index\":\"backend.document.index\",\"create\":\"backend.document.create\",\"edit\":\"backend.document.edit\",\"destroy\":\"backend.document.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(23, 'currencies', '{\"index\":\"backend.currency.index\",\"create\":\"backend.currency.create\",\"edit\":\"backend.currency.edit\",\"destroy\":\"backend.currency.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(24, 'tags', '{\"index\":\"backend.tag.index\",\"create\":\"backend.tag.create\",\"edit\":\"backend.tag.edit\",\"destroy\":\"backend.tag.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(25, 'blogs', '{\"index\":\"backend.blog.index\",\"create\":\"backend.blog.create\",\"edit\":\"backend.blog.edit\",\"destroy\":\"backend.blog.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(26, 'pages', '{\"index\":\"backend.page.index\",\"create\":\"backend.page.create\",\"edit\":\"backend.page.edit\",\"destroy\":\"backend.page.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(27, 'provider_time_slots', '{\"index\":\"backend.provider_time_slot.index\",\"create\":\"backend.provider_time_slot.create\",\"edit\":\"backend.provider_time_slot.edit\",\"destroy\":\"backend.provider_time_slot.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(28, 'provider_documents', '{\"index\":\"backend.provider_document.index\",\"create\":\"backend.provider_document.create\",\"edit\":\"backend.provider_document.edit\",\"destroy\":\"backend.provider_document.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(29, 'banners', '{\"index\":\"backend.banner.index\",\"create\":\"backend.banner.create\",\"edit\":\"backend.banner.edit\",\"destroy\":\"backend.banner.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(30, 'settings', '{\"index\":\"backend.setting.index\",\"create\":\"backend.setting.create\",\"edit\":\"backend.setting.edit\",\"destroy\":\"backend.setting.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(31, 'payment_methods', '{\"index\":\"backend.payment_method.index\",\"create\":\"backend.payment_method.create\",\"edit\":\"backend.payment_method.edit\",\"destroy\":\"backend.payment_method.destroy\"}', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(32, 'languages', '{\"index\":\"backend.language.index\",\"create\":\"backend.language.create\",\"edit\":\"backend.language.edit\",\"destroy\":\"backend.language.destroy\"}', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(33, 'push_notifications', '{\"index\":\"backend.push_notification.index\",\"create\":\"backend.push_notification.create\",\"edit\":\"backend.push_notification.edit\",\"destroy\":\"backend.push_notification.destroy\"}', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(34, 'zones', '{\"index\":\"backend.zone.index\",\"create\":\"backend.zone.create\",\"edit\":\"backend.zone.edit\",\"destroy\":\"backend.zone.destroy\"}', '2024-06-13 11:38:15', '2024-06-13 11:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0067a2a1-3073-4023-8a93-41a339fe2216', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741845 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:57:08', '2024-07-24 03:33:07'),
('013cda1a-822d-4d2c-bb39-d35f0801e752', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('02ca1b94-2342-4203-a07f-d4f9aa225ce7', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('03b287ae-b00e-41d2-bf18-1eb219386e3a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('04a64f1e-1c29-43ae-8d3f-8f3eceae3f05', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('0563a60b-0b99-463f-ba46-730c4b972d99', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('063197fc-6667-41de-abe3-9f51080dfa79', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('0803a5a7-5873-4a9f-8149-b09d6ffda4ee', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741833 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":10}', '2024-07-23 21:19:42', '2024-07-23 04:54:04', '2024-07-23 21:19:42'),
('0a35771f-881c-4b16-b5fb-33271af411be', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('0ae712ec-e130-4502-adfb-c77142082196', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741827 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":4}', '2024-07-23 03:43:52', '2024-07-22 23:08:55', '2024-07-23 03:43:52'),
('0b6758f5-a072-48bb-88ae-66acb572491c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('0c525b6e-18a9-4a6b-b03d-67f60a5528c6', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('0cce5206-1e21-4f01-90c2-ac5f00683f98', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('0f773d3a-3bd2-4f66-8e95-ccebedc646ac', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('0fb96b8d-57a3-4245-a462-5662c936cb78', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('1017d0ce-a3fd-4bfe-b516-c485dca61ca4', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('10e684b1-9df2-4808-ac40-a251b5b4d175', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('11b9cfc1-076a-465a-9e30-fb1f455cfc72', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('1237c6d5-b991-4215-8a99-5d8d5dfd7f45', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741825 is en route to your location.\",\"type\":\"booking\",\"booking_id\":2}', '2024-07-23 03:43:52', '2024-07-22 22:26:19', '2024-07-23 03:43:52'),
('1297c478-2527-48bf-b388-4d032fdbbd58', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('142882a2-f864-4e68-b8eb-47cb8cf16504', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('14ea38af-1596-4bbf-bdd7-5487141fffd3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('16df785b-1d60-4403-9742-7137d5b2f8c0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('1750b78c-75ed-4c5a-98e1-98913aa6233c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('186c415d-e3d6-4dc4-9634-9982ce27d9a6', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-13 13:38:24', '2024-06-15 07:19:54'),
('18df86e8-f386-4f70-a6bb-06f4f67c5544', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('1a3f670e-b926-45b2-b23f-2f25ef098445', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('1d137a72-bcb1-457f-b1e9-d9e043ae5952', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-24 00:22:36', '2024-07-24 01:38:32'),
('1e1a28c5-b5e1-4439-9fd2-d25aec73093d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('1f1dff43-5eef-433f-8f80-d072204b0f93', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('1f61d989-0713-49d5-92db-b4dcb5202041', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741847 has been cancelled. If you have any questions, please contact support.\",\"type\":\"booking\",\"booking_id\":32}', '2024-07-24 06:03:05', '2024-07-24 03:37:15', '2024-07-24 06:03:05'),
('1f8173eb-43dd-4d44-a665-6fc7a49d4c80', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('20b9527e-86d5-4540-951a-4b6aeb12a4c3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-13 13:52:49', '2024-06-15 07:19:54'),
('20e09378-d515-4d5a-b985-1ef27049705c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('22a2d42e-04d4-49c6-a8e9-16a4d7bf1fb1', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('22b55241-9485-4a77-bf18-aa026d43de4f', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('22e9e39a-7546-4fc9-b591-208981213b75', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('2467edcb-76ce-45d0-9896-bb078ce006c7', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('25c6f2f6-9b1c-4cd7-9428-14db15584fb0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('29b0a2a3-26dc-435c-99a0-9e1a44a39c40', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741841 is en route to your location.\",\"type\":\"booking\",\"booking_id\":26}', '2024-07-24 03:33:07', '2024-07-24 02:46:09', '2024-07-24 03:33:07'),
('2a2c44c8-c56c-46a1-891c-32bf29d1c308', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('2ce32345-fee5-4ce7-b9ca-b6b26a54a067', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741829 is en route to your location.\",\"type\":\"booking\",\"booking_id\":6}', NULL, '2024-07-23 01:16:09', '2024-07-23 01:16:09'),
('2f26d5e5-e230-4710-b1c7-55783e0ac104', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-14 10:27:57', '2024-06-15 07:19:54'),
('3009d66c-7269-40b9-9681-5fd685c13bf9', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741831 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":8}', '2024-07-23 03:43:52', '2024-07-23 02:17:16', '2024-07-23 03:43:52'),
('33ab82ab-dfab-42b1-8338-bc0644f79c75', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('34d3af33-83fc-42f4-acae-289b04d6d15a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-13 13:15:15', '2024-06-15 07:19:54'),
('34ed2d00-a04b-4c60-abdd-4ed3f0944adc', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:26:20', '2024-07-24 01:38:32'),
('35486dd2-b5e8-4fc4-8a81-df7445649fb3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('366032fa-e10c-4c15-91be-4e13ce8ec211', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('36b6fe0e-e0c8-4dd0-b830-e7e2d6a93caa', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:32:01', '2024-07-24 01:38:32'),
('37755530-4ce2-43ee-9d62-2c2afc554845', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('37811007-4e1e-45b9-999e-388548a36f4d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('38fbc870-0945-4188-825c-e43c11f573d0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('3a7030a8-a6c3-4309-8fb3-6c34d06e3e80', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-14 09:29:49', '2024-06-15 07:19:54'),
('3b3eedf0-3493-42c2-8bcd-cc26c1ee1b67', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('3d32b184-9dde-42a4-876f-6a17fc4c93f4', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741843 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":28}', '2024-07-24 03:33:07', '2024-07-24 02:53:17', '2024-07-24 03:33:07'),
('3d5c7788-d2c5-42a6-9375-9a32c3402f1f', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:14:15', '2024-07-24 01:38:32'),
('415030a4-01a3-4cde-9317-5e8c574b0333', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('43121772-80ed-4d3a-b60b-84b88a033b40', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('44775a94-b89d-44fc-a870-8ae9cfd37ac1', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('45365fed-d0c1-44d1-8a49-6583592b5e6e', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":20}', '2024-07-24 01:38:32', '2024-07-24 01:25:33', '2024-07-24 01:38:32'),
('4660fea3-3381-43d2-84ee-55c361d3ba53', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741833 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":10}', '2024-07-23 21:19:42', '2024-07-23 04:54:11', '2024-07-23 21:19:42'),
('4775773c-3fc3-42b2-87dd-17ef22ae422c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('493a0834-2496-4b2b-8f81-2bfb9398e941', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('49661057-b314-4d59-ae05-315c9e84de01', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 22:59:33', '2024-07-24 01:38:32'),
('4a22427f-8255-4dad-b9bd-803d524b14b0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('4a8399d3-3d4c-4cf1-a69f-4d1a977292bb', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741841 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":26}', '2024-07-24 03:33:07', '2024-07-24 02:45:29', '2024-07-24 03:33:07'),
('4aa5eb6e-78c4-49fc-ac3d-81f1160b3085', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741831 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":8}', '2024-07-23 03:43:52', '2024-07-23 02:12:26', '2024-07-23 03:43:52'),
('4b8e0325-5ac5-4798-83e5-03f4f394ea75', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('4bfb03a8-ee16-4f1b-bbb2-c70888655d58', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('4c2a1d0b-8130-405c-adaf-0711b609f2e4', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('4d0548f6-efbb-4985-8e1b-9cdc1f3db8f8', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('4e72900b-1851-4d4c-8bb3-1cd6f57a2b72', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741843 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":28}', '2024-07-24 03:33:07', '2024-07-24 02:50:46', '2024-07-24 03:33:07'),
('4f1a2e6d-a8e7-44bf-815d-62da244a2062', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('4f227e7d-a132-4cbc-a200-00e11bacfe03', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741831 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":8}', '2024-07-23 03:43:52', '2024-07-23 02:17:45', '2024-07-23 03:43:52'),
('4f757349-e0cf-477e-ada9-618553ecf12a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('50a1ae1b-932c-4a4c-8253-1b6d6a07f4b9', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741825 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":2}', '2024-07-23 03:43:52', '2024-07-22 22:18:06', '2024-07-23 03:43:52'),
('51af2367-5935-4423-a345-4fbec1e33bdd', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('56558139-dda2-4509-8c68-c13ebb2e7b92', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('56d3e514-8943-478c-980b-e637cd83c610', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('584839b1-7b9d-42ff-aa57-138ca81d7ad3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('5ab0b2f2-e696-46d5-a090-9b92121044d9', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('5b09d1f5-8626-4ea1-be3a-c883bf1ae72e', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('5de20c31-4412-4ad6-a887-089a48b407ca', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741825 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":2}', '2024-07-23 03:43:52', '2024-07-22 22:27:43', '2024-07-23 03:43:52'),
('5ef3597e-42f8-4b9c-ab81-e2220976daaa', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-14 10:31:40', '2024-07-23 03:43:52'),
('5f00b6aa-6c47-4f83-bf9d-681e370ae667', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('5f9a02a4-c4d6-4e37-bd3d-7bfe2cf4a1b3', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741845 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:56:22', '2024-07-24 03:33:07'),
('60786969-904c-45cc-a391-d557bfb06d58', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('61d02569-2829-4deb-bf05-74f03e7ff42c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('61d2677e-0715-4bd7-89d5-841b4e136894', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('658cff31-c5a1-4523-ada1-bc1f46addc58', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('65c8dd98-ee14-4c70-b71f-36e689deff1e', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('662d6f17-7f8c-4f2c-8c7f-a9a352971681', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('6857329e-a920-4847-99a9-a1fe837c7bae', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('693b27fc-4866-4eda-ab7f-183f2558509b', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('6d01cc4e-6263-4b69-bb7c-6c70af6d48ec', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:14:14', '2024-07-24 01:38:32'),
('6ebb09a6-aaad-4c6a-9bed-2e6e93116b72', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-13 13:33:01', '2024-07-23 03:43:52');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('6f71e85b-bdcb-464c-aba7-3c7ac7d5b0e3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('70f3cee9-b978-401f-9346-548023bc2a48', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741837 is en route to your location.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:24:19', '2024-07-24 01:38:32'),
('736fe1a8-f849-4e46-ab22-e748d4524d88', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-13 13:48:52', '2024-07-23 03:43:52'),
('7495a1f9-f52a-4a96-8256-8f758add322c', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741835 is en route to your location.\",\"type\":\"booking\",\"booking_id\":20}', '2024-07-24 01:38:32', '2024-07-24 01:28:21', '2024-07-24 01:38:32'),
('74cc4e99-c0c4-41d7-b4bc-085042e6e9b9', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('78018985-3565-40b6-89ef-6b9e87a8b3c6', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('7844b1c3-ce9f-4f48-a8f0-39da3411e9aa', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('7bcb058d-f753-47ce-bd0c-340887cd00e5', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741829 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":6}', NULL, '2024-07-23 01:15:36', '2024-07-23 01:15:36'),
('7bf86295-c5ee-4572-86af-8af816c69949', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('7d3bb7ec-7874-4dcb-ac54-a5ae5df2a44a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('7e2c2fa4-a987-4a95-957f-63a4f09d5f38', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('7f110a18-6599-478c-adc5-d7ad51a32f2b', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('8025ff34-414a-41ff-9e4f-68aa45253b8d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('81073969-36e9-4f20-9c81-0ef3169d5e55', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('81f60764-b31b-4b8e-9eaf-081ef5b64ddc', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('85508dcf-8fc6-4e47-a7c0-6d3ea93c18ab', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('85544c9c-5a99-43f2-8d70-4815436b5180', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741843 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":28}', '2024-07-24 03:33:07', '2024-07-24 02:51:12', '2024-07-24 03:33:07'),
('8618c61a-81a3-4f86-b6e7-19f6ab37846b', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:32:02', '2024-07-24 01:38:32'),
('86a388e3-0f6a-45ec-beca-84ca5191fc0d', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:29:06', '2024-07-24 01:38:32'),
('88c6c28e-f88b-4e41-9cd1-18bff32b62db', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('8944015d-69c7-4b07-b630-c8a3c9b718ae', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('8aeae282-1955-47ca-b214-384fbf2ac4d2', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-14 09:29:49', '2024-07-23 03:43:52'),
('8bcd6e5a-61ed-4464-9012-0cce570c041c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('8d24e8ac-7525-4d6b-a95b-fb09a95729e9', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:24:30', '2024-07-24 01:38:32'),
('8f2aadb5-fba5-4200-a79a-17f44c22255a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('9135b90f-be82-45cb-9079-4469b1bdd1da', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('91de22a6-c194-484a-ae96-ba6c9a4eab3f', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741845 is en route to your location.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:56:55', '2024-07-24 03:33:07'),
('92008c01-952d-4624-ab8f-87cfb56c9492', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('92a09bd6-5aca-4204-874e-d7e0fc151bf8', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:23:41', '2024-07-24 01:38:32'),
('9323e6ae-a794-4ede-8de6-6bbed30660cf', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('95b23ee5-b156-48fb-87e5-0554b48584a8', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('95bc4b5f-655d-4fdb-ac28-f62526834dbc', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('98b7de5c-d7bf-4827-bad2-8deade227f97', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-14 10:19:50', '2024-06-15 07:19:54'),
('9a541afd-eb14-47f8-8968-8ba07ad43f55', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741834 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":15}', '2024-07-24 01:38:32', '2024-07-24 00:25:55', '2024-07-24 01:38:32'),
('9a98b487-1b06-4d5c-a22a-757c4b7ef5a5', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('9b1e215b-6e6b-4151-951c-df5b35b16239', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('9b696c18-31f6-4cc6-baa3-0672af23561b', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('9fa942a6-9fe7-49f4-bfb1-924441306dc5', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('9fc88222-0456-4aac-908a-76bb2acf67aa', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('a0b23bf7-418f-48f6-bda8-b1cd8990097c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('a0b9c1eb-2e5b-4bab-88cb-ab177d071bec', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('a0bf8698-5ad2-4667-ba0f-4c8890216ff0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('a0dbd9dd-a454-4db4-9b44-6576b6d0c467', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:32:28', '2024-07-24 01:38:32'),
('a1717aa9-659d-4588-b180-bdb19f549a8b', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741843 is en route to your location.\",\"type\":\"booking\",\"booking_id\":28}', '2024-07-24 03:33:07', '2024-07-24 02:53:03', '2024-07-24 03:33:07'),
('a1d29ff0-46f6-4d64-8730-c8392a8b039c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('a3027d9f-4377-49e6-8ec3-f3a0fbf992cc', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741839 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":24}', '2024-07-24 03:33:07', '2024-07-24 02:35:32', '2024-07-24 03:33:07'),
('a46669be-208c-4c1b-b032-dd393f0f97b3', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('a7a644de-1261-4521-bbfa-2eb1abf0f4ba', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:33:51', '2024-07-24 01:38:32'),
('a8c60ee6-7cfb-4c94-879d-c4d145e0bb93', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741829 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":6}', NULL, '2024-07-23 01:17:11', '2024-07-23 01:17:11'),
('a9c3573b-2803-43d7-a22f-e40d8fde7bff', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('acf7243d-0f5e-46f6-8720-7fa41efe73c2', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('af7f5753-763e-4804-bfdc-1bc19c10ca09', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('b0da6e2c-5a7d-4da5-a2e5-fd8449a07fe1', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('b217b73d-e745-4439-9748-4ec8553b840d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('b2458305-b46b-44a5-8761-3339af9fc590', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:31:17', '2024-07-24 01:38:32'),
('b3cd6db2-3c2b-4a12-9f8e-204d2fa23569', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:31:18', '2024-07-24 01:38:32'),
('b4181ad8-c8f0-47ba-9e0a-b22fc766bdce', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('b45e3b31-9852-47de-8fab-6ca6b96d7bae', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 13, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('b4dde46f-f739-47fd-b563-6fe677a53a5b', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":20}', '2024-07-24 01:38:32', '2024-07-24 01:28:37', '2024-07-24 01:38:32'),
('b56b0c8b-bc53-4f5d-b300-68d0623d2736', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('b684e012-28f0-4e6b-b729-c14f557b39ee', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741843 is on hold. We will update you as soon as possible.\",\"type\":\"booking\",\"booking_id\":28}', '2024-07-24 03:33:07', '2024-07-24 02:54:01', '2024-07-24 03:33:07'),
('b691f50c-24b6-495e-958e-772ad7ff3c73', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 18, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741829 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":6}', NULL, '2024-07-23 01:17:30', '2024-07-23 01:17:30'),
('b8884876-8590-494f-a0d6-9f14e8ebe86c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('ba64b090-a0f8-4940-a9e3-1e109dbfb74e', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('baa5c17e-0ca7-4eb6-b408-9fd1240620d5', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-13 13:38:24', '2024-07-23 03:43:52'),
('bb2c37e5-9baa-4cc4-aa1e-535d296b53e7', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('bc58b90b-7d4b-4fce-a9ac-9a6b92455a48', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741839 is en route to your location.\",\"type\":\"booking\",\"booking_id\":24}', '2024-07-24 03:33:07', '2024-07-24 02:42:16', '2024-07-24 03:33:07'),
('bcbc9dfc-3f6b-4419-9508-86c76f34835e', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741845 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:58:10', '2024-07-24 03:33:07'),
('bcf94aab-a6b8-4e11-92e6-5d9f79b77b21', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741831 is en route to your location.\",\"type\":\"booking\",\"booking_id\":8}', '2024-07-23 03:43:52', '2024-07-23 02:13:37', '2024-07-23 03:43:52'),
('bdf05575-9d9c-4e0d-b6e9-24355289866d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('bdfaee30-ba7b-4483-8acf-fdcb6805a45d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 7, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('c0c3adbf-225e-43d9-b16b-57e46b100e2a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('c0f46c1d-ac40-4cc4-8a40-98b3f7d36708', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('c1628bb0-7937-4b72-9e9f-9f928b56ffd7', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('c199b6d6-25e9-4ba1-b210-412f01505cdf', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-13 13:48:52', '2024-06-15 07:19:54'),
('c3c06e29-6d38-4f57-9944-df0896b1085c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('c4105598-976f-490e-aa91-3911f7227c4d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('c434bf96-70e9-480d-b0a3-59c132a5cd0a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('c4ee839b-e513-497d-9e5d-1307ccb9eb57', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 8, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('c65c9a84-7dcc-4d85-87e9-ec212c445e37', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('c7b470a5-1550-4b49-8dde-bd5fe0b0b936', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-14 10:31:40', '2024-06-15 07:19:54'),
('c924bbe6-f7d4-47c3-9246-452336196483', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('c982c3af-48d5-46bd-93c9-f66ac4c1b5f9', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('cbbe6c24-17c2-46ea-b80b-20817716254d', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 6, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Carlos Ramirez, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"22\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:38:24', '2024-06-13 13:38:24'),
('cd278ed0-a1c1-4220-9e17-9e938d522416', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('ce3dd936-37e8-45b8-8646-88ceab2c037e', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('cfcb6c12-82f4-4911-bbc1-6ad6d254cd5a', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('d11b84e9-4732-4f35-a71a-c07ea35e3ea2', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('d1a6eb25-9d9b-4e74-ab96-a544ac391118', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:32:15', '2024-07-24 01:38:32'),
('d1c559b5-9924-443f-99dd-261d5de0f1e4', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('d31db884-9b3a-4026-a404-bdc4b9c40c75', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:01:03', '2024-07-24 01:38:32'),
('d3aa97c1-8c7a-48d1-b8ed-16cf18bd4421', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('d4cc19a7-ce6a-4ec9-a9ff-da56e4a4d33c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('d7e7d553-6ab7-49d0-ba96-e990b085be3b', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('d9dc30e6-d7cf-42ab-98a6-42e577c7292e', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('d9e9c025-97b1-49cf-8640-51ccac41f4a6', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('db4acc48-8543-45e4-9566-cd476834c962', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 9, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('dcc50bb7-3362-40e7-86b7-455319487327', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('de9ef437-e7b4-4682-a683-8fd5b144f74c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-13 13:33:01', '2024-06-15 07:19:54'),
('deed50d4-3b4c-4eb4-be23-cdf0b25e30eb', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:33:02', '2024-07-24 01:38:32'),
('e0e4db29-f3dc-4bed-a57c-e49abd1a1ad0', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":20}', '2024-07-24 01:38:32', '2024-07-24 01:28:54', '2024-07-24 01:38:32'),
('e3044293-493a-4604-8fbc-8e0923fb4d92', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741835 is en route to your location.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:00:34', '2024-07-24 01:38:32'),
('e45babd3-b177-4af7-b71c-13f98394aeb0', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:27:57', '2024-06-14 10:27:57'),
('e60538f1-d7b5-414a-8981-5a9706cb0161', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:32:15', '2024-07-24 01:38:32'),
('e71f090c-75f7-4090-bd4b-3c721b862b87', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-14 10:16:21', '2024-07-23 03:43:52'),
('e7b2616e-2f75-428e-abdb-c3dc2dbfd765', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741825 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":2}', '2024-07-23 03:43:52', '2024-07-22 22:27:29', '2024-07-23 03:43:52'),
('e82c9a71-3c64-4378-ac45-afd77aa12907', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 16, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('e8e86c7c-6737-4015-bbba-b3274b508f38', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-13 13:15:15', '2024-07-23 03:43:52'),
('ea03f804-88b5-465f-96ef-fca31e95bd09', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 18, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Sarah Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"20\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:15:15', '2024-06-13 13:15:15'),
('eb964efc-2da9-4059-a981-97acab0290e0', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741845 is on hold. We will update you as soon as possible.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:57:42', '2024-07-24 03:33:07'),
('ebb3b576-e4bf-4616-bd60-32d3e4d04ab2', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 14, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('ebed99d7-4747-42e9-b63d-009112a01d0b', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741841 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":26}', '2024-07-24 03:33:07', '2024-07-24 02:46:20', '2024-07-24 03:33:07'),
('ed074fbd-9b03-4400-b37e-5fa96dacd51f', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:19:50', '2024-06-14 10:19:50'),
('ed9efffb-d9ee-4503-bdac-98853c42646c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('ee5cbf98-9ec7-4dd6-b087-60466d6e1a48', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741837 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":18}', '2024-07-24 01:38:32', '2024-07-24 00:34:53', '2024-07-24 01:38:32'),
('ef7e57c5-caee-4661-b102-b28d54ce4dd5', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Johnson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"32\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-14 10:19:50', '2024-07-23 03:43:52'),
('efeb74c7-56ae-41ac-9c48-847b1158be72', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"The provider for your booking #1073741833 is en route to your location.\",\"type\":\"booking\",\"booking_id\":10}', '2024-07-23 21:19:42', '2024-07-23 04:53:30', '2024-07-23 21:19:42'),
('f1c4768d-094d-48d9-bcac-30a8fdee7c55', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 12, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emily Turner, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"30\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 09:29:49', '2024-06-14 09:29:49'),
('f44a4a0e-1ce6-42a3-b9c5-1f41f0c13f55', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 5, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Smith, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"21\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:33:01', '2024-06-13 13:33:01'),
('f56f7a1e-0be4-4d58-96cf-7b92c99f6a41', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741834 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":15}', '2024-07-24 01:38:32', '2024-07-24 00:17:04', '2024-07-24 01:38:32'),
('f5c18828-258e-4dea-8dae-94a5404c4fdc', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741833 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":10}', '2024-07-23 21:19:42', '2024-07-23 04:51:30', '2024-07-23 21:19:42'),
('f5c4f5bc-b6b2-4865-9e5a-6f6a862324e1', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:17:10', '2024-07-24 01:38:32'),
('f5ca63d1-8520-4b63-846a-0d4b2f1e4bde', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 has been successfully completed. Thank you for choosing our service.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:17:11', '2024-07-24 01:38:32'),
('f666c92d-6e81-46a7-885c-64d22f0ffc55', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 10, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('f8408065-5a40-4b39-9503-5bc8934cc6fc', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 19, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:16:21', '2024-06-14 10:16:21'),
('f8d99266-28a3-4592-9882-c971142cd868', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741845 is on hold. We will update you as soon as possible.\",\"type\":\"booking\",\"booking_id\":30}', '2024-07-24 03:33:07', '2024-07-24 02:58:05', '2024-07-24 03:33:07'),
('f8e3a3f3-0553-48bf-8751-1d77c951fe59', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 1, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, John Doe, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"31\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-06-15 07:19:54', '2024-06-14 10:16:21', '2024-06-15 07:19:54'),
('f96cae79-517c-436f-b461-d5dbdf4ee9eb', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 17, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Maria Garcia, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"34\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-14 10:31:40', '2024-06-14 10:31:40'),
('fa8f67fe-630d-4474-b3ac-8a2beeab6b75', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 15, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:52:49', '2024-06-13 13:52:49'),
('fb7f5ac0-8442-4084-9256-f8c188925b6d', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741835 is ongoing. We will keep you informed of any updates.\",\"type\":\"booking\",\"booking_id\":16}', '2024-07-24 01:38:32', '2024-07-23 23:00:55', '2024-07-24 01:38:32'),
('fe73372a-c652-4968-a6fd-a3b188367d1c', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Mark Wilson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"33\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-14 10:27:57', '2024-07-23 03:43:52'),
('ff3ec9bf-eea8-4498-9147-93cb1a0dd52d', 'App\\Notifications\\UpdateBookingStatusNotification', 'App\\Models\\User', 2, '{\"title\":\"Booking status updated!\",\"message\":\"Your booking #1073741839 has been accepted by the provider. Thank you for your patience.\",\"type\":\"booking\",\"booking_id\":24}', '2024-07-24 03:33:07', '2024-07-24 02:35:20', '2024-07-24 03:33:07'),
('ff81b895-2f45-4d6f-8a82-f18a51984231', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 11, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Emma Thompson, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"23\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', NULL, '2024-06-13 13:48:52', '2024-06-13 13:48:52'),
('ffe86cc9-3046-4676-bc53-db70cc29bb13', 'App\\Notifications\\CreateProviderNotification', 'App\\Models\\User', 2, '{\"title\":\"New Provider registered!\",\"message\":\"Exciting News! A new provider, Priya Kapoor, has joined our website. Discover their incredible services and deals today. Also, stay tuned for updates on recent check request approvals and rejections.\",\"provider_id\":\"24\",\"type\":\"provider\",\"thumbnail\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/images\\/notification\\/Icon.png\"}', '2024-07-23 03:43:52', '2024-06-13 13:52:49', '2024-07-23 03:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL DEFAULT '1',
  `created_by_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `meta_title`, `meta_description`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Privacy Policy', '<div class=\"header\">\r\n<div class=\"container\">\r\n<p class=\"title\">Privacy Policy for Fixit User App UI kit</p>\r\n</div>\r\n</div>\r\n<div class=\"translations-content-container\">\r\n<div class=\"container\">\r\n<div id=\"en\" class=\"tab-content translations-content-item en visible\">\r\n<h1>Privacy Policy</h1>\r\n<p>Last updated: February 14, 2024</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the&nbsp;<a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\" rel=\"noopener\">Free Privacy Policy Generator</a>.</p>\r\n<h2>Interpretation and Definitions</h2>\r\n<h3>Interpretation</h3>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h3>Definitions</h3>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<ul>\r\n<li>\r\n<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n</li>\r\n<li>\r\n<p><strong>Application</strong>&nbsp;refers to Fixit User App UI kit, the software program provided by the Company.</p>\r\n</li>\r\n<li>\r\n<p><strong>Company</strong>&nbsp;(referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Fixit User App UI kit.</p>\r\n</li>\r\n<li>\r\n<p><strong>Country</strong>&nbsp;refers to: Gujarat, India</p>\r\n</li>\r\n<li>\r\n<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service</strong>&nbsp;refers to the Application.</p>\r\n</li>\r\n<li>\r\n<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n</li>\r\n<li>\r\n<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n</li>\r\n<li>\r\n<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n</li>\r\n</ul>\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n<h3>Types of Data Collected</h3>\r\n<h4>Personal Data</h4>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul>\r\n<li>\r\n<p>Email address</p>\r\n</li>\r\n<li>\r\n<p>First name and last name</p>\r\n</li>\r\n<li>\r\n<p>Phone number</p>\r\n</li>\r\n<li>\r\n<p>Address, State, Province, ZIP/Postal code, City</p>\r\n</li>\r\n<li>\r\n<p>Usage Data</p>\r\n</li>\r\n</ul>\r\n<h4>Usage Data</h4>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h4>Information Collected while Using the Application</h4>\r\n<p>While using Our Application, in order to provide features of Our Application, We may collect, with Your prior permission:</p>\r\n<ul>\r\n<li>\r\n<p>Information regarding your location</p>\r\n</li>\r\n<li>\r\n<p>Pictures and other information from your Device\'s camera and photo library</p>\r\n</li>\r\n</ul>\r\n<p>We use this information to provide features of Our Service, to improve and customize Our Service. The information may be uploaded to the Company\'s servers and/or a Service Provider\'s server or it may be simply stored on Your device.</p>\r\n<p>You can enable or disable access to this information at any time, through Your Device settings.</p>\r\n<h3>Use of Your Personal Data</h3>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n</li>\r\n<li>\r\n<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n</li>\r\n<li>\r\n<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n</li>\r\n<li>\r\n<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n</li>\r\n<li>\r\n<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n</li>\r\n<li>\r\n<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n</li>\r\n<li>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n</li>\r\n</ul>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul>\r\n<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n<h3>Retention of Your Personal Data</h3>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h3>Transfer of Your Personal Data</h3>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h3>Delete Your Personal Data</h3>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h3>Disclosure of Your Personal Data</h3>\r\n<h4>Business Transactions</h4>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h4>Law enforcement</h4>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h4>Other legal requirements</h4>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul>\r\n<li>Comply with a legal obligation</li>\r\n<li>Protect and defend the rights or property of the Company</li>\r\n<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n<li>Protect the personal safety of Users of the Service or the public</li>\r\n<li>Protect against legal liability</li>\r\n</ul>\r\n<h3>Security of Your Personal Data</h3>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h2>Children\'s Privacy</h2>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h2>Links to Other Websites</h2>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h2>Changes to this Privacy Policy</h2>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the \"Last updated\" date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h2>Contact Us</h2>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul>\r\n<li>By email:&nbsp;support@pixelstrap.com</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>', 'Privacy Policy', 'Privacy Policy', 1, 1, '2024-07-26 01:40:50', '2024-07-29 00:27:14', NULL),
(2, 'Cancellation Policy', '<p><strong>Cancellation and Refund Policy</strong></p>\r\n<p><strong>Introduction</strong></p>\r\n<p>we strive to provide our customers with the best possible service. We understand that sometimes plans change, and you may need to cancel or request a refund for your purchase. This policy outlines the conditions under which cancellations and refunds will be accepted.</p>\r\n<p><strong>1. Cancellation Policy</strong></p>\r\n<p><strong>1.1 Service Cancellations</strong></p>\r\n<ul>\r\n<li><strong>Advance Notice</strong>: Cancellations must be made at least 7 before the scheduled service time.</li>\r\n<li><strong>No-Shows</strong>: Failure to cancel and not showing up for the scheduled service will result in a full charge for the service.</li>\r\n</ul>\r\n<p><strong>1.2 Product Cancellations</strong></p>\r\n<ul>\r\n<li><strong>Order Processing</strong>: Orders can be canceled within 7 of placing the order, provided the product has not yet been shipped.</li>\r\n<li><strong>Shipped Orders</strong>: If the product has already been shipped, the order cannot be canceled, and you must follow our return policy for a refund.</li>\r\n</ul>\r\n<p><strong>4. Changes to This Policy</strong></p>\r\n<p>We reserve the right to update or modify this policy at any time. Changes will be effective immediately upon posting to our website. We encourage you to review this policy periodically to stay informed about our cancellation and refund practices.</p>', 'Cancellation Policy', 'Cancellation Policy', 1, 1, '2024-07-26 01:53:31', '2024-07-26 01:56:16', NULL),
(3, 'Refund Policy', '<p><strong>1. Refund Policy</strong></p>\r\n<p><strong>1.1 Service Refunds</strong></p>\r\n<ul>\r\n<li><strong>Eligibility</strong>: Refunds for services will only be issued if the cancellation is made in accordance with our cancellation policy.</li>\r\n<li><strong>Processing Time</strong>: Refunds will be processed within 7 business days after the cancellation request is approved.</li>\r\n</ul>\r\n<p><strong>1.2 Product Refunds</strong></p>\r\n<ul>\r\n<li><strong>Return Eligibility</strong>: Products must be returned in their original condition, unopened, and with all original packaging within [number of days] days of delivery to be eligible for a refund.</li>\r\n<li><strong>Return Shipping</strong>: Customers are responsible for the return shipping costs unless the product is defective or incorrect.</li>\r\n<li><strong>Refund Processing</strong>: Once the returned product is received and inspected, refunds will be processed within [number of days] business days. The refund will be issued to the original payment method.</li>\r\n</ul>\r\n<p><strong>1.3 Changes to This Policy</strong></p>\r\n<p>We reserve the right to update or modify this policy at any time. Changes will be effective immediately upon posting to our website. We encourage you to review this policy periodically to stay informed about our cancellation and refund practices.</p>', 'Refund Policy', 'Refund Policy', 1, 1, '2024-07-26 01:55:39', '2024-07-26 01:55:39', NULL),
(4, 'About us', '<p><strong>About Us</strong></p>\r\n<p><strong>Welcome to Fixit!</strong><br />We are a dedicated team of professionals committed to providing exceptional services and solutions tailored to meet your needs.</p>\r\n<p><strong>Our Mission</strong><br />Our mission is to deliver high-quality services that exceed our clients\' expectations. We strive to create innovative solutions that help our clients achieve their goals and drive success. Integrity, excellence, and customer satisfaction are the core values that guide us in everything we do.</p>\r\n<p><strong>Our Vision</strong><br />Our vision is to be the leading provider of&nbsp; services, known for our commitment to quality and innovation. We aim to build long-lasting relationships with our clients by consistently delivering exceptional results and unparalleled customer service.<br /><br /><strong>Contact Us</strong><br />If you have any questions or would like to learn more about our services, please don\'t hesitate to contact us at:<br />Email: <a href=\"mailto:support@pixelstrap.com\">support@pixelstrap.com</a></p>', 'About us', 'About us', 1, 1, '2024-07-26 02:04:36', '2024-07-26 02:04:36', NULL),
(5, 'Help & Support', '<p>You can contact us by phone or email to receive any type of help 24 hours a day.<br /><br /><br /><strong>Email Address</strong> :&nbsp;<br /><a href=\"mailto:example.help&amp;support@gmail.com\">example.help&amp;support@gmail.com</a><br /><br /><strong>Contact Number</strong> :&nbsp;<br />(406)555-0120&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (704)555-0127</p>', 'help_&_support', 'help_&_support description', 1, 1, '2024-07-28 20:17:35', '2024-07-28 20:17:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mode` enum('live','sandbox') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sandbox',
  `configs` json DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways_transactions`
--

CREATE TABLE `payment_gateways_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `item_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways_transactions`
--

INSERT INTO `payment_gateways_transactions` (`id`, `item_id`, `amount`, `transaction_id`, `payment_method`, `payment_status`, `type`, `created_at`, `updated_at`) VALUES
(1, '17', '500.00', '3DP671502H7687742', 'PayPal', 'COMPLETED', 'wallet', '2024-07-22 20:55:59', '2024-07-22 20:57:43'),
(2, '1', '217.00', '2N4145785C852482H', 'PayPal', 'COMPLETED', 'booking', '2024-07-22 21:19:30', '2024-07-22 21:19:57'),
(3, '3', '58.88', '5J558036341257328', 'PayPal', 'COMPLETED', 'booking', '2024-07-22 23:07:47', '2024-07-22 23:08:21'),
(4, '5', '58.88', '6H02628562090083H', 'PayPal', 'COMPLETED', 'booking', '2024-07-23 01:14:53', '2024-07-23 01:15:20'),
(5, '9', '112.47', '0T6317751F732914S', 'PayPal', 'COMPLETED', 'booking', '2024-07-23 04:49:31', '2024-07-23 04:50:08'),
(7, '13', '110.40', '4M832669MB153190N', 'PayPal', 'COMPLETED', 'booking', '2024-07-23 21:15:58', '2024-07-23 21:16:41'),
(8, '21', '941.50', '71A44195P0390825S', 'PayPal', 'COMPLETED', 'booking', '2024-07-24 02:29:31', '2024-07-24 02:30:42'),
(9, '23', '205.50', '9HH95278FP861925R', 'PayPal', 'COMPLETED', 'booking', '2024-07-24 02:32:05', '2024-07-24 02:32:17'),
(10, '25', '44.16', '7AE20846B5433540R', 'PayPal', 'COMPLETED', 'booking', '2024-07-24 02:44:48', '2024-07-24 02:45:01'),
(11, '27', '108.33', '3AA259170C301124K', 'PayPal', 'COMPLETED', 'booking', '2024-07-24 02:48:56', '2024-07-24 02:49:08'),
(12, '29', '75.55', '13U451030L803234K', 'PayPal', 'COMPLETED', 'booking', '2024-07-24 02:55:44', '2024-07-24 02:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'backend.role.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(2, 'backend.role.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3, 'backend.role.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(4, 'backend.role.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(5, 'backend.bank_detail.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(6, 'backend.bank_detail.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(7, 'backend.bank_detail.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(8, 'backend.bank_detail.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(9, 'backend.service_category.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(10, 'backend.service_category.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(11, 'backend.service_category.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(12, 'backend.service_category.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(13, 'backend.blog_category.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(14, 'backend.blog_category.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(15, 'backend.blog_category.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(16, 'backend.blog_category.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(17, 'backend.service.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(18, 'backend.service.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(19, 'backend.service.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(20, 'backend.service.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(21, 'backend.plan.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(22, 'backend.plan.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(23, 'backend.plan.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(24, 'backend.plan.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(25, 'backend.service-package.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(26, 'backend.service-package.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(27, 'backend.service-package.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(28, 'backend.service-package.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(29, 'backend.booking.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(30, 'backend.booking.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(31, 'backend.booking.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(32, 'backend.provider.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(33, 'backend.provider.create', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(34, 'backend.provider.edit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(35, 'backend.provider.destroy', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(36, 'backend.provider_wallet.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(37, 'backend.provider_wallet.credit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(38, 'backend.provider_wallet.debit', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(39, 'backend.commission_history.index', 'web', '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(40, 'backend.withdraw_request.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(41, 'backend.withdraw_request.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(42, 'backend.withdraw_request.action', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(43, 'backend.serviceman.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(44, 'backend.serviceman.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(45, 'backend.serviceman.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(46, 'backend.serviceman.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(47, 'backend.coupon.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(48, 'backend.coupon.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(49, 'backend.coupon.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(50, 'backend.coupon.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(51, 'backend.wallet.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(52, 'backend.wallet.credit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(53, 'backend.wallet.debit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(54, 'backend.wallet.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(55, 'backend.slider.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(56, 'backend.slider.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(57, 'backend.slider.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(58, 'backend.slider.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(59, 'backend.review.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(60, 'backend.review.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(61, 'backend.review.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(62, 'backend.earning.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(63, 'backend.earning.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(64, 'backend.tax.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(65, 'backend.tax.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(66, 'backend.tax.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(67, 'backend.tax.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(68, 'backend.user.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(69, 'backend.user.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(70, 'backend.user.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(71, 'backend.user.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(72, 'backend.payment_transaction.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(73, 'backend.document.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(74, 'backend.document.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(75, 'backend.document.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(76, 'backend.document.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(77, 'backend.currency.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(78, 'backend.currency.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(79, 'backend.currency.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(80, 'backend.currency.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(81, 'backend.tag.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(82, 'backend.tag.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(83, 'backend.tag.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(84, 'backend.tag.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(85, 'backend.blog.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(86, 'backend.blog.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(87, 'backend.blog.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(88, 'backend.blog.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(89, 'backend.page.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(90, 'backend.page.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(91, 'backend.page.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(92, 'backend.page.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(93, 'backend.provider_time_slot.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(94, 'backend.provider_time_slot.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(95, 'backend.provider_time_slot.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(96, 'backend.provider_time_slot.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(97, 'backend.provider_document.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(98, 'backend.provider_document.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(99, 'backend.provider_document.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(100, 'backend.provider_document.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(101, 'backend.banner.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(102, 'backend.banner.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(103, 'backend.banner.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(104, 'backend.banner.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(105, 'backend.setting.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(106, 'backend.setting.create', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(107, 'backend.setting.edit', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(108, 'backend.setting.destroy', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(109, 'backend.payment_method.index', 'web', '2024-06-13 11:38:14', '2024-06-13 11:38:14'),
(110, 'backend.payment_method.create', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(111, 'backend.payment_method.edit', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(112, 'backend.payment_method.destroy', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(113, 'backend.language.index', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(114, 'backend.language.create', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(115, 'backend.language.edit', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(116, 'backend.language.destroy', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(117, 'backend.push_notification.index', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(118, 'backend.push_notification.create', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(119, 'backend.push_notification.edit', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(120, 'backend.push_notification.destroy', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(121, 'backend.zone.index', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(122, 'backend.zone.create', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(123, 'backend.zone.edit', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(124, 'backend.zone.destroy', 'web', '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(125, 'backend.customer.index', 'web', NULL, NULL),
(126, 'backend.customer.create', 'web', NULL, NULL),
(127, 'backend.customer.edit', 'web', NULL, NULL),
(128, 'backend.customer.destroy', 'web', NULL, NULL),
(129, 'backend.serviceman_wallet.index', 'web', NULL, NULL),
(130, 'backend.serviceman_wallet.credit', 'web', NULL, NULL),
(131, 'backend.serviceman_wallet.debit', 'web', NULL, NULL),
(132, 'backend.serviceman_withdraw_request.index', 'web', NULL, NULL),
(133, 'backend.serviceman_withdraw_request.create', 'web', NULL, NULL),
(134, 'backend.serviceman_withdraw_request.action', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 64, 'auth_token', 'f569aba02f751e84d1550209063f14c3afd942545efa0194170cc4b8156044fe', '[\"*\"]', NULL, NULL, '2024-07-22 08:20:22', '2024-07-22 08:20:22'),
(2, 'App\\Models\\User', 64, 'auth_token', '3f027b35c55c650c7ad1686025b4ea20fac74263bcd2bf85e49344ba17a761a0', '[\"*\"]', '2024-07-22 08:30:25', NULL, '2024-07-22 08:20:59', '2024-07-22 08:30:25'),
(3, 'App\\Models\\User', 2, 'auth_token', '0ba7d8f8c879d87d87820aba16d3e00704e772d078208ba8e1797029eb5ce7e2', '[\"*\"]', '2024-07-22 20:24:35', NULL, '2024-07-22 20:23:55', '2024-07-22 20:24:35'),
(4, 'App\\Models\\User', 2, 'auth_token', '990662380df2149edbf20c5ee681870a55f5b3068221b4beaf79211bd35f8059', '[\"*\"]', '2024-07-22 21:42:30', NULL, '2024-07-22 20:49:19', '2024-07-22 21:42:30'),
(5, 'App\\Models\\User', 2, 'auth_token', 'b8f8d93a250196dfba531b2b54f5098df74e6c6016b815229fc227a4b713881b', '[\"*\"]', '2024-07-23 22:54:20', NULL, '2024-07-22 21:29:00', '2024-07-23 22:54:20'),
(6, 'App\\Models\\User', 2, 'auth_token', '91600eba0e9c3ed91010678d6568f8b4a10b527833dbe71e2fe280a86f95855e', '[\"*\"]', '2024-07-22 21:49:09', NULL, '2024-07-22 21:49:07', '2024-07-22 21:49:09'),
(7, 'App\\Models\\User', 2, 'auth_token', 'bec23c2d91137eaa36c9d9cb879d1016ac7560e93900b5de5e846718eccd71ee', '[\"*\"]', '2024-07-22 22:18:03', NULL, '2024-07-22 21:52:19', '2024-07-22 22:18:03'),
(8, 'App\\Models\\User', 3, 'auth_token', 'c8f0182a3529af10a0574ea432e6d95806cc401355644cf829d039a84eb4d729', '[\"*\"]', '2024-07-22 22:59:44', NULL, '2024-07-22 22:13:38', '2024-07-22 22:59:44'),
(9, 'App\\Models\\User', 2, 'auth_token', '95770172588cf40737aaf81d406c209cd761ab066fd5bbc39016f93cd2e44ed1', '[\"*\"]', '2024-07-23 00:58:41', NULL, '2024-07-22 22:17:30', '2024-07-23 00:58:41'),
(10, 'App\\Models\\User', 2, 'auth_token', '2fcee494d15300f001140fb4d4a07deb3e97fbf78f17e58f59ab87fb3d64e642', '[\"*\"]', '2024-07-22 22:20:16', NULL, '2024-07-22 22:20:12', '2024-07-22 22:20:16'),
(11, 'App\\Models\\User', 27, 'auth_token', '53497e0a53b96d9fbf7c80a257d7677eb103d77130d5adbfd3abf7550744c9c6', '[\"*\"]', '2024-07-22 22:59:37', NULL, '2024-07-22 22:23:27', '2024-07-22 22:59:37'),
(12, 'App\\Models\\User', 3, 'auth_token', '64156100e1d54c81ed74b08ca9a8c338120990c429f7d97252e6142ec94873c3', '[\"*\"]', '2024-07-23 21:40:34', NULL, '2024-07-22 22:34:16', '2024-07-23 21:40:34'),
(13, 'App\\Models\\User', 3, 'auth_token', 'c81a2cfc2fe1d2c19559acade526ca5093559a23a255ff7799ed9fcc0f3ec87a', '[\"*\"]', '2024-07-23 00:31:12', NULL, '2024-07-22 22:59:39', '2024-07-23 00:31:12'),
(14, 'App\\Models\\User', 4, 'auth_token', 'c0236c7d22a3fb7c1176b0e53a7bda9590af33b5b58671ab9f16b9c6f0d4592f', '[\"*\"]', '2024-07-23 00:48:42', NULL, '2024-07-22 23:01:14', '2024-07-23 00:48:42'),
(15, 'App\\Models\\User', 3, 'auth_token', '057103cff891efa5c31d93e9a92b99767751713c3276d56b3492998bcc504414', '[\"*\"]', '2024-07-22 23:29:25', NULL, '2024-07-22 23:14:51', '2024-07-22 23:29:25'),
(16, 'App\\Models\\User', 2, 'auth_token', 'e75bff320bb6984683109e6504b497f7ddb2179d15a52c10f57daf81129fb290', '[\"*\"]', '2024-07-22 23:53:07', NULL, '2024-07-22 23:50:42', '2024-07-22 23:53:07'),
(17, 'App\\Models\\User', 3, 'auth_token', 'f6751c8e2959c4cc5332024763b6406f9d4fa5d64070191e3a7d4980a17a6599', '[\"*\"]', '2024-07-23 00:56:40', NULL, '2024-07-23 00:54:59', '2024-07-23 00:56:40'),
(18, 'App\\Models\\User', 4, 'auth_token', '246c224eaf53fe29d28348a925d51b00cb4774895dff7af0eb3c45c29728157a', '[\"*\"]', '2024-07-23 01:43:26', NULL, '2024-07-23 00:57:18', '2024-07-23 01:43:26'),
(19, 'App\\Models\\User', 3, 'auth_token', '8dc77e10ede4f040ef6c1d8e64e8d6f3434703eca8c5d079196890375a6c94e4', '[\"*\"]', '2024-07-23 01:50:48', NULL, '2024-07-23 00:57:51', '2024-07-23 01:50:48'),
(20, 'App\\Models\\User', 3, 'auth_token', '487d3315a43112c0b6ddefe646693600ad2e59c24be0b31a9f216198cf946814', '[\"*\"]', '2024-07-23 01:08:09', NULL, '2024-07-23 01:03:00', '2024-07-23 01:08:09'),
(21, 'App\\Models\\User', 2, 'auth_token', 'dd60d265846b3eed6653c6552caa5df89b85111c6fb9732130877e561946c572', '[\"*\"]', '2024-07-23 01:11:35', NULL, '2024-07-23 01:05:39', '2024-07-23 01:11:35'),
(22, 'App\\Models\\User', 2, 'auth_token', 'e2d0cb998b0aebe6973bb57b1a9862771213631b040163fce75e6b0e6e485198', '[\"*\"]', '2024-07-23 01:13:42', NULL, '2024-07-23 01:13:34', '2024-07-23 01:13:42'),
(23, 'App\\Models\\User', 18, 'auth_token', '6daa659e589a466c24f5606b65871ce741795e2a810c82cacc67b3549b73bf7f', '[\"*\"]', '2024-07-23 01:38:21', NULL, '2024-07-23 01:14:07', '2024-07-23 01:38:21'),
(24, 'App\\Models\\User', 18, 'auth_token', '2df655b32871b3665af80bca393884357185a796ac12475365ed5c88058e6a16', '[\"*\"]', '2024-07-23 01:24:09', NULL, '2024-07-23 01:22:11', '2024-07-23 01:24:09'),
(25, 'App\\Models\\User', 2, 'auth_token', '34329193599886298679e9e012b111233bec2630e30b1a9c667f92935350f87b', '[\"*\"]', '2024-07-23 01:32:12', NULL, '2024-07-23 01:28:55', '2024-07-23 01:32:12'),
(26, 'App\\Models\\User', 18, 'auth_token', '1788e5798a36b958133c89cf072babb0305bd6878e10e1e6f4844b59b1090123', '[\"*\"]', '2024-07-23 01:34:45', NULL, '2024-07-23 01:32:40', '2024-07-23 01:34:45'),
(27, 'App\\Models\\User', 3, 'auth_token', '28bfe318b6ab38bb67f2b38cc57ed9297f2db47616a07521d3101abdca8662fd', '[\"*\"]', '2024-07-23 02:08:31', NULL, '2024-07-23 01:53:03', '2024-07-23 02:08:31'),
(28, 'App\\Models\\User', 2, 'auth_token', 'f1863bd0b642a9f97eae685a396268be346a50dcbfc9015bff591190931cb803', '[\"*\"]', '2024-07-23 03:08:34', NULL, '2024-07-23 01:56:59', '2024-07-23 03:08:34'),
(29, 'App\\Models\\User', 4, 'auth_token', 'cfac24ab4e4e34847489e1bfb56377d47d86ca00056df3f3f38b9cfaf890ec1a', '[\"*\"]', '2024-07-23 02:08:08', NULL, '2024-07-23 01:59:04', '2024-07-23 02:08:08'),
(30, 'App\\Models\\User', 4, 'auth_token', 'ed615601f54bba2e203ff22ee3d01352a9d8f3e765047a827e268786a30a21af', '[\"*\"]', '2024-07-23 02:06:19', NULL, '2024-07-23 02:01:30', '2024-07-23 02:06:19'),
(31, 'App\\Models\\User', 33, 'auth_token', 'e099cf37a8d017c063b940e2b253ac0344118d1007aae40d569d51bdeeaf29d9', '[\"*\"]', '2024-07-23 04:50:37', NULL, '2024-07-23 02:08:58', '2024-07-23 04:50:37'),
(32, 'App\\Models\\User', 58, 'auth_token', 'a9898d0f8053c21965adc98103bed0270b1f9b3b7bcffc1072552c11bee5841c', '[\"*\"]', '2024-07-23 02:10:25', NULL, '2024-07-23 02:10:20', '2024-07-23 02:10:25'),
(33, 'App\\Models\\User', 58, 'auth_token', '4c28bf11aec345ef0920c0cf28297eb628526ef5803f52e03b36233e4ef164de', '[\"*\"]', '2024-07-23 03:48:12', NULL, '2024-07-23 02:11:05', '2024-07-23 03:48:12'),
(34, 'App\\Models\\User', 2, 'auth_token', 'd83524bc30f00934809199daea51e4bf227e9ce050e3567d385af86685956831', '[\"*\"]', '2024-07-23 04:59:03', NULL, '2024-07-23 03:40:17', '2024-07-23 04:59:03'),
(35, 'App\\Models\\User', 3, 'auth_token', '9e98e6c41704a221c36fe377fba5db9e470c72b23cafa7982cbab187fa317bd2', '[\"*\"]', '2024-07-23 04:52:44', NULL, '2024-07-23 04:21:33', '2024-07-23 04:52:44'),
(36, 'App\\Models\\User', 3, 'auth_token', '78f0b9697466d078e46033963e22706f2490299be5272aa68eaab546e9c14464', '[\"*\"]', '2024-07-23 04:52:48', NULL, '2024-07-23 04:50:58', '2024-07-23 04:52:48'),
(37, 'App\\Models\\User', 4, 'auth_token', 'fe8a1118f796bb7cc07472fc75877159e75c8d1aa18bdcc414102a6e01cfee7a', '[\"*\"]', '2024-07-23 04:53:37', NULL, '2024-07-23 04:53:06', '2024-07-23 04:53:37'),
(38, 'App\\Models\\User', 3, 'auth_token', '08c8cc4ad52ebf7ab114418546cbf118dbee0736ee1c6df3467c6bb92b7e7b00', '[\"*\"]', '2024-07-23 04:53:45', NULL, '2024-07-23 04:53:17', '2024-07-23 04:53:45'),
(39, 'App\\Models\\User', 2, 'auth_token', '09b9a755e810799cfe8fb65995f313700b5c8c6d6e26a59a3ff910ecf0034d61', '[\"*\"]', '2024-07-23 20:53:27', NULL, '2024-07-23 20:43:39', '2024-07-23 20:53:27'),
(40, 'App\\Models\\User', 3, 'auth_token', '1acd7ba5fafe7257927dd78c4e1989f462a3555eb6adc40bd38ab46dcb9d5fdd', '[\"*\"]', '2024-07-23 20:55:36', NULL, '2024-07-23 20:51:42', '2024-07-23 20:55:36'),
(41, 'App\\Models\\User', 2, 'auth_token', '2cecf55c7e4d2d57d5c6efd242568c9e8129476cd97b0a66ef8a51772fe11261', '[\"*\"]', '2024-07-23 21:24:55', NULL, '2024-07-23 21:13:12', '2024-07-23 21:24:55'),
(42, 'App\\Models\\User', 2, 'auth_token', '2332773e28ca143b0670508fe8a5617931a065ceb7efe9ac0c75a9717c5191e7', '[\"*\"]', '2024-07-24 00:35:34', NULL, '2024-07-23 21:36:49', '2024-07-24 00:35:34'),
(43, 'App\\Models\\User', 3, 'auth_token', '3e3b251d5c50a0b10fb17dbfc4316cec077ef7a9719de77a5d19394038e32da1', '[\"*\"]', '2024-07-23 23:00:03', NULL, '2024-07-23 22:59:15', '2024-07-23 23:00:03'),
(44, 'App\\Models\\User', 4, 'auth_token', '3633c5598a785a088fb37722f91bad06086832cd5ac25a9ae5881441cf279398', '[\"*\"]', '2024-07-24 00:23:05', NULL, '2024-07-23 23:00:20', '2024-07-24 00:23:05'),
(45, 'App\\Models\\User', 2, 'auth_token', 'eb53850d3afb8282f599ece77c67bb5f3d48f46be99fc4584a7652fb2215a2c0', '[\"*\"]', '2024-07-24 02:04:46', NULL, '2024-07-23 23:02:58', '2024-07-24 02:04:46'),
(46, 'App\\Models\\User', 3, 'auth_token', '9f073ae38bffdce75cba0021bd5c43c1b56ed54eee47a22ba3c638a6200902f3', '[\"*\"]', '2024-07-24 00:23:58', NULL, '2024-07-24 00:23:22', '2024-07-24 00:23:58'),
(47, 'App\\Models\\User', 4, 'auth_token', 'aa752c1e8664a08399b24a8d48894187561deb5f37e99439f95913268e4340e6', '[\"*\"]', '2024-07-24 00:24:20', NULL, '2024-07-24 00:24:07', '2024-07-24 00:24:20'),
(48, 'App\\Models\\User', 2, 'auth_token', 'edb11ba1ebaca7dae6cb74afae800f5b695b18bcf9e30175e622a4d194505c48', '[\"*\"]', '2024-07-24 06:09:34', NULL, '2024-07-24 00:53:32', '2024-07-24 06:09:34'),
(49, 'App\\Models\\User', 3, 'auth_token', '7405ac54e6318de55e64ddc9c0cf7e6c9402f8176785faaced76967210a57d54', '[\"*\"]', '2024-07-24 02:03:34', NULL, '2024-07-24 00:55:47', '2024-07-24 02:03:34'),
(50, 'App\\Models\\User', 4, 'auth_token', '29e29152e4b6e7e905212dc0ac72a31e6b4ef668c137bdabca81ea953653a57e', '[\"*\"]', '2024-07-24 01:26:57', NULL, '2024-07-24 00:59:53', '2024-07-24 01:26:57'),
(51, 'App\\Models\\User', 25, 'auth_token', 'e2512e8da52047479e1e473125c3f3f9c5ca9e06a5ff6ff35f0f1f37042e5a1f', '[\"*\"]', '2024-07-24 01:47:07', NULL, '2024-07-24 01:28:05', '2024-07-24 01:47:07'),
(52, 'App\\Models\\User', 4, 'auth_token', 'cd0daed03bef8615663622e59a0196dedf523d7bede237c6305c095d19053915', '[\"*\"]', '2024-07-24 02:18:48', NULL, '2024-07-24 01:47:36', '2024-07-24 02:18:48'),
(53, 'App\\Models\\User', 33, 'auth_token', '4f74d3ac64522847e8288b7d9d672c23e231e02b8779a27da3987ee0164f63d1', '[\"*\"]', '2024-07-24 02:33:27', NULL, '2024-07-24 02:04:03', '2024-07-24 02:33:27'),
(54, 'App\\Models\\User', 2, 'auth_token', '37e33df075d06ca6df7fc9b29c9a3391c93b34ec8d4553d24ba6cb12993dbe6c', '[\"*\"]', '2024-07-24 02:05:57', NULL, '2024-07-24 02:05:38', '2024-07-24 02:05:57'),
(55, 'App\\Models\\User', 33, 'auth_token', 'e396e53061ecc914215f6143c0eb0fa262b63a4ffa13776af150517345465bbd', '[\"*\"]', '2024-07-24 02:06:18', NULL, '2024-07-24 02:05:57', '2024-07-24 02:06:18'),
(56, 'App\\Models\\User', 2, 'auth_token', '8121907646afa71058061c8d760e7481737413157206a6a0c2b88aa1fca621ca', '[\"*\"]', '2024-07-24 21:45:00', NULL, '2024-07-24 02:06:45', '2024-07-24 21:45:00'),
(57, 'App\\Models\\User', 3, 'auth_token', 'b77d0a91d1136d36cbcba18ad3c2143cd1967a44df04bac0eb283dadf94064ba', '[\"*\"]', '2024-07-24 02:25:30', NULL, '2024-07-24 02:17:48', '2024-07-24 02:25:30'),
(58, 'App\\Models\\User', 58, 'auth_token', '324f1810d99401d8fe688e570c099acb6ee8c5df64a112737f3175508d255b04', '[\"*\"]', '2024-07-24 02:34:07', NULL, '2024-07-24 02:19:36', '2024-07-24 02:34:07'),
(59, 'App\\Models\\User', 45, 'auth_token', '8c478bdc757b9dcf57beae962169bdbbe476eb60baa5c57d9457a64e3a3c8b19', '[\"*\"]', '2024-07-24 21:04:38', NULL, '2024-07-24 02:26:43', '2024-07-24 21:04:38'),
(60, 'App\\Models\\User', 30, 'auth_token', '27285a4ccdc099007f2a87fb7f42dff9646ba0549e5c05e0627326c9ac580729', '[\"*\"]', '2024-07-24 02:50:19', NULL, '2024-07-24 02:35:06', '2024-07-24 02:50:19'),
(61, 'App\\Models\\User', 43, 'auth_token', 'f33db793c8048666b2c4e2168cb0c19e5c9ecd79f43064621b9f9bd96e80385d', '[\"*\"]', '2024-07-24 02:52:06', NULL, '2024-07-24 02:41:52', '2024-07-24 02:52:06'),
(62, 'App\\Models\\User', 33, 'auth_token', 'fecf948b4eba2dc005695e3fa33b1caff150f3174a0afc9e0078b58ac65d3cc5', '[\"*\"]', '2024-07-24 03:17:14', NULL, '2024-07-24 02:50:32', '2024-07-24 03:17:14'),
(63, 'App\\Models\\User', 58, 'auth_token', '3abb966a31efb0f8b27dc0d9b619e74d20ec3304c373c0e1486641e0da6f0b4d', '[\"*\"]', '2024-07-24 03:51:26', NULL, '2024-07-24 02:52:45', '2024-07-24 03:51:26'),
(64, 'App\\Models\\User', 2, 'auth_token', '6c05f8a87c7d65be4dae6c0b8cef7eb606ad9a3af208dfaaf09c0f0785450ba0', '[\"*\"]', '2024-07-24 04:02:25', NULL, '2024-07-24 03:09:23', '2024-07-24 04:02:25'),
(65, 'App\\Models\\User', 3, 'auth_token', 'f503c1118fa67f747787cc6f0bc3b6b463c80904aedcfc6a1c38b883392fbc2f', '[\"*\"]', '2024-07-24 21:43:42', NULL, '2024-07-24 21:07:16', '2024-07-24 21:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_services` int NOT NULL,
  `max_addresses` int NOT NULL,
  `max_servicemen` int NOT NULL,
  `max_service_packages` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` enum('monthly','yearly') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `max_services`, `max_addresses`, `max_servicemen`, `max_service_packages`, `price`, `duration`, `description`, `status`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Standard Plan', 10, 6, 10, 5, '15.00', 'monthly', 'Take your service business to the next level by choosing this.', 1, 1, NULL, '2024-06-17 13:01:04', '2024-06-17 13:01:04'),
(2, 'Regular Plan', 8, 4, 8, 4, '10.00', 'monthly', 'Stay ahead of the competition by selecting this plan.', 1, 1, NULL, '2024-06-17 13:01:56', '2024-06-17 13:01:56'),
(3, 'Premium Plan', 12, 12, 12, 4, '25.00', 'monthly', 'Streamlines your operations & helps you grow your service business.', 1, 1, NULL, '2024-06-17 13:03:04', '2024-06-17 13:03:04'),
(4, 'Basic Yearly Plan', 20, 5, 10, 5, '199.00', 'yearly', 'Ideal for individuals or small households, the Basic Yearly Plan offers essential services with up to 20 bookings per year. Enjoy the convenience of having one dedicated serviceman and access to five different service packages. Perfect for maintaining your home with ease.', 1, 1, NULL, '2024-06-21 09:36:52', '2024-06-21 09:36:52'),
(5, 'Standard Yearly Plan', 50, 10, 15, 10, '399.00', 'yearly', 'The Standard Yearly Plan is tailored for medium-sized households. With up to 50 services per year and access to 10 different service packages, this plan ensures your home is well-maintained throughout the year. Includes service at up to three addresses with the support of two servicemen.', 1, 1, NULL, '2024-06-21 09:37:57', '2024-06-21 09:37:57'),
(6, 'Premium Yearly Plan', 100, 15, 20, 20, '699.00', 'yearly', 'Designed for larger households or those needing frequent services, the Premium Yearly Plan offers up to 100 services annually. Gain access to 20 service packages, service at up to five addresses, and the expertise of four dedicated servicemen. Experience premium service and convenience all year round.', 1, 1, NULL, '2024-06-21 09:38:43', '2024-06-21 09:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `provider_transactions`
--

CREATE TABLE `provider_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `type` enum('credit','debit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provider_transactions`
--

INSERT INTO `provider_transactions` (`id`, `provider_wallet_id`, `provider_id`, `amount`, `type`, `detail`, `from`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '800.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 13:15:48', '2024-06-13 13:15:48', NULL),
(2, 2, NULL, '5000.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 13:35:25', '2024-06-13 13:35:25', NULL),
(3, 3, NULL, '800.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 13:38:31', '2024-06-13 13:38:31', NULL),
(4, 4, NULL, '700.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 13:49:45', '2024-06-13 13:49:45', NULL),
(5, 5, NULL, '900.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 13:53:19', '2024-06-13 13:53:19', NULL),
(6, 6, NULL, '5000.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-14 09:42:16', '2024-06-14 09:42:16', NULL),
(7, 5, NULL, '100.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-14 09:42:26', '2024-06-14 09:42:26', NULL),
(8, 7, NULL, '500.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-14 09:43:06', '2024-06-14 09:43:06', NULL),
(9, 7, NULL, '500.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 22:14:44', '2024-07-22 22:14:44', NULL),
(10, 7, 3, '163.80', 'credit', 'Admin has sended a commission', 1, '2024-07-22 22:48:46', '2024-07-22 22:48:46', NULL),
(11, 7, 3, '38.68', 'credit', 'Admin has sended a commission', 1, '2024-07-23 01:26:43', '2024-07-23 01:26:43', NULL),
(12, 8, 33, '59.88', 'credit', 'Admin has sended a commission', 1, '2024-07-23 02:51:49', '2024-07-23 02:51:49', NULL),
(13, 7, 3, '81.08', 'credit', 'Admin has sended a commission', 1, '2024-07-24 02:23:10', '2024-07-24 02:23:10', NULL),
(14, 7, 3, '81.08', 'credit', 'Admin has sended a commission', 1, '2024-07-24 02:23:10', '2024-07-24 02:23:10', NULL),
(15, 8, 33, '51.87', 'credit', 'Admin has sended a commission', 1, '2024-07-24 03:05:50', '2024-07-24 03:05:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_wallets`
--

CREATE TABLE `provider_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provider_wallets`
--

INSERT INTO `provider_wallets` (`id`, `provider_id`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20, '800.00', '2024-06-13 13:15:48', '2024-06-13 13:15:48', NULL),
(2, 21, '5000.00', '2024-06-13 13:35:25', '2024-06-13 13:35:25', NULL),
(3, 22, '800.00', '2024-06-13 13:38:31', '2024-06-13 13:38:31', NULL),
(4, 23, '700.00', '2024-06-13 13:49:45', '2024-06-13 13:49:45', NULL),
(5, 24, '1000.00', '2024-06-13 13:53:19', '2024-06-14 09:42:26', NULL),
(6, 30, '5000.00', '2024-06-14 09:42:16', '2024-06-14 09:42:16', NULL),
(7, 3, '1364.64', '2024-06-14 09:43:06', '2024-07-24 02:23:10', NULL),
(8, 33, '111.75', '2024-07-23 02:08:59', '2024-07-24 03:05:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider_zones`
--

CREATE TABLE `provider_zones` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED NOT NULL,
  `zone_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provider_zones`
--

INSERT INTO `provider_zones` (`id`, `provider_id`, `zone_id`) VALUES
(1, 24, 1),
(2, 21, 1),
(3, 20, 2),
(4, 23, 2),
(5, 30, 2),
(6, 31, 1),
(7, 32, 2),
(8, 33, 1),
(9, 34, 1),
(10, 22, 1);

-- --------------------------------------------------------

--
-- Table structure for table `push_notifications`
--

CREATE TABLE `push_notifications` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `image_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_notifications`
--

INSERT INTO `push_notifications` (`id`, `title`, `message`, `send_to`, `user_id`, `service_id`, `is_read`, `image_url`, `url`, `notification_type`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sdfsdfsdf sdfsdfsdfsdf', 'sdfsdfsd sfdfsdfsdf', 'user', 1, 4, 0, NULL, 'https://www.kreditbee.in/', 'service', 1, '2024-06-22 08:23:00', '2024-06-22 08:23:14', '2024-06-22 08:23:14'),
(2, NULL, NULL, NULL, 1, NULL, 0, NULL, NULL, NULL, 1, '2024-06-22 08:27:19', '2024-06-22 08:27:23', '2024-06-22 08:27:23'),
(3, 'asdasdas', 'asdasdasdasd', 'user', 1, NULL, 0, NULL, NULL, 'all', 1, '2024-06-22 08:30:47', '2024-06-22 08:30:55', '2024-06-22 08:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consumer_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `related_services`
--

CREATE TABLE `related_services` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `related_service_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_services`
--

INSERT INTO `related_services` (`id`, `service_id`, `related_service_id`) VALUES
(1, 8, 9),
(2, 8, 10),
(3, 9, 10),
(4, 4, 11),
(5, 4, 12),
(6, 11, 12),
(7, 8, 13),
(8, 9, 13),
(9, 10, 13),
(10, 8, 14),
(11, 9, 14),
(12, 10, 14),
(13, 13, 14),
(14, 11, 15),
(15, 12, 15),
(16, 8, 16),
(17, 9, 16),
(18, 10, 16),
(19, 13, 16),
(20, 14, 16),
(21, 16, 17),
(23, 8, 19),
(24, 9, 19),
(25, 10, 19),
(26, 13, 19),
(27, 14, 19),
(28, 18, 19),
(31, 20, 23),
(32, 21, 23),
(33, 3, 24),
(34, 4, 24),
(35, 5, 24),
(36, 12, 24),
(37, 4, 25),
(38, 12, 25),
(39, 24, 3),
(40, 3, 26),
(41, 24, 26),
(42, 3, 27),
(43, 4, 27),
(44, 24, 27),
(45, 26, 27),
(46, 5, 28),
(47, 24, 28),
(48, 25, 28),
(49, 27, 29),
(50, 28, 29),
(51, 4, 30),
(52, 11, 30),
(53, 12, 30),
(54, 15, 30),
(55, 25, 30),
(56, 11, 31),
(57, 30, 31),
(58, 4, 32),
(59, 11, 32),
(60, 12, 32),
(61, 15, 32),
(62, 25, 32),
(63, 30, 32),
(64, 31, 32),
(65, 6, 33),
(66, 7, 33),
(67, 8, 33),
(68, 5, 34),
(69, 33, 34),
(72, 35, 36),
(73, 35, 37),
(76, 38, 39),
(77, 38, 40),
(78, 39, 40),
(79, 8, 41),
(80, 33, 41),
(81, 37, 41),
(82, 41, 42),
(83, 41, 43),
(84, 42, 43),
(85, 20, 44),
(86, 20, 45),
(87, 21, 45),
(88, 22, 45),
(89, 44, 45),
(90, 36, 35),
(91, 37, 35),
(92, 39, 38),
(93, 40, 38),
(94, 36, 37),
(95, 20, 21),
(96, 22, 21),
(97, 44, 21),
(98, 45, 21),
(99, 44, 20),
(100, 45, 20),
(101, 19, 18),
(102, 25, 15),
(103, 14, 13),
(104, 18, 13),
(105, 19, 13),
(106, 12, 11),
(107, 15, 11),
(108, 25, 11),
(109, 30, 11),
(110, 31, 11),
(111, 32, 11),
(112, 33, 5),
(113, 34, 5),
(114, 31, 4),
(115, 32, 4),
(116, 30, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `consumer_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `rating` decimal(8,2) DEFAULT '0.00',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `service_id`, `serviceman_id`, `consumer_id`, `provider_id`, `rating`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, NULL, 2, 3, '5.00', 'I had an excellent experience with the AC repair service provided by Robert. The technician was prompt, professional, and highly knowledgeable. They quickly identified and fixed the issue with my AC unit, ensuring it was up and running smoothly in no time. The service was efficient, and the technician even took the time to explain what was wrong and how it was fixed. I appreciate the great service and would highly recommend this service to anyone in need of AC repair.', '2024-07-22 22:36:35', '2024-07-22 22:36:35', NULL),
(2, 25, NULL, 18, 3, '5.00', 'I recently had my car washed by Car Washing Service, and I must say, they provided an excellent service. The team was very professional and courteous, and they did a fantastic job cleaning my car. The attention to detail was impressive, and they made sure every nook and cranny was spotless.', '2024-07-23 01:24:09', '2024-07-23 01:31:06', '2024-07-23 01:31:06'),
(3, 25, NULL, 18, 3, '5.00', 'I recently had my car washed by Car Washing Service, and I must say, they provided an excellent service. The team was very professional and courteous, and they did a fantastic job cleaning my car. The attention to detail was impressive, and they made sure every nook and cranny was spotless.', '2024-07-23 01:34:40', '2024-07-23 01:34:40', NULL),
(4, 18, NULL, 2, 3, '5.00', 'I recently booked a home face care service of Mark Wilson Face Care & Facial Detan Service For Men , and I am thrilled with the experience. The convenience of having the service provider come to my home was unbeatable, especially with my busy schedule.\nThe professional arrived on time, equipped with all necessary tools and high-quality products. They created a calming atmosphere right in my living room, complete with soothing music and aromatic scents, which made the experience even more enjoyable.\nThe esthetician was very knowledgeable and took the time to understand my skin concerns, customizing the treatment to suit my needs. Their technique was gentle yet effective, and the facial massage was incredibly relaxing, helping to relieve stress and tension.', '2024-07-23 02:21:59', '2024-07-23 02:21:59', NULL),
(5, 12, NULL, 2, 3, '5.00', 'I recently booked a Bathroom & Kitchen Deep Cleaning service with Bathroom & Kitchen Deep Cleaning of robert, and I am beyond impressed with the results. The service was incredibly thorough and left both my bathroom and kitchen spotless.\nThe cleaning team arrived on time and came fully equipped with all the necessary tools and high-quality cleaning products. They were professional, courteous, and very respectful of my home. They took the time to understand my specific cleaning needs and areas of concern before starting the job.\nIn the bathroom, they meticulously cleaned every surface, including tiles, grout, fixtures, and glass. The mirrors were left streak-free, and even the hard-to-reach spots were spotless. The team ensured that all mold and mildew were removed, leaving the bathroom looking and smelling fresh.\nThe kitchen received the same level of detailed attention. They cleaned the countertops, cabinets, appliances, and floors, making sure every corner was free of grease and grime. The stovetop and oven were thoroughly degreased, and the sink and backsplash were polished to perfection.\nTo add an extra layer of assurance, the team took before-and-after photos to document their work. This service proof photo was a nice touch, demonstrating the dramatic transformation and ensuring complete transparency.\nOverall, I am extremely satisfied with the Bathroom & Kitchen Deep Cleaning service provided by Robert. Their attention to detail, professionalism, and commitment to delivering exceptional results were evident throughout the entire process. I highly recommend their services to anyone in need of a thorough and reliable deep cleaning.', '2024-07-23 04:58:25', '2024-07-23 04:58:25', NULL),
(6, NULL, 25, 2, NULL, '5.00', 'The serviceman from juan garcia provided awesome service at my home. Highly professional and thorough. Highly recommend!', '2024-07-24 01:33:04', '2024-07-24 01:33:04', NULL),
(7, NULL, 4, 2, NULL, '5.00', 'The serviceman from michael smith provided awesome service at my home. Highly professional and thorough. Highly recommended.', '2024-07-24 01:54:09', '2024-07-24 01:54:09', NULL),
(8, 19, NULL, 2, 3, '4.00', 'The serviceman from mia lewis provided awesome service at my home. Highly professional and thorough. Highly recommended.', '2024-07-24 02:58:54', '2024-07-24 02:58:54', NULL),
(9, NULL, 58, 2, NULL, '5.00', 'The serviceman from mia lewis provided awesome service at my home. Highly professional and thorough. Highly recommend!', '2024-07-24 03:07:57', '2024-07-24 03:07:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_reserve` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `system_reserve`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 1, '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(2, 'user', 'web', 1, '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(3, 'provider', 'web', 1, '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(4, 'serviceman', 'web', 1, '2024-06-13 11:38:15', '2024-06-13 11:38:15'),
(5, 'Staff', 'web', 0, '2024-06-24 11:09:49', '2024-06-24 11:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(5, 2),
(6, 2),
(7, 2),
(29, 2),
(30, 2),
(31, 2),
(59, 2),
(60, 2),
(61, 2),
(85, 2),
(89, 2),
(101, 2),
(117, 2),
(5, 3),
(6, 3),
(7, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(31, 3),
(36, 3),
(39, 3),
(40, 3),
(41, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(59, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(132, 3),
(134, 3),
(29, 4),
(31, 4),
(129, 4),
(132, 4),
(133, 4),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(81, 5),
(82, 5),
(83, 5),
(84, 5),
(85, 5),
(86, 5),
(87, 5),
(88, 5),
(101, 5),
(102, 5),
(103, 5),
(104, 5);

-- --------------------------------------------------------

--
-- Table structure for table `seeders`
--

CREATE TABLE `seeders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_completed` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seeders`
--

INSERT INTO `seeders` (`id`, `name`, `is_completed`) VALUES
(1, 'BookingStatusSeeder', 1);

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_commissions`
--

CREATE TABLE `serviceman_commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `commission_history_id` bigint UNSIGNED NOT NULL,
  `serviceman_id` bigint UNSIGNED NOT NULL,
  `commission` decimal(8,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_transactions`
--

CREATE TABLE `serviceman_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `serviceman_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `type` enum('credit','debit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_wallets`
--

CREATE TABLE `serviceman_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceman_withdraw_requests`
--

CREATE TABLE `serviceman_withdraw_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT '0.00',
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `serviceman_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `payment_type` enum('paypal','bank') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'bank',
  `is_used_by_admin` int NOT NULL DEFAULT '0',
  `is_used` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_rate` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `per_serviceman_commission` decimal(4,2) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `speciality_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('fixed','free') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  `required_servicemen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `is_random_related_services` int DEFAULT '0',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `price`, `status`, `duration`, `duration_unit`, `service_rate`, `discount`, `per_serviceman_commission`, `description`, `speciality_description`, `user_id`, `type`, `is_featured`, `required_servicemen`, `meta_title`, `slug`, `meta_description`, `created_by_id`, `is_random_related_services`, `tax_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'Window Air Conditioner Repair', '200.00', 1, '2', 'hours', '180.00', '10.00', NULL, 'Comprehensive repair services for window air conditioners to ensure optimal performance and efficiency. Our expert technicians can handle all types of repairs, from minor fixes to major overhauls.', NULL, 3, 'fixed', 1, '2', NULL, 'window-air-conditioner-repair', NULL, 1, 1, 1, NULL, '2024-06-14 16:12:40', '2024-07-22 20:26:11'),
(4, 'Office Cleaning Service', '200.00', 1, '3', 'hours', '190.00', '5.00', NULL, 'Professional office cleaning services to ensure a clean and hygienic workspace. Our services include dusting, vacuuming, mopping, and sanitizing common areas, restrooms, and individual offices.', NULL, 3, 'fixed', 0, '2', NULL, 'office-cleaning-service', NULL, 1, 1, 1, NULL, '2024-06-14 16:16:21', '2024-06-22 11:11:23'),
(5, 'Custom Furniture Making', '900.00', 1, '5', 'minutes', '810.00', '10.00', NULL, 'Expert custom furniture making services to create unique and personalized pieces for your home or office. Our skilled carpenters use high-quality materials and craftsmanship to bring your vision to life.', NULL, 3, 'fixed', 1, '2', NULL, 'custom-furniture-making', NULL, 1, 1, 1, NULL, '2024-06-14 16:19:54', '2024-07-22 20:26:38'),
(6, 'Electrical Wiring and Installation', '90.00', 1, '7', 'hours', '87.30', '3.00', NULL, 'Professional electrical wiring and installation services for residential and commercial properties. Our licensed electricians ensure safe and efficient electrical systems, adhering to all local codes and regulations.', NULL, 31, 'fixed', 1, '2', NULL, 'electrical-wiring-and-installation', NULL, 1, 1, 1, NULL, '2024-06-14 16:24:23', '2024-06-22 11:10:36'),
(7, 'Interior House Painting', '5000.00', 1, '10', 'hours', '4500.00', '10.00', NULL, 'High-quality interior house painting services to transform the look and feel of your home. Our experienced painters use premium paints and techniques to deliver a flawless finish.', NULL, 31, 'fixed', 0, '4', NULL, 'interior-house-painting', NULL, 1, 1, 1, NULL, '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(8, 'Stress Relief Therapy', '500.00', 1, '3', 'hours', '450.00', '10.00', NULL, 'Professional stress relief therapy to help you relax and unwind. Our experienced therapists use various techniques to alleviate stress and promote mental well-being.', NULL, 31, 'fixed', 1, '2', NULL, 'stress-relief-therapy', NULL, 1, 1, 1, NULL, '2024-06-14 16:42:06', '2024-06-15 09:49:18'),
(9, 'Pain Relief Therapy', '300.00', 1, '2', 'hours', '297.00', '1.00', NULL, 'Specialized pain relief therapy to manage and alleviate chronic pain. Our therapists use targeted techniques to reduce discomfort and improve mobility.', NULL, 30, 'fixed', 0, '1', NULL, 'pain-relief-therapy', NULL, 1, 1, 1, NULL, '2024-06-14 16:46:08', '2024-06-15 09:49:18'),
(10, 'Natural Skincare Treatment', '900.00', 1, '3', 'hours', '765.00', '15.00', NULL, 'Holistic skincare treatments using natural and organic products. Our treatments are designed to nourish and rejuvenate your skin without harsh chemicals.', NULL, 30, 'fixed', 0, '1', NULL, 'natural-skincare-treatment', NULL, 1, 1, 1, NULL, '2024-06-14 16:51:34', '2024-06-15 09:49:18'),
(11, 'Sofa & Carpet Deep Cleaning', '120.00', 1, '3', 'minutes', '114.00', '5.00', NULL, 'Professional deep cleaning services for sofas and carpets to remove dirt, stains, and allergens. Our advanced cleaning techniques ensure a thorough and hygienic clean.', NULL, 30, 'fixed', 0, '3', NULL, 'sofa-carpet-deep-cleaning', NULL, 1, 1, 1, NULL, '2024-06-14 16:55:47', '2024-06-22 11:11:57'),
(12, 'Bathroom & Kitchen Deep Cleaning', '90.00', 1, '1', 'minutes', '89.10', '1.00', NULL, 'Comprehensive deep cleaning services for bathrooms and kitchens. Our team ensures every corner is spotless, disinfected, and free from grime and bacteria.', NULL, 3, 'fixed', 0, '1', NULL, 'bathroom-kitchen-deep-cleaning', NULL, 1, 1, 1, NULL, '2024-06-14 16:59:04', '2024-06-22 11:09:05'),
(13, 'Ayurvedic Massage', '40.00', 1, '2', 'hours', '39.60', '1.00', NULL, 'Experience the ancient healing art of Ayurvedic Massage, a therapeutic technique that rejuvenates the body and mind. Our skilled therapists use traditional Ayurvedic oils and gentle strokes to balance your doshas, promoting relaxation, detoxification, and overall well-being. Whether you seek relief from stress, muscle tension, or simply wish to indulge in a soothing treatment, our Ayurvedic Massage offers a holistic approach to wellness.', NULL, 33, 'fixed', 0, '1', NULL, 'ayurvedic-massage', NULL, 1, 1, 1, NULL, '2024-06-15 08:53:50', '2024-06-22 07:07:59'),
(14, 'Ayurvedic Pain Relief Head, Neck & Shoulder Massage', '120.00', 1, '3', 'hours', '118.80', '1.00', NULL, 'Indulge in our Ayurvedic Pain Relief Head, Neck & Shoulder Massage, a specialized treatment designed to target and alleviate tension and discomfort in these specific areas. Using a combination of traditional Ayurvedic techniques and therapeutic oils, this massage helps relieve pain, reduce inflammation, and improve mobility, leaving you feeling rejuvenated and relaxed.', NULL, 33, 'fixed', 1, '1', NULL, 'ayurvedic-pain-relief-head-neck-shoulder-massage', NULL, 1, 1, 1, NULL, '2024-06-15 09:02:45', '2024-06-22 07:07:00'),
(15, 'Chimney Sweeping & Cleaning', '80.00', 1, '2', 'hours', '72.00', '10.00', NULL, 'Keep your fireplace safe and efficient with our professional chimney sweeping service. We remove soot, debris, and creosote buildup to prevent fires and improve airflow.', NULL, 33, 'fixed', 1, '2', NULL, 'chimney-sweeping-cleaning', NULL, 1, 1, 1, NULL, '2024-06-15 09:38:14', '2024-06-22 07:06:12'),
(16, 'Face Care & Facial + Detan Service (For Men)', '500.00', 1, '2', 'minutes', '400.00', '20.00', NULL, 'Bro Glow offers a rejuvenating facial and detan service to combat dullness and sun damage. Achieve a healthy, refreshed look!', NULL, 33, 'fixed', 1, '1', NULL, 'face-care-facial-detan-service-for-men', NULL, 1, 1, 1, '2024-06-15 09:59:24', '2024-06-15 09:43:20', '2024-06-15 09:59:24'),
(17, 'Face Care & Facial  Detan Service (For Men)', '400.00', 1, '2', 'hours', '320.00', '20.00', NULL, 'Bro Glow offers a rejuvenating facial and detan service to combat dullness and sun damage. Achieve a healthy, refreshed look!', NULL, 33, 'fixed', 1, '1', NULL, 'face-care-facial-detan-service-for-men-2', NULL, 1, 1, 1, '2024-06-15 09:59:24', '2024-06-15 09:49:13', '2024-06-15 09:59:24'),
(18, 'Face Care & Facial  Detan Service For Men', '70.00', 1, '1', 'minutes', '65.80', '6.00', NULL, 'Bro Glow offers a rejuvenating facial and detan service to combat dullness and sun damage. Achieve a healthy, refreshed look!', NULL, 33, 'fixed', 1, '1', NULL, 'face-care-facial-detan-service-for-men', NULL, 1, 1, 1, NULL, '2024-06-15 09:54:36', '2024-06-22 07:05:18'),
(19, 'Full Body Massage', '60.00', 1, '2', 'hours', '57.00', '5.00', NULL, 'Relax and rejuvenate with our full body massage service, designed to release tension and promote relaxation.', NULL, 33, 'fixed', 1, '1', NULL, 'full-body-massage', NULL, 1, 1, 1, NULL, '2024-06-15 10:06:37', '2024-06-22 07:00:49'),
(20, 'Personal Chef Service', '150.00', 1, '9', 'hours', '148.50', '1.00', NULL, 'Hire a personal chef to create customized meals in the comfort of your home. Perfect for busy individuals or families looking for delicious and convenient meals.', NULL, 23, 'fixed', 1, '1', NULL, 'personal-chef-service', NULL, 1, 1, 1, NULL, '2024-06-15 10:25:03', '2024-06-22 06:59:55'),
(21, 'Catering Services', '130.00', 1, '3', 'minutes', '117.00', '10.00', NULL, 'Professional catering services for events of all sizes. From weddings to corporate events, our team will create a memorable dining experience for your guests.', NULL, 23, 'fixed', 1, '3', NULL, 'catering-services', NULL, 1, 1, 1, NULL, '2024-06-15 10:30:04', '2024-06-22 06:59:10'),
(22, 'Cooking Classes', '40.00', 1, '2', 'hours', '39.20', '2.00', NULL, 'Join our cooking classes to learn new culinary skills and recipes. Perfect for beginners and seasoned cooks alike, our classes are fun and educational.', NULL, 34, 'fixed', 1, '1', NULL, 'cooking-classes', NULL, 1, 1, 1, NULL, '2024-06-15 10:34:36', '2024-06-22 06:58:27'),
(23, 'Plumber Service', '100.00', 1, '40', 'minutes', '90.00', '10.00', NULL, 'Our professional plumbers are available for all your plumbing needs, from installations to repairs. Whether it\'s a leaky faucet or a complete bathroom remodel, we\'ve got you covered.', NULL, 23, 'fixed', 1, '1', NULL, 'plumber-service', NULL, 1, 0, 1, NULL, '2024-06-15 10:47:53', '2024-06-22 06:57:07'),
(24, 'AC Master Service', '60.00', 1, '3', 'hours', '57.00', '5.00', NULL, 'AC Master Service offers comprehensive air conditioning solutions, including installation, maintenance, cleaning, and repair. Our team of experienced technicians ensures your AC units operate efficiently and effectively, providing you with the comfort you need in your home or office. We pride ourselves on delivering prompt, professional, and reliable service to meet all your air conditioning needs.', NULL, 3, 'fixed', 1, '1', NULL, 'ac-master-service', NULL, 1, 0, 1, NULL, '2024-06-17 09:02:52', '2024-06-22 06:55:36'),
(25, 'Car Washing Service', '50.00', 1, '1', 'hours', '42.50', '15.00', NULL, 'Car Washing Service provides top-notch car cleaning and detailing solutions to keep your vehicle looking brand new. From basic exterior washes to comprehensive interior and exterior detailing, our skilled professionals use high-quality products and equipment to ensure your car receives the best care possible. We are committed to delivering exceptional service with a focus on customer satisfaction and convenience.', NULL, 3, 'fixed', 1, '1', NULL, 'car-washing-service', NULL, 1, 0, 1, NULL, '2024-06-17 09:16:45', '2024-06-22 06:54:49'),
(26, 'AC Installation Service', '40.00', 1, '3', 'minutes', '36.00', '10.00', NULL, 'Our AC Installation Service specializes in providing efficient and professional air conditioning installation for residential and commercial properties. Our certified technicians ensure that your new AC units are installed correctly and functioning optimally. We offer a variety of AC systems, tailored to meet your specific cooling needs, and guarantee high-quality service and customer satisfaction.', NULL, 3, 'fixed', 1, '2', NULL, 'ac-installation-service', NULL, 1, 0, 1, NULL, '2024-06-17 09:23:55', '2024-06-22 06:53:33'),
(27, 'Emergency Repair Service', '90.00', 1, '3', 'minutes', '83.70', '7.00', NULL, 'Emergency Repair Service provides fast and reliable repair solutions for urgent issues in your home or office. Our team of skilled technicians is available 24/7 to handle emergencies such as plumbing leaks, electrical failures, and HVAC malfunctions. We prioritize your safety and comfort, ensuring prompt and effective repairs to minimize any disruption to your daily routine.', NULL, 3, 'fixed', 1, '2', NULL, 'emergency-repair-service', NULL, 3, 0, 1, NULL, '2024-06-17 09:30:40', '2024-07-24 21:38:26'),
(28, 'Plumbing Emergency Repair Service', '60.00', 1, '3', 'minutes', '57.00', '5.00', NULL, 'Our Plumbing Emergency Repair Service offers immediate assistance for all urgent plumbing issues. Whether it\'s a burst pipe, a severe leak, or a clogged drain, our experienced plumbers are available around the clock to provide fast and effective repairs. We understand the importance of addressing plumbing emergencies promptly to prevent water damage and ensure the safety and comfort of your property.', NULL, 3, 'fixed', 1, '1', NULL, 'plumbing-emergency-repair-service', NULL, 1, 0, 1, NULL, '2024-06-17 09:50:21', '2024-06-22 06:51:00'),
(29, 'Electrical Emergency Repair Service', '90.00', 1, '3', 'minutes', '85.50', '5.00', NULL, 'Our Electrical Emergency Repair Service provides rapid response to urgent electrical issues. Whether you\'re dealing with power outages, faulty wiring, or electrical fires, our certified electricians are available 24/7 to address and resolve the problem. We ensure your electrical system is safe and functional, minimizing downtime and risk.', NULL, 33, 'fixed', 1, '1', NULL, 'electrical-emergency-repair-service', NULL, 1, 1, 1, NULL, '2024-06-17 09:54:17', '2024-06-22 06:50:22'),
(30, 'Residential Cleaning Services', '60.00', 1, '3', 'minutes', '57.00', '5.00', NULL, 'Our Home Cleaning Service provides thorough and detailed cleaning solutions for your entire home. Our professional cleaners use high-quality, eco-friendly products to ensure a clean and healthy living environment. From dusting and vacuuming to mopping and sanitizing, we cover every corner of your home to make it spotless.', NULL, 30, 'fixed', 0, '1', NULL, 'residential-cleaning-services', NULL, 1, 1, 1, NULL, '2024-06-17 10:09:41', '2024-06-22 06:49:45'),
(31, 'Carpet Cleaning Service', '30.00', 1, '2', 'minutes', '29.70', '1.00', NULL, 'Our Carpet Cleaning Service offers deep cleaning solutions to remove dirt, stains, and allergens from your carpets. Using advanced steam cleaning techniques and eco-friendly products, we ensure your carpets are fresh, clean, and extend their lifespan. Our experienced technicians handle all types of carpets and rugs with care.', NULL, 30, 'fixed', 1, '1', NULL, 'carpet-cleaning-service', NULL, 1, 0, 1, NULL, '2024-06-17 10:13:09', '2024-06-22 06:49:03'),
(32, 'Window Cleaning Service', '200.00', 1, '1.5', 'minutes', '170.00', '15.00', NULL, 'Our Window Cleaning Service ensures your windows are crystal clear and streak-free. We provide both interior and exterior window cleaning using professional-grade equipment and techniques. Our trained staff will leave your windows spotless, improving the overall appearance and brightness of your home.', NULL, 30, 'fixed', 1, '1', NULL, 'window-cleaning-service', NULL, 1, 1, 1, NULL, '2024-06-17 10:16:56', '2024-06-17 10:18:21'),
(33, 'Custom Furniture Design and Build Furniture Making', '700.00', 1, '5', 'minutes', '665.00', '5.00', NULL, 'Our Custom Furniture Design and Build service offers personalized furniture solutions tailored to your specific needs and style preferences. Our skilled craftsmen work closely with you to create unique, high-quality pieces that perfectly fit your space and enhance your home’s aesthetics. From concept to completion, we ensure every detail meets your expectations.', NULL, 31, 'fixed', 1, '3', NULL, 'custom-furniture-design-and-build-furniture-making', NULL, 1, 0, 1, NULL, '2024-06-17 10:30:52', '2024-06-19 09:02:41'),
(34, 'Furniture Repair and Restoration', '800.00', 1, '9', 'minutes', '680.00', '15.00', NULL, 'Our Furniture Repair and Restoration service breathes new life into your cherished furniture pieces. Whether it’s an antique that needs delicate restoration or a modern piece that requires repair, our experienced artisans use high-quality materials and techniques to restore the beauty and functionality of your furniture. We handle everything from minor repairs to complete overhauls.', NULL, 31, 'fixed', 1, '3', NULL, 'furniture-repair-and-restoration', NULL, 1, 1, 1, NULL, '2024-06-17 10:39:32', '2024-06-17 10:41:24'),
(35, 'Kitchen Cabinet Installation', '750.00', 1, '6', 'minutes', '735.00', '2.00', NULL, 'Our Kitchen Cabinet Installation service provides expert installation of high-quality cabinets to enhance the functionality and aesthetics of your kitchen. Whether you\'re remodeling or setting up a new kitchen, our experienced installers ensure precise and efficient installation, ensuring your cabinets are secure and aligned perfectly.', NULL, 3, 'fixed', 1, '4', NULL, 'kitchen-cabinet-installation', NULL, 1, 1, 1, NULL, '2024-06-17 11:03:03', '2024-06-19 09:00:24'),
(36, 'Bathroom Cabinet Installation', '900.00', 1, '6', 'minutes', '810.00', '10.00', NULL, 'Our Bathroom Cabinet Installation service offers professional installation of custom and pre-made cabinets to optimize storage and style in your bathroom. We provide a seamless installation experience, ensuring your new cabinets are functional, aesthetically pleasing, and perfectly fitted to your bathroom space.', NULL, 3, 'fixed', 0, '3', NULL, 'bathroom-cabinet-installation', NULL, 1, 1, 1, NULL, '2024-06-17 11:14:18', '2024-06-19 08:59:39'),
(37, 'Custom Cabinet Installation', '700.00', 1, '3', 'minutes', '630.00', '10.00', NULL, 'Our Custom Cabinet Installation service offers personalized cabinet solutions for any room in your home, including kitchens, bathrooms, living rooms, and home offices. Our expert craftsmen design, build, and install cabinets that match your specific needs, style, and space requirements, ensuring a seamless integration with your home\'s decor.', NULL, 31, 'fixed', 1, '3', NULL, 'custom-cabinet-installation', NULL, 1, 1, 1, NULL, '2024-06-17 11:36:05', '2024-06-22 06:44:10'),
(38, 'Hardwood Floor Installation', '800.00', 1, '2', 'minutes', '640.00', '20.00', NULL, 'Our Hardwood Floor Installation service provides expert installation of high-quality hardwood flooring for your home or office. Our team of skilled installers ensures precise and efficient installation, enhancing the beauty and value of your property. We offer a variety of hardwood options, including oak, maple, cherry, and walnut, to match your style and preferences.', NULL, 3, 'fixed', 1, '2', NULL, 'hardwood-floor-installation', NULL, 1, 1, 1, NULL, '2024-06-17 12:21:12', '2024-06-22 06:43:37'),
(39, 'Laminate Floor Installation', '900.00', 1, '5', 'minutes', '720.00', '20.00', NULL, 'Our Laminate Floor Installation service offers a cost-effective and durable flooring solution that mimics the look of real wood. Our professional installers ensure a seamless installation process, providing you with a beautiful, low-maintenance floor that is resistant to scratches and wear. We offer a variety of laminate styles and finishes to suit your decor.', NULL, 3, 'fixed', 1, '3', NULL, 'laminate-floor-installation', NULL, 1, 1, 1, NULL, '2024-06-17 12:27:15', '2024-06-19 08:59:06'),
(40, 'Parquet Flooring Installation', '90.00', 1, '2', 'minutes', '86.40', '4.00', NULL, 'Our Parquet Flooring Installation service offers intricate and elegant parquet flooring solutions that add a touch of sophistication to any room. Our skilled craftsmen install parquet flooring with precision, creating stunning patterns and designs that enhance the beauty and value of your space. We offer various wood types and finishes to match your style preferences.', NULL, 3, 'fixed', 1, '3', NULL, 'parquet-flooring-installation', NULL, 1, 1, 1, NULL, '2024-06-17 12:30:44', '2024-06-22 07:23:20'),
(41, 'Custom Deck Design and Construction', '150.00', 1, '3', 'minutes', '141.00', '6.00', NULL, 'Our Custom Deck Design and Construction service offers personalized deck solutions tailored to your specific needs and preferences. Our team of experienced designers and builders work closely with you to create a unique, high-quality deck that enhances your outdoor living space. We use durable materials and innovative designs to ensure your deck is both beautiful and long-lasting.', NULL, 31, 'fixed', 0, '2', NULL, 'custom-deck-design-and-construction', NULL, 1, 0, 1, NULL, '2024-06-17 12:37:54', '2024-06-22 07:21:46'),
(42, 'Deck Repair and Restoration', '150.00', 1, '3', 'minutes', '141.00', '6.00', NULL, 'Our Deck Repair and Restoration service helps rejuvenate your existing deck, restoring its beauty and structural integrity. Whether your deck has suffered from weather damage, wear and tear, or simply needs a facelift, our skilled technicians provide comprehensive repair and restoration services, including sanding, staining, and structural repairs.', NULL, 31, 'fixed', 0, '1', NULL, 'deck-repair-and-restoration', NULL, 1, 1, 1, NULL, '2024-06-17 12:41:02', '2024-06-22 07:21:01'),
(43, 'Deck Maintenance Services', '150.00', 1, '2', 'minutes', '139.50', '7.00', NULL, 'Our Deck Maintenance Services ensure your deck remains in top condition year-round. Regular maintenance includes cleaning, sealing, and minor repairs to prevent deterioration and extend the life of your deck. Our maintenance packages are designed to keep your deck safe, functional, and looking great.', NULL, 31, 'fixed', 0, '1', NULL, 'deck-maintenance-services', NULL, 1, 1, 1, NULL, '2024-06-17 12:44:03', '2024-06-22 07:20:37'),
(44, 'In-Home Personal Chef Service', '90.00', 1, '4', 'hours', '88.20', '2.00', NULL, 'Our In-Home Personal Chef Service provides a personalized culinary experience right in your home. Whether it\'s for daily meals, special occasions, or dietary needs, our professional chefs create customized menus, shop for ingredients, and prepare delicious meals tailored to your preferences. Enjoy gourmet dining without the hassle of cooking.', NULL, 23, 'fixed', 0, '1', NULL, 'in-home-personal-chef-service', NULL, 1, 1, 1, NULL, '2024-06-17 12:52:15', '2024-06-22 07:20:08'),
(45, 'Event Catering by Personal Chef', '80.00', 1, '4', 'hours', '76.00', '5.00', NULL, 'Our Event Catering by Personal Chef service offers a bespoke catering experience for your events, whether it\'s a small gathering, wedding, or corporate event. Our personal chefs work with you to create a customized menu that reflects your style and preferences, ensuring a memorable culinary experience for your guests.', NULL, 23, 'fixed', 1, '1', NULL, 'event-catering-by-personal-chef', NULL, 1, 1, 1, NULL, '2024-06-17 12:56:09', '2024-06-22 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `services_coupons`
--

CREATE TABLE `services_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_address`
--

CREATE TABLE `service_address` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `address_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_availabilities`
--

CREATE TABLE `service_availabilities` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `address_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `service_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `service_id`, `category_id`) VALUES
(4, 3, 7),
(5, 3, 9),
(6, 4, 13),
(7, 4, 15),
(8, 5, 20),
(9, 6, 31),
(10, 6, 32),
(11, 7, 37),
(12, 7, 38),
(13, 8, 53),
(14, 8, 54),
(15, 9, 54),
(16, 10, 54),
(17, 11, 11),
(18, 11, 13),
(19, 11, 16),
(20, 12, 11),
(21, 12, 13),
(22, 12, 16),
(23, 13, 54),
(24, 14, 54),
(25, 15, 11),
(26, 15, 13),
(27, 15, 16),
(28, 16, 49),
(29, 16, 52),
(30, 16, 54),
(31, 17, 49),
(32, 17, 52),
(33, 17, 54),
(34, 18, 49),
(35, 18, 52),
(36, 18, 54),
(37, 19, 49),
(38, 19, 54),
(39, 20, 25),
(40, 20, 26),
(41, 21, 25),
(42, 21, 27),
(43, 22, 25),
(44, 22, 28),
(45, 23, 43),
(46, 24, 7),
(47, 24, 8),
(48, 24, 9),
(49, 25, 13),
(50, 25, 16),
(51, 3, 8),
(52, 26, 7),
(53, 26, 8),
(54, 26, 9),
(55, 27, 7),
(56, 27, 8),
(57, 27, 9),
(58, 27, 10),
(59, 28, 10),
(60, 28, 43),
(61, 28, 48),
(62, 29, 10),
(63, 29, 31),
(64, 24, 12),
(65, 27, 12),
(66, 26, 12),
(67, 30, 11),
(68, 30, 13),
(69, 30, 14),
(70, 31, 13),
(71, 31, 14),
(72, 31, 15),
(73, 32, 13),
(74, 32, 14),
(75, 32, 17),
(76, 32, 18),
(77, 32, 15),
(78, 30, 15),
(79, 33, 19),
(80, 33, 20),
(81, 34, 19),
(82, 34, 20),
(83, 34, 21),
(84, 3, 21),
(85, 27, 21),
(86, 28, 21),
(87, 29, 21),
(88, 35, 22),
(89, 35, 36),
(90, 36, 22),
(91, 37, 22),
(92, 37, 36),
(93, 38, 19),
(94, 38, 23),
(95, 39, 19),
(96, 39, 23),
(97, 39, 36),
(98, 40, 23),
(99, 41, 19),
(100, 41, 24),
(101, 42, 24),
(102, 43, 24),
(103, 44, 25),
(104, 44, 26),
(105, 45, 25),
(106, 45, 26),
(107, 45, 27),
(108, 44, 27);

-- --------------------------------------------------------

--
-- Table structure for table `service_faqs`
--

CREATE TABLE `service_faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `question` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_faqs`
--

INSERT INTO `service_faqs` (`id`, `service_id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(7, 3, 'How often should I service my window air conditioner?', 'It is recommended to service your window air conditioner at least once a year to maintain its efficiency and prolong its lifespan.', '2024-06-14 16:12:40', '2024-06-14 16:12:40'),
(8, 3, 'What should I do if my air conditioner is not cooling properly?', 'Check the filter and clean it if necessary. If the problem persists, contact our technicians for a thorough inspection and repair.', '2024-06-14 16:12:40', '2024-06-14 16:12:40'),
(9, 3, 'Can you repair all brands of window air conditioners?', 'Yes, our technicians are trained to repair all major brands of window air conditioners.', '2024-06-14 16:12:40', '2024-06-14 16:12:40'),
(10, 4, 'What cleaning products do you use?', 'We use eco-friendly and non-toxic cleaning products to ensure the safety and health of your employees.', '2024-06-14 16:16:21', '2024-06-14 16:16:21'),
(11, 4, 'How often should my office be cleaned?', 'The frequency of cleaning depends on the size of your office and the number of employees. We offer daily, weekly, and monthly cleaning services to suit your needs.', '2024-06-14 16:16:21', '2024-06-14 16:16:21'),
(12, 4, 'Do you provide cleaning services after office hours?', 'Yes, we offer flexible cleaning schedules, including after-hours and weekend services, to minimize disruption to your business operations.', '2024-06-14 16:16:21', '2024-06-14 16:16:21'),
(13, 5, 'How long does it take to make custom furniture?', 'The time required to make custom furniture depends on the complexity of the design and the materials used. We will provide a timeline during the initial consultation.', '2024-06-14 16:19:54', '2024-06-14 16:19:54'),
(14, 5, 'Can you work with my design ideas?', 'Yes, we collaborate with our clients to incorporate their design ideas and preferences into the final product.', '2024-06-14 16:19:54', '2024-06-14 16:19:54'),
(15, 5, 'Do you offer delivery and installation services?', 'Yes, we offer delivery and installation services to ensure your custom furniture is set up correctly and safely.', '2024-06-14 16:19:54', '2024-06-14 16:19:54'),
(16, 6, 'Do you offer emergency electrical services?', 'Yes, we offer 24/7 emergency electrical services to address urgent issues and ensure your safety.', '2024-06-14 16:24:23', '2024-06-14 16:24:23'),
(17, 6, 'How often should I have my electrical system inspected?', 'It is recommended to have your electrical system inspected every 3-5 years, or immediately if you notice any signs of electrical problems.', '2024-06-14 16:24:23', '2024-06-14 16:24:23'),
(18, 6, 'Can you handle both small and large electrical projects?', 'Yes, our electricians are equipped to handle projects of all sizes, from minor repairs to large-scale installations.', '2024-06-14 16:24:23', '2024-06-14 16:24:23'),
(19, 7, 'How long does it take to paint a room?', 'The time required to paint a room depends on its size and the condition of the walls. On average, it takes about 1-2 days per room.', '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(20, 7, 'Can you help me choose the right paint colors?', 'Yes, our painters can provide color consultation services to help you choose the perfect colors for your home.', '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(21, 7, 'Do you offer any warranties on your painting services?', 'Yes, we offer a satisfaction guarantee and warranty on all our painting services to ensure your complete peace of mind.', '2024-06-14 16:29:54', '2024-06-14 16:29:54'),
(22, 8, 'What techniques are used in stress relief therapy?', 'Our therapists use a combination of massage, aromatherapy, and guided relaxation techniques.', '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(23, 8, 'How long does each session last?', 'Each session typically lasts between 60 to 90 minutes.', '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(24, 8, 'How often should I schedule therapy sessions?', 'We recommend scheduling sessions at least once a week for optimal results.', '2024-06-14 16:42:06', '2024-06-14 16:42:06'),
(25, 9, 'What conditions can pain relief therapy help with?', 'Pain relief therapy can help with conditions such as back pain, neck pain, arthritis, and sports injuries.', '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(26, 9, 'Do I need a doctor\'s referral for pain relief therapy?', 'No, you do not need a doctor\'s referral to book a session.', '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(27, 9, 'How many sessions will I need to see improvement?', 'The number of sessions required varies based on the individual\'s condition and response to therapy.', '2024-06-14 16:46:08', '2024-06-14 16:46:08'),
(28, 10, 'What types of natural products are used?', 'We use products made from natural ingredients like aloe vera, coconut oil, and essential oils.', '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(29, 10, 'Are the treatments suitable for all skin types?', 'Yes, our treatments are customized to suit all skin types.', '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(30, 10, 'How often should I get a skincare treatment?', 'We recommend getting a skincare treatment every 4-6 weeks for best results.', '2024-06-14 16:51:34', '2024-06-14 16:51:34'),
(31, 11, 'How long does the cleaning process take?', 'The cleaning process typically takes 1-2 hours per sofa or carpet, depending on the size and condition.', '2024-06-14 16:55:47', '2024-06-14 16:55:47'),
(32, 11, 'Are the cleaning products safe for children and pets?', 'Yes, we use eco-friendly and non-toxic cleaning products.', '2024-06-14 16:55:47', '2024-06-14 16:55:47'),
(33, 11, 'How often should I have my sofa and carpet cleaned?', 'It is recommended to clean your sofa and carpet every 6-12 months.', '2024-06-14 16:55:47', '2024-06-14 16:55:47'),
(34, 12, 'What areas are covered in the cleaning service?', 'Our cleaning service covers all surfaces, including sinks, countertops, floors, and appliances.', '2024-06-14 16:59:04', '2024-06-14 16:59:04'),
(35, 12, 'Do you provide your own cleaning supplies?', 'Yes, we provide all the necessary cleaning supplies and equipment.', '2024-06-14 16:59:04', '2024-06-14 16:59:04'),
(36, 12, 'Can I book a one-time cleaning service?', 'Yes, we offer both one-time and regular cleaning services.', '2024-06-14 16:59:04', '2024-06-14 16:59:04'),
(37, 13, 'What can I expect during an Ayurvedic Massage?', 'During an Ayurvedic Massage, you can expect a calming and nurturing experience. The therapist will use warm Ayurvedic oils and rhythmic strokes to promote relaxation and balance in the body.', '2024-06-15 08:53:50', '2024-06-15 08:53:50'),
(38, 13, 'Is Ayurvedic Massage suitable for everyone?', 'Ayurvedic Massage is generally safe for most people. However, individuals with certain health conditions or pregnant women should consult with their healthcare provider before receiving this treatment.', '2024-06-15 08:53:50', '2024-06-15 08:53:50'),
(39, 13, 'How often should I get an Ayurvedic Massage?', 'The frequency of Ayurvedic Massage depends on your individual needs and health goals. Some people benefit from weekly sessions, while others may choose to receive massages less frequently. It\'s best to consult with an Ayurvedic practitioner to determine the right frequency for you.', '2024-06-15 08:53:50', '2024-06-15 08:53:50'),
(40, 14, 'How does Ayurvedic Pain Relief Head, Neck & Shoulder Massage differ from a regular massage?', 'Ayurvedic Pain Relief Head, Neck & Shoulder Massage is tailored to address specific areas of discomfort and tension. The techniques used are designed to relieve pain, reduce inflammation, and improve mobility in these areas.', '2024-06-15 09:02:45', '2024-06-15 09:02:45'),
(41, 14, 'Is Ayurvedic Pain Relief Head, Neck & Shoulder Massage suitable for everyone?', 'While Ayurvedic Massage is generally safe for most people, individuals with certain health conditions or injuries should consult with their healthcare provider before receiving this treatment.', '2024-06-15 09:02:45', '2024-06-15 09:02:45'),
(42, 14, 'How often should I get an Ayurvedic Pain Relief Head, Neck & Shoulder Massage?', 'The frequency of this massage depends on your individual needs and the severity of your symptoms. Some people benefit from regular sessions, while others may find relief with less frequent treatments. It\'s best to consult with an Ayurvedic practitioner to determine the right frequency for you.', '2024-06-15 09:02:45', '2024-06-15 09:02:45'),
(43, 15, 'How often should I have my chimney swept?', 'Once a year for fireplaces used regularly and twice a year for wood-burning stoves.', '2024-06-15 09:38:14', '2024-06-15 09:38:14'),
(44, 15, 'What does the cleaning process involve?', 'We use a combination of brushes, vacuums, and rods to remove buildup from the flue, firebox, and damper.', '2024-06-15 09:38:14', '2024-06-15 09:38:14'),
(45, 15, 'Do you offer same-day appointments?', 'Same-day appointments may be available depending on scheduling. Please call to confirm.', '2024-06-15 09:38:14', '2024-06-15 09:38:14'),
(46, 16, 'Can this service be customized for sensitive skin?', 'Yes, we offer customized facials based on your skin type.', '2024-06-15 09:43:20', '2024-06-15 09:43:20'),
(47, 16, 'How long does the service typically take?', 'The service typically takes around 60 minutes.', '2024-06-15 09:43:20', '2024-06-15 09:43:20'),
(48, 16, 'What products are used during the service?', 'We use high-quality, professional skincare products.', '2024-06-15 09:43:20', '2024-06-15 09:43:20'),
(49, 17, 'Can this service be customized for sensitive skin?', 'Yes, we offer customized facials based on your skin type.', '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(50, 17, 'How long does the service typically take?', 'The service typically takes around 60 minutes.', '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(51, 17, 'What products are used during the service?', 'We use high-quality, professional skincare products.', '2024-06-15 09:49:13', '2024-06-15 09:49:13'),
(52, 18, 'Can this service be customized for sensitive skin?', 'Yes, we offer customized facials based on your skin type.', '2024-06-15 09:54:36', '2024-06-15 09:54:36'),
(53, 18, 'How long does the service typically take?', 'The service typically takes around 60 minutes.', '2024-06-15 09:54:36', '2024-06-15 09:54:36'),
(54, 18, 'What products are used during the service?', 'We use high-quality, professional skincare products.', '2024-06-15 09:54:36', '2024-06-15 09:54:36'),
(55, 19, 'How long does a full body massage last?', 'Full body massage times vary, but most massages last between 60-90 minutes.', '2024-06-15 10:06:37', '2024-06-15 10:06:37'),
(56, 19, 'Do you offer different types of massages?', 'Yes, we offer a variety of massages', '2024-06-15 10:06:37', '2024-06-15 10:06:37'),
(57, 20, 'What kind of meals can I expect from a personal chef?', 'Our personal chefs can prepare a wide range of meals, from gourmet dishes to family favorites. You can discuss your preferences with the chef to customize your meals.', '2024-06-15 10:25:03', '2024-06-15 10:25:03'),
(58, 20, 'Can the chef accommodate dietary restrictions or food allergies?', 'Yes, our chefs are experienced in accommodating various dietary restrictions and food allergies. Please inform us of any specific requirements when booking your chef.', '2024-06-15 10:25:03', '2024-06-15 10:25:03'),
(59, 20, 'How far in advance do I need to book a personal chef?', 'We recommend booking your personal chef at least one week in advance to ensure availability. However, we can sometimes accommodate last-minute bookings, so feel free to contact us for availability.', '2024-06-15 10:25:03', '2024-06-15 10:25:03'),
(60, 21, 'What types of events do you cater to?', 'We cater to a variety of events, including weddings, corporate events, private parties, and more. Our team can customize the menu and service to suit your event\'s needs.', '2024-06-15 10:30:04', '2024-06-15 10:30:04'),
(61, 21, 'Can you accommodate special dietary requests for guests?', 'Yes, we can accommodate special dietary requests for your guests. Our chefs can create customized dishes for guests with specific dietary needs or restrictions.', '2024-06-15 10:30:04', '2024-06-15 10:30:04'),
(62, 21, 'Do you provide serving staff for the event?', 'Yes, we provide experienced serving staff to ensure your event runs smoothly. Our staff will handle all aspects of food service, allowing you to enjoy your event without any worries.', '2024-06-15 10:30:04', '2024-06-15 10:30:04'),
(63, 22, 'What kind of dishes will I learn to cook in the classes?', 'Our cooking classes cover a variety of dishes from different cuisines. You\'ll learn to cook both basic and advanced dishes, catering to all skill levels.', '2024-06-15 10:34:36', '2024-06-15 10:34:36'),
(64, 22, 'Do I need to bring my own ingredients and equipment?', 'No, we provide all the ingredients and equipment needed for the cooking classes. Just come with an open mind and a passion for cooking!', '2024-06-15 10:34:36', '2024-06-15 10:34:36'),
(65, 22, 'Are the classes suitable for children?', 'Yes, we offer cooking classes for children as well. Our classes are designed to be fun and educational, teaching children basic cooking skills in a safe and supervised environment.', '2024-06-15 10:34:36', '2024-06-15 10:34:36'),
(66, 23, 'What qualifies as a plumbing emergency?', 'A plumbing emergency includes situations such as burst pipes, major leaks, sewer backups, and any other plumbing issue that requires immediate attention to prevent further damage to your property.', '2024-06-15 10:47:53', '2024-06-15 10:47:53'),
(67, 23, 'How do I contact your emergency plumbing services?', 'You can contact our emergency plumbing services by calling our dedicated emergency hotline at. Our team is available 24/7 to assist you.', '2024-06-15 10:47:53', '2024-06-15 10:47:53'),
(68, 23, 'Do you charge extra for emergency plumbing services?', 'Yes, emergency plumbing services may be subject to additional charges due to the urgency and specialized nature of the service. Please contact us for more information about our emergency service rates.', '2024-06-15 10:47:53', '2024-06-15 10:47:53'),
(69, 24, 'What types of AC units do you service?', 'We service a wide range of AC units, including window units, split systems, central air conditioning, and portable ACs.', '2024-06-17 09:02:52', '2024-06-17 09:02:52'),
(70, 24, 'How often should I have my AC unit serviced?', 'It is recommended to have your AC unit serviced at least once a year to ensure optimal performance and prevent potential issues.', '2024-06-17 09:02:52', '2024-06-17 09:02:52'),
(71, 24, 'What does a typical AC maintenance service include?', 'Our AC maintenance service includes a thorough inspection, cleaning of filters and coils, checking refrigerant levels, and ensuring all components are functioning correctly.', '2024-06-17 09:02:52', '2024-06-17 09:02:52'),
(72, 24, 'Do you offer emergency repair services?', 'Yes, we offer 24/7 emergency repair services to ensure your AC unit is up and running as quickly as possible.', '2024-06-17 09:02:52', '2024-06-17 09:02:52'),
(73, 24, 'How can I schedule an appointment for AC service?', 'You can schedule an appointment by visiting our website, or using our mobile app.', '2024-06-17 09:02:52', '2024-06-17 09:02:52'),
(74, 25, 'What types of car washing services do you offer?', 'We offer a range of services including basic exterior washes, full-service interior cleaning, waxing, polishing, and complete detailing packages.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(75, 25, 'How long does a typical car wash take?', 'A basic exterior wash typically takes about 15-20 minutes, while a full-service wash and detailing can take anywhere from 1 to 2 hours depending on the package selected.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(76, 25, 'Do you use eco-friendly products?', 'Yes, we use eco-friendly and biodegradable products to ensure the safety of your car and the environment.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(77, 25, 'Do you use eco-friendly products?', 'Yes, we use eco-friendly and biodegradable products to ensure the safety of your car and the environment.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(78, 25, 'Can I schedule an appointment online?', 'Yes, you can easily schedule an appointment through our website or mobile app. We also accept walk-ins based on availability.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(79, 25, 'Do you offer mobile car washing services?', 'Yes, we offer mobile car washing services where our team comes to your location for your convenience.', '2024-06-17 09:16:45', '2024-06-17 09:16:45'),
(80, 26, 'What types of AC units do you install?', 'We install various types of AC units including window units, split systems, central air conditioning, and ductless mini-splits.', '2024-06-17 09:23:55', '2024-06-17 09:23:55'),
(81, 26, 'How do I know which AC unit is right for my home?', 'Our experts will assess your property and recommend the most suitable AC unit based on factors like room size, cooling needs, and energy efficiency preferences.', '2024-06-17 09:23:55', '2024-06-17 09:23:55'),
(82, 26, 'Is there a warranty on the installation service?', 'Yes, we offer a warranty on our installation services, covering any installation-related issues for a specified period. The exact warranty terms will be provided during the service.', '2024-06-17 09:23:55', '2024-06-17 09:23:55'),
(83, 26, 'How long does the installation process take?', 'The installation process typically takes between 4 to 8 hours, depending on the complexity of the installation and the type of AC unit being installed.', '2024-06-17 09:23:55', '2024-06-17 09:23:55'),
(84, 27, 'What types of emergencies do you handle?', 'We handle a wide range of emergencies including plumbing leaks, electrical failures, HVAC breakdowns, and other urgent repair needs.', '2024-06-17 09:30:40', '2024-06-17 09:30:40'),
(85, 27, 'How quickly can you respond to an emergency?', 'Our technicians are available 24/7 and aim to respond to emergencies within an hour, depending on your location.', '2024-06-17 09:30:40', '2024-06-17 09:30:40'),
(86, 27, 'Do you charge extra for emergency services?', 'Yes, there is an additional fee for emergency services due to the urgency and after-hours nature of the work. The exact fee will be communicated upfront.', '2024-06-17 09:30:40', '2024-06-17 09:30:40'),
(87, 27, 'Are your technicians certified and insured?', 'Yes, all our technicians are certified, experienced, and insured to handle emergency repair situations safely and effectively.', '2024-06-17 09:30:40', '2024-06-17 09:30:40'),
(88, 27, 'How can I contact you in case of an emergency?', 'You can contact us through our 24/7 emergency hotline, via our website, or through our mobile app for immediate assistance.', '2024-06-17 09:30:40', '2024-06-17 09:30:40'),
(89, 28, 'What types of plumbing emergencies do you handle?', 'We handle emergencies such as burst pipes, severe leaks, clogged drains, sewer backups, and water heater failures.', '2024-06-17 09:50:21', '2024-06-17 09:50:21'),
(90, 28, 'How quickly can you arrive for a plumbing emergency?', 'We strive to arrive within an hour of your call, depending on your location and the nature of the emergency.', '2024-06-17 09:50:21', '2024-06-17 09:50:21'),
(91, 28, 'Is there an extra fee for emergency plumbing services?', 'Yes, emergency services do incur an additional fee due to the urgency and potential after-hours work. We will provide a clear estimate before proceeding.', '2024-06-17 09:50:21', '2024-06-17 09:50:21'),
(92, 28, 'Are your plumbers licensed and insured?', 'Yes, all our plumbers are licensed, experienced, and insured to handle emergency situations safely and effectively.', '2024-06-17 09:50:21', '2024-06-17 09:50:21'),
(93, 28, 'Can I schedule a follow-up appointment after the emergency repair?', 'Yes, we can schedule a follow-up appointment to ensure the issue is fully resolved and to discuss any additional repairs or maintenance needed.', '2024-06-17 09:50:21', '2024-06-17 09:50:21'),
(94, 29, 'What types of electrical emergencies do you handle?', 'We handle power outages, faulty wiring, electrical fires, circuit breaker issues, and other urgent electrical problems.', '2024-06-17 09:54:17', '2024-06-17 09:54:17'),
(95, 29, 'How quickly can you respond to an electrical emergency?', 'Our electricians are on standby 24/7 and aim to respond within an hour of your call, depending on your location.', '2024-06-17 09:54:17', '2024-06-17 09:54:17'),
(96, 29, 'Is there an extra fee for emergency electrical services?', 'Yes, emergency electrical services come with an additional fee due to the urgency and potential after-hours nature of the work. We will provide a transparent estimate beforehand.', '2024-06-17 09:54:17', '2024-06-17 09:54:17'),
(97, 29, 'Are your electricians certified and insured?', 'Yes, all our electricians are certified, experienced, and insured to handle electrical emergencies safely and effectively.', '2024-06-17 09:54:17', '2024-06-17 09:54:17'),
(98, 29, 'How can I contact you for an electrical emergency?', 'You can reach us through our 24/7 emergency hotline, via our website, or through our mobile app for immediate assistance.', '2024-06-17 09:54:17', '2024-06-17 09:54:17'),
(99, 30, 'What does the home cleaning service include?', 'Our service includes dusting, vacuuming, mopping, cleaning bathrooms and kitchens, and sanitizing high-touch areas.', '2024-06-17 10:09:41', '2024-06-17 10:09:41'),
(100, 30, 'Do I need to provide cleaning supplies?', 'No, our cleaners come fully equipped with all necessary cleaning supplies and equipment.', '2024-06-17 10:09:41', '2024-06-17 10:09:41'),
(101, 30, 'How often should I schedule home cleaning?', 'We recommend scheduling home cleaning services weekly, bi-weekly, or monthly based on your needs and preferences.', '2024-06-17 10:09:41', '2024-06-17 10:09:41'),
(102, 30, 'Are your cleaners background-checked and insured?', 'Yes, all our cleaners are thoroughly background-checked and insured for your peace of mind.', '2024-06-17 10:09:41', '2024-06-17 10:09:41'),
(103, 30, 'Can I customize the cleaning service?', 'Yes, we offer customizable cleaning packages to meet your specific needs and preferences.', '2024-06-17 10:09:41', '2024-06-17 10:09:41'),
(104, 31, 'How often should I have my carpets cleaned?', 'It is recommended to have your carpets professionally cleaned at least once a year, or more frequently if you have pets or allergies.', '2024-06-17 10:13:09', '2024-06-17 10:13:09'),
(105, 31, 'What method do you use for carpet cleaning?', 'We use hot water extraction (steam cleaning) to deep clean carpets, which is effective in removing dirt, stains, and allergens.', '2024-06-17 10:13:09', '2024-06-17 10:13:09'),
(106, 31, 'Are your cleaning products safe for children and pets?', 'Yes, we use eco-friendly and non-toxic cleaning products that are safe for both children and pets.', '2024-06-17 10:13:09', '2024-06-17 10:13:09'),
(107, 31, 'How long does it take for the carpets to dry?', 'Typically, it takes about 6-8 hours for carpets to dry completely after cleaning, depending on the ventilation and humidity levels in your home.', '2024-06-17 10:13:09', '2024-06-17 10:13:09'),
(108, 31, 'Can you remove tough stains?', 'Yes, our technicians are trained to handle tough stains and will do their best to remove them using specialized stain removal techniques.', '2024-06-17 10:13:09', '2024-06-17 10:13:09'),
(109, 32, 'What is included in the window cleaning service?', 'Our service includes cleaning the interior and exterior of windows, frames, sills, and tracks.', '2024-06-17 10:16:56', '2024-06-17 10:16:56'),
(110, 32, 'Do you clean high-rise windows?', 'Yes, we have the equipment and expertise to clean windows on high-rise buildings safely and effectively.', '2024-06-17 10:16:56', '2024-06-17 10:16:56'),
(111, 32, 'How often should I have my windows cleaned?', 'We recommend having your windows cleaned at least twice a year to maintain their clarity and appearance.', '2024-06-17 10:16:56', '2024-06-17 10:16:56'),
(112, 32, 'Are your window cleaning solutions safe?', 'Yes, we use eco-friendly and non-toxic cleaning solutions that are safe for your windows and the environment.', '2024-06-17 10:16:56', '2024-06-17 10:16:56'),
(113, 32, 'Do you offer same-day service?', 'Same-day service may be available depending on our schedule and your location. Please contact us to check availability.', '2024-06-17 10:16:56', '2024-06-17 10:16:56'),
(114, 33, 'What types of furniture can you create?', 'We can design and build a wide range of furniture, including tables, chairs, beds, cabinets, and more, customized to your specifications.', '2024-06-17 10:30:52', '2024-06-17 10:30:52'),
(115, 33, 'How long does the custom furniture process take?', 'The timeline varies depending on the complexity of the project, but typically it takes between 4 to 8 weeks from design approval to completion.', '2024-06-17 10:30:52', '2024-06-17 10:30:52'),
(116, 33, 'Can I choose the materials for my custom furniture?', 'Yes, we offer a variety of materials, including different types of wood, finishes, and hardware, to suit your preferences.', '2024-06-17 10:30:52', '2024-06-17 10:30:52'),
(117, 33, 'Do you provide design consultations?', 'Yes, we offer design consultations to discuss your ideas, needs, and preferences, ensuring the final product aligns with your vision.', '2024-06-17 10:30:52', '2024-06-17 10:30:52'),
(118, 33, 'Is there a warranty on custom furniture?', 'Yes, we provide a warranty on our custom furniture to cover any craftsmanship-related issues. The exact terms will be detailed during the consultation.', '2024-06-17 10:30:52', '2024-06-17 10:30:52'),
(119, 34, 'What types of furniture do you repair and restore?', 'We repair and restore all types of furniture, including wooden, upholstered, and antique pieces.', '2024-06-17 10:39:32', '2024-06-17 10:39:32'),
(120, 34, 'How do you ensure the quality of restoration?', 'Our artisans use traditional and modern techniques, along with high-quality materials, to ensure the best possible restoration results.', '2024-06-17 10:39:32', '2024-06-17 10:39:32'),
(121, 34, 'Can you match the original finish of the furniture?', 'Yes, we take great care to match the original finish, color, and texture to maintain the authenticity of the piece.', '2024-06-17 10:39:32', '2024-06-17 10:39:32'),
(122, 34, 'How long does the repair and restoration process take?', 'The duration depends on the extent of the damage and the complexity of the restoration, typically ranging from a few days to several weeks.', '2024-06-17 10:39:32', '2024-06-17 10:39:32'),
(123, 34, 'Do you offer pick-up and delivery services?', 'Yes, we offer convenient pick-up and delivery services for your furniture, ensuring safe transport to and from our workshop.', '2024-06-17 10:39:32', '2024-06-17 10:39:32'),
(124, 35, 'What types of kitchen cabinets do you install?', 'We install a variety of kitchen cabinets, including stock, semi-custom, and fully custom cabinets, in a range of styles and finishes.', '2024-06-17 11:03:03', '2024-06-17 11:03:03'),
(125, 35, 'How long does the kitchen cabinet installation take?', 'The installation process typically takes 1 to 3 days, depending on the size of the kitchen and the complexity of the project.', '2024-06-17 11:03:03', '2024-06-17 11:03:03'),
(126, 35, 'Do you offer design consultation services?', 'Yes, we offer design consultation services to help you choose the best cabinet layout, style, and materials for your kitchen.', '2024-06-17 11:03:03', '2024-06-17 11:03:03'),
(127, 35, 'Are your installers certified and insured?', 'Yes, all our installers are certified, experienced, and insured to ensure quality workmanship and safety.', '2024-06-17 11:03:03', '2024-06-17 11:03:03'),
(128, 35, 'Can you remove and dispose of old cabinets?', 'Yes, we offer removal and disposal services for your old cabinets as part of the installation package.', '2024-06-17 11:03:03', '2024-06-17 11:03:03'),
(129, 36, 'What types of bathroom cabinets do you install?', 'We install various types of bathroom cabinets, including vanities, medicine cabinets, linen closets, and wall-mounted units.', '2024-06-17 11:14:18', '2024-06-17 11:14:18'),
(130, 36, 'Can you customize bathroom cabinets to fit unique spaces?', 'Yes, we offer custom bathroom cabinets tailored to fit unique or challenging spaces, ensuring a perfect fit and maximum functionality.', '2024-06-17 11:14:18', '2024-06-17 11:14:18'),
(131, 36, 'How long does the installation process take?', 'The installation process usually takes 1 to 2 days, depending on the size and complexity of the project.', '2024-06-17 11:14:18', '2024-06-17 11:14:18'),
(132, 36, 'Do you offer warranty on your installation services?', 'Yes, we provide a warranty on our installation services, covering any installation-related issues for a specified period.', '2024-06-17 11:14:18', '2024-06-17 11:14:18'),
(133, 36, 'Can you assist with selecting cabinet styles and finishes?', 'Yes, our design team can assist you in selecting the best styles, finishes, and materials to match your bathroom decor and needs.', '2024-06-17 11:14:18', '2024-06-17 11:14:18'),
(134, 37, 'What is the process for custom cabinet installation?', 'The process includes an initial consultation, design and material selection, custom building of the cabinets, and professional installation.', '2024-06-17 11:36:05', '2024-06-17 11:36:05'),
(135, 37, 'How long does it take to complete a custom cabinet project?', 'The timeline varies based on the complexity of the project but typically ranges from 4 to 8 weeks from design approval to installation completion.', '2024-06-17 11:36:05', '2024-06-17 11:36:05'),
(136, 37, 'Can you match existing cabinetry in my home?', 'Yes, we can match the style, finish, and materials of your existing cabinetry to create a cohesive look throughout your home.', '2024-06-17 11:36:05', '2024-06-17 11:36:05'),
(137, 37, 'Do you provide design consultations?', 'Yes, we offer design consultations to discuss your needs, preferences, and space requirements, ensuring the final product meets your expectations.', '2024-06-17 11:36:05', '2024-06-17 11:36:05'),
(138, 37, 'Is there a warranty on custom cabinets?', 'Yes, we provide a warranty on our custom cabinets, covering any craftsmanship-related issues for a specified period.', '2024-06-17 11:36:05', '2024-06-17 11:36:05'),
(139, 38, 'What types of hardwood flooring do you install?', 'We install a wide range of hardwood flooring, including oak, maple, cherry, walnut, and more, in various finishes and styles.', '2024-06-17 12:21:12', '2024-06-17 12:21:12'),
(140, 38, 'How long does the installation process take?', 'The installation process typically takes 2 to 5 days, depending on the size of the area and the complexity of the project.', '2024-06-17 12:21:12', '2024-06-17 12:21:12'),
(141, 38, 'Do you provide subfloor preparation?', 'Yes, we ensure the subfloor is properly prepared before installation to guarantee a smooth and long-lasting hardwood floor.', '2024-06-17 12:21:12', '2024-06-17 12:21:12'),
(142, 38, 'Are your installers certified and insured?', 'Yes, all our installers are certified, experienced, and insured to ensure quality workmanship and safety.', '2024-06-17 12:21:12', '2024-06-17 12:21:12'),
(143, 38, 'Do you offer a warranty on the installation?', 'Yes, we provide a warranty on our installation services, covering any installation-related issues for a specified period.', '2024-06-17 12:21:12', '2024-06-17 12:21:12'),
(144, 39, 'What are the benefits of laminate flooring?', 'Laminate flooring is durable, easy to maintain, scratch-resistant, and offers a wide range of styles that mimic real wood.', '2024-06-17 12:27:15', '2024-06-17 12:27:15'),
(145, 39, 'How long does laminate floor installation take?', 'The installation process typically takes 1 to 3 days, depending on the size of the area and the complexity of the project.', '2024-06-17 12:27:15', '2024-06-17 12:27:15'),
(146, 39, 'Is laminate flooring suitable for high-traffic areas?', 'Yes, laminate flooring is highly durable and suitable for high-traffic areas in both residential and commercial settings.', '2024-06-17 12:27:15', '2024-06-17 12:27:15'),
(147, 39, 'Do you provide a warranty on laminate flooring installation?', 'Yes, we provide a warranty on our installation services, covering any installation-related issues for a specified period.', '2024-06-17 12:27:15', '2024-06-17 12:27:15'),
(148, 39, 'Can you install laminate flooring over existing floors?', 'Yes, laminate flooring can often be installed over existing floors, provided they are clean, dry, and level.', '2024-06-17 12:27:15', '2024-06-17 12:27:15'),
(149, 40, 'What types of parquet patterns do you offer?', 'We offer a variety of parquet patterns, including herringbone, chevron, basket weave, and more, to suit your aesthetic preferences.', '2024-06-17 12:30:44', '2024-06-17 12:30:44'),
(150, 40, 'How long does parquet floor installation take?', 'The installation process typically takes 3 to 7 days, depending on the size of the area and the complexity of the pattern.', '2024-06-17 12:30:44', '2024-06-17 12:30:44'),
(151, 40, 'Do you provide custom parquet designs?', 'Yes, we offer custom parquet designs tailored to your specific preferences and space requirements.', '2024-06-17 12:30:44', '2024-06-17 12:30:44'),
(152, 40, 'Are your parquet floors easy to maintain?', 'Yes, parquet floors are relatively easy to maintain with regular sweeping and occasional damp mopping to keep them looking their best.', '2024-06-17 12:30:44', '2024-06-17 12:30:44'),
(153, 40, 'Is there a warranty on parquet flooring installation?', 'Yes, we provide a warranty on our installation services, covering any installation-related issues for a specified period.', '2024-06-17 12:30:44', '2024-06-17 12:30:44'),
(154, 41, 'What materials do you use for custom decks?', 'We use a variety of materials, including wood (cedar, redwood, pressure-treated lumber), composite, and PVC, to match your preferences and budget.', '2024-06-17 12:37:54', '2024-06-17 12:37:54'),
(155, 41, 'How long does it take to design and build a custom deck?', 'The timeline varies depending on the complexity of the design and the size of the deck, typically ranging from 2 to 4 weeks.', '2024-06-17 12:37:54', '2024-06-17 12:37:54'),
(156, 41, 'Do you provide design consultations?', 'Yes, we offer design consultations to discuss your ideas, preferences, and requirements, ensuring the final design meets your expectations.', '2024-06-17 12:37:54', '2024-06-17 12:37:54'),
(157, 41, 'Is there a warranty on custom decks?', 'Yes, we provide a warranty on our custom decks, covering any craftsmanship-related issues for a specified period.', '2024-06-17 12:37:54', '2024-06-17 12:37:54'),
(158, 41, 'Can you incorporate special features into the deck design?', 'Yes, we can incorporate various features such as built-in seating, lighting, pergolas, and more to enhance your deck’s functionality and aesthetics.', '2024-06-17 12:37:54', '2024-06-17 12:37:54'),
(159, 42, 'What types of deck repairs do you offer?', 'We offer a wide range of repairs, including replacing damaged boards, reinforcing structural components, sanding, staining, and sealing.', '2024-06-17 12:41:02', '2024-06-17 12:41:02'),
(160, 42, 'How long does the repair and restoration process take?', 'The timeline depends on the extent of the damage and the scope of the restoration, typically taking 1 to 3 days.', '2024-06-17 12:41:02', '2024-06-17 12:41:02'),
(161, 42, 'Do you use eco-friendly products for restoration?', 'Yes, we use eco-friendly and non-toxic products for staining and sealing to ensure safety and environmental responsibility.', '2024-06-17 12:41:02', '2024-06-17 12:41:02'),
(162, 42, 'Can you restore all types of decks?', 'Yes, we can restore decks made from various materials, including wood, composite, and PVC.', '2024-06-17 12:41:02', '2024-06-17 12:41:02'),
(163, 42, 'Is there a warranty on deck repair and restoration?', 'Yes, we provide a warranty on our repair and restoration services, covering any workmanship-related issues for a specified period.', '2024-06-17 12:41:02', '2024-06-17 12:41:02'),
(164, 43, 'What does deck maintenance include?', 'Our maintenance services include thorough cleaning, sealing, minor repairs, and inspection of structural components to ensure the deck\'s integrity.', '2024-06-17 12:44:03', '2024-06-17 12:44:03'),
(165, 43, 'How often should I schedule deck maintenance?', 'We recommend scheduling maintenance at least once a year, preferably in the spring or fall, to keep your deck in optimal condition.', '2024-06-17 12:44:03', '2024-06-17 12:44:03'),
(166, 43, 'What cleaning methods do you use?', 'We use pressure washing and eco-friendly cleaning solutions to remove dirt, mold, and mildew without damaging the deck material.', '2024-06-17 12:44:03', '2024-06-17 12:44:03'),
(167, 43, 'Do you offer maintenance packages?', 'Yes, we offer various maintenance packages tailored to your needs, including seasonal and annual options.', '2024-06-17 12:44:03', '2024-06-17 12:44:03'),
(168, 43, 'Is there a warranty on maintenance services?', 'Yes, we provide a warranty on our maintenance services, ensuring quality workmanship and satisfaction.', '2024-06-17 12:44:03', '2024-06-17 12:44:03'),
(169, 44, 'What types of cuisines can your personal chefs prepare?', 'Our chefs are skilled in a wide range of cuisines, including Italian, French, Asian, Mediterranean, and more, tailored to your tastes and dietary needs.', '2024-06-17 12:52:15', '2024-06-17 12:52:15'),
(170, 44, 'Do you accommodate special dietary requirements?', 'Yes, we accommodate various dietary requirements, including gluten-free, vegan, keto, and other specialized diets.', '2024-06-17 12:52:15', '2024-06-17 12:52:15'),
(171, 44, 'How do I schedule an in-home personal chef service?', 'You can schedule the service by contacting us through our website or phone, and we\'ll arrange a consultation to discuss your preferences and schedule.', '2024-06-17 12:52:15', '2024-06-17 12:52:15'),
(172, 44, 'Do you provide the ingredients for the meals?', 'Yes, our chefs handle all grocery shopping and bring the freshest ingredients needed for your meals.', '2024-06-17 12:52:15', '2024-06-17 12:52:15'),
(173, 44, 'Is there a minimum duration for hiring a personal chef?', 'We offer flexible packages, including single meals, daily, weekly, and monthly services, to suit your needs.', '2024-06-17 12:52:15', '2024-06-17 12:52:15'),
(174, 45, 'What types of events do you cater to?', 'We cater to a wide range of events, including weddings, birthdays, corporate events, and private parties, providing customized menus and services.', '2024-06-17 12:56:10', '2024-06-17 12:56:10'),
(175, 45, 'Can you accommodate large groups?', 'Yes, we can accommodate both small and large groups, tailoring our services to fit the size and nature of your event.', '2024-06-17 12:56:10', '2024-06-17 12:56:10'),
(176, 45, 'Do you provide all necessary catering equipment?', 'Yes, we provide all necessary equipment, including serving dishes, utensils, and more, to ensure a seamless catering experience.', '2024-06-17 12:56:10', '2024-06-17 12:56:10'),
(177, 45, 'How do I book an event catering service?', 'You can book our catering service by contacting us through our website or phone. We’ll arrange a consultation to discuss your event details and menu preferences.', '2024-06-17 12:56:10', '2024-06-17 12:56:10'),
(178, 45, 'Can you provide themed or specialized menus?', 'Yes, we can create themed or specialized menus to match the theme of your event, ensuring a unique and personalized dining experience.', '2024-06-17 12:56:10', '2024-06-17 12:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `service_packages`
--

CREATE TABLE `service_packages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `disclaimer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `discount` decimal(8,2) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_featured` tinyint(1) DEFAULT '0',
  `hexa_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `created_by_id` bigint UNSIGNED DEFAULT NULL,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_packages`
--

INSERT INTO `service_packages` (`id`, `title`, `price`, `description`, `disclaimer`, `discount`, `status`, `is_featured`, `hexa_code`, `slug`, `meta_title`, `meta_description`, `provider_id`, `created_by_id`, `started_at`, `ended_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ultimate Wellness & Beauty Experience', '100.00', 'Indulge in our Ultimate Wellness & Beauty Experience, a luxurious combination of our top-rated Pain Relief Therapy and Natural Skincare Treatment. This exclusive package is designed to rejuvenate your body and skin, providing a holistic approach to wellness and beauty.', NULL, '5.00', 1, 1, '#53a3d5', 'ultimate-wellness-beauty-experience', NULL, NULL, 30, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 11:49:20', '2024-06-15 11:49:20'),
(2, 'Gourmet Dining Experience', '1500.00', 'Elevate your dining with our Gourmet Dining Experience, a premium package that seamlessly blends our exceptional Catering Services and Personal Chef Service. This unique offering is perfect for any occasion, whether it\'s an intimate dinner party, a family gathering, or a grand celebration.', NULL, '1.00', 1, 1, '#0f84cc', 'gourmet-dining-experience', NULL, NULL, 23, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 11:57:26', '2024-06-15 11:57:26'),
(3, 'Home Transformation Package', '5500.00', 'Revitalize your living space with our Home Transformation Package, a comprehensive service that combines expert Electrical Wiring and Installation with professional Interior House Painting. This package is designed to enhance both the functionality and aesthetic appeal of your home, creating a safe, beautiful, and modern environment.', NULL, '2.00', 1, 1, '#5715d1', 'home-transformation-package', NULL, NULL, 31, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 12:09:53', '2024-06-15 12:09:53'),
(4, 'Holistic Ayurvedic Healing', '650.00', 'Immerse yourself in the ancient wisdom of Ayurveda with our Holistic Ayurvedic Healing package, which combines our specialized Ayurvedic Pain Relief Head, Neck & Shoulder Massage with a full-body Ayurvedic Massage. This comprehensive service is designed to provide deep relaxation, pain relief, and overall wellness, balancing your body and mind through time-honored techniques.', NULL, '10.00', 1, 1, '#7f25bb', 'holistic-ayurvedic-healing', NULL, NULL, 33, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 12:31:28', '2024-06-15 12:31:28'),
(5, 'Men\'s Ultimate Rejuvenation', '1200.00', 'Discover the pinnacle of relaxation and skincare with our Men\'s Ultimate Rejuvenation package. This exclusive offering combines our specialized Face Care & Facial Detan Service for Men with a revitalizing Full Body Massage, designed to refresh, rejuvenate, and renew your body and skin.', NULL, '1.00', 1, 1, '#122c97', 'men-s-ultimate-rejuvenation', NULL, NULL, 33, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 12:33:54', '2024-06-15 12:33:54'),
(6, 'Comprehensive Clean Spaces', '800.00', 'Achieve the highest standards of cleanliness with our Comprehensive Clean Spaces package, a dual-service offering that combines our meticulous Bathroom & Kitchen Deep Cleaning with our thorough Office Cleaning Service. This package is ideal for those who seek a pristine and hygienic environment both at home and at work.', NULL, '10.00', 1, 1, '#9b159d', 'comprehensive-clean-spaces', NULL, NULL, 3, 1, '2024-06-15', '2024-06-30', NULL, '2024-06-15 12:36:34', '2024-06-19 09:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `service_package_services`
--

CREATE TABLE `service_package_services` (
  `id` bigint UNSIGNED NOT NULL,
  `service_package_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_package_services`
--

INSERT INTO `service_package_services` (`id`, `service_package_id`, `service_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 9, NULL, NULL, NULL),
(2, 1, 10, NULL, NULL, NULL),
(3, 2, 20, NULL, NULL, NULL),
(4, 2, 21, NULL, NULL, NULL),
(5, 3, 6, NULL, NULL, NULL),
(6, 3, 7, NULL, NULL, NULL),
(7, 4, 13, NULL, NULL, NULL),
(8, 4, 14, NULL, NULL, NULL),
(9, 5, 18, NULL, NULL, NULL),
(10, 5, 19, NULL, NULL, NULL),
(11, 6, 4, NULL, NULL, NULL),
(12, 6, 12, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_proofs`
--

CREATE TABLE `service_proofs` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_proofs`
--

INSERT INTO `service_proofs` (`id`, `booking_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 20, 'service done', 'service done', '2024-07-24 01:30:55', '2024-07-24 01:30:55'),
(3, 8, 'service is done', 'service is done', '2024-07-24 02:21:02', '2024-07-24 02:21:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `values` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `values`, `created_at`, `updated_at`) VALUES
(1, '{\"mail\": null, \"email\": {\"mail_host\": \"smtp.gmail.com\", \"mail_port\": \"587\", \"mail_mailer\": \"smtp\", \"mail_password\": \"kpsdqncnjdwgbeld\", \"mail_username\": \"fixit.pixelstrap@gmail.com\", \"mail_from_name\": \"Fixit\", \"mail_encryption\": \"tls\", \"mail_from_address\": \"fixit.pixelstrap@gmail.com\"}, \"general\": {\"mode\": \"light\", \"favicon\": \"https://laravel.pixelstrap.net/fixit/storage/545/faviconIcon.png\", \"copyright\": \"Copyright 2024 © Fixit theme by pixelstrap\", \"dark_logo\": \"https://laravel.pixelstrap.net/fixit/storage/547/logo-dark.png\", \"site_name\": \"Fixit\", \"light_logo\": \"https://laravel.pixelstrap.net/fixit/storage/546/Logo-Light.png\", \"platform_fees\": \"10\", \"default_timezone\": \"Pacific/Wake\", \"min_booking_amount\": \"10\", \"platform_fees_type\": \"fixed\", \"default_currency_id\": \"1\", \"default_language_id\": \"1\"}, \"firebase\": {\"service_json\": {\"type\": \"service_account\", \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\", \"client_id\": \"106003570537958311205\", \"token_uri\": \"https://oauth2.googleapis.com/token\", \"project_id\": \"fixit-db226\", \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDT2xgBDx+q1gxt\\nyPN9guKC8JVIstknDYa6xrfK5zsofUiTHlirWq0VJ/+mHlfmkBBABJ14WaEmVQ8p\\nGVpDQovwR1HtGzDkoHM9pwOmGZBzQv41bR3YPSw53JaJqHJakCOrbgE/O6rUJLIM\\nLcjxTCUL9OQrFtuaOV6y3VbHnOlidpE2nWr9E15DKm6XntHvRWL1bVq3SL9ZVD7P\\nzvE9mHOIm+SQRjGRuboHogeilyjXmC0Nhts37wLb/M6vs+v/xD98lW921B9x3S2Z\\nMqgKGj8YWsGCu1BeFtgoOHz60qhBPktVMjoIwBpaoEsNhBLcsgLUX1XO0KnO11i4\\nj+nHC/LnAgMBAAECggEAU21j9obOIahJHLKVsEdqi8XSA97qRMa+166Jkg2c7kTn\\n34eDw3bh0gL+WZx5YQI6Y/ttR4eEPmQgpD6nnPUHxodPa9/ZUS8eMpkihrZqe/lV\\nwhRGPHFaiS6k2XDMF33LjiaztwL4MrKAquscxmkF7b9yWsWVlRYihK1FDzZrcaon\\ngnaM3ZTZH+zR81pDmQmJhRVkMQQiB9ADUqYxH7ZfKLTvq0kUGx2qJ9oSULyf2XjP\\nkjT4opMNLCX45z6myB1Uxp/WsjUoxkBfQU7R7++kxS/VWJ9Dp9xXxaE5wEDRDIB3\\nppj5Tb9Hu9uwL0JXYd18Zz3nj0vR2NdKb8uvTkURgQKBgQD6GHAiGcGUxSeM6li9\\nRhMWQ0Lni5hs425CAaMIVnw7VwFB35bmPMBuwc/l1C3pVN5fMQVFqb+kTE6q5yvB\\nIm/yXewJ3IrtbarCqrFbAMNJZamn/8+ib71Vhn8DsaX3rpgBSw/P4+6GJAmlVIDB\\n/LvIjKHWOPGXQwWyuNGLf1cakwKBgQDY24mpLyqE4cf7Oj8HS+c0RKqYkBHmGfwY\\ntkVEGkyjLHwUe79UftsWNW6FDUVfqxxurzqId1+esC9HrfPK77LsbQTXOBXSrUql\\nUgkf+ZyWQ93AZBXGTUIu+MRuUfUgzskqEZZu1qXhE8wDaXlUpGWo2sM5TfEncyDP\\n/KrbFiU23QKBgF4EY9sd7Zz8xNJ/op58wl4jKPqcis+ca+2aaeyPfqJcIdfesv6Y\\npgq9B2ex7RSDWBlW91Fp7+ZW3Vf4EYXIaWcmkb5fT0bUbFZEDupUDhYAhtfmHetF\\nsFp/di4wUWEcHH6X9jjDyf5Ze9rQOpsyZHGPFKPQwlmH05ONURDs7RTLAoGBAM9m\\nkC9N29WA9rlwyI0a7AISVjJZP7UZTwD3eiGbIYbB6d3RSHjwZmrEKXJ48cuApE27\\nqziPKtVjXaSpWsvRGgeCcKnBiyWV9RlN70o0ea1BNRlm32hrxYuVApEcM1vwSXbB\\noWVaRwWP4IO24YKxREUNDL+Gqsh3FH+3AFVOxcLFAoGAOqs1vG0wZwPoEegYs5dB\\nuDfX4oKibtFN+hegKeRZeG6p0QBEeP/FQtKiUFzSzEfooni4kWtI9hDWnHz5VMR/\\na+de7UQrU9sSHRy/42EEZV9mZ+YFfuiSm15OgipHaVK3Mc0EysYxq+qOj1BV2FQT\\nQTR3pra+lZtYzcDkhs2295I=\\n-----END PRIVATE KEY-----\\n\", \"client_email\": \"firebase-adminsdk-fd7gn@fixit-db226.iam.gserviceaccount.com\", \"private_key_id\": \"cf47d079e87639acd62596406da41f03d3dd9dcd\", \"universe_domain\": \"googleapis.com\", \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fd7gn%40fixit-db226.iam.gserviceaccount.com\", \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\"}, \"google_map_api_key\": \"AIzaSyDNuJFHTBoAJeSsDdJhyuQrpkDo5_bl6As\"}, \"activation\": {\"cash\": \"1\", \"coupon_enable\": \"1\", \"wallet_enable\": \"1\", \"default_credentials\": \"1\", \"extra_charge_status\": \"1\", \"subscription_enable\": \"1\", \"platform_fees_status\": \"1\", \"service_auto_approve\": \"1\", \"provider_auto_approve\": \"1\"}, \"google_reCaptcha\": {\"secret\": null, \"status\": \"0\", \"site_key\": null}, \"subscription_plan\": {\"free_trial_days\": \"7\", \"free_trial_enabled\": \"1\"}, \"provider_commissions\": {\"status\": \"0\", \"min_withdraw_amount\": \"500\", \"default_commission_rate\": \"10\", \"is_category_based_commission\": \"1\"}, \"default_creation_limits\": {\"allowed_max_services\": \"5\", \"allowed_max_addresses\": \"5\", \"allowed_max_servicemen\": \"10\", \"allowed_max_service_packages\": \"3\"}}', '2024-06-13 11:38:16', '2024-08-21 10:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'Andaman and Nicobar Islands', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(2, 'Andhra Pradesh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(3, 'Arunachal Pradesh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(4, 'Assam', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(5, 'Bihar', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(6, 'Chandigarh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(7, 'Chhattisgarh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(8, 'Dadra and Nagar Haveli', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(9, 'Daman and Diu', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(10, 'Delhi', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(11, 'Goa', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(12, 'Gujarat', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(13, 'Haryana', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(14, 'Himachal Pradesh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(15, 'Jammu and Kashmir', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(16, 'Jharkhand', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(17, 'Karnataka', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(18, 'Kenmore', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(19, 'Kerala', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(20, 'Lakshadweep', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(21, 'Madhya Pradesh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(22, 'Maharashtra', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(23, 'Manipur', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(24, 'Meghalaya', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(25, 'Mizoram', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(26, 'Nagaland', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(27, 'Narora', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(28, 'Natwar', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(29, 'Odisha', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(30, 'Paschim Medinipur', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(31, 'Pondicherry', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(32, 'Punjab', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(33, 'Rajasthan', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(34, 'Sikkim', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(35, 'Tamil Nadu', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(36, 'Telangana', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(37, 'Tripura', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(38, 'Uttar Pradesh', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(39, 'Uttarakhand', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(40, 'Vaishali', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(41, 'West Bengal', 356, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(42, 'Badakhshan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(43, 'Badgis', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(44, 'Baglan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(45, 'Balkh', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(46, 'Bamiyan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(47, 'Farah', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(48, 'Faryab', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(49, 'Gawr', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(50, 'Gazni', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(51, 'Herat', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(52, 'Hilmand', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(53, 'Jawzjan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(54, 'Kabul', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(55, 'Kapisa', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(56, 'Khawst', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(57, 'Kunar', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(58, 'Lagman', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(59, 'Lawghar', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(60, 'Nangarhar', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(61, 'Nimruz', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(62, 'Nuristan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(63, 'Paktika', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(64, 'Paktiya', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(65, 'Parwan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(66, 'Qandahar', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(67, 'Qunduz', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(68, 'Samangan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(69, 'Sar-e Pul', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(70, 'Takhar', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(71, 'Uruzgan', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(72, 'Wardak', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(73, 'Zabul', 4, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(74, 'Berat', 8, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(75, 'Bulqize', 8, '2024-06-13 11:37:38', '2024-06-13 11:37:38'),
(76, 'Delvine', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(77, 'Devoll', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(78, 'Dibre', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(79, 'Durres', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(80, 'Elbasan', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(81, 'Fier', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(82, 'Gjirokaster', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(83, 'Gramsh', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(84, 'Has', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(85, 'Kavaje', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(86, 'Kolonje', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(87, 'Korce', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(88, 'Kruje', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(89, 'Kucove', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(90, 'Kukes', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(91, 'Kurbin', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(92, 'Lezhe', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(93, 'Librazhd', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(94, 'Lushnje', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(95, 'Mallakaster', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(96, 'Malsi e Madhe', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(97, 'Mat', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(98, 'Mirdite', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(99, 'Peqin', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(100, 'Permet', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(101, 'Pogradec', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(102, 'Puke', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(103, 'Sarande', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(104, 'Shkoder', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(105, 'Skrapar', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(106, 'Tepelene', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(107, 'Tirane', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(108, 'Tropoje', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(109, 'Vlore', 8, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(110, '\'Ayn Daflah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(111, '\'Ayn Tamushanat', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(112, 'Adrar', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(113, 'Algiers', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(114, 'Annabah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(115, 'Bashshar', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(116, 'Batnah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(117, 'Bijayah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(118, 'Biskrah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(119, 'Blidah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(120, 'Buirah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(121, 'Bumardas', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(122, 'Burj Bu Arririj', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(123, 'Ghalizan', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(124, 'Ghardayah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(125, 'Ilizi', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(126, 'Jijili', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(127, 'Jilfah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(128, 'Khanshalah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(129, 'Masilah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(130, 'Midyah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(131, 'Milah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(132, 'Muaskar', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(133, 'Mustaghanam', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(134, 'Naama', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(135, 'Oran', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(136, 'Ouargla', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(137, 'Qalmah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(138, 'Qustantinah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(139, 'Sakikdah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(140, 'Satif', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(141, 'Sayda\'', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(142, 'Sidi ban-al-\'Abbas', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(143, 'Suq Ahras', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(144, 'Tamanghasat', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(145, 'Tibazah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(146, 'Tibissah', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(147, 'Tilimsan', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(148, 'Tinduf', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(149, 'Tisamsilt', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(150, 'Tiyarat', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(151, 'Tizi Wazu', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(152, 'Umm-al-Bawaghi', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(153, 'Wahran', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(154, 'Warqla', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(155, 'Wilaya d Alger', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(156, 'Wilaya de Bejaia', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(157, 'Wilaya de Constantine', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(158, 'al-Aghwat', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(159, 'al-Bayadh', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(160, 'al-Jaza\'ir', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(161, 'al-Wad', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(162, 'ash-Shalif', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(163, 'at-Tarif', 12, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(164, 'Eastern', 16, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(165, 'Manu\'a', 16, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(166, 'Swains Island', 16, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(167, 'Western', 16, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(168, 'Andorra la Vella', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(169, 'Canillo', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(170, 'Encamp', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(171, 'La Massana', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(172, 'Les Escaldes', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(173, 'Ordino', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(174, 'Sant Julia de Loria', 20, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(175, 'Bengo', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(176, 'Benguela', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(177, 'Bie', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(178, 'Cabinda', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(179, 'Cunene', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(180, 'Huambo', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(181, 'Huila', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(182, 'Kuando-Kubango', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(183, 'Kwanza Norte', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(184, 'Kwanza Sul', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(185, 'Luanda', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(186, 'Lunda Norte', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(187, 'Lunda Sul', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(188, 'Malanje', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(189, 'Moxico', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(190, 'Namibe', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(191, 'Uige', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(192, 'Zaire', 24, '2024-06-13 11:37:39', '2024-06-13 11:37:39'),
(193, 'Other Provinces', 24, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(194, 'Sector claimed by Argentina/Ch', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(195, 'Sector claimed by Argentina/UK', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(196, 'Sector claimed by Australia', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(197, 'Sector claimed by France', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(198, 'Sector claimed by New Zealand', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(199, 'Sector claimed by Norway', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(200, 'Unclaimed Sector', 10, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(201, 'Barbuda', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(202, 'Saint George', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(203, 'Saint John', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(204, 'Saint Mary', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(205, 'Saint Paul', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(206, 'Saint Peter', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(207, 'Saint Philip', 28, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(208, 'Buenos Aires', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(209, 'Catamarca', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(210, 'Chaco', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(211, 'Chubut', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(212, 'Cordoba', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(213, 'Corrientes', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(214, 'Distrito Federal', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(215, 'Entre Rios', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(216, 'Formosa', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(217, 'Jujuy', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(218, 'La Pampa', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(219, 'La Rioja', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(220, 'Mendoza', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(221, 'Misiones', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(222, 'Neuquen', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(223, 'Rio Negro', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(224, 'Salta', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(225, 'San Juan', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(226, 'San Luis', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(227, 'Santa Cruz', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(228, 'Santa Fe', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(229, 'Santiago del Estero', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(230, 'Tierra del Fuego', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(231, 'Tucuman', 32, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(232, 'Aragatsotn', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(233, 'Ararat', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(234, 'Armavir', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(235, 'Gegharkunik', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(236, 'Kotaik', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(237, 'Lori', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(238, 'Shirak', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(239, 'Stepanakert', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(240, 'Syunik', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(241, 'Tavush', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(242, 'Vayots Dzor', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(243, 'Yerevan', 51, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(244, 'Aruba', 533, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(245, 'Auckland', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(246, 'Australian Capital Territory', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(247, 'Balgowlah', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(248, 'Balmain', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(249, 'Bankstown', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(250, 'Baulkham Hills', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(251, 'Bonnet Bay', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(252, 'Camberwell', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(253, 'Carole Park', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(254, 'Castle Hill', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(255, 'Caulfield', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(256, 'Chatswood', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(257, 'Cheltenham', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(258, 'Cherrybrook', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(259, 'Clayton', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(260, 'Collingwood', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(261, 'Frenchs Forest', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(262, 'Hawthorn', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(263, 'Jannnali', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(264, 'Knoxfield', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(265, 'Melbourne', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(266, 'New South Wales', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(267, 'Northern Territory', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(268, 'Perth', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(269, 'Queensland', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(270, 'South Australia', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(271, 'Tasmania', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(272, 'Templestowe', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(273, 'Victoria', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(274, 'Werribee south', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(275, 'Western Australia', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(276, 'Wheeler', 36, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(277, 'Bundesland Salzburg', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(278, 'Bundesland Steiermark', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(279, 'Bundesland Tirol', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(280, 'Burgenland', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(281, 'Carinthia', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(282, 'Karnten', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(283, 'Liezen', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(284, 'Lower Austria', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(285, 'Niederosterreich', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(286, 'Oberosterreich', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(287, 'Salzburg', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(288, 'Schleswig-Holstein', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(289, 'Steiermark', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(290, 'Styria', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(291, 'Tirol', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(292, 'Upper Austria', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(293, 'Vorarlberg', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(294, 'Wien', 40, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(295, 'Abseron', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(296, 'Baki Sahari', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(297, 'Ganca', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(298, 'Ganja', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(299, 'Kalbacar', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(300, 'Lankaran', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(301, 'Mil-Qarabax', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(302, 'Mugan-Salyan', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(303, 'Nagorni-Qarabax', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(304, 'Naxcivan', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(305, 'Priaraks', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(306, 'Qazax', 31, '2024-06-13 11:37:40', '2024-06-13 11:37:40'),
(307, 'Saki', 31, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(308, 'Sirvan', 31, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(309, 'Xacmaz', 31, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(310, 'Abaco', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(311, 'Acklins Island', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(312, 'Andros', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(313, 'Berry Islands', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(314, 'Biminis', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(315, 'Cat Island', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(316, 'Crooked Island', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(317, 'Eleuthera', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(318, 'Exuma and Cays', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(319, 'Grand Bahama', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(320, 'Inagua Islands', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(321, 'Long Island', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(322, 'Mayaguana', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(323, 'New Providence', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(324, 'Ragged Island', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(325, 'Rum Cay', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(326, 'San Salvador', 44, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(327, '\'Isa', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(328, 'Badiyah', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(329, 'Hidd', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(330, 'Jidd Hafs', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(331, 'Mahama', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(332, 'Manama', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(333, 'Sitrah', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(334, 'al-Manamah', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(335, 'al-Muharraq', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(336, 'ar-Rifa\'a', 48, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(337, 'Bagar Hat', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(338, 'Bandarban', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(339, 'Barguna', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(340, 'Barisal', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(341, 'Bhola', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(342, 'Bogora', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(343, 'Brahman Bariya', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(344, 'Chandpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(345, 'Chattagam', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(346, 'Chittagong Division', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(347, 'Chuadanga', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(348, 'Dhaka', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(349, 'Dinajpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(350, 'Faridpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(351, 'Feni', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(352, 'Gaybanda', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(353, 'Gazipur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(354, 'Gopalganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(355, 'Habiganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(356, 'Jaipur Hat', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(357, 'Jamalpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(358, 'Jessor', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(359, 'Jhalakati', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(360, 'Jhanaydah', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(361, 'Khagrachhari', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(362, 'Khulna', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(363, 'Kishorganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(364, 'Koks Bazar', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(365, 'Komilla', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(366, 'Kurigram', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(367, 'Kushtiya', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(368, 'Lakshmipur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(369, 'Lalmanir Hat', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(370, 'Madaripur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(371, 'Magura', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(372, 'Maimansingh', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(373, 'Manikganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(374, 'Maulvi Bazar', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(375, 'Meherpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(376, 'Munshiganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(377, 'Naral', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(378, 'Narayanganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(379, 'Narsingdi', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(380, 'Nator', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(381, 'Naugaon', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(382, 'Nawabganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(383, 'Netrakona', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(384, 'Nilphamari', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(385, 'Noakhali', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(386, 'Pabna', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(387, 'Panchagarh', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(388, 'Patuakhali', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(389, 'Pirojpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(390, 'Rajbari', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(391, 'Rajshahi', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(392, 'Rangamati', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(393, 'Rangpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(394, 'Satkhira', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(395, 'Shariatpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(396, 'Sherpur', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(397, 'Silhat', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(398, 'Sirajganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(399, 'Sunamganj', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(400, 'Tangayal', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(401, 'Thakurgaon', 50, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(402, 'Christ Church', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(403, 'Saint Andrew', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(404, 'Saint James', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(405, 'Saint Joseph', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(406, 'Saint Lucy', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(407, 'Saint Michael', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(408, 'Saint Thomas', 52, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(409, 'Brest', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(410, 'Homjel\'', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(411, 'Hrodna', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(412, 'Mahiljow', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(413, 'Mahilyowskaya Voblasts', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(414, 'Minsk', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(415, 'Minskaja Voblasts\'', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(416, 'Petrik', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(417, 'Vicebsk', 112, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(418, 'Antwerpen', 56, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(419, 'Berchem', 56, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(420, 'Brabant', 56, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(421, 'Brabant Wallon', 56, '2024-06-13 11:37:41', '2024-06-13 11:37:41'),
(422, 'Brussel', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(423, 'East Flanders', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(424, 'Hainaut', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(425, 'Liege', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(426, 'Limburg', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(427, 'Luxembourg', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(428, 'Namur', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(429, 'Ontario', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(430, 'Oost-Vlaanderen', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(431, 'Provincie Brabant', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(432, 'Vlaams-Brabant', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(433, 'Wallonne', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(434, 'West-Vlaanderen', 56, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(435, 'Belize', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(436, 'Cayo', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(437, 'Corozal', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(438, 'Orange Walk', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(439, 'Stann Creek', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(440, 'Toledo', 84, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(441, 'Alibori', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(442, 'Atacora', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(443, 'Atlantique', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(444, 'Borgou', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(445, 'Collines', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(446, 'Couffo', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(447, 'Donga', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(448, 'Littoral', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(449, 'Mono', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(450, 'Oueme', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(451, 'Plateau', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(452, 'Zou', 204, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(453, 'Hamilton', 60, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(454, 'Bumthang', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(455, 'Chhukha', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(456, 'Chirang', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(457, 'Daga', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(458, 'Geylegphug', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(459, 'Ha', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(460, 'Lhuntshi', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(461, 'Mongar', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(462, 'Pemagatsel', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(463, 'Punakha', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(464, 'Rinpung', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(465, 'Samchi', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(466, 'Samdrup Jongkhar', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(467, 'Shemgang', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(468, 'Tashigang', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(469, 'Timphu', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(470, 'Tongsa', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(471, 'Wangdiphodrang', 64, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(472, 'Beni', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(473, 'Chuquisaca', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(474, 'Cochabamba', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(475, 'La Paz', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(476, 'Oruro', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(477, 'Pando', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(478, 'Potosi', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(479, 'Tarija', 68, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(480, 'Federacija Bosna i Hercegovina', 70, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(481, 'Republika Srpska', 70, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(482, 'Central Bobonong', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(483, 'Central Boteti', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(484, 'Central Mahalapye', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(485, 'Central Serowe-Palapye', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(486, 'Central Tutume', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(487, 'Chobe', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(488, 'Francistown', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(489, 'Gaborone', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(490, 'Ghanzi', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(491, 'Jwaneng', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(492, 'Kgalagadi North', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(493, 'Kgalagadi South', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(494, 'Kgatleng', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(495, 'Kweneng', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(496, 'Lobatse', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(497, 'Ngamiland', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(498, 'Ngwaketse', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(499, 'North East', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(500, 'Okavango', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(501, 'Orapa', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(502, 'Selibe Phikwe', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(503, 'South East', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(504, 'Sowa', 72, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(505, 'Bouvet Island', 74, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(506, 'Acre', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(507, 'Alagoas', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(508, 'Amapa', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(509, 'Amazonas', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(510, 'Bahia', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(511, 'Ceara', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(512, 'Espirito Santo', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(513, 'Estado de Sao Paulo', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(514, 'Goias', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(515, 'Maranhao', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(516, 'Mato Grosso', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(517, 'Mato Grosso do Sul', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(518, 'Minas Gerais', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(519, 'Para', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(520, 'Paraiba', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(521, 'Parana', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(522, 'Pernambuco', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(523, 'Piaui', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(524, 'Rio Grande do Norte', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(525, 'Rio Grande do Sul', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(526, 'Rio de Janeiro', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(527, 'Rondonia', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(528, 'Roraima', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(529, 'Santa Catarina', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(530, 'Sao Paulo', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(531, 'Sergipe', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(532, 'Tocantins', 76, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(533, 'British Indian Ocean Territory', 86, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(534, 'Belait', 96, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(535, 'Brunei-Muara', 96, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(536, 'Temburong', 96, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(537, 'Tutong', 96, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(538, 'Blagoevgrad', 100, '2024-06-13 11:37:42', '2024-06-13 11:37:42'),
(539, 'Burgas', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(540, 'Dobrich', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(541, 'Gabrovo', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(542, 'Haskovo', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(543, 'Jambol', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(544, 'Kardzhali', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(545, 'Kjustendil', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(546, 'Lovech', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(547, 'Montana', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(548, 'Oblast Sofiya-Grad', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(549, 'Pazardzhik', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(550, 'Pernik', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(551, 'Pleven', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(552, 'Plovdiv', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(553, 'Razgrad', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(554, 'Ruse', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(555, 'Shumen', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(556, 'Silistra', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(557, 'Sliven', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(558, 'Smoljan', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(559, 'Sofija grad', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(560, 'Sofijska oblast', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(561, 'Stara Zagora', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(562, 'Targovishte', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(563, 'Varna', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(564, 'Veliko Tarnovo', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(565, 'Vidin', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(566, 'Vraca', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(567, 'Yablaniza', 100, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(568, 'Bale', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(569, 'Bam', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(570, 'Bazega', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(571, 'Bougouriba', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(572, 'Boulgou', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(573, 'Boulkiemde', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(574, 'Comoe', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(575, 'Ganzourgou', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(576, 'Gnagna', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(577, 'Gourma', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(578, 'Houet', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(579, 'Ioba', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(580, 'Kadiogo', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(581, 'Kenedougou', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(582, 'Komandjari', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(583, 'Kompienga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(584, 'Kossi', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(585, 'Kouritenga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(586, 'Kourweogo', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(587, 'Leraba', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(588, 'Mouhoun', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(589, 'Nahouri', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(590, 'Namentenga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(591, 'Noumbiel', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(592, 'Oubritenga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(593, 'Oudalan', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(594, 'Passore', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(595, 'Poni', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(596, 'Sanguie', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(597, 'Sanmatenga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(598, 'Seno', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(599, 'Sissili', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(600, 'Soum', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(601, 'Sourou', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(602, 'Tapoa', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(603, 'Tuy', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(604, 'Yatenga', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(605, 'Zondoma', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(606, 'Zoundweogo', 854, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(607, 'Bubanza', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(608, 'Bujumbura', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(609, 'Bururi', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(610, 'Cankuzo', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(611, 'Cibitoke', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(612, 'Gitega', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(613, 'Karuzi', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(614, 'Kayanza', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(615, 'Kirundo', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(616, 'Makamba', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(617, 'Muramvya', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(618, 'Muyinga', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(619, 'Ngozi', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(620, 'Rutana', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(621, 'Ruyigi', 108, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(622, 'Banteay Mean Chey', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(623, 'Bat Dambang', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(624, 'Kampong Cham', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(625, 'Kampong Chhnang', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(626, 'Kampong Spoeu', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(627, 'Kampong Thum', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(628, 'Kampot', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(629, 'Kandal', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(630, 'Kaoh Kong', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(631, 'Kracheh', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(632, 'Krong Kaeb', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(633, 'Krong Pailin', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(634, 'Krong Preah Sihanouk', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(635, 'Mondol Kiri', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(636, 'Otdar Mean Chey', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(637, 'Phnum Penh', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(638, 'Pousat', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(639, 'Preah Vihear', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(640, 'Prey Veaeng', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(641, 'Rotanak Kiri', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(642, 'Siem Reab', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(643, 'Stueng Traeng', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(644, 'Svay Rieng', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(645, 'Takaev', 116, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(646, 'Adamaoua', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(647, 'Centre', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(648, 'Est', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(649, 'Nord', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(650, 'Nord Extreme', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(651, 'Nordouest', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(652, 'Ouest', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(653, 'Sud', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(654, 'Sudouest', 120, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(655, 'Alberta', 124, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(656, 'British Columbia', 124, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(657, 'Manitoba', 124, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(658, 'New Brunswick', 124, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(659, 'Newfoundland and Labrador', 124, '2024-06-13 11:37:43', '2024-06-13 11:37:43'),
(660, 'Northwest Territories', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(661, 'Nova Scotia', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(662, 'Nunavut', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(663, 'Prince Edward Island', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(664, 'Quebec', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(665, 'Saskatchewan', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(666, 'Yukon', 124, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(667, 'Boavista', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(668, 'Brava', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(669, 'Fogo', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(670, 'Maio', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(671, 'Sal', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(672, 'Santo Antao', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(673, 'Sao Nicolau', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(674, 'Sao Tiago', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(675, 'Sao Vicente', 132, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(676, 'Grand Cayman', 136, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(677, 'Bamingui-Bangoran', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(678, 'Bangui', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(679, 'Basse-Kotto', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(680, 'Haut-Mbomou', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(681, 'Haute-Kotto', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(682, 'Kemo', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(683, 'Lobaye', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(684, 'Mambere-Kadei', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(685, 'Mbomou', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(686, 'Nana-Gribizi', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(687, 'Nana-Mambere', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(688, 'Ombella Mpoko', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(689, 'Ouaka', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(690, 'Ouham', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(691, 'Ouham-Pende', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(692, 'Sangha-Mbaere', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(693, 'Vakaga', 140, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(694, 'Batha', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(695, 'Biltine', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(696, 'Bourkou-Ennedi-Tibesti', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(697, 'Chari-Baguirmi', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(698, 'Guera', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(699, 'Kanem', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(700, 'Lac', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(701, 'Logone Occidental', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(702, 'Logone Oriental', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(703, 'Mayo-Kebbi', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(704, 'Moyen-Chari', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(705, 'Ouaddai', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(706, 'Salamat', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(707, 'Tandjile', 148, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(708, 'Aisen', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(709, 'Antofagasta', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(710, 'Araucania', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(711, 'Atacama', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(712, 'Bio Bio', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(713, 'Coquimbo', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(714, 'Libertador General Bernardo O\'', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(715, 'Los Lagos', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(716, 'Magellanes', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(717, 'Maule', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(718, 'Metropolitana', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(719, 'Metropolitana de Santiago', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(720, 'Tarapaca', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(721, 'Valparaiso', 152, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(722, 'Anhui', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(723, 'Anhui Province', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(724, 'Anhui Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(725, 'Aomen', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(726, 'Beijing', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(727, 'Beijing Shi', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(728, 'Chongqing', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(729, 'Fujian', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(730, 'Fujian Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(731, 'Gansu', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(732, 'Guangdong', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44');
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(733, 'Guangdong Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(734, 'Guangxi', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(735, 'Guizhou', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(736, 'Hainan', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(737, 'Hebei', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(738, 'Heilongjiang', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(739, 'Henan', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(740, 'Hubei', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(741, 'Hunan', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(742, 'Jiangsu', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(743, 'Jiangsu Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(744, 'Jiangxi', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(745, 'Jilin', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(746, 'Liaoning', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(747, 'Liaoning Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(748, 'Nei Monggol', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(749, 'Ningxia Hui', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(750, 'Qinghai', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(751, 'Shaanxi', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(752, 'Shandong', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(753, 'Shandong Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(754, 'Shanghai', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(755, 'Shanxi', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(756, 'Sichuan', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(757, 'Tianjin', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(758, 'Xianggang', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(759, 'Xinjiang', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(760, 'Xizang', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(761, 'Yunnan', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(762, 'Zhejiang', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(763, 'Zhejiang Sheng', 156, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(764, 'Christmas Island', 162, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(765, 'Cocos (Keeling) Islands', 166, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(766, 'Antioquia', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(767, 'Arauca', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(768, 'Atlantico', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(769, 'Bogota', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(770, 'Bolivar', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(771, 'Boyaca', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(772, 'Caldas', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(773, 'Caqueta', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(774, 'Casanare', 170, '2024-06-13 11:37:44', '2024-06-13 11:37:44'),
(775, 'Cauca', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(776, 'Cesar', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(777, 'Choco', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(778, 'Cundinamarca', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(779, 'Guainia', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(780, 'Guaviare', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(781, 'La Guajira', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(782, 'Magdalena', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(783, 'Meta', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(784, 'Narino', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(785, 'Norte de Santander', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(786, 'Putumayo', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(787, 'Quindio', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(788, 'Risaralda', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(789, 'San Andres y Providencia', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(790, 'Santander', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(791, 'Sucre', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(792, 'Tolima', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(793, 'Valle del Cauca', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(794, 'Vaupes', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(795, 'Vichada', 170, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(796, 'Mwali', 174, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(797, 'Njazidja', 174, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(798, 'Nzwani', 174, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(799, 'Bouenza', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(800, 'Brazzaville', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(801, 'Cuvette', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(802, 'Kouilou', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(803, 'Lekoumou', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(804, 'Likouala', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(805, 'Niari', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(806, 'Plateaux', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(807, 'Pool', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(808, 'Sangha', 178, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(809, 'Bandundu', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(810, 'Bas-Congo', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(811, 'Equateur', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(812, 'Haut-Congo', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(813, 'Kasai-Occidental', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(814, 'Kasai-Oriental', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(815, 'Katanga', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(816, 'Kinshasa', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(817, 'Maniema', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(818, 'Nord-Kivu', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(819, 'Sud-Kivu', 180, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(820, 'Aitutaki', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(821, 'Atiu', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(822, 'Mangaia', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(823, 'Manihiki', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(824, 'Mauke', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(825, 'Mitiaro', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(826, 'Nassau', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(827, 'Pukapuka', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(828, 'Rakahanga', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(829, 'Rarotonga', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(830, 'Tongareva', 184, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(831, 'Alajuela', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(832, 'Cartago', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(833, 'Guanacaste', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(834, 'Heredia', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(835, 'Limon', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(836, 'Puntarenas', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(837, 'San Jose', 188, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(838, 'Abidjan', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(839, 'Agneby', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(840, 'Bafing', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(841, 'Denguele', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(842, 'Dix-huit Montagnes', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(843, 'Fromager', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(844, 'Haut-Sassandra', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(845, 'Lacs', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(846, 'Lagunes', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(847, 'Marahoue', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(848, 'Moyen-Cavally', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(849, 'Moyen-Comoe', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(850, 'N\'zi-Comoe', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(851, 'Sassandra', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(852, 'Savanes', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(853, 'Sud-Bandama', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(854, 'Sud-Comoe', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(855, 'Vallee du Bandama', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(856, 'Worodougou', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(857, 'Zanzan', 384, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(858, 'Bjelovar-Bilogora', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(859, 'Dubrovnik-Neretva', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(860, 'Grad Zagreb', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(861, 'Istra', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(862, 'Karlovac', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(863, 'Koprivnica-Krizhevci', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(864, 'Krapina-Zagorje', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(865, 'Lika-Senj', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(866, 'Medhimurje', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(867, 'Medimurska Zupanija', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(868, 'Osijek-Baranja', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(869, 'Osjecko-Baranjska Zupanija', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(870, 'Pozhega-Slavonija', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(871, 'Primorje-Gorski Kotar', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(872, 'Shibenik-Knin', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(873, 'Sisak-Moslavina', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(874, 'Slavonski Brod-Posavina', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(875, 'Split-Dalmacija', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(876, 'Varazhdin', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(877, 'Virovitica-Podravina', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(878, 'Vukovar-Srijem', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(879, 'Zadar', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(880, 'Zagreb', 191, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(881, 'Camaguey', 192, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(882, 'Ciego de Avila', 192, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(883, 'Cienfuegos', 192, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(884, 'Ciudad de la Habana', 192, '2024-06-13 11:37:45', '2024-06-13 11:37:45'),
(885, 'Granma', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(886, 'Guantanamo', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(887, 'Habana', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(888, 'Holguin', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(889, 'Isla de la Juventud', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(890, 'La Habana', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(891, 'Las Tunas', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(892, 'Matanzas', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(893, 'Pinar del Rio', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(894, 'Sancti Spiritus', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(895, 'Santiago de Cuba', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(896, 'Villa Clara', 192, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(897, 'Government controlled area', 196, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(898, 'Limassol', 196, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(899, 'Nicosia District', 196, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(900, 'Paphos', 196, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(901, 'Turkish controlled area', 196, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(902, 'Central Bohemian', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(903, 'Frycovice', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(904, 'Jihocesky Kraj', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(905, 'Jihochesky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(906, 'Jihomoravsky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(907, 'Karlovarsky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(908, 'Klecany', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(909, 'Kralovehradecky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(910, 'Liberecky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(911, 'Lipov', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(912, 'Moravskoslezsky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(913, 'Olomoucky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(914, 'Olomoucky Kraj', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(915, 'Pardubicky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(916, 'Plzensky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(917, 'Praha', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(918, 'Rajhrad', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(919, 'Smirice', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(920, 'South Moravian', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(921, 'Straz nad Nisou', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(922, 'Stredochesky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(923, 'Unicov', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(924, 'Ustecky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(925, 'Valletta', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(926, 'Velesin', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(927, 'Vysochina', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(928, 'Zlinsky', 203, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(929, 'Arhus', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(930, 'Bornholm', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(931, 'Frederiksborg', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(932, 'Fyn', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(933, 'Hovedstaden', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(934, 'Kobenhavn', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(935, 'Kobenhavns Amt', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(936, 'Kobenhavns Kommune', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(937, 'Nordjylland', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(938, 'Ribe', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(939, 'Ringkobing', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(940, 'Roervig', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(941, 'Roskilde', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(942, 'Roslev', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(943, 'Sjaelland', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(944, 'Soeborg', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(945, 'Sonderjylland', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(946, 'Storstrom', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(947, 'Syddanmark', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(948, 'Toelloese', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(949, 'Vejle', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(950, 'Vestsjalland', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(951, 'Viborg', 208, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(952, '\'Ali Sabih', 262, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(953, 'Dikhil', 262, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(954, 'Jibuti', 262, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(955, 'Tajurah', 262, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(956, 'Ubuk', 262, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(957, 'Saint David', 212, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(958, 'Saint Luke', 212, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(959, 'Saint Mark', 212, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(960, 'Saint Patrick', 212, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(961, 'Azua', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(962, 'Bahoruco', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(963, 'Barahona', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(964, 'Dajabon', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(965, 'Distrito Nacional', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(966, 'Duarte', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(967, 'El Seybo', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(968, 'Elias Pina', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(969, 'Espaillat', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(970, 'Hato Mayor', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(971, 'Independencia', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(972, 'La Altagracia', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(973, 'La Romana', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(974, 'La Vega', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(975, 'Maria Trinidad Sanchez', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(976, 'Monsenor Nouel', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(977, 'Monte Cristi', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(978, 'Monte Plata', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(979, 'Pedernales', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(980, 'Peravia', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(981, 'Puerto Plata', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(982, 'Salcedo', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(983, 'Samana', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(984, 'San Cristobal', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(985, 'San Pedro de Macoris', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(986, 'Sanchez Ramirez', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(987, 'Santiago', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(988, 'Santiago Rodriguez', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(989, 'Valverde', 214, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(990, 'Azuay', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(991, 'Canar', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(992, 'Carchi', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(993, 'Chimborazo', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(994, 'Cotopaxi', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(995, 'El Oro', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(996, 'Esmeraldas', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(997, 'Galapagos', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(998, 'Guayas', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(999, 'Imbabura', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(1000, 'Loja', 218, '2024-06-13 11:37:46', '2024-06-13 11:37:46'),
(1001, 'Los Rios', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1002, 'Manabi', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1003, 'Morona Santiago', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1004, 'Napo', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1005, 'Orellana', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1006, 'Pastaza', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1007, 'Pichincha', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1008, 'Sucumbios', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1009, 'Tungurahua', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1010, 'Zamora Chinchipe', 218, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1011, 'Aswan', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1012, 'Asyut', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1013, 'Bani Suwayf', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1014, 'Bur Sa\'id', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1015, 'Cairo', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1016, 'Dumyat', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1017, 'Kafr-ash-Shaykh', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1018, 'Matruh', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1019, 'Muhafazat ad Daqahliyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1020, 'Muhafazat al Fayyum', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1021, 'Muhafazat al Gharbiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1022, 'Muhafazat al Iskandariyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1023, 'Muhafazat al Qahirah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1024, 'Qina', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1025, 'Sawhaj', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1026, 'Sina al-Janubiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1027, 'Sina ash-Shamaliyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1028, 'ad-Daqahliyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1029, 'al-Bahr-al-Ahmar', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1030, 'al-Buhayrah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1031, 'al-Fayyum', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1032, 'al-Gharbiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1033, 'al-Iskandariyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1034, 'al-Ismailiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1035, 'al-Jizah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1036, 'al-Minufiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1037, 'al-Minya', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1038, 'al-Qahira', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1039, 'al-Qalyubiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1040, 'al-Uqsur', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1041, 'al-Wadi al-Jadid', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1042, 'as-Suways', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1043, 'ash-Sharqiyah', 818, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1044, 'Ahuachapan', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1045, 'Cabanas', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1046, 'Chalatenango', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1047, 'Cuscatlan', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1048, 'La Libertad', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1049, 'La Union', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1050, 'Morazan', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1051, 'San Miguel', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1052, 'San Vicente', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1053, 'Santa Ana', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1054, 'Sonsonate', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1055, 'Usulutan', 222, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1056, 'Annobon', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1057, 'Bioko Norte', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1058, 'Bioko Sur', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1059, 'Centro Sur', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1060, 'Kie-Ntem', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1061, 'Litoral', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1062, 'Wele-Nzas', 226, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1063, 'Anseba', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1064, 'Debub', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1065, 'Debub-Keih-Bahri', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1066, 'Gash-Barka', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1067, 'Maekel', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1068, 'Semien-Keih-Bahri', 232, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1069, 'Harju', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1070, 'Hiiu', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1071, 'Ida-Viru', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1072, 'Jarva', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1073, 'Jogeva', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1074, 'Laane', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1075, 'Laane-Viru', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1076, 'Parnu', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1077, 'Polva', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1078, 'Rapla', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1079, 'Saare', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1080, 'Tartu', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1081, 'Valga', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1082, 'Viljandi', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1083, 'Voru', 233, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1084, 'Addis Abeba', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1085, 'Afar', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1086, 'Amhara', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1087, 'Benishangul', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1088, 'Diredawa', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1089, 'Gambella', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1090, 'Harar', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1091, 'Jigjiga', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1092, 'Mekele', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1093, 'Oromia', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1094, 'Somali', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1095, 'Southern', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1096, 'Tigray', 231, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1097, 'Falkland Islands', 238, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1098, 'South Georgia', 238, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1099, 'Klaksvik', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1100, 'Nor ara Eysturoy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1101, 'Nor oy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1102, 'Sandoy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1103, 'Streymoy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1104, 'Su uroy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1105, 'Sy ra Eysturoy', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1106, 'Torshavn', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1107, 'Vaga', 234, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1108, 'Central', 242, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1109, 'Northern', 242, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1110, 'South Pacific', 242, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1111, 'Ahvenanmaa', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1112, 'Etela-Karjala', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1113, 'Etela-Pohjanmaa', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1114, 'Etela-Savo', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1115, 'Etela-Suomen Laani', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1116, 'Ita-Suomen Laani', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1117, 'Ita-Uusimaa', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1118, 'Kainuu', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1119, 'Kanta-Hame', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1120, 'Keski-Pohjanmaa', 246, '2024-06-13 11:37:47', '2024-06-13 11:37:47'),
(1121, 'Keski-Suomi', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1122, 'Kymenlaakso', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1123, 'Lansi-Suomen Laani', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1124, 'Lappi', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1125, 'Northern Savonia', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1126, 'Ostrobothnia', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1127, 'Oulun Laani', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1128, 'Paijat-Hame', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1129, 'Pirkanmaa', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1130, 'Pohjanmaa', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1131, 'Pohjois-Karjala', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1132, 'Pohjois-Pohjanmaa', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1133, 'Pohjois-Savo', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1134, 'Saarijarvi', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1135, 'Satakunta', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1136, 'Southern Savonia', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1137, 'Tavastia Proper', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1138, 'Uleaborgs Lan', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1139, 'Uusimaa', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1140, 'Varsinais-Suomi', 246, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1141, 'Ain', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1142, 'Aisne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1143, 'Albi Le Sequestre', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1144, 'Allier', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1145, 'Alpes-Cote dAzur', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1146, 'Alpes-Maritimes', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1147, 'Alpes-de-Haute-Provence', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1148, 'Alsace', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1149, 'Aquitaine', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1150, 'Ardeche', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1151, 'Ardennes', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1152, 'Ariege', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1153, 'Aube', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1154, 'Aude', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1155, 'Auvergne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1156, 'Aveyron', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1157, 'Bas-Rhin', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1158, 'Basse-Normandie', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1159, 'Bouches-du-Rhone', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1160, 'Bourgogne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1161, 'Bretagne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1162, 'Brittany', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1163, 'Burgundy', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1164, 'Calvados', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1165, 'Cantal', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1166, 'Cedex', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1167, 'Charente', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1168, 'Charente-Maritime', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1169, 'Cher', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1170, 'Correze', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1171, 'Corse-du-Sud', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1172, 'Cote-d\'Or', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1173, 'Cotes-d\'Armor', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1174, 'Creuse', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1175, 'Crolles', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1176, 'Deux-Sevres', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1177, 'Dordogne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1178, 'Doubs', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1179, 'Drome', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1180, 'Essonne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1181, 'Eure', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1182, 'Eure-et-Loir', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1183, 'Feucherolles', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1184, 'Finistere', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1185, 'Franche-Comte', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1186, 'Gard', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1187, 'Gers', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1188, 'Gironde', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1189, 'Haut-Rhin', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1190, 'Haute-Corse', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1191, 'Haute-Garonne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1192, 'Haute-Loire', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1193, 'Haute-Marne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1194, 'Haute-Saone', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1195, 'Haute-Savoie', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1196, 'Haute-Vienne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1197, 'Hautes-Alpes', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1198, 'Hautes-Pyrenees', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1199, 'Hauts-de-Seine', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1200, 'Herault', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1201, 'Ile-de-France', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1202, 'Ille-et-Vilaine', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1203, 'Indre', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1204, 'Indre-et-Loire', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1205, 'Isere', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1206, 'Jura', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1207, 'Klagenfurt', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1208, 'Landes', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1209, 'Languedoc-Roussillon', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1210, 'Larcay', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1211, 'Le Castellet', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1212, 'Le Creusot', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1213, 'Limousin', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1214, 'Loir-et-Cher', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1215, 'Loire', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1216, 'Loire-Atlantique', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1217, 'Loiret', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1218, 'Lorraine', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1219, 'Lot', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1220, 'Lot-et-Garonne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1221, 'Lower Normandy', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1222, 'Lozere', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1223, 'Maine-et-Loire', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1224, 'Manche', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1225, 'Marne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1226, 'Mayenne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1227, 'Meurthe-et-Moselle', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1228, 'Meuse', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1229, 'Midi-Pyrenees', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1230, 'Morbihan', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1231, 'Moselle', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1232, 'Nievre', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1233, 'Nord-Pas-de-Calais', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1234, 'Oise', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1235, 'Orne', 250, '2024-06-13 11:37:48', '2024-06-13 11:37:48'),
(1236, 'Paris', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1237, 'Pas-de-Calais', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1238, 'Pays de la Loire', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1239, 'Pays-de-la-Loire', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1240, 'Picardy', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1241, 'Puy-de-Dome', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1242, 'Pyrenees-Atlantiques', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1243, 'Pyrenees-Orientales', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1244, 'Quelmes', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1245, 'Rhone', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1246, 'Rhone-Alpes', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1247, 'Saint Ouen', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1248, 'Saint Viatre', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1249, 'Saone-et-Loire', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1250, 'Sarthe', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1251, 'Savoie', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1252, 'Seine-Maritime', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1253, 'Seine-Saint-Denis', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1254, 'Seine-et-Marne', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1255, 'Somme', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1256, 'Sophia Antipolis', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1257, 'Souvans', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1258, 'Tarn', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1259, 'Tarn-et-Garonne', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1260, 'Territoire de Belfort', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1261, 'Treignac', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1262, 'Upper Normandy', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1263, 'Val-d\'Oise', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1264, 'Val-de-Marne', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1265, 'Var', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1266, 'Vaucluse', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1267, 'Vellise', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1268, 'Vendee', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1269, 'Vienne', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1270, 'Vosges', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1271, 'Yonne', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1272, 'Yvelines', 250, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1273, 'Cayenne', 254, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1274, 'Saint-Laurent-du-Maroni', 254, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1275, 'Iles du Vent', 258, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1276, 'Iles sous le Vent', 258, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1277, 'Marquesas', 258, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1278, 'Tuamotu', 258, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1279, 'Tubuai', 258, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1280, 'Amsterdam', 260, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1281, 'Crozet Islands', 260, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1282, 'Kerguelen', 260, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1283, 'Estuaire', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1284, 'Haut-Ogooue', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1285, 'Moyen-Ogooue', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1286, 'Ngounie', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1287, 'Nyanga', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1288, 'Ogooue-Ivindo', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1289, 'Ogooue-Lolo', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1290, 'Ogooue-Maritime', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1291, 'Woleu-Ntem', 266, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1292, 'Banjul', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1293, 'Basse', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1294, 'Brikama', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1295, 'Janjanbureh', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1296, 'Kanifing', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1297, 'Kerewan', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1298, 'Kuntaur', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1299, 'Mansakonko', 270, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1300, 'Abhasia', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1301, 'Ajaria', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1302, 'Guria', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1303, 'Imereti', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1304, 'Kaheti', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1305, 'Kvemo Kartli', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1306, 'Mcheta-Mtianeti', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1307, 'Racha', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1308, 'Samagrelo-Zemo Svaneti', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1309, 'Samche-Zhavaheti', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1310, 'Shida Kartli', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1311, 'Tbilisi', 268, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1312, 'Baden-Wurttemberg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1313, 'Bavaria', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1314, 'Bayern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1315, 'Beilstein Wurtt', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1316, 'Berlin', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1317, 'Brandenburg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1318, 'Bremen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1319, 'Dreisbach', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1320, 'Freistaat Bayern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1321, 'Hamburg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1322, 'Hannover', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1323, 'Heroldstatt', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1324, 'Hessen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1325, 'Kortenberg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1326, 'Laasdorf', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1327, 'Land Baden-Wurttemberg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1328, 'Land Bayern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1329, 'Land Brandenburg', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1330, 'Land Hessen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1331, 'Land Mecklenburg-Vorpommern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1332, 'Land Nordrhein-Westfalen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1333, 'Land Rheinland-Pfalz', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1334, 'Land Sachsen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1335, 'Land Sachsen-Anhalt', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1336, 'Land Thuringen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1337, 'Lower Saxony', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1338, 'Mecklenburg-Vorpommern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1339, 'Mulfingen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1340, 'Munich', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1341, 'Neubeuern', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1342, 'Niedersachsen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1343, 'Noord-Holland', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1344, 'Nordrhein-Westfalen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1345, 'North Rhine-Westphalia', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1346, 'Osterode', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1347, 'Rheinland-Pfalz', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1348, 'Rhineland-Palatinate', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1349, 'Saarland', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1350, 'Sachsen', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1351, 'Sachsen-Anhalt', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1352, 'Saxony', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1353, 'Thuringia', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1354, 'Webling', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1355, 'Weinstrabe', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1356, 'schlobborn', 276, '2024-06-13 11:37:49', '2024-06-13 11:37:49'),
(1357, 'Ashanti', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1358, 'Brong-Ahafo', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1359, 'Greater Accra', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1360, 'Upper East', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1361, 'Upper West', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1362, 'Volta', 288, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1363, 'Gibraltar', 292, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1364, 'Acharnes', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1365, 'Ahaia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1366, 'Aitolia kai Akarnania', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1367, 'Argolis', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1368, 'Arkadia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1369, 'Arta', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1370, 'Attica', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1371, 'Attiki', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1372, 'Ayion Oros', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1373, 'Crete', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1374, 'Dodekanisos', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1375, 'Drama', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1376, 'Evia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1377, 'Evritania', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1378, 'Evros', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1379, 'Evvoia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1380, 'Florina', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1381, 'Fokis', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1382, 'Fthiotis', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1383, 'Grevena', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1384, 'Halandri', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1385, 'Halkidiki', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1386, 'Hania', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1387, 'Heraklion', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1388, 'Hios', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1389, 'Ilia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1390, 'Imathia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1391, 'Ioannina', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1392, 'Iraklion', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1393, 'Karditsa', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1394, 'Kastoria', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1395, 'Kavala', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1396, 'Kefallinia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1397, 'Kerkira', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1398, 'Kiklades', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1399, 'Kilkis', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1400, 'Korinthia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1401, 'Kozani', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1402, 'Lakonia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1403, 'Larisa', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1404, 'Lasithi', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1405, 'Lesvos', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1406, 'Levkas', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1407, 'Magnisia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1408, 'Messinia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1409, 'Nomos Attikis', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1410, 'Nomos Zakynthou', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1411, 'Pella', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1412, 'Pieria', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1413, 'Piraios', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1414, 'Preveza', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1415, 'Rethimni', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1416, 'Rodopi', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1417, 'Samos', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1418, 'Serrai', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1419, 'Thesprotia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1420, 'Thessaloniki', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1421, 'Trikala', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1422, 'Voiotia', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1423, 'West Greece', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1424, 'Xanthi', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1425, 'Zakinthos', 300, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1426, 'Aasiaat', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1427, 'Ammassalik', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1428, 'Illoqqortoormiut', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1429, 'Ilulissat', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1430, 'Ivittuut', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1431, 'Kangaatsiaq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1432, 'Maniitsoq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1433, 'Nanortalik', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1434, 'Narsaq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1435, 'Nuuk', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1436, 'Paamiut', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1437, 'Qaanaaq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1438, 'Qaqortoq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1439, 'Qasigiannguit', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1440, 'Qeqertarsuaq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1441, 'Sisimiut', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50');
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1442, 'Udenfor kommunal inddeling', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1443, 'Upernavik', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1444, 'Uummannaq', 304, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1445, 'Carriacou-Petite Martinique', 308, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1446, 'Saint Davids', 308, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1447, 'Saint George\'s', 308, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1448, 'Basse-Terre', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1449, 'Grande-Terre', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1450, 'Iles des Saintes', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1451, 'La Desirade', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1452, 'Marie-Galante', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1453, 'Saint Barthelemy', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1454, 'Saint Martin', 312, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1455, 'Agana Heights', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1456, 'Agat', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1457, 'Barrigada', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1458, 'Chalan-Pago-Ordot', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1459, 'Dededo', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1460, 'Hagatna', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1461, 'Inarajan', 316, '2024-06-13 11:37:50', '2024-06-13 11:37:50'),
(1462, 'Mangilao', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1463, 'Merizo', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1464, 'Mongmong-Toto-Maite', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1465, 'Santa Rita', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1466, 'Sinajana', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1467, 'Talofofo', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1468, 'Tamuning', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1469, 'Yigo', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1470, 'Yona', 316, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1471, 'Alta Verapaz', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1472, 'Baja Verapaz', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1473, 'Chimaltenango', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1474, 'Chiquimula', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1475, 'El Progreso', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1476, 'Escuintla', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1477, 'Guatemala', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1478, 'Huehuetenango', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1479, 'Izabal', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1480, 'Jalapa', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1481, 'Jutiapa', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1482, 'Peten', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1483, 'Quezaltenango', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1484, 'Quiche', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1485, 'Retalhuleu', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1486, 'Sacatepequez', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1487, 'San Marcos', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1488, 'Santa Rosa', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1489, 'Solola', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1490, 'Suchitepequez', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1491, 'Totonicapan', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1492, 'Zacapa', 320, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1493, 'Beyla', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1494, 'Boffa', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1495, 'Boke', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1496, 'Conakry', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1497, 'Coyah', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1498, 'Dabola', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1499, 'Dalaba', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1500, 'Dinguiraye', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1501, 'Faranah', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1502, 'Forecariah', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1503, 'Fria', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1504, 'Gaoual', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1505, 'Gueckedou', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1506, 'Kankan', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1507, 'Kerouane', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1508, 'Kindia', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1509, 'Kissidougou', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1510, 'Koubia', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1511, 'Koundara', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1512, 'Kouroussa', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1513, 'Labe', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1514, 'Lola', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1515, 'Macenta', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1516, 'Mali', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1517, 'Mamou', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1518, 'Mandiana', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1519, 'Nzerekore', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1520, 'Pita', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1521, 'Siguiri', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1522, 'Telimele', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1523, 'Tougue', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1524, 'Yomou', 324, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1525, 'Bafata', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1526, 'Bissau', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1527, 'Bolama', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1528, 'Cacheu', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1529, 'Gabu', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1530, 'Oio', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1531, 'Quinara', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1532, 'Tombali', 624, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1533, 'Barima-Waini', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1534, 'Cuyuni-Mazaruni', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1535, 'Demerara-Mahaica', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1536, 'East Berbice-Corentyne', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1537, 'Essequibo Islands-West Demerar', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1538, 'Mahaica-Berbice', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1539, 'Pomeroon-Supenaam', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1540, 'Potaro-Siparuni', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1541, 'Upper Demerara-Berbice', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1542, 'Upper Takutu-Upper Essequibo', 328, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1543, 'Artibonite', 332, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1544, 'Grand\'Anse', 332, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1545, 'Nord-Est', 332, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1546, 'Nord-Ouest', 332, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1547, 'Sud-Est', 332, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1548, 'Heard and McDonald Islands', 334, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1549, 'Atlantida', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1550, 'Choluteca', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1551, 'Colon', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1552, 'Comayagua', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1553, 'Copan', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1554, 'Cortes', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1555, 'Distrito Central', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1556, 'El Paraiso', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1557, 'Francisco Morazan', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1558, 'Gracias a Dios', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1559, 'Intibuca', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1560, 'Islas de la Bahia', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1561, 'Lempira', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1562, 'Ocotepeque', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1563, 'Olancho', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1564, 'Santa Barbara', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1565, 'Valle', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1566, 'Yoro', 340, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1567, 'Hong Kong', 344, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1568, 'Bacs-Kiskun', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1569, 'Baranya', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1570, 'Bekes', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1571, 'Borsod-Abauj-Zemplen', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1572, 'Budapest', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1573, 'Csongrad', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1574, 'Fejer', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1575, 'Gyor-Moson-Sopron', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1576, 'Hajdu-Bihar', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1577, 'Heves', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1578, 'Jasz-Nagykun-Szolnok', 348, '2024-06-13 11:37:51', '2024-06-13 11:37:51'),
(1579, 'Komarom-Esztergom', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1580, 'Nograd', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1581, 'Pest', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1582, 'Somogy', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1583, 'Szabolcs-Szatmar-Bereg', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1584, 'Tolna', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1585, 'Vas', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1586, 'Veszprem', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1587, 'Zala', 348, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1588, 'Austurland', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1589, 'Gullbringusysla', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1590, 'Hofu borgarsva i', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1591, 'Nor urland eystra', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1592, 'Nor urland vestra', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1593, 'Su urland', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1594, 'Su urnes', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1595, 'Vestfir ir', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1596, 'Vesturland', 352, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1597, 'Aceh', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1598, 'Bali', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1599, 'Bangka-Belitung', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1600, 'Banten', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1601, 'Bengkulu', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1602, 'Gandaria', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1603, 'Gorontalo', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1604, 'Jakarta', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1605, 'Jambi', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1606, 'Jawa Barat', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1607, 'Jawa Tengah', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1608, 'Jawa Timur', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1609, 'Kalimantan Barat', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1610, 'Kalimantan Selatan', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1611, 'Kalimantan Tengah', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1612, 'Kalimantan Timur', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1613, 'Kendal', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1614, 'Lampung', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1615, 'Maluku', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1616, 'Maluku Utara', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1617, 'Nusa Tenggara Barat', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1618, 'Nusa Tenggara Timur', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1619, 'Papua', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1620, 'Riau', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1621, 'Riau Kepulauan', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1622, 'Solo', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1623, 'Sulawesi Selatan', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1624, 'Sulawesi Tengah', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1625, 'Sulawesi Tenggara', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1626, 'Sulawesi Utara', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1627, 'Sumatera Barat', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1628, 'Sumatera Selatan', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1629, 'Sumatera Utara', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1630, 'Yogyakarta', 360, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1631, 'Ardabil', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1632, 'Azarbayjan-e Bakhtari', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1633, 'Azarbayjan-e Khavari', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1634, 'Bushehr', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1635, 'Chahar Mahal-e Bakhtiari', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1636, 'Esfahan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1637, 'Fars', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1638, 'Gilan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1639, 'Golestan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1640, 'Hamadan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1641, 'Hormozgan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1642, 'Ilam', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1643, 'Kerman', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1644, 'Kermanshah', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1645, 'Khorasan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1646, 'Khuzestan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1647, 'Kohgiluyeh-e Boyerahmad', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1648, 'Kordestan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1649, 'Lorestan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1650, 'Markazi', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1651, 'Mazandaran', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1652, 'Ostan-e Esfahan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1653, 'Qazvin', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1654, 'Qom', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1655, 'Semnan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1656, 'Sistan-e Baluchestan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1657, 'Tehran', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1658, 'Yazd', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1659, 'Zanjan', 364, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1660, 'Babil', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1661, 'Baghdad', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1662, 'Dahuk', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1663, 'Dhi Qar', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1664, 'Diyala', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1665, 'Erbil', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1666, 'Irbil', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1667, 'Karbala', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1668, 'Kurdistan', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1669, 'Maysan', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1670, 'Ninawa', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1671, 'Salah-ad-Din', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1672, 'Wasit', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1673, 'al-Anbar', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1674, 'al-Basrah', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1675, 'al-Muthanna', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1676, 'al-Qadisiyah', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1677, 'an-Najaf', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1678, 'as-Sulaymaniyah', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1679, 'at-Ta\'mim', 368, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1680, 'Armagh', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1681, 'Carlow', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1682, 'Cavan', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1683, 'Clare', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1684, 'Cork', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1685, 'Donegal', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1686, 'Dublin', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1687, 'Galway', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1688, 'Kerry', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1689, 'Kildare', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1690, 'Kilkenny', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1691, 'Laois', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1692, 'Leinster', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1693, 'Leitrim', 372, '2024-06-13 11:37:52', '2024-06-13 11:37:52'),
(1694, 'Limerick', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1695, 'Loch Garman', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1696, 'Longford', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1697, 'Louth', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1698, 'Mayo', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1699, 'Meath', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1700, 'Monaghan', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1701, 'Offaly', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1702, 'Roscommon', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1703, 'Sligo', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1704, 'Tipperary North Riding', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1705, 'Tipperary South Riding', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1706, 'Ulster', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1707, 'Waterford', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1708, 'Westmeath', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1709, 'Wexford', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1710, 'Wicklow', 372, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1711, 'Beit Hanania', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1712, 'Ben Gurion Airport', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1713, 'Bethlehem', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1714, 'Caesarea', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1715, 'Gaza', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1716, 'Hadaron', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1717, 'Haifa District', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1718, 'Hamerkaz', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1719, 'Hazafon', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1720, 'Hebron', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1721, 'Jaffa', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1722, 'Jerusalem', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1723, 'Khefa', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1724, 'Kiryat Yam', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1725, 'Lower Galilee', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1726, 'Qalqilya', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1727, 'Talme Elazar', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1728, 'Tel Aviv', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1729, 'Tsafon', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1730, 'Umm El Fahem', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1731, 'Yerushalayim', 376, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1732, 'Abruzzi', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1733, 'Abruzzo', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1734, 'Agrigento', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1735, 'Alessandria', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1736, 'Ancona', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1737, 'Arezzo', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1738, 'Ascoli Piceno', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1739, 'Asti', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1740, 'Avellino', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1741, 'Bari', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1742, 'Basilicata', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1743, 'Belluno', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1744, 'Benevento', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1745, 'Bergamo', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1746, 'Biella', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1747, 'Bologna', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1748, 'Bolzano', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1749, 'Brescia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1750, 'Brindisi', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1751, 'Calabria', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1752, 'Campania', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1753, 'Cartoceto', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1754, 'Caserta', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1755, 'Catania', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1756, 'Chieti', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1757, 'Como', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1758, 'Cosenza', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1759, 'Cremona', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1760, 'Cuneo', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1761, 'Emilia-Romagna', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1762, 'Ferrara', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1763, 'Firenze', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1764, 'Florence', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1765, 'Forli-Cesena ', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1766, 'Friuli-Venezia Giulia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1767, 'Frosinone', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1768, 'Genoa', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1769, 'Gorizia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1770, 'L\'Aquila', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1771, 'Lazio', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1772, 'Lecce', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1773, 'Lecco', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1774, 'Lecco Province', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1775, 'Liguria', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1776, 'Lodi', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1777, 'Lombardia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1778, 'Lombardy', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1779, 'Macerata', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1780, 'Mantova', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1781, 'Marche', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1782, 'Messina', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1783, 'Milan', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1784, 'Modena', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1785, 'Molise', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1786, 'Molteno', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1787, 'Montenegro', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1788, 'Monza and Brianza', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1789, 'Naples', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1790, 'Novara', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1791, 'Padova', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1792, 'Parma', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1793, 'Pavia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1794, 'Perugia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1795, 'Pesaro-Urbino', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1796, 'Piacenza', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1797, 'Piedmont', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1798, 'Piemonte', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1799, 'Pisa', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1800, 'Pordenone', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1801, 'Potenza', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1802, 'Puglia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1803, 'Reggio Emilia', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1804, 'Rimini', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1805, 'Roma', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1806, 'Salerno', 380, '2024-06-13 11:37:53', '2024-06-13 11:37:53'),
(1807, 'Sardegna', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1808, 'Sassari', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1809, 'Savona', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1810, 'Sicilia', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1811, 'Siena', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1812, 'Sondrio', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1813, 'South Tyrol', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1814, 'Taranto', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1815, 'Teramo', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1816, 'Torino', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1817, 'Toscana', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1818, 'Trapani', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1819, 'Trentino-Alto Adige', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1820, 'Trento', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1821, 'Treviso', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1822, 'Udine', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1823, 'Umbria', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1824, 'Valle d\'Aosta', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1825, 'Varese', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1826, 'Veneto', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1827, 'Venezia', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1828, 'Verbano-Cusio-Ossola', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1829, 'Vercelli', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1830, 'Verona', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1831, 'Vicenza', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1832, 'Viterbo', 380, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1833, 'Buxoro Viloyati', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1834, 'Clarendon', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1835, 'Hanover', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1836, 'Kingston', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1837, 'Manchester', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1838, 'Portland', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1839, 'Saint Andrews', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1840, 'Saint Ann', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1841, 'Saint Catherine', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1842, 'Saint Elizabeth', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1843, 'Trelawney', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1844, 'Westmoreland', 388, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1845, 'Aichi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1846, 'Akita', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1847, 'Aomori', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1848, 'Chiba', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1849, 'Ehime', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1850, 'Fukui', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1851, 'Fukuoka', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1852, 'Fukushima', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1853, 'Gifu', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1854, 'Gumma', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1855, 'Hiroshima', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1856, 'Hokkaido', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1857, 'Hyogo', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1858, 'Ibaraki', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1859, 'Ishikawa', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1860, 'Iwate', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1861, 'Kagawa', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1862, 'Kagoshima', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1863, 'Kanagawa', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1864, 'Kanto', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1865, 'Kochi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1866, 'Kumamoto', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1867, 'Kyoto', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1868, 'Mie', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1869, 'Miyagi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1870, 'Miyazaki', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1871, 'Nagano', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1872, 'Nagasaki', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1873, 'Nara', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1874, 'Niigata', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1875, 'Oita', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1876, 'Okayama', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1877, 'Okinawa', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1878, 'Osaka', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1879, 'Saga', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1880, 'Saitama', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1881, 'Shiga', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1882, 'Shimane', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1883, 'Shizuoka', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1884, 'Tochigi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1885, 'Tokushima', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1886, 'Tokyo', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1887, 'Tottori', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1888, 'Toyama', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1889, 'Wakayama', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1890, 'Yamagata', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1891, 'Yamaguchi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1892, 'Yamanashi', 392, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1893, '\'Ajlun', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1894, 'Amman', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1895, 'Irbid', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1896, 'Jarash', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1897, 'Ma\'an', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1898, 'Madaba', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1899, 'al-\'Aqabah', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1900, 'al-Balqa\'', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1901, 'al-Karak', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1902, 'al-Mafraq', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1903, 'at-Tafilah', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1904, 'az-Zarqa\'', 400, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1905, 'Akmecet', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1906, 'Akmola', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1907, 'Aktobe', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1908, 'Almati', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1909, 'Atirau', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1910, 'Batis Kazakstan', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1911, 'Burlinsky Region', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1912, 'Karagandi', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1913, 'Kostanay', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1914, 'Mankistau', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1915, 'Ontustik Kazakstan', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1916, 'Pavlodar', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1917, 'Sigis Kazakstan', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1918, 'Soltustik Kazakstan', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1919, 'Taraz', 398, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1920, 'Coast', 404, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1921, 'Nairobi', 404, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1922, 'North Eastern', 404, '2024-06-13 11:37:54', '2024-06-13 11:37:54'),
(1923, 'Nyanza', 404, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1924, 'Rift Valley', 404, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1925, 'Abaiang', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1926, 'Abemana', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1927, 'Aranuka', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1928, 'Arorae', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1929, 'Banaba', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1930, 'Beru', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1931, 'Butaritari', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1932, 'Kiritimati', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1933, 'Kuria', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1934, 'Maiana', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1935, 'Makin', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1936, 'Marakei', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1937, 'Nikunau', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1938, 'Nonouti', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1939, 'Onotoa', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1940, 'Phoenix Islands', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1941, 'Tabiteuea North', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1942, 'Tabiteuea South', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1943, 'Tabuaeran', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1944, 'Tamana', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1945, 'Tarawa North', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1946, 'Tarawa South', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1947, 'Teraina', 296, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1948, 'Chagangdo', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1949, 'Hamgyeongbukto', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1950, 'Hamgyeongnamdo', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1951, 'Hwanghaebukto', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1952, 'Hwanghaenamdo', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1953, 'Kaeseong', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1954, 'Kangweon', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1955, 'Nampo', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1956, 'Pyeonganbukto', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1957, 'Pyeongannamdo', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1958, 'Pyeongyang', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1959, 'Yanggang', 408, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1960, 'Busan', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1961, 'Cheju', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1962, 'Chollabuk', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1963, 'Chollanam', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1964, 'Chungbuk', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1965, 'Chungcheongbuk', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1966, 'Chungcheongnam', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1967, 'Chungnam', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1968, 'Daegu', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1969, 'Gangwon-do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1970, 'Goyang-si', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1971, 'Gyeonggi-do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1972, 'Gyeongsang ', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1973, 'Gyeongsangnam-do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1974, 'Incheon', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1975, 'Jeju-Si', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1976, 'Jeonbuk', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1977, 'Kwangju', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1978, 'Kyeonggi', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1979, 'Kyeongsangbuk', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1980, 'Kyeongsangnam', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1981, 'Kyonggi-do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1982, 'Kyungbuk-Do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1983, 'Kyunggi-Do', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1984, 'Pusan', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1985, 'Seoul', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1986, 'Sudogwon', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1987, 'Taegu', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1988, 'Taejeon', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1989, 'Taejon-gwangyoksi', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1990, 'Ulsan', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1991, 'Wonju', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1992, 'gwangyoksi', 410, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1993, 'Al Asimah', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1994, 'Hawalli', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1995, 'Mishref', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1996, 'Qadesiya', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1997, 'Safat', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1998, 'Salmiya', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(1999, 'al-Ahmadi', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2000, 'al-Farwaniyah', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2001, 'al-Jahra', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2002, 'al-Kuwayt', 414, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2003, 'Batken', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2004, 'Bishkek', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2005, 'Chui', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2006, 'Issyk-Kul', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2007, 'Jalal-Abad', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2008, 'Naryn', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2009, 'Osh', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2010, 'Talas', 417, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2011, 'Attopu', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2012, 'Bokeo', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2013, 'Bolikhamsay', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2014, 'Champasak', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2015, 'Houaphanh', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2016, 'Khammouane', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2017, 'Luang Nam Tha', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2018, 'Luang Prabang', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2019, 'Oudomxay', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2020, 'Phongsaly', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2021, 'Saravan', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2022, 'Savannakhet', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2023, 'Sekong', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2024, 'Viangchan Prefecture', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2025, 'Viangchan Province', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2026, 'Xaignabury', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2027, 'Xiang Khuang', 418, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2028, 'Aizkraukles', 428, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2029, 'Aluksnes', 428, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2030, 'Balvu', 428, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2031, 'Bauskas', 428, '2024-06-13 11:37:55', '2024-06-13 11:37:55'),
(2032, 'Cesu', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2033, 'Daugavpils', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2034, 'Daugavpils City', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2035, 'Dobeles', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2036, 'Gulbenes', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2037, 'Jekabspils', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2038, 'Jelgava', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2039, 'Jelgavas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2040, 'Jurmala City', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2041, 'Kraslavas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2042, 'Kuldigas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2043, 'Liepaja', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2044, 'Liepajas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2045, 'Limbazhu', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2046, 'Ludzas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2047, 'Madonas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2048, 'Ogres', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2049, 'Preilu', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2050, 'Rezekne', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2051, 'Rezeknes', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2052, 'Riga', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2053, 'Rigas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2054, 'Saldus', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2055, 'Talsu', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2056, 'Tukuma', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2057, 'Valkas', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2058, 'Valmieras', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2059, 'Ventspils', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2060, 'Ventspils City', 428, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2061, 'Beirut', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2062, 'Jabal Lubnan', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2063, 'Mohafazat Liban-Nord', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2064, 'Mohafazat Mont-Liban', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2065, 'Sidon', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2066, 'al-Biqa', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2067, 'al-Janub', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2068, 'an-Nabatiyah', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2069, 'ash-Shamal', 422, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2070, 'Berea', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2071, 'Butha-Buthe', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2072, 'Leribe', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2073, 'Mafeteng', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2074, 'Maseru', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2075, 'Mohale\'s Hoek', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2076, 'Mokhotlong', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2077, 'Qacha\'s Nek', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2078, 'Quthing', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2079, 'Thaba-Tseka', 426, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2080, 'Bomi', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2081, 'Bong', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2082, 'Grand Bassa', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2083, 'Grand Cape Mount', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2084, 'Grand Gedeh', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2085, 'Loffa', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2086, 'Margibi', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2087, 'Maryland and Grand Kru', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2088, 'Montserrado', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2089, 'Nimba', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2090, 'Rivercess', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2091, 'Sinoe', 430, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2092, 'Ajdabiya', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2093, 'Fezzan', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2094, 'Banghazi', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2095, 'Darnah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2096, 'Ghadamis', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2097, 'Gharyan', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2098, 'Misratah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2099, 'Murzuq', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2100, 'Sabha', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2101, 'Sawfajjin', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2102, 'Surt', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2103, 'Tarabulus', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2104, 'Tarhunah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2105, 'Tripolitania', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2106, 'Tubruq', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2107, 'Yafran', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2108, 'Zlitan', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2109, 'al-\'Aziziyah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2110, 'al-Fatih', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2111, 'al-Jabal al Akhdar', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2112, 'al-Jufrah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2113, 'al-Khums', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2114, 'al-Kufrah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2115, 'an-Nuqat al-Khams', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2116, 'ash-Shati\'', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2117, 'az-Zawiyah', 434, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2118, 'Balzers', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2119, 'Eschen', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2120, 'Gamprin', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2121, 'Mauren', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2122, 'Planken', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2123, 'Ruggell', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2124, 'Schaan', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2125, 'Schellenberg', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2126, 'Triesen', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2127, 'Triesenberg', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2128, 'Vaduz', 438, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2129, 'Alytaus', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2130, 'Anyksciai', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2131, 'Kauno', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2132, 'Klaipedos', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2133, 'Marijampoles', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2134, 'Panevezhio', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2135, 'Panevezys', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2136, 'Shiauliu', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2137, 'Taurages', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2138, 'Telshiu', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2139, 'Telsiai', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2140, 'Utenos', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2141, 'Vilniaus', 440, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2142, 'Capellen', 442, '2024-06-13 11:37:56', '2024-06-13 11:37:56'),
(2143, 'Clervaux', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2144, 'Diekirch', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2145, 'Echternach', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2146, 'Esch-sur-Alzette', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2147, 'Grevenmacher', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2148, 'Mersch', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2149, 'Redange', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2150, 'Remich', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2151, 'Vianden', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2152, 'Wiltz', 442, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2153, 'Macau', 446, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2154, 'Berovo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2155, 'Bitola', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2156, 'Brod', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57');
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(2157, 'Debar', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2158, 'Delchevo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2159, 'Demir Hisar', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2160, 'Gevgelija', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2161, 'Gostivar', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2162, 'Kavadarci', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2163, 'Kichevo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2164, 'Kochani', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2165, 'Kratovo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2166, 'Kriva Palanka', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2167, 'Krushevo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2168, 'Kumanovo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2169, 'Negotino', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2170, 'Ohrid', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2171, 'Prilep', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2172, 'Probishtip', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2173, 'Radovish', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2174, 'Resen', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2175, 'Shtip', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2176, 'Skopje', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2177, 'Struga', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2178, 'Strumica', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2179, 'Sveti Nikole', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2180, 'Tetovo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2181, 'Valandovo', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2182, 'Veles', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2183, 'Vinica', 807, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2184, 'Antananarivo', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2185, 'Antsiranana', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2186, 'Fianarantsoa', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2187, 'Mahajanga', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2188, 'Toamasina', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2189, 'Toliary', 450, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2190, 'Balaka', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2191, 'Blantyre City', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2192, 'Chikwawa', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2193, 'Chiradzulu', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2194, 'Chitipa', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2195, 'Dedza', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2196, 'Dowa', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2197, 'Karonga', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2198, 'Kasungu', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2199, 'Lilongwe City', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2200, 'Machinga', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2201, 'Mangochi', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2202, 'Mchinji', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2203, 'Mulanje', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2204, 'Mwanza', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2205, 'Mzimba', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2206, 'Mzuzu City', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2207, 'Nkhata Bay', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2208, 'Nkhotakota', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2209, 'Nsanje', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2210, 'Ntcheu', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2211, 'Ntchisi', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2212, 'Phalombe', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2213, 'Rumphi', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2214, 'Salima', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2215, 'Thyolo', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2216, 'Zomba Municipality', 454, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2217, 'Johor', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2218, 'Kedah', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2219, 'Kelantan', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2220, 'Kuala Lumpur', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2221, 'Labuan', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2222, 'Melaka', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2223, 'Negeri Johor', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2224, 'Negeri Sembilan', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2225, 'Pahang', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2226, 'Penang', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2227, 'Perak', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2228, 'Perlis', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2229, 'Pulau Pinang', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2230, 'Sabah', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2231, 'Sarawak', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2232, 'Selangor', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2233, 'Sembilan', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2234, 'Terengganu', 458, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2235, 'Alif Alif', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2236, 'Alif Dhaal', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2237, 'Baa', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2238, 'Dhaal', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2239, 'Faaf', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2240, 'Gaaf Alif', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2241, 'Gaaf Dhaal', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2242, 'Ghaviyani', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2243, 'Haa Alif', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2244, 'Haa Dhaal', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2245, 'Kaaf', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2246, 'Laam', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2247, 'Lhaviyani', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2248, 'Male', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2249, 'Miim', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2250, 'Nuun', 462, '2024-06-13 11:37:57', '2024-06-13 11:37:57'),
(2251, 'Raa', 462, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2252, 'Shaviyani', 462, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2253, 'Siin', 462, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2254, 'Thaa', 462, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2255, 'Vaav', 462, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2256, 'Bamako', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2257, 'Gao', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2258, 'Kayes', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2259, 'Kidal', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2260, 'Koulikoro', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2261, 'Mopti', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2262, 'Segou', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2263, 'Sikasso', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2264, 'Tombouctou', 466, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2265, 'Gozo and Comino', 470, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2266, 'Inner Harbour', 470, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2267, 'Outer Harbour', 470, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2268, 'South Eastern', 470, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2269, 'Ailinlaplap', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2270, 'Ailuk', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2271, 'Arno', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2272, 'Aur', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2273, 'Bikini', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2274, 'Ebon', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2275, 'Enewetak', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2276, 'Jabat', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2277, 'Jaluit', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2278, 'Kili', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2279, 'Kwajalein', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2280, 'Lae', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2281, 'Lib', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2282, 'Likiep', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2283, 'Majuro', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2284, 'Maloelap', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2285, 'Mejit', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2286, 'Mili', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2287, 'Namorik', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2288, 'Namu', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2289, 'Rongelap', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2290, 'Ujae', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2291, 'Utrik', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2292, 'Wotho', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2293, 'Wotje', 584, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2294, 'Fort-de-France', 474, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2295, 'La Trinite', 474, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2296, 'Le Marin', 474, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2297, 'Saint-Pierre', 474, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2298, 'Assaba', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2299, 'Brakna', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2300, 'Dhakhlat Nawadibu', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2301, 'Hudh-al-Gharbi', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2302, 'Hudh-ash-Sharqi', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2303, 'Inshiri', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2304, 'Nawakshut', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2305, 'Qidimagha', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2306, 'Qurqul', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2307, 'Taqant', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2308, 'Tiris Zammur', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2309, 'Trarza', 478, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2310, 'Black River', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2311, 'Eau Coulee', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2312, 'Flacq', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2313, 'Floreal', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2314, 'Grand Port', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2315, 'Moka', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2316, 'Pamplempousses', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2317, 'Plaines Wilhelm', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2318, 'Port Louis', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2319, 'Riviere du Rempart', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2320, 'Rodrigues', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2321, 'Rose Hill', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2322, 'Savanne', 480, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2323, 'Mayotte', 175, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2324, 'Pamanzi', 175, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2325, 'Aguascalientes', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2326, 'Baja California', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2327, 'Baja California Sur', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2328, 'Campeche', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2329, 'Chiapas', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2330, 'Chihuahua', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2331, 'Coahuila', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2332, 'Colima', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2333, 'Durango', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2334, 'Estado de Mexico', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2335, 'Guanajuato', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2336, 'Guerrero', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2337, 'Hidalgo', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2338, 'Jalisco', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2339, 'Mexico', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2340, 'Michoacan', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2341, 'Morelos', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2342, 'Nayarit', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2343, 'Nuevo Leon', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2344, 'Oaxaca', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2345, 'Puebla', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2346, 'Queretaro', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2347, 'Quintana Roo', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2348, 'San Luis Potosi', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2349, 'Sinaloa', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2350, 'Sonora', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2351, 'Tabasco', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2352, 'Tamaulipas', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2353, 'Tlaxcala', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2354, 'Veracruz', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2355, 'Yucatan', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2356, 'Zacatecas', 484, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2357, 'Chuuk', 583, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2358, 'Kusaie', 583, '2024-06-13 11:37:58', '2024-06-13 11:37:58'),
(2359, 'Pohnpei', 583, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2360, 'Yap', 583, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2361, 'Balti', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2362, 'Cahul', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2363, 'Chisinau', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2364, 'Chisinau Oras', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2365, 'Edinet', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2366, 'Gagauzia', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2367, 'Lapusna', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2368, 'Orhei', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2369, 'Soroca', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2370, 'Taraclia', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2371, 'Tighina', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2372, 'Transnistria', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2373, 'Ungheni', 498, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2374, 'Fontvieille', 492, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2375, 'La Condamine', 492, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2376, 'Monaco-Ville', 492, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2377, 'Monte Carlo', 492, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2378, 'Arhangaj', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2379, 'Bajan-Olgij', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2380, 'Bajanhongor', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2381, 'Bulgan', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2382, 'Darhan-Uul', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2383, 'Dornod', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2384, 'Dornogovi', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2385, 'Dundgovi', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2386, 'Govi-Altaj', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2387, 'Govisumber', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2388, 'Hentij', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2389, 'Hovd', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2390, 'Hovsgol', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2391, 'Omnogovi', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2392, 'Orhon', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2393, 'Ovorhangaj', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2394, 'Selenge', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2395, 'Suhbaatar', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2396, 'Tov', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2397, 'Ulaanbaatar', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2398, 'Uvs', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2399, 'Zavhan', 496, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2400, 'Montserrat', 500, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2401, 'Agadir', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2402, 'Casablanca', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2403, 'Chaouia-Ouardigha', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2404, 'Doukkala-Abda', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2405, 'Fes-Boulemane', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2406, 'Gharb-Chrarda-Beni Hssen', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2407, 'Guelmim', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2408, 'Kenitra', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2409, 'Marrakech-Tensift-Al Haouz', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2410, 'Meknes-Tafilalet', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2411, 'Oriental', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2412, 'Oujda', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2413, 'Province de Tanger', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2414, 'Rabat-Sale-Zammour-Zaer', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2415, 'Sala Al Jadida', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2416, 'Settat', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2417, 'Souss Massa-Draa', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2418, 'Tadla-Azilal', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2419, 'Tangier-Tetouan', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2420, 'Taza-Al Hoceima-Taounate', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2421, 'Wilaya de Casablanca', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2422, 'Wilaya de Rabat-Sale', 504, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2423, 'Cabo Delgado', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2424, 'Inhambane', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2425, 'Manica', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2426, 'Maputo', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2427, 'Maputo Provincia', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2428, 'Nampula', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2429, 'Niassa', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2430, 'Sofala', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2431, 'Tete', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2432, 'Zambezia', 508, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2433, 'Ayeyarwady', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2434, 'Bago', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2435, 'Chin', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2436, 'Kachin', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2437, 'Kayah', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2438, 'Kayin', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2439, 'Magway', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2440, 'Mandalay', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2441, 'Mon', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2442, 'Nay Pyi Taw', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2443, 'Rakhine', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2444, 'Sagaing', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2445, 'Shan', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2446, 'Tanintharyi', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2447, 'Yangon', 104, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2448, 'Caprivi', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2449, 'Erongo', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2450, 'Hardap', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2451, 'Karas', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2452, 'Kavango', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2453, 'Khomas', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2454, 'Kunene', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2455, 'Ohangwena', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2456, 'Omaheke', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2457, 'Omusati', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2458, 'Oshana', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2459, 'Oshikoto', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2460, 'Otjozondjupa', 516, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2461, 'Yaren', 520, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2462, 'Bagmati', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2463, 'Bheri', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2464, 'Dhawalagiri', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2465, 'Gandaki', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2466, 'Janakpur', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2467, 'Karnali', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2468, 'Koshi', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2469, 'Lumbini', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2470, 'Mahakali', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2471, 'Mechi', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2472, 'Narayani', 524, '2024-06-13 11:37:59', '2024-06-13 11:37:59'),
(2473, 'Rapti', 524, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2474, 'Sagarmatha', 524, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2475, 'Seti', 524, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2476, 'Benelux', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2477, 'Drenthe', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2478, 'Flevoland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2479, 'Friesland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2480, 'Gelderland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2481, 'Groningen', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2482, 'Noord-Brabant', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2483, 'Overijssel', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2484, 'South Holland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2485, 'Utrecht', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2486, 'Zeeland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2487, 'Zuid-Holland', 528, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2488, 'Iles', 540, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2489, 'Area Outside Region', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2490, 'Bay of Plenty', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2491, 'Canterbury', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2492, 'Christchurch', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2493, 'Gisborne', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2494, 'Hawke\'s Bay', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2495, 'Manawatu-Wanganui', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2496, 'Marlborough', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2497, 'Nelson', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2498, 'Northland', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2499, 'Otago', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2500, 'Rodney', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2501, 'Southland', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2502, 'Taranaki', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2503, 'Tasman', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2504, 'Waikato', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2505, 'Wellington', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2506, 'West Coast', 554, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2507, 'Atlantico Norte', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2508, 'Atlantico Sur', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2509, 'Boaco', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2510, 'Carazo', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2511, 'Chinandega', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2512, 'Chontales', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2513, 'Esteli', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2514, 'Granada', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2515, 'Jinotega', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2516, 'Leon', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2517, 'Madriz', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2518, 'Managua', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2519, 'Masaya', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2520, 'Matagalpa', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2521, 'Nueva Segovia', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2522, 'Rio San Juan', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2523, 'Rivas', 558, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2524, 'Agadez', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2525, 'Diffa', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2526, 'Dosso', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2527, 'Maradi', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2528, 'Niamey', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2529, 'Tahoua', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2530, 'Tillabery', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2531, 'Zinder', 562, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2532, 'Abia', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2533, 'Abuja Federal Capital Territor', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2534, 'Adamawa', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2535, 'Akwa Ibom', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2536, 'Anambra', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2537, 'Bauchi', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2538, 'Bayelsa', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2539, 'Benue', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2540, 'Borno', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2541, 'Cross River', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2542, 'Delta', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2543, 'Ebonyi', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2544, 'Edo', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2545, 'Ekiti', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2546, 'Enugu', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2547, 'Gombe', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2548, 'Imo', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2549, 'Jigawa', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2550, 'Kaduna', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2551, 'Kano', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2552, 'Katsina', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2553, 'Kebbi', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2554, 'Kogi', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2555, 'Kwara', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2556, 'Lagos', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2557, 'Nassarawa', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2558, 'Niger', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2559, 'Ogun', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2560, 'Ondo', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2561, 'Osun', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2562, 'Oyo', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2563, 'Rivers', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2564, 'Sokoto', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2565, 'Taraba', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2566, 'Yobe', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2567, 'Zamfara', 566, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2568, 'Niue', 570, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2569, 'Norfolk Island', 574, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2570, 'Northern Islands', 580, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2571, 'Rota', 580, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2572, 'Saipan', 580, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2573, 'Tinian', 580, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2574, 'Akershus', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2575, 'Aust Agder', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2576, 'Bergen', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2577, 'Buskerud', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2578, 'Finnmark', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2579, 'Hedmark', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2580, 'Hordaland', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2581, 'Moere og Romsdal', 578, '2024-06-13 11:38:00', '2024-06-13 11:38:00'),
(2582, 'Nord Trondelag', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2583, 'Nordland', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2584, 'Oestfold', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2585, 'Oppland', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2586, 'Oslo', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2587, 'Rogaland', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2588, 'Soer Troendelag', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2589, 'Sogn og Fjordane', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2590, 'Stavern', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2591, 'Sykkylven', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2592, 'Telemark', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2593, 'Troms', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2594, 'Vest Agder', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2595, 'Vestfold', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2596, 'ÃƒÂ˜stfold', 578, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2597, 'Al Buraimi', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2598, 'Dhufar', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2599, 'Masqat', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2600, 'Musandam', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2601, 'Rusayl', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2602, 'Wadi Kabir', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2603, 'ad-Dakhiliyah', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2604, 'adh-Dhahirah', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2605, 'al-Batinah', 512, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2606, 'Azad kashmir', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2607, 'Balochistan', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2608, 'Fata', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2609, 'Gilgit–baltistan', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2610, 'Islamabad capital territory', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2611, 'Khyber Pakhtunkhwa', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2612, 'Sindh', 586, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2613, 'Aimeliik', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2614, 'Airai', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2615, 'Angaur', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2616, 'Hatobohei', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2617, 'Kayangel', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2618, 'Koror', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2619, 'Melekeok', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2620, 'Ngaraard', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2621, 'Ngardmau', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2622, 'Ngaremlengui', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2623, 'Ngatpang', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2624, 'Ngchesar', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2625, 'Ngerchelong', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2626, 'Ngiwal', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2627, 'Peleliu', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2628, 'Sonsorol', 585, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2629, 'Ariha', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2630, 'Bayt Lahm', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2631, 'Dayr-al-Balah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2632, 'Ghazzah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2633, 'Ghazzah ash-Shamaliyah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2634, 'Janin', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2635, 'Khan Yunis', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2636, 'Nabulus', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2637, 'Qalqilyah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2638, 'Rafah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2639, 'Ram Allah wal-Birah', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2640, 'Salfit', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2641, 'Tubas', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2642, 'Tulkarm', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2643, 'al-Khalil', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2644, 'al-Quds', 275, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2645, 'Bocas del Toro', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2646, 'Chiriqui', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2647, 'Cocle', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2648, 'Darien', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2649, 'Embera', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2650, 'Herrera', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2651, 'Kuna Yala', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2652, 'Los Santos', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2653, 'Ngobe Bugle', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2654, 'Panama', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2655, 'Veraguas', 591, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2656, 'East New Britain', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2657, 'East Sepik', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2658, 'Eastern Highlands', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2659, 'Enga', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2660, 'Fly River', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2661, 'Gulf', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2662, 'Madang', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2663, 'Manus', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2664, 'Milne Bay', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2665, 'Morobe', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2666, 'National Capital District', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2667, 'New Ireland', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2668, 'North Solomons', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2669, 'Oro', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2670, 'Sandaun', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2671, 'Simbu', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2672, 'Southern Highlands', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2673, 'West New Britain', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2674, 'Western Highlands', 598, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2675, 'Alto Paraguay', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2676, 'Alto Parana', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2677, 'Amambay', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2678, 'Asuncion', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2679, 'Boqueron', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2680, 'Caaguazu', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2681, 'Caazapa', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2682, 'Canendiyu', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2683, 'Concepcion', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2684, 'Cordillera', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2685, 'Guaira', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2686, 'Itapua', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2687, 'Neembucu', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2688, 'Paraguari', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2689, 'Presidente Hayes', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2690, 'San Pedro', 600, '2024-06-13 11:38:01', '2024-06-13 11:38:01'),
(2691, 'Ancash', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2692, 'Apurimac', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2693, 'Arequipa', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2694, 'Ayacucho', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2695, 'Cajamarca', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2696, 'Cusco', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2697, 'Huancavelica', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2698, 'Huanuco', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2699, 'Ica', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2700, 'Junin', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2701, 'Lambayeque', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2702, 'Lima y Callao', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2703, 'Loreto', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2704, 'Madre de Dios', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2705, 'Moquegua', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2706, 'Pasco', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2707, 'Piura', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2708, 'Puno', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2709, 'San Martin', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2710, 'Tacna', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2711, 'Tumbes', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2712, 'Ucayali', 604, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2713, 'Batangas', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2714, 'Bicol', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2715, 'Bulacan', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2716, 'Cagayan', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2717, 'Caraga', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2718, 'Central Luzon', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2719, 'Central Mindanao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2720, 'Central Visayas', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2721, 'Davao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2722, 'Eastern Visayas', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2723, 'Greater Metropolitan Area', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2724, 'Ilocos', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2725, 'Laguna', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2726, 'Luzon', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2727, 'Mactan', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2728, 'Metropolitan Manila Area', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2729, 'Muslim Mindanao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2730, 'Northern Mindanao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2731, 'Southern Mindanao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2732, 'Southern Tagalog', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2733, 'Western Mindanao', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2734, 'Western Visayas', 608, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2735, 'Pitcairn Island', 612, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2736, 'Biale Blota', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2737, 'Dobroszyce', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2738, 'Dolnoslaskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2739, 'Dziekanow Lesny', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2740, 'Hopowo', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2741, 'Kartuzy', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2742, 'Koscian', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2743, 'Krakow', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2744, 'Kujawsko-Pomorskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2745, 'Lodzkie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2746, 'Lubelskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2747, 'Lubuskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2748, 'Malomice', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2749, 'Malopolskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2750, 'Mazowieckie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2751, 'Mirkow', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2752, 'Opolskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2753, 'Ostrowiec', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2754, 'Podkarpackie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2755, 'Podlaskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2756, 'Polska', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2757, 'Pomorskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2758, 'Poznan', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2759, 'Pruszkow', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2760, 'Rymanowska', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2761, 'Rzeszow', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2762, 'Slaskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2763, 'Stare Pole', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2764, 'Swietokrzyskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2765, 'Warminsko-Mazurskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2766, 'Warsaw', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2767, 'Wejherowo', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2768, 'Wielkopolskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2769, 'Wroclaw', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2770, 'Zachodnio-Pomorskie', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2771, 'Zukowo', 616, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2772, 'Abrantes', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2773, 'Acores', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2774, 'Alentejo', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2775, 'Algarve', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2776, 'Braga', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2777, 'Centro', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2778, 'Distrito de Leiria', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2779, 'Distrito de Viana do Castelo', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2780, 'Distrito de Vila Real', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2781, 'Distrito do Porto', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2782, 'Lisboa e Vale do Tejo', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2783, 'Madeira', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2784, 'Norte', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2785, 'Paivas', 620, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2786, 'Arecibo', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2787, 'Bayamon', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2788, 'Carolina', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2789, 'Florida', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2790, 'Guayama', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2791, 'Humacao', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2792, 'Mayaguez-Aguadilla', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2793, 'Ponce', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2794, 'Salinas', 630, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2795, 'Doha', 634, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2796, 'Jarian-al-Batnah', 634, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2797, 'Umm Salal', 634, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2798, 'ad-Dawhah', 634, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2799, 'al-Ghuwayriyah', 634, '2024-06-13 11:38:02', '2024-06-13 11:38:02'),
(2800, 'al-Jumayliyah', 634, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2801, 'al-Khawr', 634, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2802, 'al-Wakrah', 634, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2803, 'ar-Rayyan', 634, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2804, 'Saint-Benoit', 638, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2805, 'Saint-Denis', 638, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2806, 'Saint-Paul', 638, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2807, 'Alba', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2808, 'Arad', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2809, 'Arges', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2810, 'Bacau', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2811, 'Bihor', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2812, 'Bistrita-Nasaud', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2813, 'Botosani', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2814, 'Braila', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2815, 'Brasov', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2816, 'Bucuresti', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2817, 'Buzau', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2818, 'Calarasi', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2819, 'Caras-Severin', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2820, 'Cluj', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2821, 'Constanta', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2822, 'Covasna', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2823, 'Dambovita', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2824, 'Dolj', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2825, 'Galati', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2826, 'Giurgiu', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2827, 'Gorj', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2828, 'Harghita', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2829, 'Hunedoara', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2830, 'Ialomita', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2831, 'Iasi', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2832, 'Ilfov', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2833, 'Maramures', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2834, 'Mehedinti', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2835, 'Mures', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2836, 'Neamt', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2837, 'Olt', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2838, 'Prahova', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2839, 'Salaj', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2840, 'Satu Mare', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2841, 'Sibiu', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2842, 'Sondelor', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2843, 'Suceava', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2844, 'Teleorman', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2845, 'Timis', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2846, 'Tulcea', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2847, 'Valcea', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2848, 'Vaslui', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2849, 'Vrancea', 642, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2850, 'Adygeja', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2851, 'Aga', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2852, 'Alanija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2853, 'Altaj', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2854, 'Amur', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2855, 'Arhangelsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2856, 'Astrahan', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2857, 'Bashkortostan', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2858, 'Belgorod', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2859, 'Brjansk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2860, 'Burjatija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2861, 'Chechenija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2862, 'Cheljabinsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2863, 'Chita', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2864, 'Chukotka', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2865, 'Chuvashija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2866, 'Dagestan', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2867, 'Evenkija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2868, 'Gorno-Altaj', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2869, 'Habarovsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2870, 'Hakasija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2871, 'Hanty-Mansija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2872, 'Ingusetija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2873, 'Irkutsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2874, 'Ivanovo', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03');
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(2875, 'Jamalo-Nenets', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2876, 'Jaroslavl', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2877, 'Jevrej', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2878, 'Kabardino-Balkarija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2879, 'Kaliningrad', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2880, 'Kalmykija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2881, 'Kaluga', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2882, 'Kamchatka', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2883, 'Karachaj-Cherkessija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2884, 'Karelija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2885, 'Kemerovo', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2886, 'Khabarovskiy Kray', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2887, 'Kirov', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2888, 'Komi', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2889, 'Komi-Permjakija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2890, 'Korjakija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2891, 'Kostroma', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2892, 'Krasnodar', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2893, 'Krasnojarsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2894, 'Krasnoyarskiy Kray', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2895, 'Kurgan', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2896, 'Kursk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2897, 'Leningrad', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2898, 'Lipeck', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2899, 'Magadan', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2900, 'Marij El', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2901, 'Mordovija', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2902, 'Moscow', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2903, 'Moskovskaja Oblast', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2904, 'Moskovskaya Oblast', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2905, 'Moskva', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2906, 'Murmansk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2907, 'Nenets', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2908, 'Nizhnij Novgorod', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2909, 'Novgorod', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2910, 'Novokusnezk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2911, 'Novosibirsk', 643, '2024-06-13 11:38:03', '2024-06-13 11:38:03'),
(2912, 'Omsk', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2913, 'Orenburg', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2914, 'Orjol', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2915, 'Penza', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2916, 'Perm', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2917, 'Primorje', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2918, 'Pskov', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2919, 'Pskovskaya Oblast', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2920, 'Rjazan', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2921, 'Rostov', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2922, 'Saha', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2923, 'Sahalin', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2924, 'Samara', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2925, 'Samarskaya', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2926, 'Sankt-Peterburg', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2927, 'Saratov', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2928, 'Smolensk', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2929, 'Stavropol', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2930, 'Sverdlovsk', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2931, 'Tajmyrija', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2932, 'Tambov', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2933, 'Tatarstan', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2934, 'Tjumen', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2935, 'Tomsk', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2936, 'Tula', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2937, 'Tver', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2938, 'Tyva', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2939, 'Udmurtija', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2940, 'Uljanovsk', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2941, 'Ulyanovskaya Oblast', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2942, 'Ust-Orda', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2943, 'Vladimir', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2944, 'Volgograd', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2945, 'Vologda', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2946, 'Voronezh', 643, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2947, 'Butare', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2948, 'Byumba', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2949, 'Cyangugu', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2950, 'Gikongoro', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2951, 'Gisenyi', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2952, 'Gitarama', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2953, 'Kibungo', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2954, 'Kibuye', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2955, 'Kigali-ngali', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2956, 'Ruhengeri', 646, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2957, 'Ascension', 654, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2958, 'Gough Island', 654, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2959, 'Saint Helena', 654, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2960, 'Tristan da Cunha', 654, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2961, 'Christ Church Nichola Town', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2962, 'Saint Anne Sandy Point', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2963, 'Saint George Basseterre', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2964, 'Saint George Gingerland', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2965, 'Saint James Windward', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2966, 'Saint John Capesterre', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2967, 'Saint John Figtree', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2968, 'Saint Mary Cayon', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2969, 'Saint Paul Capesterre', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2970, 'Saint Paul Charlestown', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2971, 'Saint Peter Basseterre', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2972, 'Saint Thomas Lowland', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2973, 'Saint Thomas Middle Island', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2974, 'Trinity Palmetto Point', 659, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2975, 'Anse-la-Raye', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2976, 'Canaries', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2977, 'Castries', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2978, 'Choiseul', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2979, 'Dennery', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2980, 'Gros Inlet', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2981, 'Laborie', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2982, 'Micoud', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2983, 'Soufriere', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2984, 'Vieux Fort', 662, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2985, 'Miquelon-Langlade', 666, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2986, 'Charlotte', 670, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2987, 'Grenadines', 670, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2988, 'A\'ana', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2989, 'Aiga-i-le-Tai', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2990, 'Atua', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2991, 'Fa\'asaleleaga', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2992, 'Gaga\'emauga', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2993, 'Gagaifomauga', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2994, 'Palauli', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2995, 'Satupa\'itea', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2996, 'Tuamasaga', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2997, 'Va\'a-o-Fonoti', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2998, 'Vaisigano', 882, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(2999, 'Acquaviva', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3000, 'Borgo Maggiore', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3001, 'Chiesanuova', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3002, 'Domagnano', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3003, 'Faetano', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3004, 'Fiorentino', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3005, 'Montegiardino', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3006, 'San Marino', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3007, 'Serravalle', 674, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3008, 'Agua Grande', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3009, 'Cantagalo', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3010, 'Lemba', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3011, 'Lobata', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3012, 'Me-Zochi', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3013, 'Pague', 678, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3014, 'Al Khobar', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3015, 'Aseer', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3016, 'Ash Sharqiyah', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3017, 'Asir', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3018, 'Central Province', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3019, 'Eastern Province', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3020, 'Ha\'il', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3021, 'Jawf', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3022, 'Jizan', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3023, 'Makkah', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3024, 'Najran', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3025, 'Qasim', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3026, 'Tabuk', 682, '2024-06-13 11:38:04', '2024-06-13 11:38:04'),
(3027, 'Western Province', 682, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3028, 'al-Bahah', 682, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3029, 'al-Hudud-ash-Shamaliyah', 682, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3030, 'al-Madinah', 682, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3031, 'ar-Riyad', 682, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3032, 'Dakar', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3033, 'Diourbel', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3034, 'Fatick', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3035, 'Kaolack', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3036, 'Kolda', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3037, 'Louga', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3038, 'Saint-Louis', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3039, 'Tambacounda', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3040, 'Thies', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3041, 'Ziguinchor', 686, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3042, 'Central Serbia', 688, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3043, 'Kosovo and Metohija', 688, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3044, 'Vojvodina', 688, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3045, 'Anse Boileau', 690, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3046, 'Anse Royale', 690, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3047, 'Cascade', 690, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3048, 'Takamaka', 690, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3049, 'Singapore', 702, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3050, 'Banskobystricky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3051, 'Bratislavsky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3052, 'Kosicky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3053, 'Nitriansky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3054, 'Presovsky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3055, 'Trenciansky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3056, 'Trnavsky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3057, 'Zilinsky', 703, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3058, 'Benedikt', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3059, 'Gorenjska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3060, 'Gorishka', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3061, 'Jugovzhodna Slovenija', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3062, 'Koroshka', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3063, 'Notranjsko-krashka', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3064, 'Obalno-krashka', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3065, 'Obcina Domzale', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3066, 'Obcina Vitanje', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3067, 'Osrednjeslovenska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3068, 'Podravska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3069, 'Pomurska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3070, 'Savinjska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3071, 'Slovenian Littoral', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3072, 'Spodnjeposavska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3073, 'Zasavska', 705, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3074, 'Guadalcanal', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3075, 'Isabel', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3076, 'Makira and Ulawa', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3077, 'Malaita', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3078, 'Rennell and Bellona', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3079, 'Temotu', 90, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3080, 'Awdal', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3081, 'Bakol', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3082, 'Banadir', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3083, 'Bay', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3084, 'Galgudug', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3085, 'Gedo', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3086, 'Hiran', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3087, 'Jubbada Hose', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3088, 'Jubbadha Dexe', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3089, 'Mudug', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3090, 'Nugal', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3091, 'Sanag', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3092, 'Shabellaha Dhexe', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3093, 'Shabellaha Hose', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3094, 'Togdher', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3095, 'Woqoyi Galbed', 706, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3096, 'Eastern Cape', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3097, 'Free State', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3098, 'Gauteng', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3099, 'Kempton Park', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3100, 'Kramerville', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3101, 'KwaZulu Natal', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3102, 'Limpopo', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3103, 'Mpumalanga', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3104, 'North West', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3105, 'Northern Cape', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3106, 'Parow', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3107, 'Table View', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3108, 'Umtentweni', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3109, 'Western Cape', 710, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3110, 'Central Equatoria', 728, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3111, 'A Coruna', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3112, 'Alacant', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3113, 'Alava', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3114, 'Albacete', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3115, 'Almeria', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3116, 'Andalucia', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3117, 'Asturias', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3118, 'Avila', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3119, 'Badajoz', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3120, 'Balears', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3121, 'Barcelona', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3122, 'Bertamirans', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3123, 'Biscay', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3124, 'Burgos', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3125, 'Caceres', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3126, 'Cadiz', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3127, 'Cantabria', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3128, 'Castello', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3129, 'Catalunya', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3130, 'Ceuta', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3131, 'Ciudad Real', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3132, 'Comunidad Autonoma de Canarias', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3133, 'Comunidad Autonoma de Cataluna', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3134, 'Comunidad Autonoma de Galicia', 724, '2024-06-13 11:38:05', '2024-06-13 11:38:05'),
(3135, 'Comunidad Autonoma de las Isla', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3136, 'Comunidad Autonoma del Princip', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3137, 'Comunidad Valenciana', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3138, 'Cuenca', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3139, 'Gipuzkoa', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3140, 'Girona', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3141, 'Guadalajara', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3142, 'Guipuzcoa', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3143, 'Huelva', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3144, 'Huesca', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3145, 'Jaen', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3146, 'Las Palmas', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3147, 'Lerida', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3148, 'Lleida', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3149, 'Lugo', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3150, 'Madrid', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3151, 'Malaga', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3152, 'Melilla', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3153, 'Murcia', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3154, 'Navarra', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3155, 'Ourense', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3156, 'Pais Vasco', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3157, 'Palencia', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3158, 'Pontevedra', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3159, 'Salamanca', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3160, 'Santa Cruz de Tenerife', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3161, 'Segovia', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3162, 'Sevilla', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3163, 'Soria', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3164, 'Tarragona', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3165, 'Tenerife', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3166, 'Teruel', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3167, 'Valencia', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3168, 'Valladolid', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3169, 'Vizcaya', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3170, 'Zamora', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3171, 'Zaragoza', 724, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3172, 'Amparai', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3173, 'Anuradhapuraya', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3174, 'Badulla', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3175, 'Boralesgamuwa', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3176, 'Colombo', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3177, 'Galla', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3178, 'Gampaha', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3179, 'Hambantota', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3180, 'Kalatura', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3181, 'Kegalla', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3182, 'Kilinochchi', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3183, 'Kurunegala', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3184, 'Madakalpuwa', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3185, 'Maha Nuwara', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3186, 'Malwana', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3187, 'Mannarama', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3188, 'Matale', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3189, 'Matara', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3190, 'Monaragala', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3191, 'Mullaitivu', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3192, 'North Eastern Province', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3193, 'North Western Province', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3194, 'Nuwara Eliya', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3195, 'Polonnaruwa', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3196, 'Puttalama', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3197, 'Ratnapuraya', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3198, 'Southern Province', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3199, 'Tirikunamalaya', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3200, 'Tuscany', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3201, 'Vavuniyawa', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3202, 'Yapanaya', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3203, 'kadawatha', 144, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3204, 'A\'ali-an-Nil', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3205, 'Bahr-al-Jabal', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3206, 'Gharb Bahr-al-Ghazal', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3207, 'Gharb Darfur', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3208, 'Gharb Kurdufan', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3209, 'Gharb-al-Istiwa\'iyah', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3210, 'Janub Darfur', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3211, 'Janub Kurdufan', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3212, 'Junqali', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3213, 'Kassala', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3214, 'Nahr-an-Nil', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3215, 'Shamal Bahr-al-Ghazal', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3216, 'Shamal Darfur', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3217, 'Shamal Kurdufan', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3218, 'Sharq-al-Istiwa\'iyah', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3219, 'Sinnar', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3220, 'Warab', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3221, 'Wilayat al Khartum', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3222, 'al-Buhayrat', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3223, 'al-Jazirah', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3224, 'al-Khartum', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3225, 'al-Qadarif', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3226, 'al-Wahdah', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3227, 'an-Nil-al-Abyad', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3228, 'an-Nil-al-Azraq', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3229, 'ash-Shamaliyah', 729, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3230, 'Brokopondo', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3231, 'Commewijne', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3232, 'Coronie', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3233, 'Marowijne', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3234, 'Nickerie', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3235, 'Paramaribo', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3236, 'Saramacca', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3237, 'Wanica', 740, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3238, 'Svalbard', 744, '2024-06-13 11:38:06', '2024-06-13 11:38:06'),
(3239, 'Hhohho', 748, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3240, 'Lubombo', 748, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3241, 'Manzini', 748, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3242, 'Shiselweni', 748, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3243, 'Alvsborgs Lan', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3244, 'Angermanland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3245, 'Blekinge', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3246, 'Bohuslan', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3247, 'Dalarna', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3248, 'Gavleborg', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3249, 'Gotland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3250, 'Halland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3251, 'Jamtland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3252, 'Jonkoping', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3253, 'Kalmar', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3254, 'Kristianstads', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3255, 'Kronoberg', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3256, 'Norrbotten', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3257, 'Orebro', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3258, 'Ostergotland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3259, 'Saltsjo-Boo', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3260, 'Skane', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3261, 'Smaland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3262, 'Sodermanland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3263, 'Stockholm', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3264, 'Uppsala', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3265, 'Varmland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3266, 'Vasterbotten', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3267, 'Vastergotland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3268, 'Vasternorrland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3269, 'Vastmanland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3270, 'Vastra Gotaland', 752, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3271, 'Aargau', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3272, 'Appenzell Inner-Rhoden', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3273, 'Appenzell-Ausser Rhoden', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3274, 'Basel-Landschaft', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3275, 'Basel-Stadt', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3276, 'Bern', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3277, 'Canton Ticino', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3278, 'Fribourg', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3279, 'Geneve', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3280, 'Glarus', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3281, 'Graubunden', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3282, 'Heerbrugg', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3283, 'Kanton Aargau', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3284, 'Luzern', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3285, 'Morbio Inferiore', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3286, 'Muhen', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3287, 'Neuchatel', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3288, 'Nidwalden', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3289, 'Obwalden', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3290, 'Sankt Gallen', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3291, 'Schaffhausen', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3292, 'Schwyz', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3293, 'Solothurn', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3294, 'Thurgau', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3295, 'Ticino', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3296, 'Uri', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3297, 'Valais', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3298, 'Vaud', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3299, 'Vauffelin', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3300, 'Zug', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3301, 'Zurich', 756, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3302, 'Aleppo', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3303, 'Dar\'a', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3304, 'Dayr-az-Zawr', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3305, 'Dimashq', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3306, 'Halab', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3307, 'Hamah', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3308, 'Hims', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3309, 'Idlib', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3310, 'Madinat Dimashq', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3311, 'Tartus', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3312, 'al-Hasakah', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3313, 'al-Ladhiqiyah', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3314, 'al-Qunaytirah', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3315, 'ar-Raqqah', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3316, 'as-Suwayda', 760, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3317, 'Changhwa', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3318, 'Chiayi Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3319, 'Chiayi Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3320, 'Eastern Taipei', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3321, 'Hsinchu Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3322, 'Hsinchu Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3323, 'Hualien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3324, 'Ilan', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3325, 'Kaohsiung Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3326, 'Kaohsiung Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3327, 'Keelung Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3328, 'Kinmen', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3329, 'Miaoli', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3330, 'Nantou', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3331, 'Northern Taiwan', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3332, 'Penghu', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3333, 'Pingtung', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3334, 'Taichung', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3335, 'Taichung Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3336, 'Taichung Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3337, 'Tainan Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3338, 'Tainan Shih', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3339, 'Taipei Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3340, 'Taipei Shih / Taipei Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3341, 'Taitung', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3342, 'Taoyuan', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3343, 'Yilan', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3344, 'Yun-Lin Hsien', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3345, 'Yunlin', 158, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3346, 'Dushanbe', 762, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3347, 'Gorno-Badakhshan', 762, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3348, 'Karotegin', 762, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3349, 'Khatlon', 762, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3350, 'Sughd', 762, '2024-06-13 11:38:07', '2024-06-13 11:38:07'),
(3351, 'Arusha', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3352, 'Dar es Salaam', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3353, 'Dodoma', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3354, 'Iringa', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3355, 'Kagera', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3356, 'Kigoma', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3357, 'Kilimanjaro', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3358, 'Lindi', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3359, 'Mara', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3360, 'Mbeya', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3361, 'Morogoro', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3362, 'Mtwara', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3363, 'Pwani', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3364, 'Rukwa', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3365, 'Ruvuma', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3366, 'Shinyanga', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3367, 'Singida', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3368, 'Tabora', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3369, 'Tanga', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3370, 'Zanzibar and Pemba', 834, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3371, 'Amnat Charoen', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3372, 'Ang Thong', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3373, 'Bangkok', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3374, 'Buri Ram', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3375, 'Chachoengsao', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3376, 'Chai Nat', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3377, 'Chaiyaphum', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3378, 'Changwat Chaiyaphum', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3379, 'Chanthaburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3380, 'Chiang Mai', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3381, 'Chiang Rai', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3382, 'Chon Buri', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3383, 'Chumphon', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3384, 'Kalasin', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3385, 'Kamphaeng Phet', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3386, 'Kanchanaburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3387, 'Khon Kaen', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3388, 'Krabi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3389, 'Krung Thep', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3390, 'Lampang', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3391, 'Lamphun', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3392, 'Loei', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3393, 'Lop Buri', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3394, 'Mae Hong Son', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3395, 'Maha Sarakham', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3396, 'Mukdahan', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3397, 'Nakhon Nayok', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3398, 'Nakhon Pathom', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3399, 'Nakhon Phanom', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3400, 'Nakhon Ratchasima', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3401, 'Nakhon Sawan', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3402, 'Nakhon Si Thammarat', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3403, 'Nan', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3404, 'Narathiwat', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3405, 'Nong Bua Lam Phu', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3406, 'Nong Khai', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3407, 'Nonthaburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3408, 'Pathum Thani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3409, 'Pattani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3410, 'Phangnga', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3411, 'Phatthalung', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3412, 'Phayao', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3413, 'Phetchabun', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3414, 'Phetchaburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3415, 'Phichit', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3416, 'Phitsanulok', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3417, 'Phra Nakhon Si Ayutthaya', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3418, 'Phrae', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3419, 'Phuket', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3420, 'Prachin Buri', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3421, 'Prachuap Khiri Khan', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3422, 'Ranong', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3423, 'Ratchaburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3424, 'Rayong', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3425, 'Roi Et', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3426, 'Sa Kaeo', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3427, 'Sakon Nakhon', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3428, 'Samut Prakan', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3429, 'Samut Sakhon', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3430, 'Samut Songkhran', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3431, 'Saraburi', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3432, 'Satun', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3433, 'Si Sa Ket', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3434, 'Sing Buri', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3435, 'Songkhla', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3436, 'Sukhothai', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3437, 'Suphan Buri', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3438, 'Surat Thani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3439, 'Surin', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3440, 'Tak', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3441, 'Trang', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3442, 'Trat', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3443, 'Ubon Ratchathani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3444, 'Udon Thani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3445, 'Uthai Thani', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3446, 'Uttaradit', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3447, 'Yala', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3448, 'Yasothon', 764, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3449, 'Kara', 768, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3450, 'Maritime', 768, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3451, 'Atafu', 772, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3452, 'Fakaofo', 772, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3453, 'Nukunonu', 772, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3454, 'Eua', 776, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3455, 'Ha\'apai', 776, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3456, 'Niuas', 776, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3457, 'Tongatapu', 776, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3458, 'Vava\'u', 776, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3459, 'Arima-Tunapuna-Piarco', 780, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3460, 'Caroni', 780, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3461, 'Chaguanas', 780, '2024-06-13 11:38:08', '2024-06-13 11:38:08'),
(3462, 'Couva-Tabaquite-Talparo', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3463, 'Diego Martin', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3464, 'Glencoe', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3465, 'Penal Debe', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3466, 'Point Fortin', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3467, 'Port of Spain', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3468, 'Princes Town', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3469, 'San Fernando', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3470, 'Sangre Grande', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3471, 'Siparia', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3472, 'Tobago', 780, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3473, 'Aryanah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3474, 'Bajah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3475, 'Bin \'Arus', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3476, 'Binzart', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3477, 'Gouvernorat de Ariana', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3478, 'Gouvernorat de Nabeul', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3479, 'Gouvernorat de Sousse', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3480, 'Hammamet Yasmine', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3481, 'Jundubah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3482, 'Madaniyin', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3483, 'Manubah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3484, 'Monastir', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3485, 'Nabul', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3486, 'Qabis', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3487, 'Qafsah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3488, 'Qibili', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3489, 'Safaqis', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3490, 'Sfax', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3491, 'Sidi Bu Zayd', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3492, 'Silyanah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3493, 'Susah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3494, 'Tatawin', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3495, 'Tawzar', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3496, 'Tunis', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3497, 'Zaghwan', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3498, 'al-Kaf', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3499, 'al-Mahdiyah', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3500, 'al-Munastir', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3501, 'al-Qasrayn', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3502, 'al-Qayrawan', 788, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3503, 'Adana', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3504, 'Adiyaman', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3505, 'Afyon', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3506, 'Agri', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3507, 'Aksaray', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3508, 'Amasya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3509, 'Ankara', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3510, 'Antalya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3511, 'Ardahan', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3512, 'Artvin', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3513, 'Aydin', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3514, 'Balikesir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3515, 'Bartin', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3516, 'Batman', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3517, 'Bayburt', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3518, 'Bilecik', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3519, 'Bingol', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3520, 'Bitlis', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3521, 'Bolu', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3522, 'Burdur', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3523, 'Bursa', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3524, 'Canakkale', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3525, 'Cankiri', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3526, 'Corum', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3527, 'Denizli', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3528, 'Diyarbakir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3529, 'Duzce', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3530, 'Edirne', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3531, 'Elazig', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3532, 'Erzincan', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3533, 'Erzurum', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3534, 'Eskisehir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3535, 'Gaziantep', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3536, 'Giresun', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3537, 'Gumushane', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3538, 'Hakkari', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3539, 'Hatay', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3540, 'Icel', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3541, 'Igdir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3542, 'Isparta', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3543, 'Istanbul', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3544, 'Izmir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3545, 'Kahramanmaras', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3546, 'Karabuk', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3547, 'Karaman', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3548, 'Kars', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3549, 'Karsiyaka', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3550, 'Kastamonu', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3551, 'Kayseri', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3552, 'Kilis', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3553, 'Kirikkale', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3554, 'Kirklareli', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3555, 'Kirsehir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3556, 'Kocaeli', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3557, 'Konya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3558, 'Kutahya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3559, 'Lefkosa', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3560, 'Malatya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3561, 'Manisa', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3562, 'Mardin', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3563, 'Mugla', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3564, 'Mus', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3565, 'Nevsehir', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3566, 'Nigde', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3567, 'Ordu', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3568, 'Osmaniye', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3569, 'Rize', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3570, 'Sakarya', 792, '2024-06-13 11:38:09', '2024-06-13 11:38:09'),
(3571, 'Samsun', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3572, 'Sanliurfa', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3573, 'Siirt', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3574, 'Sinop', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3575, 'Sirnak', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3576, 'Sivas', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3577, 'Tekirdag', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3578, 'Tokat', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3579, 'Trabzon', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3580, 'Tunceli', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3581, 'Usak', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3582, 'Van', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10');
INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(3583, 'Yalova', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3584, 'Yozgat', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3585, 'Zonguldak', 792, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3586, 'Ahal', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3587, 'Asgabat', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3588, 'Balkan', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3589, 'Dasoguz', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3590, 'Lebap', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3591, 'Mari', 795, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3592, 'Grand Turk', 796, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3593, 'South Caicos and East Caicos', 796, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3594, 'Funafuti', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3595, 'Nanumanga', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3596, 'Nanumea', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3597, 'Niutao', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3598, 'Nui', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3599, 'Nukufetau', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3600, 'Nukulaelae', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3601, 'Vaitupu', 798, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3602, 'Cherkas\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3603, 'Chernihivs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3604, 'Chernivets\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3605, 'Crimea', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3606, 'Dnipropetrovska', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3607, 'Donets\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3608, 'Ivano-Frankivs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3609, 'Kharkiv', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3610, 'Kharkov', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3611, 'Khersonska', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3612, 'Khmel\'nyts\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3613, 'Kirovohrad', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3614, 'Krym', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3615, 'Kyyiv', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3616, 'Kyyivs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3617, 'L\'vivs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3618, 'Luhans\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3619, 'Mykolayivs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3620, 'Odes\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3621, 'Odessa', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3622, 'Poltavs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3623, 'Rivnens\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3624, 'Sevastopol\'', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3625, 'Sums\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3626, 'Ternopil\'s\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3627, 'Volyns\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3628, 'Vynnyts\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3629, 'Zakarpats\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3630, 'Zaporizhia', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3631, 'Zhytomyrs\'ka', 804, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3632, 'Abu Zabi', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3633, 'Ajman', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3634, 'Dubai', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3635, 'Ras al-Khaymah', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3636, 'Sharjah', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3637, 'Sharjha', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3638, 'Umm al Qaywayn', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3639, 'al-Fujayrah', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3640, 'ash-Shariqah', 784, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3641, 'Aberdeen', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3642, 'Aberdeenshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3643, 'Argyll', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3644, 'Bedfordshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3645, 'Belfast', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3646, 'Berkshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3647, 'Birmingham', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3648, 'Brechin', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3649, 'Bridgnorth', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3650, 'Bristol', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3651, 'Buckinghamshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3652, 'Cambridge', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3653, 'Cambridgeshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3654, 'Channel Islands', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3655, 'Cheshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3656, 'Cleveland', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3657, 'Co Fermanagh', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3658, 'Conwy', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3659, 'Cornwall', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3660, 'Coventry', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3661, 'Craven Arms', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3662, 'Cumbria', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3663, 'Denbighshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3664, 'Derby', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3665, 'Derbyshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3666, 'Devon', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3667, 'Dial Code Dungannon', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3668, 'Didcot', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3669, 'Dorset', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3670, 'Dunbartonshire', 818, '2024-06-13 11:38:10', '2024-06-13 11:38:10'),
(3671, 'Durham', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3672, 'East Dunbartonshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3673, 'East Lothian', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3674, 'East Midlands', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3675, 'East Sussex', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3676, 'East Yorkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3677, 'England', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3678, 'Essex', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3679, 'Fermanagh', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3680, 'Fife', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3681, 'Flintshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3682, 'Fulham', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3683, 'Gainsborough', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3684, 'Glocestershire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3685, 'Gwent', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3686, 'Hampshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3687, 'Hants', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3688, 'Herefordshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3689, 'Hertfordshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3690, 'Ireland', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3691, 'Isle Of Man', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3692, 'Isle of Wight', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3693, 'Kenford', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3694, 'Kent', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3695, 'Kilmarnock', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3696, 'Lanarkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3697, 'Lancashire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3698, 'Leicestershire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3699, 'Lincolnshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3700, 'Llanymynech', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3701, 'London', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3702, 'Ludlow', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3703, 'Mayfair', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3704, 'Merseyside', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3705, 'Mid Glamorgan', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3706, 'Middlesex', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3707, 'Mildenhall', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3708, 'Monmouthshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3709, 'Newton Stewart', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3710, 'Norfolk', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3711, 'North Humberside', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3712, 'North Yorkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3713, 'Northamptonshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3714, 'Northants', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3715, 'Northern Ireland', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3716, 'Northumberland', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3717, 'Nottinghamshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3718, 'Oxford', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3719, 'Powys', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3720, 'Roos-shire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3721, 'SUSSEX', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3722, 'Sark', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3723, 'Scotland', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3724, 'Scottish Borders', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3725, 'Shropshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3726, 'Somerset', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3727, 'South Glamorgan', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3728, 'South Wales', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3729, 'South Yorkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3730, 'Southwell', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3731, 'Staffordshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3732, 'Strabane', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3733, 'Suffolk', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3734, 'Surrey', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3735, 'Twickenham', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3736, 'Tyne and Wear', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3737, 'Tyrone', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3738, 'Utah', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3739, 'Wales', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3740, 'Warwickshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3741, 'West Lothian', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3742, 'West Midlands', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3743, 'West Sussex', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3744, 'West Yorkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3745, 'Whissendine', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3746, 'Wiltshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3747, 'Wokingham', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3748, 'Worcestershire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3749, 'Wrexham', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3750, 'Wurttemberg', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3751, 'Yorkshire', 818, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3752, 'Alabama', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3753, 'Alaska', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3754, 'Arizona', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3755, 'Arkansas', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3756, 'Byram', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3757, 'California', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3758, 'Cokato', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3759, 'Colorado', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3760, 'Connecticut', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3761, 'Delaware', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3762, 'District of Columbia', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3763, 'Georgia', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3764, 'Hawaii', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3765, 'Idaho', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3766, 'Illinois', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3767, 'Indiana', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3768, 'Iowa', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3769, 'Kansas', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3770, 'Kentucky', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3771, 'Louisiana', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3772, 'Lowa', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3773, 'Maine', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3774, 'Maryland', 840, '2024-06-13 11:38:11', '2024-06-13 11:38:11'),
(3775, 'Massachusetts', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3776, 'Medfield', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3777, 'Michigan', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3778, 'Minnesota', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3779, 'Mississippi', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3780, 'Missouri', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3781, 'Nebraska', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3782, 'Nevada', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3783, 'New Hampshire', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3784, 'New Jersey', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3785, 'New Jersy', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3786, 'New Mexico', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3787, 'New York', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3788, 'North Carolina', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3789, 'North Dakota', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3790, 'Ohio', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3791, 'Oklahoma', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3792, 'Oregon', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3793, 'Pennsylvania', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3794, 'Ramey', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3795, 'Rhode Island', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3796, 'South Carolina', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3797, 'South Dakota', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3798, 'Sublimity', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3799, 'Tennessee', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3800, 'Texas', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3801, 'Trimble', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3802, 'Vermont', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3803, 'Virginia', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3804, 'Washington', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3805, 'West Virginia', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3806, 'Wisconsin', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3807, 'Wyoming', 840, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3808, 'United States Minor Outlying I', 581, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3809, 'Artigas', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3810, 'Canelones', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3811, 'Cerro Largo', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3812, 'Colonia', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3813, 'Durazno', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3814, 'Flores', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3815, 'Lavalleja', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3816, 'Maldonado', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3817, 'Montevideo', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3818, 'Paysandu', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3819, 'Rivera', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3820, 'Rocha', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3821, 'Salto', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3822, 'Soriano', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3823, 'Tacuarembo', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3824, 'Treinta y Tres', 858, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3825, 'Andijon', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3826, 'Buhoro', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3827, 'Cizah', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3828, 'Fargona', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3829, 'Horazm', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3830, 'Kaskadar', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3831, 'Korakalpogiston', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3832, 'Namangan', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3833, 'Navoi', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3834, 'Samarkand', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3835, 'Sirdare', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3836, 'Surhondar', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3837, 'Toskent', 860, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3838, 'Malampa', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3839, 'Penama', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3840, 'Sanma', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3841, 'Shefa', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3842, 'Tafea', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3843, 'Torba', 548, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3844, 'Vatican City State (Holy See)', 336, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3845, 'Anzoategui', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3846, 'Apure', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3847, 'Aragua', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3848, 'Barinas', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3849, 'Carabobo', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3850, 'Cojedes', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3851, 'Delta Amacuro', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3852, 'Falcon', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3853, 'Guarico', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3854, 'Lara', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3855, 'Merida', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3856, 'Miranda', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3857, 'Monagas', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3858, 'Nueva Esparta', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3859, 'Portuguesa', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3860, 'Tachira', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3861, 'Trujillo', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3862, 'Vargas', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3863, 'Yaracuy', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3864, 'Zulia', 862, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3865, 'Bac Giang', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3866, 'Binh Dinh', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3867, 'Binh Duong', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3868, 'Da Nang', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3869, 'Dong Bang Song Cuu Long', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3870, 'Dong Bang Song Hong', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3871, 'Dong Nai', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3872, 'Dong Nam Bo', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3873, 'Duyen Hai Mien Trung', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3874, 'Hanoi', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3875, 'Hung Yen', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3876, 'Khu Bon Cu', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3877, 'Long An', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3878, 'Mien Nui Va Trung Du', 704, '2024-06-13 11:38:12', '2024-06-13 11:38:12'),
(3879, 'Thai Nguyen', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3880, 'Thanh Pho Ho Chi Minh', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3881, 'Thu Do Ha Noi', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3882, 'Tinh Can Tho', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3883, 'Tinh Da Nang', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3884, 'Tinh Gia Lai', 704, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3885, 'Anegada', 92, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3886, 'Jost van Dyke', 92, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3887, 'Tortola', 92, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3888, 'Saint Croix', 850, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3889, 'Alo', 876, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3890, 'Singave', 876, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3891, 'Wallis', 876, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3892, 'Bu Jaydur', 732, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3893, 'Wad-adh-Dhahab', 732, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3894, 'al-\'Ayun', 732, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3895, 'as-Samarah', 732, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3896, '\'Adan', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3897, 'Abyan', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3898, 'Dhamar', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3899, 'Hadramaut', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3900, 'Hajjah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3901, 'Hudaydah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3902, 'Ibb', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3903, 'Lahij', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3904, 'Ma\'rib', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3905, 'Madinat San\'a', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3906, 'Sa\'dah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3907, 'Sana', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3908, 'Shabwah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3909, 'Ta\'izz', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3910, 'al-Bayda', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3911, 'al-Hudaydah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3912, 'al-Jawf', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3913, 'al-Mahrah', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3914, 'al-Mahwit', 887, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3915, 'Copperbelt', 894, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3916, 'Luapala', 894, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3917, 'Lusaka', 894, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3918, 'North-Western', 894, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3919, 'Bulawayo', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3920, 'Harare', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3921, 'Manicaland', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3922, 'Mashonaland Central', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3923, 'Mashonaland East', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3924, 'Mashonaland West', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3925, 'Masvingo', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3926, 'Matabeleland North', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3927, 'Matabeleland South', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13'),
(3928, 'Midlands', 716, '2024-06-13 11:38:13', '2024-06-13 11:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `system_langs`
--

CREATE TABLE `system_langs` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_rtl` int DEFAULT '0',
  `status` int DEFAULT '1',
  `system_reserve` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_langs`
--

INSERT INTO `system_langs` (`id`, `name`, `locale`, `flag`, `app_locale`, `is_rtl`, `status`, `system_reserve`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', 'AU.png', 'en_EN', 0, 1, 1, '2024-06-13 11:38:16', '2024-06-24 11:13:25', NULL),
(2, 'Arabic', 'ar', 'AE.png', 'ar_SA', 1, 1, 0, '2024-06-24 11:11:46', '2024-06-24 11:11:46', NULL),
(3, 'German', 'de', 'DE.png', 'de_DE', 0, 1, 0, '2024-06-24 11:49:34', '2024-06-24 11:49:34', NULL),
(4, 'French', 'fr', 'FR.png', 'fr_FR', 0, 1, 0, '2024-06-24 11:50:15', '2024-06-24 11:50:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by_id` bigint UNSIGNED NOT NULL,
  `status` int DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `type`, `description`, `created_by_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Home Services', 'home-services', 'blog', 'Explore a variety of services for your home, from repairs and maintenance to installations and renovations.', 1, 1, '2024-06-14 12:29:33', '2024-06-14 12:29:44', NULL),
(2, 'Repairs', 'repairs', 'blog', 'Explore a variety of services for your home, from repairs and maintenance to installations and renovations.', 1, 1, '2024-06-14 12:29:58', '2024-06-14 12:29:58', NULL),
(3, 'Maintenance', 'maintenance', 'blog', 'Explore a variety of services for your home, from repairs and maintenance to installations and renovations.', 1, 1, '2024-06-14 12:30:11', '2024-06-14 12:30:11', NULL),
(4, 'Installations', 'installations', 'blog', 'Explore a variety of services for your home, from repairs and maintenance to installations and renovations.', 1, 1, '2024-06-14 12:30:28', '2024-06-14 12:30:28', NULL),
(5, 'Renovations', 'renovations', 'blog', 'Explore a variety of services for your home, from repairs and maintenance to installations and renovations.', 1, 1, '2024-06-14 12:30:42', '2024-06-14 12:30:42', NULL),
(6, 'AC Services', 'ac-services', 'blog', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', 1, 1, '2024-06-14 12:30:59', '2024-06-14 12:30:59', NULL),
(7, 'AC Maintenance', 'ac-maintenance', 'blog', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', 1, 1, '2024-06-14 12:31:15', '2024-06-14 12:31:15', NULL),
(8, 'AC Repair', 'ac-repair', 'blog', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', 1, 1, '2024-06-14 12:31:28', '2024-06-14 12:31:28', NULL),
(9, 'Cooling', 'cooling', 'blog', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', 1, 1, '2024-06-14 12:31:43', '2024-06-14 12:31:43', NULL),
(10, 'HVAC', 'hvac', 'blog', 'Learn about the importance of AC maintenance, repair tips, and how to choose the right AC system for your home.', 1, 1, '2024-06-14 12:31:55', '2024-06-14 12:31:55', NULL),
(11, 'Spa', 'spa', 'blog', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', 1, 1, '2024-06-14 12:32:09', '2024-06-14 12:32:09', NULL),
(12, 'Wellness', 'wellness', 'blog', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', 1, 1, '2024-06-14 12:32:21', '2024-06-14 12:32:21', NULL),
(13, 'Relaxation', 'relaxation', 'blog', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', 1, 1, '2024-06-14 12:32:33', '2024-06-14 12:32:33', NULL),
(14, 'Health', 'health', 'blog', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', 1, 1, '2024-06-14 12:32:45', '2024-06-14 12:32:45', NULL),
(15, 'Beauty', 'beauty', 'blog', 'Discover the world of spa and wellness, including benefits of different treatments, relaxation techniques, and more.', 1, 1, '2024-06-14 12:32:59', '2024-06-14 12:32:59', NULL),
(16, 'Hair', 'hair', 'blog', 'Stay updated with the latest hair trends, beauty tips, and expert advice on hair care and styling.', 1, 1, '2024-06-14 12:33:12', '2024-06-14 12:33:12', NULL),
(17, 'Haircare', 'haircare', 'blog', 'Stay updated with the latest hair trends, beauty tips, and expert advice on hair care and styling.', 1, 1, '2024-06-14 12:33:26', '2024-06-14 12:33:26', NULL),
(18, 'Hairstyles', 'hairstyles', 'blog', 'Stay updated with the latest hair trends, beauty tips, and expert advice on hair care and styling.', 1, 1, '2024-06-14 12:34:07', '2024-06-14 12:34:07', NULL),
(19, 'Styling', 'styling', 'blog', 'Stay updated with the latest hair trends, beauty tips, and expert advice on hair care and styling.', 1, 1, '2024-06-14 12:34:23', '2024-06-14 12:34:23', NULL),
(20, 'Cleaning', 'cleaning', 'blog', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', 1, 1, '2024-06-14 12:34:36', '2024-06-14 12:34:36', NULL),
(21, 'Organization', 'organization', 'blog', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', 1, 1, '2024-06-14 12:34:48', '2024-06-14 12:34:48', NULL),
(22, 'Home Cleaning', 'home-cleaning', 'blog', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', 1, 1, '2024-06-14 12:35:01', '2024-06-14 12:35:01', NULL),
(23, 'Tidying Up', 'tidying-up', 'blog', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', 1, 1, '2024-06-14 12:35:18', '2024-06-14 12:35:18', NULL),
(24, 'Decluttering', 'decluttering', 'blog', 'Get practical tips for cleaning your home efficiently, organizing spaces, and maintaining a tidy living environment.', 1, 1, '2024-06-14 12:35:29', '2024-06-14 12:35:29', NULL),
(25, 'Decorating', 'decorating', 'blog', 'Explore DIY projects, renovation ideas, and home improvement tips to enhance the look and functionality of your home.', 1, 1, '2024-06-14 12:50:22', '2024-06-14 12:50:22', NULL),
(26, 'Vendor Selection', 'vendor-selection', 'blog', 'Find guidance on how to choose the right vendors for home services, maintenance, and repairs.', 1, 1, '2024-06-14 12:50:42', '2024-06-14 12:50:42', NULL),
(27, 'Seasonal Upkeep', 'seasonal-upkeep', 'blog', 'Learn about essential home maintenance tasks, seasonal upkeep, and tips for keeping your home in top condition.', 1, 1, '2024-06-14 12:51:05', '2024-06-14 12:51:05', NULL),
(28, 'Property Maintenance', 'property-maintenance', 'blog', 'Learn about essential home maintenance tasks, seasonal upkeep, and tips for keeping your home in top condition.', 1, 1, '2024-06-14 12:51:20', '2024-06-14 12:51:20', NULL),
(29, 'Professional Services', 'professional-services', 'blog', 'Explore the benefits of hiring professionals for home services, repairs, and maintenance, and how to find trusted professionals.', 1, 1, '2024-06-14 12:51:41', '2024-06-14 12:51:41', NULL),
(30, 'Service Providers', 'service-providers', 'blog', 'Explore the benefits of hiring professionals for home services, repairs, and maintenance, and how to find trusted professionals.', 1, 1, '2024-06-14 12:53:47', '2024-06-14 12:53:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_by_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sales Tax', '15.00', 1, 1, '2024-06-14 05:00:35', '2024-06-14 05:00:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

CREATE TABLE `time_slots` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `serviceman_id` bigint UNSIGNED DEFAULT NULL,
  `time_unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gap` int DEFAULT NULL,
  `time_slots` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `provider_id`, `serviceman_id`, `time_unit`, `gap`, `time_slots`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-13 13:58:41', '2024-06-13 13:58:41', NULL),
(2, 20, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-13 14:01:18', '2024-06-13 14:01:18', NULL),
(3, 21, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"10:00 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-13 14:03:29', '2024-06-13 14:03:29', NULL),
(4, 22, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-13 14:06:02', '2024-06-13 14:06:02', NULL),
(5, 23, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"7:00 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"3:00 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-13 14:07:52', '2024-06-13 14:07:52', NULL),
(6, 24, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"4:00 PM\", \"start_time\": \"7:00 AM\"}]', '2024-06-13 14:10:11', '2024-06-13 14:10:11', NULL),
(7, 24, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SUNDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-14 09:34:25', '2024-06-14 09:34:40', '2024-06-14 09:34:40'),
(8, 30, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SUNDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-14 09:38:10', '2024-06-14 09:38:10', NULL),
(9, 34, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-15 04:25:15', '2024-06-15 04:25:15', NULL),
(10, 34, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:00 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-15 04:47:43', '2024-06-15 04:47:47', '2024-06-15 04:47:47'),
(11, 34, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-15 04:49:55', '2024-06-15 04:49:59', '2024-06-15 04:49:59'),
(12, 33, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"10:00 AM\"}]', '2024-06-15 05:00:26', '2024-06-15 05:00:26', NULL),
(13, 32, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-15 05:02:22', '2024-06-15 05:02:22', NULL),
(14, 31, NULL, 'hours', 1, '[{\"day\": \"MONDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"TUESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"WEDNESDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"THURSDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"FRIDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}, {\"day\": \"SATURDAY\", \"status\": \"1\", \"end_time\": \"5:30 PM\", \"start_time\": \"9:00 AM\"}]', '2024-06-15 05:26:36', '2024-06-15 05:26:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'UTC', 'UTC', NULL, NULL),
(2, 'Africa/Abidjan', 'Abidjan', NULL, NULL),
(3, 'Africa/Accra', 'Accra', NULL, NULL),
(4, 'Africa/Addis_Ababa', 'Addis_Ababa', NULL, NULL),
(5, 'Africa/Algiers', 'Algiers', NULL, NULL),
(6, 'Africa/Asmara', 'Asmara', NULL, NULL),
(7, 'Africa/Bamako', 'Bamako', NULL, NULL),
(8, 'Africa/Bangui', 'Bangui', NULL, NULL),
(9, 'Africa/Banjul', 'Banjul', NULL, NULL),
(10, 'Africa/Bissau', 'Bissau', NULL, NULL),
(11, 'Africa/Blantyre', 'Blantyre', NULL, NULL),
(12, 'Africa/Brazzaville', 'Brazzaville', NULL, NULL),
(13, 'Africa/Bujumbura', 'Bujumbura', NULL, NULL),
(14, 'Africa/Cairo', 'Cairo', NULL, NULL),
(15, 'Africa/Casablanca', 'Casablanca', NULL, NULL),
(16, 'Africa/Ceuta', 'Ceuta', NULL, NULL),
(17, 'Africa/Conakry', 'Conakry', NULL, NULL),
(18, 'Africa/Dakar', 'Dakar', NULL, NULL),
(19, 'Africa/Dar_es_Salaam', 'Dar_es_Salaam', NULL, NULL),
(20, 'Africa/Djibouti', 'Djibouti', NULL, NULL),
(21, 'Africa/Douala', 'Douala', NULL, NULL),
(22, 'Africa/El_Aaiun', 'El_Aaiun', NULL, NULL),
(23, 'Africa/Freetown', 'Freetown', NULL, NULL),
(24, 'Africa/Gaborone', 'Gaborone', NULL, NULL),
(25, 'Africa/Harare', 'Harare', NULL, NULL),
(26, 'Africa/Johannesburg', 'Johannesburg', NULL, NULL),
(27, 'Africa/Juba', 'Juba', NULL, NULL),
(28, 'Africa/Kampala', 'Kampala', NULL, NULL),
(29, 'Africa/Khartoum', 'Khartoum', NULL, NULL),
(30, 'Africa/Kigali', 'Kigali', NULL, NULL),
(31, 'Africa/Kinshasa', 'Kinshasa', NULL, NULL),
(32, 'Africa/Lagos', 'Lagos', NULL, NULL),
(33, 'Africa/Libreville', 'Libreville', NULL, NULL),
(34, 'Africa/Lome', 'Lome', NULL, NULL),
(35, 'Africa/Luanda', 'Luanda', NULL, NULL),
(36, 'Africa/Lubumbashi', 'Lubumbashi', NULL, NULL),
(37, 'Africa/Lusaka', 'Lusaka', NULL, NULL),
(38, 'Africa/Malabo', 'Malabo', NULL, NULL),
(39, 'Africa/Maputo', 'Maputo', NULL, NULL),
(40, 'Africa/Maseru', 'Maseru', NULL, NULL),
(41, 'Africa/Mbabane', 'Mbabane', NULL, NULL),
(42, 'Africa/Mogadishu', 'Mogadishu', NULL, NULL),
(43, 'Africa/Monrovia', 'Monrovia', NULL, NULL),
(44, 'Africa/Nairobi', 'Nairobi', NULL, NULL),
(45, 'Africa/Ndjamena', 'Ndjamena', NULL, NULL),
(46, 'Africa/Niamey', 'Niamey', NULL, NULL),
(47, 'Africa/Nouakchott', 'Nouakchott', NULL, NULL),
(48, 'Africa/Ouagadougou', 'Ouagadougou', NULL, NULL),
(49, 'Africa/Porto-Novo', 'Porto-Novo', NULL, NULL),
(50, 'Africa/Sao_Tome', 'Sao_Tome', NULL, NULL),
(51, 'Africa/Tripoli', 'Tripoli', NULL, NULL),
(52, 'Africa/Tunis', 'Tunis', NULL, NULL),
(53, 'Africa/Windhoek', 'Windhoek', NULL, NULL),
(54, 'America/Adak', 'Adak', NULL, NULL),
(55, 'America/Anchorage', 'Anchorage', NULL, NULL),
(56, 'America/Anguilla', 'Anguilla', NULL, NULL),
(57, 'America/Antigua', 'Antigua', NULL, NULL),
(58, 'America/Araguaina', 'Araguaina', NULL, NULL),
(59, 'America/Argentina/Buenos_Aires', 'Buenos_Aires', NULL, NULL),
(60, 'America/Argentina/Catamarca', 'Catamarca', NULL, NULL),
(61, 'America/Argentina/Cordoba', 'Cordoba', NULL, NULL),
(62, 'America/Argentina/Jujuy', 'Jujuy', NULL, NULL),
(63, 'America/Argentina/La_Rioja', 'La_Rioja', NULL, NULL),
(64, 'America/Argentina/Mendoza', 'Mendoza', NULL, NULL),
(65, 'America/Argentina/Rio_Gallegos', 'Rio_Gallegos', NULL, NULL),
(66, 'America/Argentina/Salta', 'Salta', NULL, NULL),
(67, 'America/Argentina/San_Juan', 'San_Juan', NULL, NULL),
(68, 'America/Argentina/San_Luis', 'San_Luis', NULL, NULL),
(69, 'America/Argentina/Tucuman', 'Tucuman', NULL, NULL),
(70, 'America/Argentina/Ushuaia', 'Ushuaia', NULL, NULL),
(71, 'America/Aruba', 'Aruba', NULL, NULL),
(72, 'America/Asuncion', 'Asuncion', NULL, NULL),
(73, 'America/Atikokan', 'Atikokan', NULL, NULL),
(74, 'America/Bahia', 'Bahia', NULL, NULL),
(75, 'America/Bahia_Banderas', 'Bahia_Banderas', NULL, NULL),
(76, 'America/Barbados', 'Barbados', NULL, NULL),
(77, 'America/Belem', 'Belem', NULL, NULL),
(78, 'America/Belize', 'Belize', NULL, NULL),
(79, 'America/Blanc-Sablon', 'Blanc-Sablon', NULL, NULL),
(80, 'America/Boa_Vista', 'Boa_Vista', NULL, NULL),
(81, 'America/Bogota', 'Bogota', NULL, NULL),
(82, 'America/Boise', 'Boise', NULL, NULL),
(83, 'America/Cambridge_Bay', 'Cambridge_Bay', NULL, NULL),
(84, 'America/Campo_Grande', 'Campo_Grande', NULL, NULL),
(85, 'America/Cancun', 'Cancun', NULL, NULL),
(86, 'America/Caracas', 'Caracas', NULL, NULL),
(87, 'America/Cayenne', 'Cayenne', NULL, NULL),
(88, 'America/Cayman', 'Cayman', NULL, NULL),
(89, 'America/Chicago', 'Chicago', NULL, NULL),
(90, 'America/Chihuahua', 'Chihuahua', NULL, NULL),
(91, 'America/Costa_Rica', 'Costa_Rica', NULL, NULL),
(92, 'America/Creston', 'Creston', NULL, NULL),
(93, 'America/Cuiaba', 'Cuiaba', NULL, NULL),
(94, 'America/Curacao', 'Curacao', NULL, NULL),
(95, 'America/Danmarkshavn', 'Danmarkshavn', NULL, NULL),
(96, 'America/Dawson', 'Dawson', NULL, NULL),
(97, 'America/Dawson_Creek', 'Dawson_Creek', NULL, NULL),
(98, 'America/Denver', 'Denver', NULL, NULL),
(99, 'America/Detroit', 'Detroit', NULL, NULL),
(100, 'America/Dominica', 'Dominica', NULL, NULL),
(101, 'America/Edmonton', 'Edmonton', NULL, NULL),
(102, 'America/Eirunepe', 'Eirunepe', NULL, NULL),
(103, 'America/El_Salvador', 'El_Salvador', NULL, NULL),
(104, 'America/Fort_Nelson', 'Fort_Nelson', NULL, NULL),
(105, 'America/Fortaleza', 'Fortaleza', NULL, NULL),
(106, 'America/Glace_Bay', 'Glace_Bay', NULL, NULL),
(107, 'America/Goose_Bay', 'Goose_Bay', NULL, NULL),
(108, 'America/Grand_Turk', 'Grand_Turk', NULL, NULL),
(109, 'America/Grenada', 'Grenada', NULL, NULL),
(110, 'America/Guadeloupe', 'Guadeloupe', NULL, NULL),
(111, 'America/Guatemala', 'Guatemala', NULL, NULL),
(112, 'America/Guayaquil', 'Guayaquil', NULL, NULL),
(113, 'America/Guyana', 'Guyana', NULL, NULL),
(114, 'America/Halifax', 'Halifax', NULL, NULL),
(115, 'America/Havana', 'Havana', NULL, NULL),
(116, 'America/Hermosillo', 'Hermosillo', NULL, NULL),
(117, 'America/Indiana/Indianapolis', 'Indianapolis', NULL, NULL),
(118, 'America/Indiana/Knox', 'Knox', NULL, NULL),
(119, 'America/Indiana/Marengo', 'Marengo', NULL, NULL),
(120, 'America/Indiana/Petersburg', 'Petersburg', NULL, NULL),
(121, 'America/Indiana/Tell_City', 'Tell_City', NULL, NULL),
(122, 'America/Indiana/Vevay', 'Vevay', NULL, NULL),
(123, 'America/Indiana/Vincennes', 'Vincennes', NULL, NULL),
(124, 'America/Indiana/Winamac', 'Winamac', NULL, NULL),
(125, 'America/Inuvik', 'Inuvik', NULL, NULL),
(126, 'America/Iqaluit', 'Iqaluit', NULL, NULL),
(127, 'America/Jamaica', 'Jamaica', NULL, NULL),
(128, 'America/Juneau', 'Juneau', NULL, NULL),
(129, 'America/Kentucky/Louisville', 'Louisville', NULL, NULL),
(130, 'America/Kentucky/Monticello', 'Monticello', NULL, NULL),
(131, 'America/Kralendijk', 'Kralendijk', NULL, NULL),
(132, 'America/La_Paz', 'La_Paz', NULL, NULL),
(133, 'America/Lima', 'Lima', NULL, NULL),
(134, 'America/Los_Angeles', 'Los_Angeles', NULL, NULL),
(135, 'America/Lower_Princes', 'Lower_Princes', NULL, NULL),
(136, 'America/Maceio', 'Maceio', NULL, NULL),
(137, 'America/Managua', 'Managua', NULL, NULL),
(138, 'America/Manaus', 'Manaus', NULL, NULL),
(139, 'America/Marigot', 'Marigot', NULL, NULL),
(140, 'America/Martinique', 'Martinique', NULL, NULL),
(141, 'America/Matamoros', 'Matamoros', NULL, NULL),
(142, 'America/Mazatlan', 'Mazatlan', NULL, NULL),
(143, 'America/Menominee', 'Menominee', NULL, NULL),
(144, 'America/Merida', 'Merida', NULL, NULL),
(145, 'America/Metlakatla', 'Metlakatla', NULL, NULL),
(146, 'America/Mexico_City', 'Mexico_City', NULL, NULL),
(147, 'America/Miquelon', 'Miquelon', NULL, NULL),
(148, 'America/Moncton', 'Moncton', NULL, NULL),
(149, 'America/Monterrey', 'Monterrey', NULL, NULL),
(150, 'America/Montevideo', 'Montevideo', NULL, NULL),
(151, 'America/Montserrat', 'Montserrat', NULL, NULL),
(152, 'America/Nassau', 'Nassau', NULL, NULL),
(153, 'America/New_York', 'New_York', NULL, NULL),
(154, 'America/Nipigon', 'Nipigon', NULL, NULL),
(155, 'America/Nome', 'Nome', NULL, NULL),
(156, 'America/Noronha', 'Noronha', NULL, NULL),
(157, 'America/North_Dakota/Beulah', 'Beulah', NULL, NULL),
(158, 'America/North_Dakota/Center', 'Center', NULL, NULL),
(159, 'America/North_Dakota/New_Salem', 'New_Salem', NULL, NULL),
(160, 'America/Nuuk', 'Nuuk', NULL, NULL),
(161, 'America/Ojinaga', 'Ojinaga', NULL, NULL),
(162, 'America/Panama', 'Panama', NULL, NULL),
(163, 'America/Pangnirtung', 'Pangnirtung', NULL, NULL),
(164, 'America/Paramaribo', 'Paramaribo', NULL, NULL),
(165, 'America/Phoenix', 'Phoenix', NULL, NULL),
(166, 'America/Port-au-Prince', 'Port-au-Prince', NULL, NULL),
(167, 'America/Port_of_Spain', 'Port_of_Spain', NULL, NULL),
(168, 'America/Porto_Velho', 'Porto_Velho', NULL, NULL),
(169, 'America/Puerto_Rico', 'Puerto_Rico', NULL, NULL),
(170, 'America/Punta_Arenas', 'Punta_Arenas', NULL, NULL),
(171, 'America/Rainy_River', 'Rainy_River', NULL, NULL),
(172, 'America/Rankin_Inlet', 'Rankin_Inlet', NULL, NULL),
(173, 'America/Recife', 'Recife', NULL, NULL),
(174, 'America/Regina', 'Regina', NULL, NULL),
(175, 'America/Resolute', 'Resolute', NULL, NULL),
(176, 'America/Rio_Branco', 'Rio_Branco', NULL, NULL),
(177, 'America/Santarem', 'Santarem', NULL, NULL),
(178, 'America/Santiago', 'Santiago', NULL, NULL),
(179, 'America/Santo_Domingo', 'Santo_Domingo', NULL, NULL),
(180, 'America/Sao_Paulo', 'Sao_Paulo', NULL, NULL),
(181, 'America/Scoresbysund', 'Scoresbysund', NULL, NULL),
(182, 'America/Sitka', 'Sitka', NULL, NULL),
(183, 'America/St_Barthelemy', 'St_Barthelemy', NULL, NULL),
(184, 'America/St_Johns', 'St_Johns', NULL, NULL),
(185, 'America/St_Kitts', 'St_Kitts', NULL, NULL),
(186, 'America/St_Lucia', 'St_Lucia', NULL, NULL),
(187, 'America/St_Thomas', 'St_Thomas', NULL, NULL),
(188, 'America/St_Vincent', 'St_Vincent', NULL, NULL),
(189, 'America/Swift_Current', 'Swift_Current', NULL, NULL),
(190, 'America/Tegucigalpa', 'Tegucigalpa', NULL, NULL),
(191, 'America/Thule', 'Thule', NULL, NULL),
(192, 'America/Thunder_Bay', 'Thunder_Bay', NULL, NULL),
(193, 'America/Tijuana', 'Tijuana', NULL, NULL),
(194, 'America/Toronto', 'Toronto', NULL, NULL),
(195, 'America/Tortola', 'Tortola', NULL, NULL),
(196, 'America/Vancouver', 'Vancouver', NULL, NULL),
(197, 'America/Whitehorse', 'Whitehorse', NULL, NULL),
(198, 'America/Winnipeg', 'Winnipeg', NULL, NULL),
(199, 'America/Yakutat', 'Yakutat', NULL, NULL),
(200, 'America/Yellowknife', 'Yellowknife', NULL, NULL),
(201, 'Antarctica/Casey', 'Casey', NULL, NULL),
(202, 'Antarctica/Davis', 'Davis', NULL, NULL),
(203, 'Antarctica/DumontDUrville', 'DumontDUrville', NULL, NULL),
(204, 'Antarctica/Macquarie', 'Macquarie', NULL, NULL),
(205, 'Antarctica/Mawson', 'Mawson', NULL, NULL),
(206, 'Antarctica/McMurdo', 'McMurdo', NULL, NULL),
(207, 'Antarctica/Palmer', 'Palmer', NULL, NULL),
(208, 'Antarctica/Rothera', 'Rothera', NULL, NULL),
(209, 'Antarctica/Syowa', 'Syowa', NULL, NULL),
(210, 'Antarctica/Troll', 'Troll', NULL, NULL),
(211, 'Antarctica/Vostok', 'Vostok', NULL, NULL),
(212, 'Arctic/Longyearbyen', 'Longyearbyen', NULL, NULL),
(213, 'Asia/Aden', 'Aden', NULL, NULL),
(214, 'Asia/Almaty', 'Almaty', NULL, NULL),
(215, 'Asia/Amman', 'Amman', NULL, NULL),
(216, 'Asia/Anadyr', 'Anadyr', NULL, NULL),
(217, 'Asia/Aqtau', 'Aqtau', NULL, NULL),
(218, 'Asia/Aqtobe', 'Aqtobe', NULL, NULL),
(219, 'Asia/Ashgabat', 'Ashgabat', NULL, NULL),
(220, 'Asia/Atyrau', 'Atyrau', NULL, NULL),
(221, 'Asia/Baghdad', 'Baghdad', NULL, NULL),
(222, 'Asia/Bahrain', 'Bahrain', NULL, NULL),
(223, 'Asia/Baku', 'Baku', NULL, NULL),
(224, 'Asia/Bangkok', 'Bangkok', NULL, NULL),
(225, 'Asia/Barnaul', 'Barnaul', NULL, NULL),
(226, 'Asia/Beirut', 'Beirut', NULL, NULL),
(227, 'Asia/Bishkek', 'Bishkek', NULL, NULL),
(228, 'Asia/Brunei', 'Brunei', NULL, NULL),
(229, 'Asia/Chita', 'Chita', NULL, NULL),
(230, 'Asia/Choibalsan', 'Choibalsan', NULL, NULL),
(231, 'Asia/Colombo', 'Colombo', NULL, NULL),
(232, 'Asia/Damascus', 'Damascus', NULL, NULL),
(233, 'Asia/Dhaka', 'Dhaka', NULL, NULL),
(234, 'Asia/Dili', 'Dili', NULL, NULL),
(235, 'Asia/Dubai', 'Dubai', NULL, NULL),
(236, 'Asia/Dushanbe', 'Dushanbe', NULL, NULL),
(237, 'Asia/Famagusta', 'Famagusta', NULL, NULL),
(238, 'Asia/Gaza', 'Gaza', NULL, NULL),
(239, 'Asia/Hebron', 'Hebron', NULL, NULL),
(240, 'Asia/Ho_Chi_Minh', 'Ho_Chi_Minh', NULL, NULL),
(241, 'Asia/Hong_Kong', 'Hong_Kong', NULL, NULL),
(242, 'Asia/Hovd', 'Hovd', NULL, NULL),
(243, 'Asia/Irkutsk', 'Irkutsk', NULL, NULL),
(244, 'Asia/Jakarta', 'Jakarta', NULL, NULL),
(245, 'Asia/Jayapura', 'Jayapura', NULL, NULL),
(246, 'Asia/Jerusalem', 'Jerusalem', NULL, NULL),
(247, 'Asia/Kabul', 'Kabul', NULL, NULL),
(248, 'Asia/Kamchatka', 'Kamchatka', NULL, NULL),
(249, 'Asia/Karachi', 'Karachi', NULL, NULL),
(250, 'Asia/Kathmandu', 'Kathmandu', NULL, NULL),
(251, 'Asia/Khandyga', 'Khandyga', NULL, NULL),
(252, 'Asia/Kolkata', 'Kolkata', NULL, NULL),
(253, 'Asia/Krasnoyarsk', 'Krasnoyarsk', NULL, NULL),
(254, 'Asia/Kuala_Lumpur', 'Kuala_Lumpur', NULL, NULL),
(255, 'Asia/Kuching', 'Kuching', NULL, NULL),
(256, 'Asia/Kuwait', 'Kuwait', NULL, NULL),
(257, 'Asia/Macau', 'Macau', NULL, NULL),
(258, 'Asia/Magadan', 'Magadan', NULL, NULL),
(259, 'Asia/Makassar', 'Makassar', NULL, NULL),
(260, 'Asia/Manila', 'Manila', NULL, NULL),
(261, 'Asia/Muscat', 'Muscat', NULL, NULL),
(262, 'Asia/Nicosia', 'Nicosia', NULL, NULL),
(263, 'Asia/Novokuznetsk', 'Novokuznetsk', NULL, NULL),
(264, 'Asia/Novosibirsk', 'Novosibirsk', NULL, NULL),
(265, 'Asia/Omsk', 'Omsk', NULL, NULL),
(266, 'Asia/Oral', 'Oral', NULL, NULL),
(267, 'Asia/Phnom_Penh', 'Phnom_Penh', NULL, NULL),
(268, 'Asia/Pontianak', 'Pontianak', NULL, NULL),
(269, 'Asia/Pyongyang', 'Pyongyang', NULL, NULL),
(270, 'Asia/Qatar', 'Qatar', NULL, NULL),
(271, 'Asia/Qostanay', 'Qostanay', NULL, NULL),
(272, 'Asia/Qyzylorda', 'Qyzylorda', NULL, NULL),
(273, 'Asia/Riyadh', 'Riyadh', NULL, NULL),
(274, 'Asia/Sakhalin', 'Sakhalin', NULL, NULL),
(275, 'Asia/Samarkand', 'Samarkand', NULL, NULL),
(276, 'Asia/Seoul', 'Seoul', NULL, NULL),
(277, 'Asia/Shanghai', 'Shanghai', NULL, NULL),
(278, 'Asia/Singapore', 'Singapore', NULL, NULL),
(279, 'Asia/Srednekolymsk', 'Srednekolymsk', NULL, NULL),
(280, 'Asia/Taipei', 'Taipei', NULL, NULL),
(281, 'Asia/Tashkent', 'Tashkent', NULL, NULL),
(282, 'Asia/Tbilisi', 'Tbilisi', NULL, NULL),
(283, 'Asia/Tehran', 'Tehran', NULL, NULL),
(284, 'Asia/Thimphu', 'Thimphu', NULL, NULL),
(285, 'Asia/Tokyo', 'Tokyo', NULL, NULL),
(286, 'Asia/Tomsk', 'Tomsk', NULL, NULL),
(287, 'Asia/Ulaanbaatar', 'Ulaanbaatar', NULL, NULL),
(288, 'Asia/Urumqi', 'Urumqi', NULL, NULL),
(289, 'Asia/Ust-Nera', 'Ust-Nera', NULL, NULL),
(290, 'Asia/Vientiane', 'Vientiane', NULL, NULL),
(291, 'Asia/Vladivostok', 'Vladivostok', NULL, NULL),
(292, 'Asia/Yakutsk', 'Yakutsk', NULL, NULL),
(293, 'Asia/Yangon', 'Yangon', NULL, NULL),
(294, 'Asia/Yekaterinburg', 'Yekaterinburg', NULL, NULL),
(295, 'Asia/Yerevan', 'Yerevan', NULL, NULL),
(296, 'Atlantic/Azores', 'Azores', NULL, NULL),
(297, 'Atlantic/Bermuda', 'Bermuda', NULL, NULL),
(298, 'Atlantic/Canary', 'Canary', NULL, NULL),
(299, 'Atlantic/Cape_Verde', 'Cape_Verde', NULL, NULL),
(300, 'Atlantic/Faroe', 'Faroe', NULL, NULL),
(301, 'Atlantic/Madeira	', 'Madeira	', NULL, NULL),
(302, 'Atlantic/Reykjavik', 'Reykjavik', NULL, NULL),
(303, 'Atlantic/South_Georgia', 'South_Georgia', NULL, NULL),
(304, 'Atlantic/St_Helena', 'St_Helena', NULL, NULL),
(305, 'Atlantic/Stanley	', 'Stanley	', NULL, NULL),
(306, 'Australia/Adelaide', 'Adelaide', NULL, NULL),
(307, 'Australia/Brisbane	', 'Brisbane	', NULL, NULL),
(308, 'Australia/Broken_Hill', 'Broken_Hill', NULL, NULL),
(309, 'Australia/Currie', 'Currie', NULL, NULL),
(310, 'Australia/Darwin', 'Darwin', NULL, NULL),
(311, 'Australia/Eucla', 'Eucla', NULL, NULL),
(312, 'Australia/Hobart', 'Hobart', NULL, NULL),
(313, 'Australia/Lindeman', 'Lindeman', NULL, NULL),
(314, 'Australia/Lord_Howe', 'Lord_Howe', NULL, NULL),
(315, 'Australia/Melbourne', 'Melbourne', NULL, NULL),
(316, 'Australia/Perth', 'Perth', NULL, NULL),
(317, 'Australia/Sydney', 'Sydney', NULL, NULL),
(318, 'Europe/Amsterdam', 'Amsterdam', NULL, NULL),
(319, 'Europe/Andorra', 'Andorra', NULL, NULL),
(320, 'Europe/Astrakhan', 'Astrakhan', NULL, NULL),
(321, 'Europe/Athens', 'Athens', NULL, NULL),
(322, 'Europe/Belgrade', 'Belgrade', NULL, NULL),
(323, 'Europe/Berlin', 'Berlin', NULL, NULL),
(324, 'Europe/Bratislava', 'Bratislava', NULL, NULL),
(325, 'Europe/Brussels', 'Brussels', NULL, NULL),
(326, 'Europe/Bucharest', 'Bucharest', NULL, NULL),
(327, 'Europe/Budapest', 'Budapest', NULL, NULL),
(328, 'Europe/Busingen', 'Busingen', NULL, NULL),
(329, 'Europe/Chisinau', 'Chisinau', NULL, NULL),
(330, 'Europe/Copenhagen', 'Copenhagen', NULL, NULL),
(331, 'Europe/Dublin', 'Dublin', NULL, NULL),
(332, 'Europe/Gibraltar', 'Gibraltar', NULL, NULL),
(333, 'Europe/Guernsey', 'Guernsey', NULL, NULL),
(334, 'Europe/Helsinki', 'Helsinki', NULL, NULL),
(335, 'Europe/Isle_of_Man', 'Isle_of_Man', NULL, NULL),
(336, 'Europe/Istanbul', 'Istanbul', NULL, NULL),
(337, 'Europe/Jersey', 'Jersey', NULL, NULL),
(338, 'Europe/Kaliningrad', 'Kaliningrad', NULL, NULL),
(339, 'Europe/Kiev', 'Kiev', NULL, NULL),
(340, 'Europe/Kirov', 'Kirov', NULL, NULL),
(341, 'Europe/Lisbon', 'Lisbon', NULL, NULL),
(342, 'Europe/Ljubljana', 'Ljubljana', NULL, NULL),
(343, 'Europe/London', 'London', NULL, NULL),
(344, 'Europe/Luxembourg', 'Luxembourg', NULL, NULL),
(345, 'Europe/Madrid', 'Madrid', NULL, NULL),
(346, 'Europe/Malta', 'Malta', NULL, NULL),
(347, 'Europe/Mariehamn', 'Mariehamn', NULL, NULL),
(348, 'Europe/Minsk', 'Minsk', NULL, NULL),
(349, 'Europe/Monaco', 'Monaco', NULL, NULL),
(350, 'Europe/Moscow', 'Moscow', NULL, NULL),
(351, 'Europe/Oslo', 'Oslo', NULL, NULL),
(352, 'Europe/Paris', 'Paris', NULL, NULL),
(353, 'Europe/Podgorica', 'Podgorica', NULL, NULL),
(354, 'Europe/Prague', 'Prague', NULL, NULL),
(355, 'Europe/Riga', 'Riga', NULL, NULL),
(356, 'Europe/Rome', 'Rome', NULL, NULL),
(357, 'Europe/Samara', 'Samara', NULL, NULL),
(358, 'Europe/San_Marino', 'San_Marino', NULL, NULL),
(359, 'Europe/Sarajevo', 'Sarajevo', NULL, NULL),
(360, 'Europe/Saratov', 'Saratov', NULL, NULL),
(361, 'Europe/Simferopol', 'Simferopol', NULL, NULL),
(362, 'Europe/Skopje', 'Skopje', NULL, NULL),
(363, 'Europe/Sofia', 'Sofia', NULL, NULL),
(364, 'Europe/Stockholm', 'Stockholm', NULL, NULL),
(365, 'Europe/Tallinn', 'Tallinn', NULL, NULL),
(366, 'Europe/Tirane', 'Tirane', NULL, NULL),
(367, 'Europe/Ulyanovsk', 'Ulyanovsk', NULL, NULL),
(368, 'Europe/Uzhgorod', 'Uzhgorod', NULL, NULL),
(369, 'Europe/Vaduz', 'Vaduz', NULL, NULL),
(370, 'Europe/Vatican', 'Vatican', NULL, NULL),
(371, 'Europe/Vienna', 'Vienna', NULL, NULL),
(372, 'Europe/Vilnius', 'Vilnius', NULL, NULL),
(373, 'Europe/Volgograd', 'Volgograd', NULL, NULL),
(374, 'Europe/Warsaw', 'Warsaw', NULL, NULL),
(375, 'Europe/Zagreb', 'Zagreb', NULL, NULL),
(376, 'Europe/Zaporozhye', 'Zaporozhye', NULL, NULL),
(377, 'Europe/Zurich', 'Zurich', NULL, NULL),
(378, 'Indian/Antananarivo', 'Antananarivo', NULL, NULL),
(379, 'Indian/Chagos', 'Chagos', NULL, NULL),
(380, 'Indian/Christmas', 'Christmas', NULL, NULL),
(381, 'Indian/Cocos', 'Cocos', NULL, NULL),
(382, 'Indian/Comoro', 'Comoro', NULL, NULL),
(383, 'Indian/Kerguelen', 'Kerguelen', NULL, NULL),
(384, 'Indian/Mahe', 'Mahe', NULL, NULL),
(385, 'Indian/Maldives', 'Maldives', NULL, NULL),
(386, 'Indian/Mauritius', 'Mauritius', NULL, NULL),
(387, 'Indian/Mayotte', 'Mayotte', NULL, NULL),
(388, 'Indian/Reunion', 'Reunion', NULL, NULL),
(389, 'Pacific/Apia', 'Apia', NULL, NULL),
(390, 'Pacific/Auckland', 'Auckland', NULL, NULL),
(391, 'Pacific/Bougainville', 'Bougainville', NULL, NULL),
(392, 'Pacific/Chatham', 'Chatham', NULL, NULL),
(393, 'Pacific/Chuuk', 'Chuuk', NULL, NULL),
(394, 'Pacific/Easter', 'Easter', NULL, NULL),
(395, 'Pacific/Efate', 'Efate', NULL, NULL),
(396, 'Pacific/Enderbury', 'Enderbury', NULL, NULL),
(397, 'Pacific/Fakaofo', 'Fakaofo', NULL, NULL),
(398, 'Pacific/Fiji', 'Fiji', NULL, NULL),
(399, 'Pacific/Funafuti', 'Funafuti', NULL, NULL),
(400, 'Pacific/Galapagos', 'Galapagos', NULL, NULL),
(401, 'Pacific/Gambier', 'Gambier', NULL, NULL),
(402, 'Pacific/Guadalcanal', 'Guadalcanal', NULL, NULL),
(403, 'Pacific/Guam', 'Guam', NULL, NULL),
(404, 'Pacific/Honolulu', 'Honolulu', NULL, NULL),
(405, 'Pacific/Kiritimati', 'Kiritimati', NULL, NULL),
(406, 'Pacific/Kosrae', 'Kosrae', NULL, NULL),
(407, 'Pacific/Kwajalein', 'Kwajalein', NULL, NULL),
(408, 'Pacific/Majuro', 'Majuro', NULL, NULL),
(409, 'Pacific/Marquesas', 'Marquesas', NULL, NULL),
(410, 'Pacific/Midway', 'Midway', NULL, NULL),
(411, 'Pacific/Nauru', 'Nauru', NULL, NULL),
(412, 'Pacific/Niue', 'Niue', NULL, NULL),
(413, 'Pacific/Norfolk', 'Norfolk', NULL, NULL),
(414, 'Pacific/Noumea', 'Noumea', NULL, NULL),
(415, 'Pacific/Pago_Pago', 'Pago_Pago', NULL, NULL),
(416, 'Pacific/Palau', 'Palau', NULL, NULL),
(417, 'Pacific/Pitcairn', 'Pitcairn', NULL, NULL),
(418, 'Pacific/Pohnpei', 'Pohnpei', NULL, NULL),
(419, 'Pacific/Port_Moresby', 'Port_Moresby', NULL, NULL),
(420, 'Pacific/Rarotonga', 'Rarotonga', NULL, NULL),
(421, 'Pacific/Saipan', 'Saipan', NULL, NULL),
(422, 'Pacific/Tahiti', 'Tahiti', NULL, NULL),
(423, 'Pacific/Tarawa', 'Tarawa', NULL, NULL),
(424, 'Pacific/Tongatapu', 'Tongatapu', NULL, NULL),
(425, 'Pacific/Wake', 'Wake', NULL, NULL),
(426, 'Pacific/Wallis', 'Wallis', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `wallet_id` bigint UNSIGNED DEFAULT NULL,
  `booking_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `type` enum('credit','debit') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `wallet_id`, `booking_id`, `amount`, `type`, `detail`, `from`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, '500.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:14:25', '2024-06-13 12:14:25', NULL),
(2, 2, NULL, '5000.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:14:31', '2024-06-13 12:14:31', NULL),
(4, 4, NULL, '600.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:14:43', '2024-06-13 12:14:43', NULL),
(5, 4, NULL, '800.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:14:50', '2024-06-13 12:14:50', NULL),
(7, 6, NULL, '600.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:17:56', '2024-06-13 12:17:56', NULL),
(8, 7, NULL, '600.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:39:50', '2024-06-13 12:39:50', NULL),
(9, 8, NULL, '650.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:41:53', '2024-06-13 12:41:53', NULL),
(10, 9, NULL, '900.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:42:01', '2024-06-13 12:42:01', NULL),
(11, 9, NULL, '700.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:42:09', '2024-06-13 12:42:09', NULL),
(12, 10, NULL, '700.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:42:16', '2024-06-13 12:42:16', NULL),
(13, 11, NULL, '1000.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:42:28', '2024-06-13 12:42:28', NULL),
(14, 12, NULL, '5000.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:42:37', '2024-06-13 12:42:37', NULL),
(15, 13, NULL, '600.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:43:21', '2024-06-13 12:43:21', NULL),
(16, 14, NULL, '800.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:43:30', '2024-06-13 12:43:30', NULL),
(17, 15, NULL, '900.00', 'credit', 'Admin has credited the balance.', 1, '2024-06-13 12:43:42', '2024-06-13 12:43:42', NULL),
(18, 17, NULL, '5000.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 20:53:52', '2024-07-22 20:53:52', NULL),
(19, 17, NULL, '500.00', 'debit', 'Admin has debited the balance.', 1, '2024-07-22 20:54:12', '2024-07-22 20:54:12', NULL),
(20, 17, NULL, '500.00', 'debit', 'Admin has debited the balance.', 1, '2024-07-22 20:54:37', '2024-07-22 20:54:37', NULL),
(21, 17, NULL, '500.00', 'debit', 'Admin has debited the balance.', 1, '2024-07-22 20:54:43', '2024-07-22 20:54:43', NULL),
(22, 17, NULL, '700.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 20:54:54', '2024-07-22 20:54:54', NULL),
(23, 17, NULL, '800.00', 'debit', 'Admin has debited the balance.', 1, '2024-07-22 20:55:06', '2024-07-22 20:55:06', NULL),
(24, 17, NULL, '700.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 20:55:17', '2024-07-22 20:55:17', NULL),
(25, 17, NULL, '800.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 20:55:31', '2024-07-22 20:55:31', NULL),
(26, 17, NULL, '100.00', 'credit', 'Admin has credited the balance.', 1, '2024-07-22 20:55:41', '2024-07-22 20:55:41', NULL),
(27, 17, NULL, '500.00', 'credit', 'Balance Credited Successfully', 2, '2024-07-22 20:56:38', '2024-07-22 20:56:38', NULL),
(28, 17, NULL, '500.00', 'credit', 'Balance Credited Successfully', 2, '2024-07-22 20:57:17', '2024-07-22 20:57:17', NULL),
(29, 17, NULL, '500.00', 'credit', 'Balance Credited Successfully', 2, '2024-07-22 20:57:46', '2024-07-22 20:57:46', NULL),
(30, 17, NULL, '85.67', 'debit', 'Wallet amount successfully debited for Booking', 2, '2024-07-23 02:12:07', '2024-07-23 02:12:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_reserve` int NOT NULL DEFAULT '0',
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `served` int DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `type` enum('company','freelancer') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `fcm_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_interval` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_duration` int DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `system_reserve`, `password`, `served`, `phone`, `code`, `provider_id`, `status`, `is_featured`, `is_verified`, `type`, `email_verified_at`, `fcm_token`, `experience_interval`, `experience_duration`, `description`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `remember_token`, `company_id`) VALUES
(1, 'admin', 'admin@example.com', 1, '$2y$10$jxBJ9MqzlY4hcSrQA7aRN.ExlOrOlCzYwSEk.n5w92oBqjDQB9B2K', NULL, 9866554422, 91, NULL, 1, 0, 0, NULL, '2024-06-13 11:38:15', NULL, NULL, NULL, NULL, 1, '2024-06-13 11:38:15', '2024-08-03 06:29:24', NULL, 'Hm6mlCIpQkzle3VlKv16mOTXdbMgHyXX9XrrRCj7NJmPK9Skw9kS4fU9gCeV', NULL),
(2, 'Thomas Taylor', 'user@example.com', 1, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 121235623, 1, NULL, 1, 0, 0, NULL, '2024-06-13 11:38:15', 'cYGN2vJ-RBqhdILX5jxzr-:APA91bHcZYwZvXrvxRGblKryIWXSmZvXey_TvJVfqs16RHIaVHxRzQfsuAOEs4L7BMeJAdsksFzi3bNKrskm2-wtD-iDTNOkuJSqPsVyYFywr4kPnG0-5JN0j_rMPtzNUmtpoi8vD1bC', NULL, NULL, NULL, 1, '2024-06-13 11:38:15', '2024-07-24 02:06:45', NULL, 'et7uv83b0a', NULL),
(3, 'Robert Davis', 'provider@example.com', 1, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 121235523, 1, NULL, 1, 0, 0, 'company', '2024-06-13 11:38:15', 'cDLpL8uySeSFiogy2bScI-:APA91bFa5I1vwlnznEQfWfNRVZ6HevdYgcXMd3z3GaumWZszkkDgKYKZVq3I0YzHBsPn9HZxOhyUzUpFafEUdR29OvTEJW0L9D0PO0HFQm4hsiz41cZXgBd4LYXUKY3st1VGyd3M77S8', 'years', 2, NULL, 3, '2024-06-13 11:38:15', '2024-07-24 02:17:48', NULL, '28k2OHJbRbJbns61ueQtrWrSd8aVJRZS4zReBaB8ccp9eTo1XJ4ExZkXiRzk', 1),
(4, 'Michael Smith', 'servicemen@example.com', 1, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 1532658, 1, 3, 1, 0, 0, NULL, '2024-06-13 11:38:15', 'd3uU2ROYQv-SWPipf8VBnS:APA91bHveQjh64IXZhmhjrOV84NwVJP0Z030QUQoys9m_aikMxZ-zNNkl3QDuEA19PCG7RdYpVHeNyQ8ejXmSvJWdOW6rM426Ag57PAR8LP707azhL_nBziERz8gAld1bBcaNcQZFHOd', NULL, NULL, NULL, 4, '2024-06-13 11:38:15', '2024-07-24 00:59:53', NULL, 'hpzDGXVL5auXnYyWegCAFdvLLjT4AdMhHC86BvfJzdzMvnPThRFAt3zE5juZ', NULL),
(6, 'Jane Smith', 'jane.smith@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 4165555678, 1, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:06:45', '2024-06-13 12:06:45', NULL, NULL, NULL),
(8, 'Alice Brown', 'alice.brown@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 255507890, 61, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:11:31', '2024-06-13 12:11:31', NULL, NULL, NULL),
(9, 'Charlie Davis', 'charlie.davis@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 2255567890, 91, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:13:25', '2024-06-13 12:13:25', NULL, NULL, NULL),
(10, 'Emily Clark', 'emily.clark@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 2125556789, 1, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:17:44', '2024-06-13 12:17:44', NULL, NULL, NULL),
(11, 'Michael Scott', 'michael.scott@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 355551234, 61, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:19:34', '2024-06-13 12:19:34', NULL, NULL, NULL),
(12, 'Olivia Martinez', 'olivia.martinez@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 915551234, 34, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:21:29', '2024-06-13 12:21:29', NULL, NULL, NULL),
(13, 'Lucas Walker', 'lucas.walker@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 115556789, 27, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:23:19', '2024-06-13 12:23:19', NULL, NULL, NULL),
(14, 'Isabella Green', 'isabella.green@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 95551234, 64, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:25:21', '2024-06-13 12:25:21', NULL, NULL, NULL),
(15, 'William Lee', 'william.lee@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 65556789, 65, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:28:11', '2024-06-13 12:28:11', NULL, NULL, NULL),
(16, 'Sophia Kim', 'sophia.kim@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 25551234, 82, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:30:36', '2024-06-13 12:30:36', NULL, NULL, NULL),
(17, 'Mia Rossi', 'mia.rossi@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 65551234, 39, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:32:25', '2024-06-13 12:32:25', NULL, NULL, NULL),
(18, 'Jack Wilson', 'jack.wilson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 1215556789, 44, NULL, 1, 0, 0, NULL, NULL, 'eoYsfYQtQaWMRvQnQ2yVPX:APA91bFXn6_8qqdy01iTyvUDO-SuNO_tXAylHqz0s8muEh5bjk7noFjyBujH6AjGCEKq818h2_H-B4o-xqPwPB62ocAMRIj3qJWjFKJ0naJb2eqwARBLY8N2rfllXEK9an8FeQOl5FpF', NULL, NULL, NULL, 1, '2024-06-13 12:34:47', '2024-07-23 01:32:40', NULL, NULL, NULL),
(19, 'Ava Murphy', 'ava.murphy@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 15551234, 353, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-13 12:36:49', '2024-06-13 12:36:49', NULL, NULL, NULL),
(20, 'Sarah Johnson', 'sarah.johnson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5551234567, 1, NULL, 1, 0, 0, 'freelancer', NULL, NULL, 'years', 5, NULL, 1, '2024-06-13 13:15:15', '2024-06-13 13:15:15', NULL, NULL, NULL),
(21, 'John Smith', 'john.smith@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 2055667744, 44, NULL, 1, 0, 0, 'company', NULL, NULL, 'years', 5, NULL, 1, '2024-06-13 13:33:01', '2024-06-13 13:33:01', NULL, NULL, 2),
(22, 'Carlos Ramirez', 'carlos.ramirez@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 915556789, 34, NULL, 1, 0, 0, 'freelancer', NULL, NULL, 'years', 8, NULL, 1, '2024-06-13 13:38:24', '2024-06-13 13:38:24', NULL, NULL, NULL),
(23, 'Emma Thompson', 'emma.thompson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 41555678, 1, NULL, 1, 0, 0, 'company', NULL, NULL, 'years', 10, NULL, 1, '2024-06-13 13:48:52', '2024-06-13 13:48:52', NULL, NULL, 3),
(24, 'Priya Kapoor', 'priya.kapoor@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 805557890, 91, NULL, 1, 0, 0, 'freelancer', NULL, NULL, 'years', 7, NULL, 1, '2024-06-13 13:52:49', '2024-06-13 13:52:49', NULL, NULL, NULL),
(25, 'Juan Garcia', 'juan.garcia@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5521284567, 1, 3, 1, 1, 0, NULL, NULL, 'd3uU2ROYQv-SWPipf8VBnS:APA91bHveQjh64IXZhmhjrOV84NwVJP0Z030QUQoys9m_aikMxZ-zNNkl3QDuEA19PCG7RdYpVHeNyQ8ejXmSvJWdOW6rM426Ag57PAR8LP707azhL_nBziERz8gAld1bBcaNcQZFHOd', 'years', 5, NULL, 1, '2024-06-13 15:20:26', '2024-07-24 01:28:05', NULL, NULL, NULL),
(26, 'Maria Silva', 'maria.silva@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 263451124, 44, 20, 1, 0, 0, NULL, NULL, NULL, 'months', 24, NULL, 1, '2024-06-13 15:24:07', '2024-06-14 05:33:28', NULL, NULL, NULL),
(27, 'Hans Schmidt', 'hans.schmidt@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 35625526, 49, 3, 1, 0, 0, NULL, NULL, 'cTDvqvp0T1CGiZWAgzdlGQ:APA91bGjavfWFCc5nM8pMgDRcsJwikCndtaUnxh2gn_ia-Y73kyEWxl_BGigB0E6hvWsQMsr10N02LnEh0qv32R7j5eXDkmHPL57tFpZcSiDXB7njcz9-sbjKGpJ5TJgTXMNDjZST3ou', 'years', 8, NULL, 1, '2024-06-13 15:26:24', '2024-07-22 22:23:27', NULL, NULL, NULL),
(28, 'Mei Ling', 'mei.ling@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 98654455, 65, 20, 1, 0, 0, NULL, NULL, NULL, 'years', 7, NULL, 1, '2024-06-14 04:18:09', '2024-06-14 04:18:09', NULL, NULL, NULL),
(29, 'Ahmed Hassan', 'ahmed.hassan@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 23571234, 20, 23, 1, 0, 0, NULL, NULL, NULL, 'years', 5, NULL, 1, '2024-06-14 04:33:17', '2024-06-14 04:33:17', NULL, NULL, NULL),
(30, 'Emily Turner', 'emily.turner@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 212345689, 1, NULL, 1, 0, 0, 'company', NULL, 'ddVNZpxlQgKgsi6ffDNaWw:APA91bH0ZrtUwugpQ8uwAe53RDvH9wICPylrLxWp12kzfThs5s4a9GWISWo7nJVRnKPJsftTKIEO3e3aDtIv9avGc97aPqLaO1EseNyQyla9-mdXifwH7tzgWNx9YlAJ8rCZjanJD8kU', 'years', 5, NULL, 1, '2024-06-14 09:29:49', '2024-07-24 02:35:06', NULL, NULL, 4),
(31, 'John Doe', 'johndoe@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 2345612536, 1, NULL, 1, 0, 0, 'company', NULL, NULL, 'years', 5, NULL, 1, '2024-06-14 10:16:21', '2024-06-14 10:16:21', NULL, NULL, 5),
(32, 'Emily Johnson', 'emilyjohnson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 537753649, 61, NULL, 1, 0, 0, 'freelancer', NULL, NULL, 'years', 5, NULL, 1, '2024-06-14 10:19:50', '2024-06-14 10:19:50', NULL, NULL, NULL),
(33, 'Mark Wilson', 'markwilson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 30143295867, 49, NULL, 1, 0, 0, 'company', NULL, 'ddVNZpxlQgKgsi6ffDNaWw:APA91bH0ZrtUwugpQ8uwAe53RDvH9wICPylrLxWp12kzfThs5s4a9GWISWo7nJVRnKPJsftTKIEO3e3aDtIv9avGc97aPqLaO1EseNyQyla9-mdXifwH7tzgWNx9YlAJ8rCZjanJD8kU', 'years', 5, NULL, 1, '2024-06-14 10:27:57', '2024-07-24 02:04:03', NULL, NULL, 6),
(34, 'Maria Garcia', 'mariagarcia@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 91134528567, 34, NULL, 1, 0, 0, 'company', NULL, NULL, 'years', 6, NULL, 1, '2024-06-14 10:31:40', '2024-06-14 10:31:40', NULL, NULL, 7),
(35, 'Alice Smith', 'alice.smith@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5559876543, 1, 21, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced carpenter specializing in custom furniture.', 1, '2024-06-14 14:19:53', '2024-06-14 14:19:53', NULL, NULL, NULL),
(36, 'Bob Johnson', 'bob.johnsons@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5552223333, 1, 21, 1, 1, 0, NULL, NULL, NULL, 'years', 7, 'Skilled electrician with a passion for energy efficiency.', 1, '2024-06-14 14:23:07', '2024-06-14 14:23:07', NULL, NULL, NULL),
(37, 'Elena Rodriguez', 'elena.rodriguez@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5553334444, 1, 21, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced plumber with a focus on customer satisfaction.', 1, '2024-06-14 14:26:37', '2024-06-14 14:26:37', NULL, NULL, NULL),
(38, 'David Brown', 'david.brown@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5555555555, 1, 21, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced cook specializing in Italian cuisine.', 1, '2024-06-14 14:32:57', '2024-06-14 14:32:57', NULL, NULL, NULL),
(39, 'Sophia Lee', 'sophia.lee@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5556667777, 1, 21, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Professional hair stylist with a creative flair.', 1, '2024-06-14 14:37:00', '2024-06-15 06:27:05', NULL, NULL, NULL),
(40, 'Mohammed Patel', 'mohammed.patel@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5557778888, 1, 30, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced tailor specializing in traditional Indian attire.', 1, '2024-06-14 14:41:01', '2024-06-14 14:41:01', NULL, NULL, NULL),
(41, 'Luis Hernandez', 'luis.hernandez@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5559990000, 1, 30, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced personal trainer with a focus on holistic health.', 1, '2024-06-14 14:44:06', '2024-06-14 14:45:05', NULL, NULL, NULL),
(42, 'Fatemeh Mohammadi', 'fatemeh.mohammadi@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5550001111, 1, 30, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced nail technician with a focus on nail art.', 1, '2024-06-14 14:47:42', '2024-06-14 14:47:42', NULL, NULL, NULL),
(43, 'Javier Morales', 'javier.morales@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5551112222, 1, 30, 1, 1, 0, NULL, NULL, 'd3uU2ROYQv-SWPipf8VBnS:APA91bHveQjh64IXZhmhjrOV84NwVJP0Z030QUQoys9m_aikMxZ-zNNkl3QDuEA19PCG7RdYpVHeNyQ8ejXmSvJWdOW6rM426Ag57PAR8LP707azhL_nBziERz8gAld1bBcaNcQZFHOd', 'years', 5, 'Skilled mechanic with a passion for classic cars.', 1, '2024-06-14 14:51:39', '2024-07-24 02:41:52', NULL, NULL, NULL),
(44, 'Chen Wei', 'chen.wei@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5552113333, 1, 30, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced massage therapist specializing in traditional Chinese techniques.', 1, '2024-06-14 14:55:03', '2024-06-14 14:55:03', NULL, NULL, NULL),
(45, 'Yuki Tanaka', 'yuki.tanaka@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 5554445555, 1, 3, 1, 0, 0, NULL, NULL, 'cDLpL8uySeSFiogy2bScI-:APA91bFa5I1vwlnznEQfWfNRVZ6HevdYgcXMd3z3GaumWZszkkDgKYKZVq3I0YzHBsPn9HZxOhyUzUpFafEUdR29OvTEJW0L9D0PO0HFQm4hsiz41cZXgBd4LYXUKY3st1VGyd3M77S8', 'years', 5, 'Experienced landscaper with a passion for sustainable design.', 1, '2024-06-14 15:03:40', '2024-07-24 02:26:43', NULL, NULL, NULL),
(46, 'Leila Azizi', 'leila.azizi@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 55564667777, 1, 3, 1, 0, 0, NULL, NULL, NULL, 'years', 5, 'Experienced henna artist with intricate designs.', 1, '2024-06-14 15:08:14', '2024-06-14 15:08:14', NULL, NULL, NULL),
(47, 'Aisha Khan', 'aisha.khan@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 356985589, 1, 3, 1, 0, 0, NULL, NULL, NULL, 'years', 5, 'Experienced beautician specializing in bridal makeup.', 1, '2024-06-14 15:31:04', '2024-06-14 15:31:04', NULL, NULL, NULL),
(48, 'José Silva', 'jose.silva@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 7896544253, 1, 31, 1, 0, 0, NULL, NULL, NULL, 'years', 5, 'Skilled carpenter with a focus on sustainable materials.', 1, '2024-06-14 15:41:06', '2024-06-14 15:41:06', NULL, NULL, NULL),
(49, 'Sara Ahmed', 'sara.ahmed@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 9654212233, 1, 31, 1, 0, 0, NULL, NULL, NULL, 'years', 5, 'Experienced fashion designer with a flair for modern styles.', 1, '2024-06-14 15:44:42', '2024-06-14 15:44:42', NULL, NULL, NULL),
(50, 'Amir Khoury', 'amir.khoury@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 6535435566, 1, 31, 1, 1, 0, NULL, NULL, NULL, 'years', 5, 'Experienced plumber specializing in residential repairs.', 1, '2024-06-14 15:48:27', '2024-06-14 15:48:27', NULL, NULL, NULL),
(51, 'Hiroshi Nakamura', 'hiroshi.nakamura@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 55564778888, 1, 20, 1, 1, 0, NULL, NULL, NULL, 'years', 7, 'Skilled sushi chef with a passion for fresh ingredients.', 1, '2024-06-15 05:35:18', '2024-06-15 05:35:18', NULL, NULL, NULL),
(52, 'Amir Ahmad', 'amir.ahmad@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 555000111, 1, 20, 1, 0, 0, NULL, NULL, NULL, 'years', 6, 'Experienced plumber specializing in commercial installations.', 1, '2024-06-15 05:50:55', '2024-06-15 05:50:55', NULL, NULL, NULL),
(53, 'Yui Takahashi', 'yui.takahashi@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 55543112222, 1, 20, 1, 1, 0, NULL, NULL, NULL, 'years', 10, 'Experienced sushi chef with a passion for traditional Japanese cuisine.', 1, '2024-06-15 05:58:22', '2024-06-15 05:58:22', NULL, NULL, NULL),
(54, 'Henry Adams', 'henry.adams@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 567890123, 61, 23, 1, 0, 0, NULL, NULL, NULL, 'years', 10, 'Experienced electrician with expertise in residential wiring.', 1, '2024-06-15 06:16:57', '2024-06-24 12:42:29', NULL, NULL, NULL),
(55, 'Grace Nelson', 'grace.nelson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 590123456, 61, 23, 1, 0, 0, NULL, NULL, NULL, 'years', 5, 'Experienced plumber with a focus on residential repairs.', 1, '2024-06-15 06:19:44', '2024-06-24 12:41:06', NULL, NULL, NULL),
(56, 'Alexander King', 'alexander.king@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 545678901, 61, 23, 1, 1, 0, NULL, NULL, NULL, 'months', 8, 'Experienced cook with expertise in Maharashtrian cuisine.', 1, '2024-06-15 06:22:36', '2024-06-24 12:39:34', NULL, NULL, NULL),
(57, 'Isabella Wright', 'isabella.wright@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 512345678, 61, 23, 1, 0, 0, NULL, NULL, NULL, 'months', 9, 'Skilled beautician specializing in bridal makeup.', 1, '2024-06-15 06:25:30', '2024-06-24 12:30:57', NULL, NULL, NULL),
(58, 'Mia Lewis', 'mia.lewis@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 501234567, 61, 33, 1, 0, 0, NULL, NULL, 'd3uU2ROYQv-SWPipf8VBnS:APA91bHveQjh64IXZhmhjrOV84NwVJP0Z030QUQoys9m_aikMxZ-zNNkl3QDuEA19PCG7RdYpVHeNyQ8ejXmSvJWdOW6rM426Ag57PAR8LP707azhL_nBziERz8gAld1bBcaNcQZFHOd', 'years', 6, 'Skilled carpenter with a focus on custom furniture.', 1, '2024-06-15 06:33:47', '2024-07-24 02:19:36', NULL, NULL, NULL),
(59, 'Mason Evans', 'mason.evans@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 490123456, 61, 33, 1, 0, 0, NULL, NULL, NULL, 'months', 11, 'Experienced painter specializing in residential and commercial projects.', 1, '2024-06-15 07:07:38', '2024-06-24 12:25:34', NULL, NULL, NULL),
(60, 'Liam Turner', 'liam.turner@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 434567890, 61, 33, 1, 0, 0, NULL, NULL, NULL, 'years', 2, 'Experienced plumber with expertise in residential installations.', 1, '2024-06-15 07:10:13', '2024-06-24 12:20:12', NULL, NULL, NULL),
(61, 'Ethan Campbell', 'ethan.campbell@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 456789012, 61, 33, 1, 0, 0, NULL, NULL, NULL, 'years', 4, 'Skilled tailor specializing in custom suits and ethnic wear.', 1, '2024-06-15 07:13:49', '2024-06-24 12:16:02', NULL, NULL, NULL),
(62, 'Noah Thompson', 'noah.thompson@example.com', 0, '$2y$10$qeFLa.oiWe7o4Ly.63s4M.Cti6N2bIo43dFsJBGx5O2HE5kd1UQ8m', NULL, 478901234, 61, 33, 1, 0, 0, NULL, NULL, NULL, 'years', 6, 'Experienced cook with a focus on traditional Gujarati cuisine.', 1, '2024-06-15 07:16:46', '2024-06-24 12:18:02', NULL, NULL, NULL),
(63, 'Jack Doe', 'jack.staff@example.com', 0, '$2y$10$ePDROw8zbhL8qIX.gAPDtOQWWB6h5tVaeJgZBy4T.dr9sEPVDaH0O', NULL, 1452369870, 1, NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-06-24 11:46:59', '2024-06-24 11:46:59', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `document_id` bigint UNSIGNED NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `identity_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_expertise_services`
--

CREATE TABLE `user_expertise_services` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_languages`
--

CREATE TABLE `user_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_languages`
--

INSERT INTO `user_languages` (`id`, `user_id`, `language_id`) VALUES
(1, 20, 2),
(2, 20, 88),
(3, 21, 2),
(4, 21, 26),
(5, 22, 2),
(6, 22, 88),
(7, 23, 2),
(8, 23, 26),
(9, 24, 2),
(10, 24, 37),
(11, 25, 2),
(12, 25, 88),
(13, 26, 2),
(14, 26, 74),
(15, 27, 2),
(16, 27, 30),
(17, 28, 2),
(18, 28, 16),
(19, 29, 2),
(20, 29, 5),
(21, 30, 2),
(22, 30, 26),
(23, 31, 2),
(24, 31, 88),
(25, 32, 2),
(26, 33, 2),
(27, 33, 30),
(28, 34, 2),
(29, 34, 88),
(30, 35, 2),
(31, 35, 26),
(32, 36, 2),
(33, 36, 88),
(34, 37, 2),
(35, 37, 88),
(36, 38, 2),
(37, 39, 2),
(38, 39, 51),
(39, 40, 2),
(40, 40, 32),
(41, 40, 37),
(42, 41, 2),
(43, 41, 88),
(44, 42, 2),
(45, 42, 72),
(46, 43, 2),
(47, 43, 88),
(48, 44, 2),
(49, 44, 30),
(50, 45, 1),
(51, 45, 2),
(52, 46, 2),
(53, 46, 72),
(54, 47, 1),
(55, 48, 2),
(56, 48, 88),
(57, 49, 2),
(58, 49, 88),
(59, 50, 2),
(60, 50, 5),
(61, 51, 2),
(62, 51, 45),
(63, 52, 2),
(64, 52, 5),
(65, 53, 2),
(66, 53, 45),
(67, 54, 2),
(70, 55, 2),
(73, 56, 2),
(76, 57, 2),
(79, 58, 2),
(82, 59, 2),
(85, 60, 2),
(88, 61, 2),
(91, 62, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `user_plan_id` bigint UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `allowed_max_services` int UNSIGNED NOT NULL,
  `allowed_max_addresses` int UNSIGNED NOT NULL,
  `allowed_max_servicemen` int UNSIGNED NOT NULL,
  `allowed_max_service_packages` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `is_included_free_trial` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `consumer_id` bigint UNSIGNED DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `consumer_id`, `balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, '500.00', '2024-06-13 12:14:25', '2024-06-13 12:14:25', NULL),
(2, 8, '5000.00', '2024-06-13 12:14:31', '2024-06-13 12:14:31', NULL),
(4, 6, '1400.00', '2024-06-13 12:14:43', '2024-06-13 12:14:49', NULL),
(6, 10, '600.00', '2024-06-13 12:17:56', '2024-06-13 12:17:56', NULL),
(7, 19, '600.00', '2024-06-13 12:39:50', '2024-06-13 12:39:50', NULL),
(8, 18, '650.00', '2024-06-13 12:41:53', '2024-06-13 12:41:53', NULL),
(9, 17, '1600.00', '2024-06-13 12:42:01', '2024-06-13 12:42:09', NULL),
(10, 16, '700.00', '2024-06-13 12:42:16', '2024-06-13 12:42:16', NULL),
(11, 15, '1000.00', '2024-06-13 12:42:28', '2024-06-13 12:42:28', NULL),
(12, 14, '5000.00', '2024-06-13 12:42:37', '2024-06-13 12:42:37', NULL),
(13, 13, '600.00', '2024-06-13 12:43:21', '2024-06-13 12:43:21', NULL),
(14, 12, '800.00', '2024-06-13 12:43:30', '2024-06-13 12:43:30', NULL),
(15, 11, '900.00', '2024-06-13 12:43:42', '2024-06-13 12:43:42', NULL),
(16, 63, '0.00', '2024-06-24 11:46:59', '2024-06-24 11:46:59', NULL),
(17, 2, '6414.33', '2024-07-22 20:53:52', '2024-07-23 02:12:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` decimal(8,2) DEFAULT '0.00',
  `message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','rejected') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `provider_wallet_id` bigint UNSIGNED DEFAULT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `payment_type` enum('paypal','bank') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'bank',
  `is_used` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_points` geometry DEFAULT NULL,
  `locations` json DEFAULT NULL,
  `status` int DEFAULT '1',
  `created_by_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `place_points`, `locations`, `status`, `created_by_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'All', 0x000000000103000000010000000800000036f88b87cc5665c0d4ad5fe0b91e554036f88b874c3264c0ecc29f76d16a41c0de0a810e6f16174080fb3bfd0ad640c036f88b87cc0a66c0f10c6ab723e63fc0ca077478b3ef6440da90ffe7c8e65440940fe8f066da5f40d4ad5fe0b91e5540a4de2f1e327340c066155bf45e1a554036f88b87cc5665c0d4ad5fe0b91e5540, '[{\"lat\": 84.48009499877597, \"lng\": -170.71246697747594}, {\"lat\": -34.834517314918585, \"lng\": -161.57184197747594}, {\"lat\": -33.67221036366253, \"lng\": 5.771908022524048}, {\"lat\": -31.89898248995876, \"lng\": -176.33746697747597}, {\"lat\": 83.60601234395641, \"lng\": 167.49065802252403}, {\"lat\": 84.48009499877597, \"lng\": 127.41253302252404}, {\"lat\": 84.4120455636489, \"lng\": -32.89996697747595}, {\"lat\": 84.48009499877597, \"lng\": -170.71246697747594}]', 1, 1, '2024-06-13 15:02:02', '2024-06-24 12:30:35', NULL),
(2, 'Australia', 0x000000000103000000010000000a0000002870f24e67625540217b244f86dc0740e16ff24e67ee5f4017166936fe2d2c40f13779a7731b6540ca18ca69c9581440f13779a733f16540357874d4aac835c00fc886580c6666c084ebb24956d244c0f13779a773cf654049c14566a2a248c0f13779a7f3f9604023cb90f7ee4948c0e16ff24e67a85a40d75f035a3df241c02870f24ee7a2584046175085aae02cc02870f24e67625540217b244f86dc0740, '[{\"lat\": 2.982678049374381, \"lng\": 85.53755544353135}, {\"lat\": 14.089830112770157, \"lng\": 127.72505544353136}, {\"lat\": 5.086705830535929, \"lng\": 168.85786794353135}, {\"lat\": -21.783856657443348, \"lng\": 175.53755544353135}, {\"lat\": -41.643258297312826, \"lng\": -179.18900705646865}, {\"lat\": -49.270581039485776, \"lng\": 174.48286794353135}, {\"lat\": -48.577605195712906, \"lng\": 135.81099294353135}, {\"lat\": -35.89249730267281, \"lng\": 106.63130544353136}, {\"lat\": -14.438800970102848, \"lng\": 98.54536794353136}, {\"lat\": 2.982678049374381, \"lng\": 85.53755544353135}]', 1, 1, '2024-06-14 04:43:49', '2024-06-24 12:31:34', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_service_id_foreign` (`service_id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_state_id_foreign` (`state_id`),
  ADD KEY `addresses_company_id_foreign` (`company_id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blog_id_foreign` (`blog_id`),
  ADD KEY `blog_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bookings_booking_number_unique` (`booking_number`),
  ADD KEY `bookings_consumer_id_foreign` (`consumer_id`),
  ADD KEY `bookings_provider_id_foreign` (`provider_id`),
  ADD KEY `bookings_coupon_id_foreign` (`coupon_id`),
  ADD KEY `bookings_created_by_id_foreign` (`created_by_id`),
  ADD KEY `bookings_address_id_foreign` (`address_id`),
  ADD KEY `bookings_parent_id_foreign` (`parent_id`),
  ADD KEY `bookings_booking_status_id_foreign` (`booking_status_id`);

--
-- Indexes for table `booking_reason_logs`
--
ALTER TABLE `booking_reason_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_reason_logs_booking_id_foreign` (`booking_id`),
  ADD KEY `booking_reason_logs_status_id_foreign` (`status_id`);

--
-- Indexes for table `booking_service`
--
ALTER TABLE `booking_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_service_booking_id_foreign` (`booking_id`),
  ADD KEY `booking_service_service_id_foreign` (`service_id`),
  ADD KEY `booking_service_service_package_id_foreign` (`service_package_id`);

--
-- Indexes for table `booking_servicemen`
--
ALTER TABLE `booking_servicemen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_servicemen_booking_id_foreign` (`booking_id`),
  ADD KEY `booking_servicemen_serviceman_id_foreign` (`serviceman_id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_status_name_unique` (`name`),
  ADD UNIQUE KEY `booking_status_slug_unique` (`slug`),
  ADD UNIQUE KEY `booking_status_sequence_unique` (`sequence`),
  ADD KEY `booking_status_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `booking_status_logs`
--
ALTER TABLE `booking_status_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_status_logs_booking_id_foreign` (`booking_id`),
  ADD KEY `booking_status_logs_booking_status_id_foreign` (`booking_status_id`);

--
-- Indexes for table `booking_transactions`
--
ALTER TABLE `booking_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_transactions_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_created_by_foreign` (`created_by`);

--
-- Indexes for table `category_zones`
--
ALTER TABLE `category_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_zones_category_id_foreign` (`category_id`),
  ADD KEY `category_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commission_histories_booking_id_foreign` (`booking_id`),
  ADD KEY `commission_histories_category_id_foreign` (`category_id`),
  ADD KEY `commission_histories_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_name_unique` (`name`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupons_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currencies_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exclude_services_coupons`
--
ALTER TABLE `exclude_services_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_charges`
--
ALTER TABLE `extra_charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `extra_charges_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourite_lists`
--
ALTER TABLE `favourite_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourite_lists_consumer_id_foreign` (`consumer_id`),
  ADD KEY `favourite_lists_provider_id_foreign` (`provider_id`),
  ADD KEY `favourite_lists_service_id_foreign` (`service_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locals`
--
ALTER TABLE `locals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways_transactions`
--
ALTER TABLE `payment_gateways_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_gateways_transactions_item_id_unique` (`item_id`),
  ADD UNIQUE KEY `payment_gateways_transactions_transaction_id_unique` (`transaction_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plans_created_by_foreign` (`created_by`);

--
-- Indexes for table `provider_transactions`
--
ALTER TABLE `provider_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_transactions_provider_wallet_id_foreign` (`provider_wallet_id`),
  ADD KEY `provider_transactions_provider_id_foreign` (`provider_id`),
  ADD KEY `provider_transactions_from_foreign` (`from`);

--
-- Indexes for table `provider_wallets`
--
ALTER TABLE `provider_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_wallets_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `provider_zones`
--
ALTER TABLE `provider_zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider_zones_provider_id_foreign` (`provider_id`),
  ADD KEY `provider_zones_zone_id_foreign` (`zone_id`);

--
-- Indexes for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `push_notifications_user_id_foreign` (`user_id`),
  ADD KEY `push_notifications_created_by_foreign` (`created_by`),
  ADD KEY `push_notifications_service_id_foreign` (`service_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_consumer_id_foreign` (`consumer_id`);

--
-- Indexes for table `related_services`
--
ALTER TABLE `related_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_services_service_id_foreign` (`service_id`),
  ADD KEY `related_services_related_service_id_foreign` (`related_service_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_service_id_foreign` (`service_id`),
  ADD KEY `reviews_serviceman_id_foreign` (`serviceman_id`),
  ADD KEY `reviews_consumer_id_foreign` (`consumer_id`),
  ADD KEY `reviews_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `seeders`
--
ALTER TABLE `seeders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceman_commissions`
--
ALTER TABLE `serviceman_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceman_commissions_commission_history_id_foreign` (`commission_history_id`),
  ADD KEY `serviceman_commissions_serviceman_id_foreign` (`serviceman_id`);

--
-- Indexes for table `serviceman_transactions`
--
ALTER TABLE `serviceman_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceman_transactions_serviceman_wallet_id_foreign` (`serviceman_wallet_id`),
  ADD KEY `serviceman_transactions_serviceman_id_foreign` (`serviceman_id`),
  ADD KEY `serviceman_transactions_from_foreign` (`from`);

--
-- Indexes for table `serviceman_wallets`
--
ALTER TABLE `serviceman_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceman_wallets_serviceman_id_foreign` (`serviceman_id`);

--
-- Indexes for table `serviceman_withdraw_requests`
--
ALTER TABLE `serviceman_withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serviceman_withdraw_requests_serviceman_wallet_id_foreign` (`serviceman_wallet_id`),
  ADD KEY `serviceman_withdraw_requests_serviceman_id_foreign` (`serviceman_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_tax_id_foreign` (`tax_id`),
  ADD KEY `services_user_id_foreign` (`user_id`);

--
-- Indexes for table `services_coupons`
--
ALTER TABLE `services_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_coupons_coupon_id_foreign` (`coupon_id`),
  ADD KEY `services_coupons_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_address`
--
ALTER TABLE `service_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_address_service_id_foreign` (`service_id`),
  ADD KEY `service_address_address_id_foreign` (`address_id`);

--
-- Indexes for table `service_availabilities`
--
ALTER TABLE `service_availabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_availabilities_company_id_foreign` (`company_id`),
  ADD KEY `service_availabilities_address_id_foreign` (`address_id`),
  ADD KEY `service_availabilities_user_id_foreign` (`user_id`),
  ADD KEY `service_availabilities_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_categories_service_id_foreign` (`service_id`),
  ADD KEY `service_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_faqs_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_packages_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `service_package_services`
--
ALTER TABLE `service_package_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_package_services_service_package_id_foreign` (`service_package_id`),
  ADD KEY `service_package_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `service_proofs`
--
ALTER TABLE `service_proofs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_proofs_booking_id_foreign` (`booking_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `system_langs`
--
ALTER TABLE `system_langs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_created_by_id_foreign` (`created_by_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `time_slots_provider_id_foreign` (`provider_id`),
  ADD KEY `time_slots_serviceman_id_foreign` (`serviceman_id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`),
  ADD KEY `transactions_booking_id_foreign` (`booking_id`),
  ADD KEY `transactions_from_foreign` (`from`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_provider_id_foreign` (`provider_id`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_documents_user_id_foreign` (`user_id`),
  ADD KEY `user_documents_document_id_foreign` (`document_id`);

--
-- Indexes for table `user_expertise_services`
--
ALTER TABLE `user_expertise_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_expertise_services_user_id_foreign` (`user_id`),
  ADD KEY `user_expertise_services_service_id_foreign` (`service_id`);

--
-- Indexes for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_languages_user_id_foreign` (`user_id`),
  ADD KEY `user_languages_language_id_foreign` (`language_id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `user_subscriptions_user_plan_id_foreign` (`user_plan_id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_consumer_id_foreign` (`consumer_id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdraw_requests_provider_wallet_id_foreign` (`provider_wallet_id`),
  ADD KEY `withdraw_requests_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`),
  ADD KEY `zones_created_by_id_foreign` (`created_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `booking_reason_logs`
--
ALTER TABLE `booking_reason_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_service`
--
ALTER TABLE `booking_service`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_servicemen`
--
ALTER TABLE `booking_servicemen`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `booking_status_logs`
--
ALTER TABLE `booking_status_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `booking_transactions`
--
ALTER TABLE `booking_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `category_zones`
--
ALTER TABLE `category_zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exclude_services_coupons`
--
ALTER TABLE `exclude_services_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_charges`
--
ALTER TABLE `extra_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourite_lists`
--
ALTER TABLE `favourite_lists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `locals`
--
ALTER TABLE `locals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways_transactions`
--
ALTER TABLE `payment_gateways_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `provider_transactions`
--
ALTER TABLE `provider_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `provider_wallets`
--
ALTER TABLE `provider_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provider_zones`
--
ALTER TABLE `provider_zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `push_notifications`
--
ALTER TABLE `push_notifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `related_services`
--
ALTER TABLE `related_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seeders`
--
ALTER TABLE `seeders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `serviceman_commissions`
--
ALTER TABLE `serviceman_commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceman_transactions`
--
ALTER TABLE `serviceman_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceman_wallets`
--
ALTER TABLE `serviceman_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceman_withdraw_requests`
--
ALTER TABLE `serviceman_withdraw_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `services_coupons`
--
ALTER TABLE `services_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_address`
--
ALTER TABLE `service_address`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_availabilities`
--
ALTER TABLE `service_availabilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `service_faqs`
--
ALTER TABLE `service_faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `service_packages`
--
ALTER TABLE `service_packages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service_package_services`
--
ALTER TABLE `service_package_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_proofs`
--
ALTER TABLE `service_proofs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3929;

--
-- AUTO_INCREMENT for table `system_langs`
--
ALTER TABLE `system_langs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_expertise_services`
--
ALTER TABLE `user_expertise_services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_languages`
--
ALTER TABLE `user_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_status` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_consumer_id_foreign` FOREIGN KEY (`consumer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_reason_logs`
--
ALTER TABLE `booking_reason_logs`
  ADD CONSTRAINT `booking_reason_logs_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_reason_logs_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `booking_status` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_service`
--
ALTER TABLE `booking_service`
  ADD CONSTRAINT `booking_service_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_service_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_service_service_package_id_foreign` FOREIGN KEY (`service_package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_servicemen`
--
ALTER TABLE `booking_servicemen`
  ADD CONSTRAINT `booking_servicemen_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_servicemen_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD CONSTRAINT `booking_status_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_status_logs`
--
ALTER TABLE `booking_status_logs`
  ADD CONSTRAINT `booking_status_logs_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_status_logs_booking_status_id_foreign` FOREIGN KEY (`booking_status_id`) REFERENCES `booking_status` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `booking_transactions`
--
ALTER TABLE `booking_transactions`
  ADD CONSTRAINT `booking_transactions_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_zones`
--
ALTER TABLE `category_zones`
  ADD CONSTRAINT `category_zones_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD CONSTRAINT `commission_histories_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commission_histories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commission_histories_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `currencies`
--
ALTER TABLE `currencies`
  ADD CONSTRAINT `currencies_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `extra_charges`
--
ALTER TABLE `extra_charges`
  ADD CONSTRAINT `extra_charges_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourite_lists`
--
ALTER TABLE `favourite_lists`
  ADD CONSTRAINT `favourite_lists_consumer_id_foreign` FOREIGN KEY (`consumer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourite_lists_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourite_lists_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provider_transactions`
--
ALTER TABLE `provider_transactions`
  ADD CONSTRAINT `provider_transactions_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `provider_transactions_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `provider_transactions_provider_wallet_id_foreign` FOREIGN KEY (`provider_wallet_id`) REFERENCES `provider_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provider_wallets`
--
ALTER TABLE `provider_wallets`
  ADD CONSTRAINT `provider_wallets_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provider_zones`
--
ALTER TABLE `provider_zones`
  ADD CONSTRAINT `provider_zones_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `provider_zones_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `push_notifications`
--
ALTER TABLE `push_notifications`
  ADD CONSTRAINT `push_notifications_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `push_notifications_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `push_notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_consumer_id_foreign` FOREIGN KEY (`consumer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `related_services`
--
ALTER TABLE `related_services`
  ADD CONSTRAINT `related_services_related_service_id_foreign` FOREIGN KEY (`related_service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `related_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_consumer_id_foreign` FOREIGN KEY (`consumer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serviceman_commissions`
--
ALTER TABLE `serviceman_commissions`
  ADD CONSTRAINT `serviceman_commissions_commission_history_id_foreign` FOREIGN KEY (`commission_history_id`) REFERENCES `commission_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serviceman_commissions_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serviceman_transactions`
--
ALTER TABLE `serviceman_transactions`
  ADD CONSTRAINT `serviceman_transactions_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serviceman_transactions_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serviceman_transactions_serviceman_wallet_id_foreign` FOREIGN KEY (`serviceman_wallet_id`) REFERENCES `serviceman_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serviceman_wallets`
--
ALTER TABLE `serviceman_wallets`
  ADD CONSTRAINT `serviceman_wallets_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `serviceman_withdraw_requests`
--
ALTER TABLE `serviceman_withdraw_requests`
  ADD CONSTRAINT `serviceman_withdraw_requests_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `serviceman_withdraw_requests_serviceman_wallet_id_foreign` FOREIGN KEY (`serviceman_wallet_id`) REFERENCES `serviceman_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_address`
--
ALTER TABLE `service_address`
  ADD CONSTRAINT `service_address_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_address_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_availabilities`
--
ALTER TABLE `service_availabilities`
  ADD CONSTRAINT `service_availabilities_address_id_foreign` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_availabilities_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_availabilities_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_availabilities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD CONSTRAINT `service_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_categories_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_faqs`
--
ALTER TABLE `service_faqs`
  ADD CONSTRAINT `service_faqs_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD CONSTRAINT `service_packages_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_package_services`
--
ALTER TABLE `service_package_services`
  ADD CONSTRAINT `service_package_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_services_service_package_id_foreign` FOREIGN KEY (`service_package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_proofs`
--
ALTER TABLE `service_proofs`
  ADD CONSTRAINT `service_proofs_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD CONSTRAINT `time_slots_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `time_slots_serviceman_id_foreign` FOREIGN KEY (`serviceman_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_from_foreign` FOREIGN KEY (`from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD CONSTRAINT `user_documents_document_id_foreign` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_expertise_services`
--
ALTER TABLE `user_expertise_services`
  ADD CONSTRAINT `user_expertise_services_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_expertise_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_languages`
--
ALTER TABLE `user_languages`
  ADD CONSTRAINT `user_languages_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_languages_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `user_subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_subscriptions_user_plan_id_foreign` FOREIGN KEY (`user_plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_consumer_id_foreign` FOREIGN KEY (`consumer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD CONSTRAINT `withdraw_requests_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `withdraw_requests_provider_wallet_id_foreign` FOREIGN KEY (`provider_wallet_id`) REFERENCES `provider_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_created_by_id_foreign` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
