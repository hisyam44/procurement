-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 26, 2017 at 10:23 
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
-- Table structure for table `accounting_category`
--

CREATE TABLE IF NOT EXISTS `accounting_category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `accounting_category`
--

INSERT INTO `accounting_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aktiva Tidak Lancar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Direct Expenses', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Direct Expenses Construction', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Biaya Administrasi Bank/konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Biaya Administrasi Leasing/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Biaya Agency/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Biaya Air PAM/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Biaya Akuntan & Konsultan/ K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Biaya Alat-Alat Tulis & Cetak/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Biaya Alat/Inventaris Kantor/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Biaya Alat / Inventaris Lap.Kontruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Biaya APD/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Biaya Asuransi Konstruction', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Biaya Bahan Bakar AB Kosntruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Biaya Bahan Bakar Alat-Lap.Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Biaya Bahan Bakar Mobil/Motor/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Biaya Bahan Bakar Truck Kosntruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Biaya Balik Nama AB & Kendaraan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Biaya Benda-Benda Pos/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Biaya Bensin,Tol,Parkir/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Biaya Bunga Bank U/LC/konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Biaya Bunga Leasing K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Biaya Bunga Pinjamn Bank/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Biaya Cuci Kendaraan/Truck/AB/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Biaya Denda/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Biaya Gaji Staff Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Biaya Gaji Supir (Use For DT) Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Biaya Inklaring/EMKL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Biaya Instalasi / K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Biaya Investasi Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Biaya Iuran/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Biaya Jamuan Tamu/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Biaya Kantor Dan Lain-Lain/Konstruk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Biaya Kantor Di Pool', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Biaya Kantor Di Proyek/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Biaya Keamanan Proyek Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Biaya Keperluan Mess Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Biaya Kesejahteraan Kary/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Biaya Kirim Paket /Dokumen Cosntr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Biaya Kirim Sparepart/k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Biaya Kompensasi Lahan & Tanah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Biaya Koordinasi Lap./K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Biaya Laboratorium/Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Biaya Lain-Lain AMP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Biaya Lain-Lain Proyek/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Biaya Leasing Alat Bear/Truck Konstrusksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Biaya Listrik,Air,Telp/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Biaya Listrik/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Biaya Makan Bersama/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Biaya Material AMP Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Biaya Material Aspal Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Biaya Material Consumables/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Biaya Material Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Biaya Material Rindri', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Biaya Material-S', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Biaya Material Safety/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Biaya Material - Survey (K)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Biaya Mengurus Tagihan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Biaya Minyak Bakar/MDF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Biaya Mobilisasi Alat Berat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Biaya Mobilisasi Kendaraan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Biaya Mobilisasi Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Biaya Notaris/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Biaya Ongkos Angkut Material/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Biaya Pakaian Seragam Const.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Biaya Pelumas Alat Berat/k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Biaya Pelumas Mobil/motor /K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Biaya Pelumas Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Biaya Pemakaian Alat Lapangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Biaya Pemakaian/Sewa Truck Dan Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Biaya Pemasangan Iklan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Biaya Pembuatan Sertifikat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Biaya Pemeliharaan Bangunan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Biaya Pendidikan Karyawan/Kosntruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Biaya Pengacara/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Biaya Pengobatan Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Biaya Pengurusan Alat/Barang Impor K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Biaya Penyusutan Alat Berat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Biaya Penyusutan Inventaris Lapangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Biaya Penyusutan Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Biaya Perijinan/k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Biaya Perjalanan Dinas,Akomodasi/Konstr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Biaya Pesangon Karyawan/k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Biaya Potong Pohon Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Biaya Psikotest Kary.Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Biaya Rangkaian Bunga/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Biaya Recruitment/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Biaya Ritasi Supir - Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Biaya Rumah Tangga Kantor Konstr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Biaya Safety K3L Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Biaya Sarana Jalan Darurat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Biaya Sewa Alat Berat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Biaya Sewa Alat Lapangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Biaya Sewa Gedung / Rumah/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Biaya Sewa Kapal/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Biaya Sewa Kendaraan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Biaya Sewa Lahan Di Proyek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Biaya Sewa Mesin Foto Copy/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Biaya Sewa Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Biaya Software Maintenence/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Biaya Solar /k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Biaya Sparepart Alat Berat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Biaya Sparepart Alat Lapangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Biaya Sparepart AMP/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Biaya Sparepart Mobil/Motor Proyek/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Biaya Sparepart Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Biaya SPO & FHO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Biaya Sub Kontraktor/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Biaya Sumbangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Biaya Surat Alat-Alat Lapangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Biaya Surat Kendaraan Mbl/Motor/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Biaya Surat Kendaraan Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Biaya Survey/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Biaya System Aplikasi / K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Biaya Tanah Galian Untuk Urugan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Biaya Telp/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Biaya Tender & Promosi/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Biaya Terjemahan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Biaya Transport Di Pool', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Biaya Transport Di Proyek/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Biaya Transport Hotmix/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Biaya Transport/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Biaya Transport Solar/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Biaya Tunjangan Transport/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Biaya Uang Makan Karyawan Proyek Const.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Biaya Umum/lain2 (K)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Biaya Upah Karyawan Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Biaya Upah Lembur Karyawan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Biaya Vsat and Internet/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Bi.Gaji Operator (Use For Alat Berat) Konstr.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Bi.Perbaikan/Perawatan Alat Berat/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Bi.Perbaikan/Perawatan Inventaris Kantor/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Bi.Perbaikan/Perawatan Inventaris Lapangan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Bi.Perbaikan/Perawatan Mobil/motor /K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Bi.Perbaikan/Perawatan Truck/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Bi.Perbaikan /Perwatan AMP/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'BPJS/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'BPJS Kesehatan K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'BPJS Ketenagakerjaan K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Insentif/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Jamsostek Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Management Fee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Pajak Bumi & Bangunan/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Potongan Lainnya/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Potongan Pembelian/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Potongan Premi Kehadiran/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Selisih Kurs Atas Pembelian/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Selisih Kurs Atas Transaksi K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Selisih Kurs Tally/k', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'THR Konstruksi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Tunjangan Lainnya/K', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, '(Expenses (Direct))', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '(Pengeluaran Lagsng Konstruksi)', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
-- Table structure for table `construction_category`
--

CREATE TABLE IF NOT EXISTS `construction_category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `construction_description`
--

CREATE TABLE IF NOT EXISTS `construction_description` (
`id` int(10) unsigned NOT NULL,
  `construction_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `costcodes`
--

CREATE TABLE IF NOT EXISTS `costcodes` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lv1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lv2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lv3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `costcodes_lv4`
--

CREATE TABLE IF NOT EXISTS `costcodes_lv4` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(10) unsigned NOT NULL,
  `item_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_life` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_part_no`
--

CREATE TABLE IF NOT EXISTS `item_part_no` (
`id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
('2017_06_22_035015_create_attachments_table', 1),
('2017_07_27_050642_create_accounting_category_table', 1),
('2017_08_01_074740_create_construction_category_table', 1),
('2017_08_01_074829_create_construction_description_table', 1),
('2017_08_01_074903_create_costcodes_table', 1),
('2017_08_01_075006_create_costcodes_lv4_table', 1),
('2017_08_15_060204_create_item_part_no', 1);

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
  `part_no_id` int(10) unsigned NOT NULL,
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
  `accounting_id` int(10) unsigned NOT NULL,
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
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 'admin 1', 'admin1@admin.com', '$2y$10$SYVeF.SCrlryKhLk8xI7S.uq7jFaMdnmuRHSZouJnoaPkKRx1h.Wu', 'admin', NULL, '2017-08-26 01:20:28', '2017-08-26 01:20:28'),
(2, 'checker 1', 'checker1@admin.com', '$2y$10$zzk6WHvySQfKdlptK6ox3ewotmAGeFxTnQivMiuqthsBb5fe6s7z.', 'checker', NULL, '2017-08-26 01:20:29', '2017-08-26 01:20:29'),
(3, 'operator 1', 'operator1@admin.com', '$2y$10$HqAGtJmVYyBa0DTCGD4MZOOnNwTmMR/kRtpggTgAjs2cMpR4KPfKu', 'operator', NULL, '2017-08-26 01:20:29', '2017-08-26 01:20:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting_category`
--
ALTER TABLE `accounting_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
 ADD PRIMARY KEY (`id`), ADD KEY `attachments_transaksi_id_foreign` (`transaksi_id`);

--
-- Indexes for table `construction_category`
--
ALTER TABLE `construction_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `construction_description`
--
ALTER TABLE `construction_description`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costcodes`
--
ALTER TABLE `costcodes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `costcodes_lv4`
--
ALTER TABLE `costcodes_lv4`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `item_part_no`
--
ALTER TABLE `item_part_no`
 ADD PRIMARY KEY (`id`), ADD KEY `item_part_no_item_id_foreign` (`item_id`);

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
-- AUTO_INCREMENT for table `accounting_category`
--
ALTER TABLE `accounting_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `construction_category`
--
ALTER TABLE `construction_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `construction_description`
--
ALTER TABLE `construction_description`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `costcodes`
--
ALTER TABLE `costcodes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `costcodes_lv4`
--
ALTER TABLE `costcodes_lv4`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_part_no`
--
ALTER TABLE `item_part_no`
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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `item_part_no`
--
ALTER TABLE `item_part_no`
ADD CONSTRAINT `item_part_no_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
ADD CONSTRAINT `requests_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
