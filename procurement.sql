-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 21, 2017 at 01:20 
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
  `cost_type` enum('MT','LB','EQ','SC','OH') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MT',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `costs`
--

INSERT INTO `costs` (`id`, `transaksi_id`, `type`, `code`, `cost_type`, `description`, `amount`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 1, 'debet', '', '', 'Saldo Awal', '3000000', '3000000', '2017-07-21 01:10:13', '2017-07-21 01:10:13'),
(2, 2, 'credit', 'b2. 3', 'MT', ' Amat:Pembayaran Iuran sampah bulan May''17 utk kantor pekajangan,Mess deblakan kantor Gg.9,Mess depan kantor Gg.8 (3X60000) ', '50000', '2950000', '2017-07-21 01:19:20', '2017-07-21 01:19:20');

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
  `category_accounting` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_construction` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `type`, `category_accounting`, `category_construction`, `project_name`, `project_code`, `receiver`, `receiver_rekening`, `amount_total`, `direksi`, `kepala_bagian`, `kasir`, `penerima`, `attachment`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'kas', '', '', 'Project PBTR Pekalongan', '20-16-PB001', '', '', '3000000', '', '', '', '', '', '', '2017-07-21 01:10:13', '2017-07-21 01:10:13'),
(2, 'kas', 'Rumah Tangga Kantor Konstruksi', 'Rumah tangga-kopi-aqua-gula,surat kabar,etc', 'Project PBTR Pekalongan', '20-16-PB001', 'lorem ipsum', '123456565678', '50000', 'Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum', 'lorem ipsum', '', ' Budget', '2017-07-20 17:00:00', '2017-07-21 01:19:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `code`, `type`, `created_at`, `updated_at`) VALUES
(1, 'DT2601', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'DT2602', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DT2603', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'DT2604', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'DT2605', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'DT2606', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'DT2607', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'DT2608', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'DT2609', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'DT2610', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'DT2611', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'DT2612', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'DT2613', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'DT2614', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'DT2615', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'DT2616', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'DT2617', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'DT2618', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'DT2619', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'DT2620', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'DT2621', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'DT2622', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'DT2623', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'DT2624', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'DT2625', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'DT2626', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'DT2627', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'DT2628', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'DT2629', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'DT2630', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'DT2631', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'DT2632', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'DT2633', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'DT2634', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'DT2635', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'DT2636', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'DT2637', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'DT2638', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'DT2639', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'DT2640', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'DT2641', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'DT2642', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'DT2643', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DT2644', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DT2645', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DT2646', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'DT2647', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'DT2648', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'DT2649', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'DT2650', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'SPARE 1', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'SPARE 2', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'SPARE 3', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'SPARE 4', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'SPARE 5', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'SPARE 6', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'SPARE 7', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'SPARE 8', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'SPARE 9', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'SPARE 10', 'DT Besar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'DT 7101', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'DT 7102', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'DT 7103', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'DT 7104', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'DT 7105', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'DT 7106', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'DT 7107', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'DT 7108', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'DT 7109', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'DT 7110', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'DT 7111', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'DT 7112', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'DT 7113', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'DT 7114', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'DT 7115', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'DT 7116', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'DT 7117', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'DT 7118', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'DT 7119', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'DT 7120', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'DT 7121', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'DT 7122', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'DT 7123', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'DT 7124', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'DT 7125', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'DT 7126', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'DT 7127', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'DT 7128', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'DT 7129', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'DT 7130', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'DT 7131', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'DT 7132', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'DT 7133', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'DT 7134', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'DT 7135', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'DT 7136', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'DT 7137', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'DT 7138', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'DT 7139', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'DT 7140', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'DT 7141', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'DT 7142', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'DT 7143', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'DT 7144', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'DT 7145', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'DT 7146', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'DT 7147', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'DT 7148', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'DT 7149', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'DT 7150', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'SPARE 1', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'SPARE 2', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'SPARE 3', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'SPARE 4', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'SPARE 5', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'SPARE 6', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'SPARE 7', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'SPARE 8', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'SPARE 9', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'SPARE 10', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'SPARE 11', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'SPARE 12', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'SPARE 13', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SPARE 14', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'SPARE 15', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SPARE 16', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'SPARE 17', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SPARE 18', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SPARE 19', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SPARE 20', 'DT Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'EX2101', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'EX2102', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'EX2103', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'EX2104', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'EX2105', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'EX3301', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'EX3302', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'EX3303', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'EX2001', 'Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'admin 1', 'admin1@admin.com', '$2y$10$M4FD7xbXRQVIOXedZ3rkZeECFu2xOIC1hxrEb0gBnziMNqb4bcNye', 'admin', NULL, '2017-07-21 01:10:13', '2017-07-21 01:10:13'),
(2, 'checker 1', 'checker1@admin.com', '$2y$10$TNItThEA6egPuK.xVnkGk.9EsD1OWOIcSvqVTjpOa6lQfT2VH8BLy', 'checker', NULL, '2017-07-21 01:10:13', '2017-07-21 01:10:13'),
(3, 'operator 1', 'operator1@admin.com', '$2y$10$rOk2iKjDWB7nrI0Fz9/kcehIeq2kh8YCLdTcolcFDTxq0v9DV3b2K', 'operator', NULL, '2017-07-21 01:10:13', '2017-07-21 01:10:13');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=140;
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
