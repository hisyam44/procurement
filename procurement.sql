-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 18, 2017 at 03:32 
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `procurement`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
`id` int(10) unsigned NOT NULL,
  `transaksi_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE IF NOT EXISTS `costs` (
`id` int(10) unsigned NOT NULL,
  `transaksi_id` int(10) unsigned NOT NULL,
  `type` enum('debet','credit') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'debet',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rekening_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `transaksi_id`, `type`, `code`, `rekening_code`, `description`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'debet', 'HL8362', '1948803', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(2, 1, 'debet', 'HL8362', '1948803', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(3, 2, 'credit', 'HL4786', '1114421', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(4, 2, 'credit', 'HL4786', '1114421', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(5, 3, 'credit', 'HL2091', '1772164', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(6, 3, 'credit', 'HL2091', '1772164', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(7, 4, 'credit', 'HL7834', '4333749', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(8, 4, 'credit', 'HL7834', '4333749', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(9, 5, 'credit', 'HL5597', '8250245', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(10, 5, 'credit', 'HL5597', '8250245', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:15', '2017-06-30 18:29:15'),
(11, 6, 'debet', 'HL6881', '7293916', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(12, 6, 'debet', 'HL6881', '7293916', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(13, 7, 'debet', 'HL1214', '4678192', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(14, 7, 'debet', 'HL1214', '4678192', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(15, 8, 'credit', 'HL1298', '8208417', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(16, 8, 'credit', 'HL1298', '8208417', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(17, 9, 'debet', 'HL4035', '2471944', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(18, 9, 'debet', 'HL4035', '2471944', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(19, 10, 'debet', 'HL3180', '7417499', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(20, 10, 'debet', 'HL3180', '7417499', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(21, 11, 'debet', 'HL6746', '9878083', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(22, 11, 'debet', 'HL6746', '9878083', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(23, 12, 'debet', 'HL2348', '2470202', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(24, 12, 'debet', 'HL2348', '2470202', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:16', '2017-06-30 18:29:16'),
(25, 13, 'credit', 'HL3772', '7242108', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(26, 13, 'credit', 'HL3772', '7242108', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(27, 14, 'debet', 'HL8559', '7303325', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(28, 14, 'debet', 'HL8559', '7303325', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(29, 15, 'credit', 'HL2203', '8805539', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(30, 15, 'credit', 'HL2203', '8805539', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(31, 16, 'credit', 'HL4125', '7153791', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(32, 16, 'credit', 'HL4125', '7153791', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(33, 17, 'debet', 'HL6152', '8064590', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(34, 17, 'debet', 'HL6152', '8064590', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(35, 18, 'debet', 'HL5285', '5986229', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(36, 18, 'debet', 'HL5285', '5986229', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:17', '2017-06-30 18:29:17'),
(37, 19, 'debet', 'HL2686', '8103767', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(38, 19, 'debet', 'HL2686', '8103767', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(39, 20, 'debet', 'HL9920', '2487642', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(40, 20, 'debet', 'HL9920', '2487642', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(41, 21, 'credit', 'HL9094', '9885001', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(42, 21, 'credit', 'HL9094', '9885001', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(43, 22, 'debet', 'HL4452', '2263980', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(44, 22, 'debet', 'HL4452', '2263980', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(45, 23, 'debet', 'HL3556', '5299503', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(46, 23, 'debet', 'HL3556', '5299503', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(47, 24, 'credit', 'HL4188', '9043882', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(48, 24, 'credit', 'HL4188', '9043882', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(49, 25, 'debet', 'HL6936', '9664759', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:18', '2017-06-30 18:29:18'),
(50, 25, 'debet', 'HL6936', '9664759', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(51, 26, 'debet', 'HL6698', '6112440', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(52, 26, 'debet', 'HL6698', '6112440', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(53, 27, 'debet', 'HL2227', '7204375', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(54, 27, 'debet', 'HL2227', '7204375', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(55, 28, 'debet', 'HL8648', '1631794', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(56, 28, 'debet', 'HL8648', '1631794', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(57, 29, 'credit', 'HL8966', '3217054', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(58, 29, 'credit', 'HL8966', '3217054', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(59, 30, 'credit', 'HL3904', '3690145', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(60, 30, 'credit', 'HL3904', '3690145', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(61, 31, 'debet', 'HL9393', '4652909', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(62, 31, 'debet', 'HL9393', '4652909', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:19', '2017-06-30 18:29:19'),
(63, 32, 'credit', 'HL3925', '7570774', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(64, 32, 'credit', 'HL3925', '7570774', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(65, 33, 'credit', 'HL9640', '8899911', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(66, 33, 'credit', 'HL9640', '8899911', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(67, 34, 'credit', 'HL7116', '3078950', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(68, 34, 'credit', 'HL7116', '3078950', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(69, 35, 'debet', 'HL6268', '2579633', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(70, 35, 'debet', 'HL6268', '2579633', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(71, 36, 'debet', 'HL1819', '4028867', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(72, 36, 'debet', 'HL1819', '4028867', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(73, 37, 'debet', 'HL5328', '6121994', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(74, 37, 'debet', 'HL5328', '6121994', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(75, 38, 'credit', 'HL5021', '8476796', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(76, 38, 'credit', 'HL5021', '8476796', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:20', '2017-06-30 18:29:20'),
(77, 39, 'credit', 'HL9134', '9397368', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(78, 39, 'credit', 'HL9134', '9397368', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(79, 40, 'debet', 'HL1239', '8025242', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(80, 40, 'debet', 'HL1239', '8025242', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(81, 41, 'debet', 'HL7423', '2997269', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(82, 41, 'debet', 'HL7423', '2997269', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(83, 42, 'debet', 'HL4077', '2977699', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(84, 42, 'debet', 'HL4077', '2977699', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(85, 43, 'credit', 'HL6673', '2955453', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(86, 43, 'credit', 'HL6673', '2955453', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:21', '2017-06-30 18:29:21'),
(87, 44, 'credit', 'HL1711', '5870489', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(88, 44, 'credit', 'HL1711', '5870489', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(89, 45, 'credit', 'HL2243', '4300424', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(90, 45, 'credit', 'HL2243', '4300424', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(91, 46, 'debet', 'HL7741', '6422309', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(92, 46, 'debet', 'HL7741', '6422309', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(93, 47, 'debet', 'HL3761', '9850322', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(94, 47, 'debet', 'HL3761', '9850322', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(95, 48, 'debet', 'HL7048', '8722727', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(96, 48, 'debet', 'HL7048', '8722727', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(97, 49, 'credit', 'HL2580', '8650338', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(98, 49, 'credit', 'HL2580', '8650338', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(99, 50, 'credit', 'HL5699', '6785894', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(100, 50, 'credit', 'HL5699', '6785894', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:22', '2017-06-30 18:29:22'),
(101, 51, 'debet', 'HL9886', '2816066', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(102, 51, 'debet', 'HL9886', '2816066', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(103, 52, 'credit', 'HL9238', '2652409', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(104, 52, 'credit', 'HL9238', '2652409', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(105, 53, 'debet', 'HL6460', '5122651', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(106, 53, 'debet', 'HL6460', '5122651', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(107, 54, 'credit', 'HL5937', '7435689', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(108, 54, 'credit', 'HL5937', '7435689', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(109, 55, 'credit', 'HL4840', '1391958', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(110, 55, 'credit', 'HL4840', '1391958', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(111, 56, 'credit', 'HL7562', '7622760', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(112, 56, 'credit', 'HL7562', '7622760', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(113, 57, 'credit', 'HL4092', '2818936', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(114, 57, 'credit', 'HL4092', '2818936', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(115, 58, 'credit', 'HL7898', '7361260', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:23', '2017-06-30 18:29:23'),
(116, 58, 'credit', 'HL7898', '7361260', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(117, 59, 'credit', 'HL3238', '7668658', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(118, 59, 'credit', 'HL3238', '7668658', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(119, 60, 'credit', 'HL3613', '2994094', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(120, 60, 'credit', 'HL3613', '2994094', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(121, 61, 'debet', 'HL4904', '5833857', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(122, 61, 'debet', 'HL4904', '5833857', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(123, 62, 'credit', 'HL7442', '9418377', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(124, 62, 'credit', 'HL7442', '9418377', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(125, 63, 'debet', 'HL3574', '3676355', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(126, 63, 'debet', 'HL3574', '3676355', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(127, 64, 'debet', 'HL9566', '1372344', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(128, 64, 'debet', 'HL9566', '1372344', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(129, 65, 'debet', 'HL6771', '9854057', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:24', '2017-06-30 18:29:24'),
(130, 65, 'debet', 'HL6771', '9854057', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(131, 66, 'credit', 'HL7193', '3119993', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(132, 66, 'credit', 'HL7193', '3119993', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(133, 67, 'debet', 'HL9488', '6478510', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(134, 67, 'debet', 'HL9488', '6478510', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(135, 68, 'credit', 'HL6592', '7906317', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(136, 68, 'credit', 'HL6592', '7906317', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(137, 69, 'credit', 'HL8992', '4435432', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(138, 69, 'credit', 'HL8992', '4435432', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(139, 70, 'credit', 'HL1853', '2618005', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(140, 70, 'credit', 'HL1853', '2618005', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(141, 71, 'credit', 'HL8528', '5564082', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(142, 71, 'credit', 'HL8528', '5564082', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:25', '2017-06-30 18:29:25'),
(143, 72, 'debet', 'HL5998', '4859942', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(144, 72, 'debet', 'HL5998', '4859942', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(145, 73, 'credit', 'HL1192', '4280912', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(146, 73, 'credit', 'HL1192', '4280912', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(147, 74, 'debet', 'HL1247', '5511012', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(148, 74, 'debet', 'HL1247', '5511012', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(149, 75, 'credit', 'HL9030', '6881537', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(150, 75, 'credit', 'HL9030', '6881537', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(151, 76, 'credit', 'HL6494', '9828034', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(152, 76, 'credit', 'HL6494', '9828034', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(153, 77, 'credit', 'HL9562', '2083320', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(154, 77, 'credit', 'HL9562', '2083320', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(155, 78, 'credit', 'HL8143', '4647732', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(156, 78, 'credit', 'HL8143', '4647732', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:26', '2017-06-30 18:29:26'),
(157, 79, 'credit', 'HL8821', '5304474', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(158, 79, 'credit', 'HL8821', '5304474', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(159, 80, 'debet', 'HL6243', '1870368', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(160, 80, 'debet', 'HL6243', '1870368', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(161, 81, 'credit', 'HL4994', '6814220', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(162, 81, 'credit', 'HL4994', '6814220', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(163, 82, 'credit', 'HL4351', '1186098', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(164, 82, 'credit', 'HL4351', '1186098', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(165, 83, 'debet', 'HL4347', '4242713', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(166, 83, 'debet', 'HL4347', '4242713', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(167, 84, 'debet', 'HL3240', '5564124', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(168, 84, 'debet', 'HL3240', '5564124', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(169, 85, 'credit', 'HL4757', '4449217', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:27', '2017-06-30 18:29:27'),
(170, 85, 'credit', 'HL4757', '4449217', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(171, 86, 'debet', 'HL8091', '2500117', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(172, 86, 'debet', 'HL8091', '2500117', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(173, 87, 'credit', 'HL4479', '1708764', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(174, 87, 'credit', 'HL4479', '1708764', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(175, 88, 'debet', 'HL1886', '3249904', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(176, 88, 'debet', 'HL1886', '3249904', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(177, 89, 'credit', 'HL7882', '9739322', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(178, 89, 'credit', 'HL7882', '9739322', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(179, 90, 'credit', 'HL2843', '4613408', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(180, 90, 'credit', 'HL2843', '4613408', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(181, 91, 'credit', 'HL2399', '2918453', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(182, 91, 'credit', 'HL2399', '2918453', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(183, 92, 'credit', 'HL7540', '4360621', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:28', '2017-06-30 18:29:28'),
(184, 92, 'credit', 'HL7540', '4360621', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(185, 93, 'credit', 'HL8625', '6740827', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(186, 93, 'credit', 'HL8625', '6740827', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(187, 94, 'credit', 'HL5850', '5388723', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(188, 94, 'credit', 'HL5850', '5388723', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(189, 95, 'debet', 'HL4597', '7985058', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(190, 95, 'debet', 'HL4597', '7985058', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(191, 96, 'credit', 'HL7679', '6280200', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(192, 96, 'credit', 'HL7679', '6280200', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(193, 97, 'debet', 'HL3101', '1692621', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(194, 97, 'debet', 'HL3101', '1692621', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(195, 98, 'credit', 'HL4311', '3110032', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(196, 98, 'credit', 'HL4311', '3110032', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(197, 99, 'debet', 'HL1174', '2390484', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(198, 99, 'debet', 'HL1174', '2390484', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:29', '2017-06-30 18:29:29'),
(199, 100, 'credit', 'HL6639', '6474985', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-30 18:29:30', '2017-06-30 18:29:30'),
(200, 100, 'credit', 'HL6639', '6474985', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-30 18:29:30', '2017-06-30 18:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(10) unsigned NOT NULL,
  `item_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `part_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_life` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_09_150022_create_units_table', 1),
('2017_06_09_154007_create_items_table', 1),
('2017_06_09_233333_create_purchases_table', 1),
('2017_06_09_233449_create_requests_table', 1),
('2017_06_19_152213_create_transaksi_table', 1),
('2017_06_19_152319_create_costs_table', 1),
('2017_06_22_035015_create_attachments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `km_hm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warehouse_manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maintenance_manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_manager` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
`id` int(10) unsigned NOT NULL,
  `purchase_id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `damage_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id` int(10) unsigned NOT NULL,
  `type` enum('kas','bank') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'kas',
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_rekening` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direksi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kepala_bagian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kasir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `penerima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `type`, `project_name`, `project_code`, `receiver`, `receiver_rekening`, `amount_total`, `direksi`, `kepala_bagian`, `kasir`, `penerima`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(2, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(3, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(4, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(5, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(6, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:15'),
(7, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(8, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(9, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(10, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(11, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(12, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:16'),
(13, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(14, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(15, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(16, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(17, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(18, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(19, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:17'),
(20, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(21, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(22, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(23, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(24, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(25, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:18'),
(26, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(27, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(28, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(29, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(30, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(31, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(32, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:19'),
(33, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(34, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(35, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(36, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(37, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(38, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(39, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:20'),
(40, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:21'),
(41, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:21'),
(42, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:21'),
(43, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:21'),
(44, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:21'),
(45, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(46, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(47, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(48, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(49, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(50, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(51, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:22'),
(52, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(53, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(54, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(55, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(56, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(57, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(58, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:23'),
(59, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(60, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(61, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(62, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(63, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(64, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(65, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:24'),
(66, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(67, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(68, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(69, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(70, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(71, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(72, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:25'),
(73, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(74, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(75, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(76, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(77, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(78, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:26'),
(79, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(80, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(81, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(82, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(83, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(84, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(85, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:27'),
(86, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(87, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(88, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(89, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(90, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(91, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(92, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:28'),
(93, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(94, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(95, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(96, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(97, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(98, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(99, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:29'),
(100, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-30 18:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('admin','checker','operator') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'operator',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin 1', 'admin1@admin.com', '$2y$10$TkqMg8EqyviWi47euvQBJOHMSmbvOz/cXbKdQAIbTLvOV/QoPyOaC', 'admin', NULL, '2017-06-30 18:29:14', '2017-06-30 18:29:14'),
(2, 'checker 1', 'checker1@admin.com', '$2y$10$RuLscAt4f94POMOjVfNAwOvcUK6HNX1imkMIWwJhEeKcX29wXTSGi', 'checker', NULL, '2017-06-30 18:29:14', '2017-06-30 18:29:14'),
(3, 'operator 1', 'operator1@admin.com', '$2y$10$yJWjriNdON17iYpjRaJ3ZeEsgR8Rh.pqAgK9vESDy/5etXmPqO9OO', 'operator', NULL, '2017-06-30 18:29:15', '2017-06-30 18:29:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `attachments_transaksi_id_foreign` (`transaksi_id`);

--
-- Indexes for table `costs`
--
ALTER TABLE `costs`
 ADD PRIMARY KEY (`id`), ADD KEY `costs_transaksi_id_foreign` (`transaksi_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `items_item_no_unique` (`item_no`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
 ADD PRIMARY KEY (`id`), ADD KEY `requests_purchase_id_foreign` (`purchase_id`), ADD KEY `requests_item_id_foreign` (`item_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments`
--
ALTER TABLE `attachments`
ADD CONSTRAINT `attachments_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `costs`
--
ALTER TABLE `costs`
ADD CONSTRAINT `costs_transaksi_id_foreign` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
ADD CONSTRAINT `requests_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `requests_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
