-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2017 at 01:56 
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
(1, 1, 'debet', 'HL9519', '7506501', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:11', '2017-06-23 04:54:11'),
(2, 1, 'debet', 'HL9519', '7506501', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:11', '2017-06-23 04:54:11'),
(3, 2, 'credit', 'HL4146', '8985766', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(4, 2, 'credit', 'HL4146', '8985766', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(5, 3, 'credit', 'HL3662', '9734648', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(6, 3, 'credit', 'HL3662', '9734648', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(7, 4, 'debet', 'HL1669', '9575849', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(8, 4, 'debet', 'HL1669', '9575849', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(9, 5, 'debet', 'HL2306', '6281046', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(10, 5, 'debet', 'HL2306', '6281046', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(11, 6, 'credit', 'HL2343', '7765120', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(12, 6, 'credit', 'HL2343', '7765120', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:12', '2017-06-23 04:54:12'),
(13, 7, 'credit', 'HL5525', '3766811', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(14, 7, 'credit', 'HL5525', '3766811', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(15, 8, 'debet', 'HL4218', '6025144', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(16, 8, 'debet', 'HL4218', '6025144', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(17, 9, 'credit', 'HL8859', '6162037', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(18, 9, 'credit', 'HL8859', '6162037', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(19, 10, 'debet', 'HL4109', '7146474', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(20, 10, 'debet', 'HL4109', '7146474', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(21, 11, 'credit', 'HL8095', '3502731', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(22, 11, 'credit', 'HL8095', '3502731', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(23, 12, 'debet', 'HL8807', '6520502', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:13', '2017-06-23 04:54:13'),
(24, 12, 'debet', 'HL8807', '6520502', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(25, 13, 'credit', 'HL1138', '8684401', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(26, 13, 'credit', 'HL1138', '8684401', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(27, 14, 'debet', 'HL6805', '1221933', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(28, 14, 'debet', 'HL6805', '1221933', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(29, 15, 'debet', 'HL6059', '8032731', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(30, 15, 'debet', 'HL6059', '8032731', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(31, 16, 'debet', 'HL3851', '8264622', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(32, 16, 'debet', 'HL3851', '8264622', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(33, 17, 'credit', 'HL6315', '5491279', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(34, 17, 'credit', 'HL6315', '5491279', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(35, 18, 'credit', 'HL5757', '5951884', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(36, 18, 'credit', 'HL5757', '5951884', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:14', '2017-06-23 04:54:14'),
(37, 19, 'credit', 'HL5845', '6343982', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(38, 19, 'credit', 'HL5845', '6343982', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(39, 20, 'debet', 'HL8358', '4964169', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(40, 20, 'debet', 'HL8358', '4964169', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(41, 21, 'debet', 'HL6068', '9895220', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(42, 21, 'debet', 'HL6068', '9895220', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(43, 22, 'debet', 'HL5680', '7581779', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(44, 22, 'debet', 'HL5680', '7581779', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(45, 23, 'debet', 'HL2886', '2651832', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(46, 23, 'debet', 'HL2886', '2651832', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(47, 24, 'credit', 'HL9025', '9385361', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(48, 24, 'credit', 'HL9025', '9385361', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(49, 25, 'credit', 'HL3747', '9949099', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:15', '2017-06-23 04:54:15'),
(50, 25, 'credit', 'HL3747', '9949099', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(51, 26, 'credit', 'HL4281', '8789686', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(52, 26, 'credit', 'HL4281', '8789686', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(53, 27, 'debet', 'HL6098', '2697671', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(54, 27, 'debet', 'HL6098', '2697671', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(55, 28, 'credit', 'HL7681', '2837586', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(56, 28, 'credit', 'HL7681', '2837586', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(57, 29, 'credit', 'HL7875', '2883302', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(58, 29, 'credit', 'HL7875', '2883302', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(59, 30, 'credit', 'HL8288', '6259863', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(60, 30, 'credit', 'HL8288', '6259863', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(61, 31, 'debet', 'HL1598', '5561771', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:16', '2017-06-23 04:54:16'),
(62, 31, 'debet', 'HL1598', '5561771', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(63, 32, 'credit', 'HL8419', '5703190', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(64, 32, 'credit', 'HL8419', '5703190', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(65, 33, 'debet', 'HL7407', '6478637', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(66, 33, 'debet', 'HL7407', '6478637', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(67, 34, 'debet', 'HL9235', '7609844', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(68, 34, 'debet', 'HL9235', '7609844', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(69, 35, 'credit', 'HL3425', '1120739', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(70, 35, 'credit', 'HL3425', '1120739', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(71, 36, 'credit', 'HL5889', '1317891', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(72, 36, 'credit', 'HL5889', '1317891', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(73, 37, 'debet', 'HL3866', '2273839', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(74, 37, 'debet', 'HL3866', '2273839', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:17', '2017-06-23 04:54:17'),
(75, 38, 'debet', 'HL3576', '2599031', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(76, 38, 'debet', 'HL3576', '2599031', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(77, 39, 'debet', 'HL9508', '4655883', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(78, 39, 'debet', 'HL9508', '4655883', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(79, 40, 'debet', 'HL1982', '2662410', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(80, 40, 'debet', 'HL1982', '2662410', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(81, 41, 'debet', 'HL8689', '8548851', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(82, 41, 'debet', 'HL8689', '8548851', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(83, 42, 'debet', 'HL2049', '3957680', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(84, 42, 'debet', 'HL2049', '3957680', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(85, 43, 'debet', 'HL3805', '7197040', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(86, 43, 'debet', 'HL3805', '7197040', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(87, 44, 'debet', 'HL8380', '3853792', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:18', '2017-06-23 04:54:18'),
(88, 44, 'debet', 'HL8380', '3853792', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(89, 45, 'credit', 'HL4732', '6175878', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(90, 45, 'credit', 'HL4732', '6175878', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(91, 46, 'credit', 'HL8119', '3951452', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(92, 46, 'credit', 'HL8119', '3951452', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(93, 47, 'credit', 'HL4839', '7891495', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(94, 47, 'credit', 'HL4839', '7891495', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(95, 48, 'credit', 'HL8090', '9471799', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(96, 48, 'credit', 'HL8090', '9471799', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(97, 49, 'debet', 'HL3439', '2570385', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(98, 49, 'debet', 'HL3439', '2570385', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(99, 50, 'debet', 'HL1375', '6504191', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(100, 50, 'debet', 'HL1375', '6504191', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:19', '2017-06-23 04:54:19'),
(101, 51, 'debet', 'HL5581', '6749661', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(102, 51, 'debet', 'HL5581', '6749661', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(103, 52, 'credit', 'HL6728', '7236205', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(104, 52, 'credit', 'HL6728', '7236205', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(105, 53, 'credit', 'HL1744', '1610751', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(106, 53, 'credit', 'HL1744', '1610751', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(107, 54, 'credit', 'HL9178', '6347457', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(108, 54, 'credit', 'HL9178', '6347457', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(109, 55, 'debet', 'HL2418', '1423002', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(110, 55, 'debet', 'HL2418', '1423002', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(111, 56, 'credit', 'HL8308', '2681829', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(112, 56, 'credit', 'HL8308', '2681829', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:20', '2017-06-23 04:54:20'),
(113, 57, 'debet', 'HL7000', '8369144', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(114, 57, 'debet', 'HL7000', '8369144', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(115, 58, 'credit', 'HL9055', '1965467', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(116, 58, 'credit', 'HL9055', '1965467', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(117, 59, 'credit', 'HL1160', '2358319', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(118, 59, 'credit', 'HL1160', '2358319', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(119, 60, 'credit', 'HL7158', '3557620', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(120, 60, 'credit', 'HL7158', '3557620', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(121, 61, 'debet', 'HL9852', '6971419', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(122, 61, 'debet', 'HL9852', '6971419', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(123, 62, 'credit', 'HL9178', '4731530', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(124, 62, 'credit', 'HL9178', '4731530', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:21', '2017-06-23 04:54:21'),
(125, 63, 'credit', 'HL4547', '1119004', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(126, 63, 'credit', 'HL4547', '1119004', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(127, 64, 'debet', 'HL3374', '3940844', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(128, 64, 'debet', 'HL3374', '3940844', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(129, 65, 'debet', 'HL3725', '7034795', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(130, 65, 'debet', 'HL3725', '7034795', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(131, 66, 'debet', 'HL5306', '7898617', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(132, 66, 'debet', 'HL5306', '7898617', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(133, 67, 'debet', 'HL4291', '9898732', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(134, 67, 'debet', 'HL4291', '9898732', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(135, 68, 'credit', 'HL7700', '4211754', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(136, 68, 'credit', 'HL7700', '4211754', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:22', '2017-06-23 04:54:22'),
(137, 69, 'credit', 'HL7461', '2097223', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(138, 69, 'credit', 'HL7461', '2097223', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(139, 70, 'credit', 'HL2471', '5613547', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(140, 70, 'credit', 'HL2471', '5613547', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(141, 71, 'debet', 'HL3255', '1185417', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(142, 71, 'debet', 'HL3255', '1185417', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(143, 72, 'debet', 'HL8825', '3253006', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(144, 72, 'debet', 'HL8825', '3253006', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(145, 73, 'debet', 'HL2275', '5866641', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(146, 73, 'debet', 'HL2275', '5866641', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(147, 74, 'credit', 'HL8409', '8288196', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(148, 74, 'credit', 'HL8409', '8288196', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(149, 75, 'credit', 'HL1219', '5813669', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:23', '2017-06-23 04:54:23'),
(150, 75, 'credit', 'HL1219', '5813669', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(151, 76, 'credit', 'HL2695', '8696316', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(152, 76, 'credit', 'HL2695', '8696316', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(153, 77, 'credit', 'HL5154', '3541102', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(154, 77, 'credit', 'HL5154', '3541102', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(155, 78, 'debet', 'HL7044', '2502433', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(156, 78, 'debet', 'HL7044', '2502433', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(157, 79, 'debet', 'HL5818', '6921625', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(158, 79, 'debet', 'HL5818', '6921625', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(159, 80, 'credit', 'HL8622', '6314630', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(160, 80, 'credit', 'HL8622', '6314630', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(161, 81, 'debet', 'HL1634', '2731938', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(162, 81, 'debet', 'HL1634', '2731938', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:24', '2017-06-23 04:54:24'),
(163, 82, 'credit', 'HL7421', '8931721', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(164, 82, 'credit', 'HL7421', '8931721', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(165, 83, 'credit', 'HL3809', '5131366', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(166, 83, 'credit', 'HL3809', '5131366', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(167, 84, 'credit', 'HL3134', '5973585', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(168, 84, 'credit', 'HL3134', '5973585', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(169, 85, 'debet', 'HL3166', '1471949', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(170, 85, 'debet', 'HL3166', '1471949', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(171, 86, 'credit', 'HL5050', '9510858', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(172, 86, 'credit', 'HL5050', '9510858', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(173, 87, 'debet', 'HL8136', '1371190', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(174, 87, 'debet', 'HL8136', '1371190', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(175, 88, 'credit', 'HL2711', '4927039', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(176, 88, 'credit', 'HL2711', '4927039', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:25', '2017-06-23 04:54:25'),
(177, 89, 'debet', 'HL5756', '3062048', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(178, 89, 'debet', 'HL5756', '3062048', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(179, 90, 'debet', 'HL6621', '9426967', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(180, 90, 'debet', 'HL6621', '9426967', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(181, 91, 'debet', 'HL7473', '7764774', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(182, 91, 'debet', 'HL7473', '7764774', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(183, 92, 'credit', 'HL3707', '8953967', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(184, 92, 'credit', 'HL3707', '8953967', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(185, 93, 'credit', 'HL9187', '5313616', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(186, 93, 'credit', 'HL9187', '5313616', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(187, 94, 'debet', 'HL6558', '4542209', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(188, 94, 'debet', 'HL6558', '4542209', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(189, 95, 'debet', 'HL1538', '7742707', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:26', '2017-06-23 04:54:26'),
(190, 95, 'debet', 'HL1538', '7742707', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(191, 96, 'debet', 'HL6625', '5973775', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(192, 96, 'debet', 'HL6625', '5973775', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(193, 97, 'debet', 'HL8542', '9841219', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(194, 97, 'debet', 'HL8542', '9841219', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(195, 98, 'debet', 'HL6990', '6580466', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(196, 98, 'debet', 'HL6990', '6580466', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(197, 99, 'debet', 'HL2500', '4341474', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(198, 99, 'debet', 'HL2500', '4341474', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(199, 100, 'credit', 'HL9668', '6897565', 'Lorem Ipsum Sit Dolor 1', '700000', '2017-06-23 04:54:27', '2017-06-23 04:54:27'),
(200, 100, 'credit', 'HL9668', '6897565', 'Lorem Ipsum Sit Dolor 2', '500000', '2017-06-23 04:54:27', '2017-06-23 04:54:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `unit_id`, `type`, `department`, `mol`, `km_hm`, `warehouse_manager`, `maintenance_manager`, `project_manager`, `purpose`, `created_at`, `updated_at`) VALUES
(1, 1, 'BD', 'Plant', '214432', '0', 'Slamet Riyadi', 'Toni Dirgantoro', 'Doni Sumarno', 'The Purpose is to fix something, with something', '2017-06-23 04:54:11', '2017-06-23 04:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE IF NOT EXISTS `requests` (
`id` int(10) unsigned NOT NULL,
  `purchase_id` int(10) unsigned NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `damage_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `purchase_id`, `no`, `component`, `description`, `qty`, `satuan`, `model`, `damage_description`, `created_at`, `updated_at`) VALUES
(1, 1, '102543', 'GH8616', 'Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. ', '3', 'pcs', 'WER3245', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa,', '2017-06-23 04:54:11', '2017-06-23 04:54:11'),
(2, 1, '102534', 'RTW2137', 'Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. ', '2', 'pcs', 'UIO8769', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa,', '2017-06-23 04:54:11', '2017-06-23 04:54:11');

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
(1, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:11'),
(2, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:11'),
(3, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-08 17:00:00', '2017-06-23 04:54:12'),
(4, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-20 17:00:00', '2017-06-23 04:54:12'),
(5, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-19 17:00:00', '2017-06-23 04:54:12'),
(6, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:12'),
(7, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-08 17:00:00', '2017-06-23 04:54:12'),
(8, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:13'),
(9, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-06 17:00:00', '2017-06-23 04:54:13'),
(10, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-14 17:00:00', '2017-06-23 04:54:13'),
(11, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-03 17:00:00', '2017-06-23 04:54:13'),
(12, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:13'),
(13, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-08 17:00:00', '2017-06-23 04:54:14'),
(14, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:14'),
(15, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-20 17:00:00', '2017-06-23 04:54:14'),
(16, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:14'),
(17, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:14'),
(18, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:14'),
(19, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-13 17:00:00', '2017-06-23 04:54:14'),
(20, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-18 17:00:00', '2017-06-23 04:54:15'),
(21, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-09 17:00:00', '2017-06-23 04:54:15'),
(22, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-09 17:00:00', '2017-06-23 04:54:15'),
(23, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-13 17:00:00', '2017-06-23 04:54:15'),
(24, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-09 17:00:00', '2017-06-23 04:54:15'),
(25, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:15'),
(26, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:16'),
(27, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-14 17:00:00', '2017-06-23 04:54:16'),
(28, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:16'),
(29, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-22 17:00:00', '2017-06-23 04:54:16'),
(30, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:16'),
(31, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:16'),
(32, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-03 17:00:00', '2017-06-23 04:54:17'),
(33, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-23 04:54:17'),
(34, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-22 17:00:00', '2017-06-23 04:54:17'),
(35, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:17'),
(36, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:17'),
(37, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:17'),
(38, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-07 17:00:00', '2017-06-23 04:54:18'),
(39, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:18'),
(40, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:18'),
(41, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-13 17:00:00', '2017-06-23 04:54:18'),
(42, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-18 17:00:00', '2017-06-23 04:54:18'),
(43, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-08 17:00:00', '2017-06-23 04:54:18'),
(44, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-23 04:54:18'),
(45, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-14 17:00:00', '2017-06-23 04:54:19'),
(46, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:19'),
(47, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-20 17:00:00', '2017-06-23 04:54:19'),
(48, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-19 17:00:00', '2017-06-23 04:54:19'),
(49, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-19 17:00:00', '2017-06-23 04:54:19'),
(50, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-18 17:00:00', '2017-06-23 04:54:19'),
(51, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:20'),
(52, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-20 17:00:00', '2017-06-23 04:54:20'),
(53, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-14 17:00:00', '2017-06-23 04:54:20'),
(54, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-18 17:00:00', '2017-06-23 04:54:20'),
(55, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-17 17:00:00', '2017-06-23 04:54:20'),
(56, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-03 17:00:00', '2017-06-23 04:54:20'),
(57, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-07 17:00:00', '2017-06-23 04:54:21'),
(58, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:21'),
(59, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:21'),
(60, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-08 17:00:00', '2017-06-23 04:54:21'),
(61, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-11 17:00:00', '2017-06-23 04:54:21'),
(62, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-13 17:00:00', '2017-06-23 04:54:21'),
(63, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-07 17:00:00', '2017-06-23 04:54:21'),
(64, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-09 17:00:00', '2017-06-23 04:54:22'),
(65, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:22'),
(66, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:22'),
(67, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-23 04:54:22'),
(68, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:22'),
(69, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:22'),
(70, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:23'),
(71, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:23'),
(72, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-17 17:00:00', '2017-06-23 04:54:23'),
(73, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:23'),
(74, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-01 17:00:00', '2017-06-23 04:54:23'),
(75, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-18 17:00:00', '2017-06-23 04:54:23'),
(76, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:24'),
(77, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-23 04:54:24'),
(78, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-06 17:00:00', '2017-06-23 04:54:24'),
(79, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-12 17:00:00', '2017-06-23 04:54:24'),
(80, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-17 17:00:00', '2017-06-23 04:54:24'),
(81, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-03 17:00:00', '2017-06-23 04:54:24'),
(82, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:24'),
(83, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-22 17:00:00', '2017-06-23 04:54:25'),
(84, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-20 17:00:00', '2017-06-23 04:54:25'),
(85, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-11 17:00:00', '2017-06-23 04:54:25'),
(86, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-02 17:00:00', '2017-06-23 04:54:25'),
(87, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-22 17:00:00', '2017-06-23 04:54:25'),
(88, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:25'),
(89, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-21 17:00:00', '2017-06-23 04:54:25'),
(90, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-16 17:00:00', '2017-06-23 04:54:26'),
(91, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-11 17:00:00', '2017-06-23 04:54:26'),
(92, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:26'),
(93, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-15 17:00:00', '2017-06-23 04:54:26'),
(94, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-04 17:00:00', '2017-06-23 04:54:26'),
(95, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-05 17:00:00', '2017-06-23 04:54:26'),
(96, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-21 17:00:00', '2017-06-23 04:54:27'),
(97, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-06 17:00:00', '2017-06-23 04:54:27'),
(98, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-07 17:00:00', '2017-06-23 04:54:27'),
(99, 'kas', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-06-10 17:00:00', '2017-06-23 04:54:27'),
(100, 'bank', 'Project Name', 'PC124', 'Ahmad', '56752652825642', '1200000', 'Bejo', 'Slamet', 'Siti', 'Ahmad', '', '2017-05-31 17:00:00', '2017-06-23 04:54:27');

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
(1, 'admin 1', 'admin1@admin.com', '$2y$10$B7hId.7ws.5D/QK9WxRSA.PGojqMNCil10VN4yNwVDXIkbUcUbWlK', 'admin', 'CXiZC43uNyjZhWtAVHf9w9tfHz93n8Txj40DzHLDtYawy24zVRJQD8s4morn', '2017-06-23 04:54:10', '2017-06-23 04:55:12'),
(2, 'checker 1', 'checker1@admin.com', '$2y$10$8SiCqK7FIv/.1HgrUyNImOIGFqS7e5cmctzwQdEviKR08p77On7jm', 'checker', NULL, '2017-06-23 04:54:10', '2017-06-23 04:54:10'),
(3, 'operator 1', 'operator1@admin.com', '$2y$10$9MwsEToT/Pj.UuKO4RkNkeDIY4iAfH4pcROS70qkOi22Vb41olSW6', 'operator', NULL, '2017-06-23 04:54:11', '2017-06-23 04:54:11');

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
 ADD PRIMARY KEY (`id`), ADD KEY `requests_purchase_id_foreign` (`purchase_id`);

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
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
ADD CONSTRAINT `requests_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
