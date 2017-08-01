-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2017 at 07:36 
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `construction_category`
--

INSERT INTO `construction_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'TANAH BORROW MATERIAL TANAH MERAH (VOLUME INDEXS 24T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'TANAH BORROW MATERIAL TANAH MERAH (VOLUME INDEXS 8T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'PEMAKAIAN ALAT BERAT GALIAN QUARY (Sewa Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'PEMAKAIAN ALAT BERAT GALIAN QUARY (Solar Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'PEMAKAIAN ALAT BERAT GALIAN QUARY (Upah Operator Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Material)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Upah Perawatan/ Pembersihan Jalan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Upah Tenaga Harian Waker / Jaga Alat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat /Sewa Alat Berat )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat /Upah Operator Alat Berat )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BIAYA PERAWATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat /Solar Alat Berat )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Material)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Upah Perbaikan Jalan Quary)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Pemasangan Tiang Listrik Akses Road Quary)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Pembuatan Portal Akses Jalan Quary)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Pembuatan Portal Jembatan Akses Jalan Quary)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Subkontraktor)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat / Sewa Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat / Upah Operator Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BIAYA PEMBUATAN AKSES JALAN QUARY (Biaya Pemakaian Alat Berat / Solar Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BIAYA SEWA LAHAN DARI MASYARAKAT UNTUK AKSES JALAN/BIAYA IZIN TANAH TUMBUH/ POHON', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BIAYA PEMBUATAN JEMBATAN QUARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BIAYA ANGKUTAN TANAH DARI QUARY KE SITE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'BIAYA PENYEBARAN DAN PEMADATAN DI SITE (Biaya Pemakaian Alat Berat / Sewa Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BIAYA PENYEBARAN DAN PEMADATAN DI SITE (Biaya Pemakaian Alat Berat / Upah Operator Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BIAYA PENYEBARAN DAN PEMADATAN DI SITE (Biaya Pemakaian Alat Berat / Solar Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIAYA PENYEBARAN DAN PEMADATAN DI SITE (Biaya Pemakaian Alat Berat / Upah Tenaga Harian Waker / Jaga Alat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'BIAYA PENYEBARAN DAN PEMADATAN DI SITE (Biaya Pemakaian Alat Berat / Upah Tenaga Perawatan Jalan)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'BIAYA PEMBERSIHAN TEMPAT KERJA (Biaya Pemakaian Alat Berat / Sewa Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'BIAYA PEMBERSIHAN TEMPAT KERJA (Biaya Pemakaian Alat Berat / Upah Operator Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'BIAYA PEMBERSIHAN TEMPAT KERJA (Biaya Pemakaian Alat Berat / Solar Alat Berat)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'BIAYA PEKERJAAN TANAH ( GALIAN TANAH UNTUK DIBUANG ) - Biaya Pemakaian Alat Berat / Sewa Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'BIAYA PEKERJAAN TANAH ( GALIAN TANAH UNTUK DIBUANG ) - Biaya Pemakaian Alat Berat / Upah Operator Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'BIAYA PEKERJAAN TANAH ( GALIAN TANAH UNTUK DIBUANG ) - Biaya Pemakaian Alat Berat / Solar Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'BIAYA PEKERJAAN TANAH ( GALIAN TANAH UNTUK DIBUANG ) - Biaya Pemakaian Alat Berat / Alat Dump Truck Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'BIAYA PEKERJAAN TANAH ( GALIAN TANAH UNTUK DIBUANG ) - Biaya Pemakaian Alat Berat / Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD ARRAYAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD SIJERUK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD BULAK PELEM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD KEDUNG JARAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD AMBO KEMBANG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD SRAGI - KESESI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD JEMBATAN TENGENG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD KARANGSARI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD WONOSARI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD PURWODADI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD SRAGI - SIPAIT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD TEGAL SURUH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD BOJONG - KETINTANG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD KLUNJUKAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD BOJONG - WIRADESA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD DUWET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD, KEDUNG JARAN, KLUNJUKAN S/D SRAGI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LOKASI AKSES ROAD BOJONG PINGGIR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - LABORATORIUM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - Mobilisasi ( yang tidak tercakup pada 1.20 (1) )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'BIAYA PEMELIHARAAN DAN PERLINDUNGAN LALU LINTAS - BIAYA LAIN - LAIN ( AKSES SITE ROAD ) - Stabilisasi Tanah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'PENGALIHAN DAN PERLINDUNGAN UTILITAS YANG ADA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'SALURAN SEMENTARA ( DRAINASE ) - PEKERJAAN PEMASANGAN PIPA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'PEKERJAAN LAIN - LAIN - RAMBU - RAMBU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - BIAYA MATERIAL PEMBUATAN WORKSHOP QUARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - BIAYA UPAH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - BIAYA SUBKONTRAKTOR PEMBUATAN WORKSHOP QUARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - Pencucian DT & Kamar Mandi Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - BIAYA UPAH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - Biaya Operasional Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'BIAYA LAIN - LAIN (BIAYA WORKSHOP QUARY) - Biaya Pasang Tiang Listrik Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'BIAYA OVERHEAD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'THR Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Uang Makan Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Asuransi Dan BPJS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'BIAYA KESELURUHAN DARI BIAYA OVERHEAD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'BIAYA KESELURUHAN DARI BIAYA OVERHEAD - Mobilisasi & Demob Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'BEBAN KANTOR YG BERSIFAT BULANAN - Sewa Rumah Untuk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'BEBAN KANTOR YG BERSIFAT BULANAN - Alat - Alat Tulis Kantor ( ATK )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'BEBAN KANTOR YANG FIXED', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'BIAYA SUPPORT EQUIPMENT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'BIAYA SUPPORT EQUIPMENT - Biaya Alat Consumable Support Equipment', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Biaya Perizinan & Legalitas ( Lain - Lain )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'FASILITAS FIXED/ FASILITAS TETAP - BIAYA UPAH PEMBUATAN WORKSHOP ( SITE )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'FASILITAS FIXED/ FASILITAS TETAP - BIAYA UPAH PEMBUATAN WORKSHOP ( SITE ) - BIAYA PERALATAN WORKSHOP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'BIAYA SURVEYOR - ALAT SURVEY LAPANGAN/ INVENTARIS LAPANGAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'BIAYA TAKTIS/ ENTERTAINMENT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Surity and bonds', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `construction_description`
--

INSERT INTO `construction_description` (`id`, `construction_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Material Tanah Merah ( Periode 08 Nov 16 s/d 15 Des16 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Material Tanah Merah ( Periode 16 Des 16 s/d 31 Des 16 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Material Tanah Merah ( Periode 01 Jan 16 s.d 31 Jan 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 1, 'Material Tanah Merah ( Periode 01 Febr 16 s.d 28 Febr 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 'Material Tanah Merah ( Periode 01 Mar 16 s.d 15 Mar 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Kasbon Tanah ( Sumari )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'Material Tanah Merah ( Periode 16 Mar 17 s.d 31 Mar 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Material Tanah Merah ( Periode 01 April 17 s.d 15 April 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 1, 'Material Tanah Merah ( Periode 16 April 17 s.d 30 April 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 1, 'Material Tanah Merah ( Periode 01 May 17 s.d 15 May 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 1, 'Material Tanah Merah ( Periode 16 May 17 s.d 31 May 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 1, 'Material Tanah Merah ( Periode 01 Jun 17 s.d 15 Jun 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 1, 'Kasbon Tanah ( Kapling )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 1, 'Kasbon Tanah ( Sumari )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 1, 'Pembayaran Sebagian CSR ( Periode 08 Nov 16 s/d 31 May 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 'Material Tanah Merah ( Periode 01 Mar 16 s.d 15 Mar 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'Material Tanah Merah ( Periode 16 Mar 17 s.d 31 Mar 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 'Material Tanah Merah ( Periode 01 April 17 s.d 15 April 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 'Material Tanah Merah ( Periode 16 April 17 s.d 30 April 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 'Material Tanah Merah ( Periode 01 May 17 s.d 15 May 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'Material Tanah Merah ( Periode 16 May 17 s.d 31 May 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 'Material Tanah Merah ( Periode 01 Jun 17 s.d 15 Jun 17 )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 3, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 3, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 3, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 3, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 4, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 4, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 4, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 4, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 5, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 5, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 5, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 5, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 6, 'Batang Kelapa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 6, 'Bambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 6, 'Kayu Dolken', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 6, 'Material Akses Road ( Sirtu )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 6, 'Material Akses Road ( Batu Boulder )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 6, 'Alat Consumable ( Gedek dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 7, 'Upah tenaga Harian Flagman & Pembersihan jalan Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 7, 'Upah tenaga Harian Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 8, 'Upah tenaga Harian Waker Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 9, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 9, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 9, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 9, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 9, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 9, 'Alat Avant & Bomac', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 10, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 10, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 10, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 10, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 10, 'Alat Bobcat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 10, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 11, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 11, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 11, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 11, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 11, 'Alat Bobcat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 11, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 12, 'Material Sirtu ( Jalan Akses Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 12, 'Material Batu Boulder ( Jalan Akses Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 12, 'Material Tanah Desa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 12, 'Pohon Kelapa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 12, 'Material Lime Stone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 12, 'Material Batu Wasdas Bangkong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 12, 'Wiremesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 12, 'Besi Beton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 12, 'Beton Concrete K-250', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 12, 'Additive Quick Hadrive ( sika) 86 Botol @ 45.000', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 12, 'Kayu Merbau', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 12, 'Batu Kali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 12, 'Sirtu Kali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 12, 'Besi Plat Eser', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 12, 'Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 12, 'Besi Beton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 12, 'Material Batu Boulder ( Jalan Akses Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 12, 'Sasak Bambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 12, 'LPA ( Lapisan Pondasi Atas )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 12, 'Material Bantu ( Plastik dll ) Pengecoran', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 12, 'Alat Consumable', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 13, 'Upah Hampar Concrete Beton K-250', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 13, 'Upah Lain - Lain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 14, 'Material Tiang Listrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 14, 'Lampu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 15, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 16, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 17, 'Kompensasi Akses Jalan dan Rumah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 18, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 18, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 18, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 18, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 18, 'Dump Truck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 19, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 19, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 19, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 19, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 19, 'Dump Truck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 20, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 20, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 20, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 20, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 20, 'Dump Truck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 21, 'Sewa Lahan Dari Masyarakat Untuk Jalan Akses Quary (PSDA : izin pemanfaatan tanah timbunan pengairan dan jalan penghubung di sungai boro desa wangan dowo)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 21, 'Pajak Tanah Galian C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 21, 'Test Material ( Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 21, 'Biaya Perizinan Dll ( PT. SMJR )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 22, 'Biaya Subkontraktor (Jembatan Akses Road Quary)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 22, 'BIAYA IZIN PEMBUATAN JEMBATAN QUARY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 23, 'Sewa Dump Truck/ Unit (Dump Truck 24T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 23, 'Sewa Dump Truck/ Unit (Dump Truck 8T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 23, 'Pemakaian Solar Dump Truck (Dump Truck 24T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 23, 'Pemakaian Solar Dump Truck (Dump Truck 8T)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 23, 'Upah Driver ( Uang Makan, Retase & Gaji )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 23, 'Spare Part ( DT )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 24, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 24, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 24, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 24, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 24, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 25, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 25, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 25, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 25, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 25, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 26, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 26, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 26, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 26, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 26, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 26, 'Pembelian Oli Alat - Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 27, 'Upah tenaga Harian Waker Site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 28, 'Upah tenaga Harian Flagman & Pembersihan Site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 28, 'Upah tenaga Harian Site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 29, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 29, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 29, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 29, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 29, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 30, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 30, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 30, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 30, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 30, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 31, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 31, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 31, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 31, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 31, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 32, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 32, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 32, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 32, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 32, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 32, 'Sewa Alat Dump Truck PS 125', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 32, 'Sewa Alat Dump Truck Kecil ( Rental )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 33, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 33, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 33, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 33, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 33, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 34, 'Alat Excavator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 34, 'Alat Grader', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 34, 'Alat Vibro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 34, 'Alat Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 34, 'Dump Truck Water Tunk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 34, 'Sewa Alat Dump Truck PS 125', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 35, 'Sewa Alat Dump Truck Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 35, 'Upah Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 35, 'Solar Alat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 36, 'Sewa Alat Excavator Kecil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 36, 'Upah Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 36, 'Solar Alat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 36, 'Upah Pembersihan Tanah ( Angkut Dari Jalan Akses Ke Lokasi Site )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 37, 'Sewa Lahan Akses Road Site ( selama 2 Tahun )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 37, 'Alat untuk Perawatan Jalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 37, 'Alat Bobcat - Sewa Alat Bobcat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 37, 'Alat Bobcat - Upah Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 37, 'Alat Bobcat - Solar Alat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 37, 'Alat Compactor - Upah Operator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 37, 'Alat Compactor - Solar Alat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 37, 'Biaya Material - Pembuatan Jembatan Sementara', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 37, 'Biaya Material - Besi untuk Jembatan Kali Gresek & Sragi Lama', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 37, 'Biaya Material - Material Akses Road ( Sirtu )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 37, 'Biaya Material - Rambu - Rambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 37, 'Biaya Material - Batu Wasdas Bangkong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 37, 'Biaya Material - Batu Kali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 37, 'Biaya Material - Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 37, 'Biaya Material - Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 37, 'Biaya Material - Batu Boulder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 37, 'Biaya Material - Material Consumable ( Sasak Bambu, Paku, Sekam dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 37, 'Biaya Material - Material Beton K - 250 ( Akses Site )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 37, 'Biaya Upah Lain - Lain - Upah Pemecah Batu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 37, 'Biaya Upah Lain - Lain Akses Road di Site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 37, 'Biaya Upah Lain - Lain - Upah Perakitan Jembatan Kaliminong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 37, 'Biaya Upah Lain - Lain - Upah Pengecoran Beton K - 250 Akses Road Site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 37, 'Biaya Subkontraktor - Post Jaga Arrayan ( Site )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 37, 'Biaya Subkontraktor - Pembuatan Jembatan Sementara ( Sragi Lama & Gresek )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 37, 'Biaya Subkontraktor - Pembuatan Jembatan Sementara STA 345+400 & STA 344+432 ( PT. SIPINDO )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 38, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 38, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 39, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 39, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 39, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 39, 'Material Batu Krosok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 39, 'Material Batu Gragal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 39, 'Material Batu Gajah & Batu Mangga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 39, 'Material Batu Blondos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 39, 'Upah lain - Lain untuk Akses Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 39, 'Material Bantu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 40, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 40, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 40, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 40, 'Material Batu Blondos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 41, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 41, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 41, 'Subkon Pekerjaan Bronjong Talud Batu Kali', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 41, 'Material Batu Blondos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 41, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 41, 'Material Wiremesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 41, 'Material Semen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 41, 'Material Bantu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 41, 'Material Concrete K - 200', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 41, 'Upah Driver Mix Beton K - 200', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 41, 'Upah Kerja Repair Akses Road', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 42, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 42, 'Material Beton K - 250 ( Ready Mix )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 42, 'Material Bantu Untuk Pengecoran Akses Road ke site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 42, 'Upah Untuk Driver DT Ready Mix Pengecoran Akses Road ke site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 42, 'Upah Tenaga Harian Pengecoran Akses Road ke site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 43, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 43, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 43, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 43, 'Material Wiremesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 43, 'Material Batu Split', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 43, 'Subkon Perbaikan Jalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 43, 'Upah Driver DT Beton Mix', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 43, 'Upah Driver DT Angkut Batu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 43, 'Material Beton K - 250 ( Ready Mix )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 43, 'Alat Bantu ( Plastic, Begesting dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 44, 'Repair Jembatan Tengeng II ( Material Besi IWF )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 44, 'Upah Pemasangan Besi Jembatan Tengeng II', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 44, 'Upah Pengelasan Jembatan Tengeng II', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 45, 'Material Sirtu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 45, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 45, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 46, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 46, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 47, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(251, 47, 'Upah Tenaga perbaikan Jalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(252, 48, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(253, 48, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(254, 48, 'Subkon Perbaikan Jalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(255, 49, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(256, 50, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(257, 50, 'Material Batu Belah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(258, 50, 'Subkon Perbaikan Jalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(259, 50, 'Upah Driver DT Angkut Batu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(260, 50, 'Material Batu Split', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(261, 51, 'Material Beton K - 200 ( Ready Mix )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 51, 'Upah Untuk Driver DT Ready Mix Pengecoran Akses Road ke site', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 51, 'Material Lapisan Pondasi Atas ( LPA )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 52, 'Repair Akses Site Bojong - Wiradesa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 53, 'Material LPA Akses Road di Site Duwet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 53, 'Subkon Repair Akses Road di Site Duwet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 54, 'Pekerjaan Pengasapalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 54, 'Pekerjaan Peninggian & Peralatan Dengan BaseCorse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 55, 'Pekerjaan Pengasapalan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 55, 'Pekerjaan Peninggian & Peralatan Dengan BaseCorse', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 56, 'Konstruksi laboratorium', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 57, 'Mobilisasi Alat Alat Berat ( dg Trailer )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 57, 'Mobilisasi Dump Truck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 57, 'Mobilisasi Alat Alat Berat ( dg Trailer )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 57, 'Mobilisasi Alat Alat Berat ( dg Trailer )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 57, 'Mobilisasi Mobil Operasional ke Lapangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 58, 'Material Geothex', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 59, 'Area Klunjukan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 59, 'Area Sijeruk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 59, 'Area Box Sijeruk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 59, 'Ds Babalan Lor - Jajar Wayang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 59, 'Ds Babalan Lor - Kuburan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 59, 'Ds Tangkil', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 59, 'Ds Purwodadi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 59, 'Ds Ambo Kembang', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 59, 'Biaya Taktis Pemindahan Instalasi Listrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 59, 'Ds Bulak Pelem', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 59, 'Ds Sembung Jambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 59, 'Ds Klunjukan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 59, 'Ds Rengas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 59, 'Ds Sitemu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 59, 'Ds Kelang Depok', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 59, 'Ds Dukuh Sali 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 59, 'Ds Karang Asem 1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 59, 'Ds Petanjungan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 59, 'Dukuh Sali 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 59, 'Karang Asem 2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 59, 'Sijeruk ( Upah Pergeseran Tiang Subkon )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 59, 'Jajar Wayang ( Pemasangan U Ditch & Tutup Subkon )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 59, 'Babalan Kuburan ( Pemasangan U Ditch & Tutup Subkon )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 59, 'Relokasi Telkom', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 60, 'Pengadaan Pipa 12 Btg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 60, 'Pengiriman Pipa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 60, 'Pekerjaan Pemasangan Armco', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 61, 'Patok Bambu (dicat+spotlight)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 61, 'Material Bantu Patok Bambu (dicat+spotlight)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 61, 'Rambu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 61, 'Flagman ( Tenaga Harian Fungsional Lebaran )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 61, 'Marka ( Tenaga Harian Fungsional Lebaran )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 61, 'Pagar ROW, Tipe 1 (Panel Beton)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 61, 'Pagar ROW, Tipe 2 (Kawat Berduri)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 62, 'Material Sirtu ( Lahan Workshop Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 62, 'Pembuatan Pagar Galvalum Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 62, 'Biaya Material Bantu workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 62, 'Biaya Material Atap workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 62, 'Biaya Material Bantu workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 62, 'Biaya Wiremesh workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 62, 'Biaya Pemasangan Listrik workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 62, 'Biaya Pengecoran Beton K - 250 workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 62, 'Biaya Pengecoran Beton K - 125 workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 62, 'Biaya Material LPA workshop Quary ( Pekerjaan Lanjutan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 62, 'Pembuatan Panel Listrik Workshop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 62, 'Biaya Material - Material ( Office Workshop Quary )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 62, 'Biaya Bantu Pemasangan Listrik Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 62, 'Material Atap Kamar Mandi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 62, 'Biaya Peningkatan Daya Listrik Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 62, 'Material Pembuatan Pagar DT Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 63, 'Upah Pengecoran Beton K - 250 Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 63, 'Upah DT Ready Mix', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 63, 'Upah Pemasangan Baja Ringan Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 63, 'Upah Pembuatan Kamar Mandi Workshop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 63, 'Upah Pembuatan Ruang Lab Workshop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 63, 'Upah Pembuatan Pagar Workshop', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 64, 'Borong Kerja ( Material + Upah )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 65, 'Biaya Material Pasir', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 65, 'Material Semen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 65, 'Material Batu Blonos', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 65, 'Material Wiremesh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 65, 'Biaya Material Bantu Pencucian Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 65, 'Mesin Pompa Air', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 65, 'Semen & Pasir Pekerjaan Cucian DT workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 66, 'Upah Pembuatan Washing Pad', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 66, 'Upah Pembuatan Sumur', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 67, 'Listrik Workshop Quary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 68, 'Upah + Material Pasang Tiang Listrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 69, 'Gaji Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 69, 'PPh Psl 21 Gaji Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 70, 'Upah Tenaga Harian Kantor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 70, 'Upah Tenaga Harian Surveyor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 71, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 72, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 73, 'Perjalanan Dinas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 74, 'Sewa Mess I - ( Kantor Site )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 74, 'Sewa Mess - I ( Pekalongan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 74, 'Sewa Mess -II (Bojong Expat G.H-II)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 74, 'Sewa Mess - I ( Bojong )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 74, 'Sewa Mess - IV ( Pekajangan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 74, 'Sewa Mess - V ( Pekajangan )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 74, 'Sewa Mess - VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 74, 'Sewa Mess - VII', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 74, 'Sewa Mess - VIII', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 74, 'Sewa Mess - IX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 74, 'Sewa Mess II - (Operator dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 74, 'Sewa Kamar Kos ( Project Manager & RM )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 74, 'APD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 74, 'Pengobatan Karyawan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 75, 'Sewa Kantor Pekajangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 75, 'Tagihan Rekening Air,listrik,gas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 75, 'Pemeliharaan Kantor dan Mess ( Renovasi Kantor )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 75, 'Rumah tangga-kopi-aqua-gula,surat kabar,etc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 75, 'Internet dan telp', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 75, 'BBM Mobil Operasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 75, 'BBM Motor Operasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 75, 'Repair Motor Operasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 75, 'Repair Mobil Operasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 75, 'Kurir', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 75, 'Percetakan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 75, 'Transportasi Lain - Lain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 75, 'Biaya Bank ( Rtgs dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 75, 'Biaya Aplikasi System Work', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 76, 'Paper A3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 76, 'Paper A4', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 76, 'Alat - Alat Tulis', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 76, 'Foto Copy & Jilid', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 77, 'Perlengkapan Kantor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 77, 'Perlengkapan mess', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 77, 'Furniture ( Kasur )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 78, 'Biaya Alat Trailer - Sewa Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 78, 'Biaya Alat Trailer - Solar/ Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 78, 'Uang Makan Driver Trailer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 78, 'Sewa Mobil Operasional', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 78, 'Surat Kendaraan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 78, 'Pembelian Motor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 79, 'Repair Maintenance - Dump Truck', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 79, 'Repair Maintenance - Trailer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 79, 'Repair Maintenance - Dozer', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 79, 'Repair Maintenance - Bobcat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 79, 'Repair Maintenance - Material Bantu Alat Berat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 79, 'Alat Bantu Lainnya ( Support Equipment )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 79, 'Sewa Alat Bantu ( Seliing dll )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 79, 'Solar untuk Alat - Alat Bantu ( Tower Lamp, Genzet dll)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 79, 'BBM Premium Genzet', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 79, 'Biaya Alat Fuel Tunk - Sewa Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 79, 'Biaya Alat Fuel Tunk - Solar/ Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 79, 'Biaya Alat Lube Car - Sewa Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 79, 'Biaya Alat Lube Car - Solar/ Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 80, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 81, 'Biaya Material (Material Pembuatan Pagar/ Fencing)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 81, 'Biaya Upah (Upah Pembuatan Fencing/ Pagar ( Site ))', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 82, 'Perawatan Alat ( Las, Isi Ban )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 82, 'Furniture Workshop ( Meja & Kursi )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 82, 'Greasing Guns', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 82, 'Tools & tackles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 82, '7 KVA genset', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 82, '55 KVA genset', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 82, 'Air Compressor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 82, 'Container', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 82, 'Alat Konsumable', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 82, 'Solar untuk Alat - Alat Bantu ( Water Pump )', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 83, 'Total Station', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 83, 'Auto Level', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 83, 'GPS - Handheld', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 83, 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 83, 'HAND BORING', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 83, 'Material Bantu Surveyor - Upah Kegiatan Surveyor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 84, 'Koordinasi Lapangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 84, 'Lain - Lain', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 84, 'Koordinasi Fee (Villages, Police Etc)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 84, 'Jamuan Konsultan & Meeting', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 84, 'Sosialisasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 84, 'Entertainment', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 84, 'Sumbangan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 85, 'Biaya Surity and bonds - Bank gaurantee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 85, 'Biaya Pra Proyek - Soilens', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 85, 'Biaya Pra Proyek - Konsultan Bita', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 85, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 85, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `costcodes`
--

INSERT INTO `costcodes` (`id`, `name`, `lv1`, `lv2`, `lv3`, `kode`, `description`, `uom`, `created_at`, `updated_at`) VALUES
(1, 'BAB 1', '1', '0', '0', '1.00.00', 'U M U M', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1.19', '1', '19', '1', '1.19.01', 'Pemeliharaan dan Perlindungan Lalu Lintas', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '1.20 (1)', '1', '20', '1', '1.20.01', 'Laboratorium', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '1.20 (2)', '1', '20', '2', '1.20.02', 'Mobilisasi ( yang tidak tercakup pada 1.20(1) )', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '1.26', '1', '26', '1', '1.26.01', 'Pekerjaan dan Penanganan Aliran Air yang Sudah Ada', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'BAB 2', '2', '0', '0', '2.00.00', 'PEMBERSIHAN TEMPAT KERJA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2.01 (1)', '2', '1', '1', '2.01.01', 'Pembersihan Tempat Kerja', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2.02 (1)', '2', '2', '1', '2.02.01', 'Penebangan Pohon dia 20 cm sampai 40 cm', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2.02 (2)', '2', '2', '2', '2.02.02', 'Penebangan Pohon dia 40 cm sampai 60 cm', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2.02 (3)', '2', '2', '3', '2.02.03', 'Penebangan Pohon dia > 60 cm', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BAB 3', '3', '0', '0', '3.00.00', 'PEMBONGKARAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '3.01 (03)', '3', '1', '3', '3.01.03', 'Pembongkaran Lean Concrete untuk Jalur Fungsional Lebaran', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '3.01 (12)', '3', '1', '12', '3.01.12', 'Relokasi Pagar BRC', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '3.01 (13)', '3', '1', '13', '3.01.13', 'Pembongkaran Gorong-gorong', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '3.01 (14)', '3', '1', '14', '3.01.14', 'Relokasi Batas Wilayah', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '3.01 (15)', '3', '1', '15', '3.01.15', 'Relokasi Pintu Air', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '3.01 (16)', '3', '1', '16', '3.01.16', 'Pembongkaran Marka Jalan', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BAB 4', '4', '0', '0', '4.00.00', 'PEKERJAAN TANAH', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '4.03 (2)', '4', '3', '2', '4.03.02', 'Galian Biasa untuk Dibuang', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '4.03 (3)', '4', '3', '3', '4.03.03', 'Galian kembali untuk Oprit Fungsional', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '4.03 (4)', '4', '3', '4', '4.03.04', 'Galian Fungsional di Daerah Vakum', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '4.03 (2)', '4', '3', '2', '4.03.02', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '4.03 (5)', '4', '3', '5', '4.03.05', 'Galian Preloading', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '4.05 (1)', '4', '5', '1', '4.05.01', 'Borrow Material', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '4.08 (2)', '4', '8', '2', '4.08.02', 'Urugan Material Berbutir (Granular Backfill)', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'SK 7.02', '4', '60', '1', '4.60.01', 'Vertikal Drain', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'SK 7.02', '4', '60', '2', '4.60.02', 'PHD', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'SK 7.02', '4', '60', '3', '4.60.03', 'Geotektile Non Woven 250 g', 'm', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'SK 7.02', '4', '60', '4', '4.60.04', 'Geotextile Woven Strength 50kN/m2', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'SK 7.02', '4', '60', '5', '4.60.05', 'Geotextile Woven Streng 100 KN/m2', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '', '4', '0', '0', '4.00.00', 'PVD Vakum', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '', '4', '0', '0', '4.00.00', 'Instrumen Geoteknik', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'SK 7.02', '4', '61', '1', '4.61.01', 'Settlement Plate', 'unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'SK 7.02', '4', '61', '2', '4.61.02', 'Inclinometer', 'unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'SK 7.02', '4', '61', '3', '4.61.03', 'Piezometer', 'unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'SK 7.02', '4', '61', '4', '4.61.04', 'Extensometer', 'unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'SK 7.02', '4', '61', '5', '4.61.05', 'Monitoring Instrumen', 'Ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'BAB 5', '5', '0', '0', '5.00.00', 'GALIAN STRUKTUR', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'BAB 6', '6', '0', '0', '6.00.00', 'DRAINASE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '6.05 (7)', '6', '5', '7', '6.05.07', 'Pipa Gorong-gorong Beton Bertulang, dia. 60 cm, Tipe B', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '6.05 (10)', '6', '5', '10', '6.05.10', 'Pipa Gorong-gorong Beton Bertulang, dia. 100 cm, Tipe A', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '6.05 (16)', '6', '5', '16', '6.05.16', 'Pipa Gorong-gorong Beton Bertulang, 2 dia. 60 cm, Tipe C', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, '6.05 (17)', '6', '5', '17', '6.05.17', 'Pipa Gorong-gorong Beton Bertulang, 2 dia. 60 cm, Tipe D', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, '6.05 (20)', '6', '5', '20', '6.05.20', 'Pipa Gorong-gorong Beton Bertulang, 2 dia. 100 cm, Tipe C', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '6.05 (21)', '6', '5', '21', '6.05.21', 'Pipa Gorong-gorong Beton Bertulang, 2 dia. 100 cm, Tipe D', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, '6.06 (1)', '6', '6', '1', '6.06.01', 'Saluran, Tipe DS - 1', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '6.06 (4)', '6', '6', '4', '6.06.04', 'Saluran, Tipe DS - 3', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, '6.06 (6)', '6', '6', '6', '6.06.06', 'Saluran, Tipe DS - 4', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '6.06 (8)', '6', '6', '8', '6.06.08', 'Saluran, Tipe DS - 5', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, '6.06 (13)', '6', '6', '13', '6.06.13', 'Inlet Drain, Tipe DI-1', 'bh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, '6.06 (15)', '6', '6', '15', '6.06.15', 'Inlet Drain, Tipe DI-3 (MH-1)', 'bh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, '6.06 (16)', '6', '6', '16', '6.06.16', 'Outlet Drain, Tipe DO-1', 'bh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, '6.07 (8)', '6', '7', '8', '6.07.08', 'Pasangan Batu Kali, Headwall Inlet & Outlet', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, '6.07 (9)', '6', '8', '9', '6.08.09', 'Pasangan Batu Kosong (Grouted Rip Rap)', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, '6.08 (1)', '6', '8', '1', '6.08.01', 'Pipa Drainase ø 15 cm dengan perlengkapan sambungan dan penyangga', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, '6.08 (2)', '6', '8', '2', '6.08.02', 'Pipa Drainase ø 20 cm dengan perlengkapan sambungan dan penyangga', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, '6.08 (3)', '6', '8', '3', '6.08.03', 'Deck drain beserta asessorisnya, tipe 1', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, '6.50(1)', '6', '50', '1', '6.50.01', 'Relokasi Saluran', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'BAB 7', '7', '0', '0', '7.00.00', 'SUBGRADE', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, '7.01', '7', '1', '1', '7.01.01', 'Persiapan Tanah Dasar', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'BAB 8', '8', '0', '0', '8.00.00', 'LAPIS PONDASI AGREGAT (SUBBASE)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, '8.01 (1)', '8', '1', '1', '8.01.01', 'Lapis Pondasi Agregat Kelas A', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, '8.01 (2)', '8', '1', '2', '8.01.02', 'Lapis Pondasi Agregat Kelas B', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'BAB 9', '9', '0', '0', '9.00.00', 'PERKERASAN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, '9.04', '9', '4', '1', '9.04.01', 'Bitumen Lapis Resap Pengikat ( Prime Coat )', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, '9.05', '9', '5', '1', '9.05.01', 'Bitumen Lapis Pengikat (Tack Coat )', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, '9.07 (1)', '9', '7', '1', '9.07.01', 'Asphalt Treated Base Course', 'ton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, '9.07 (3)', '9', '7', '3', '9.07.03', 'Asphalt Concrete Wearing Course', 'ton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, '9.07 (4)', '9', '7', '4', '9.07.04', 'Semen Aspal', 'ton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, '9.08 (1)', '9', '8', '1', '9.08.01', 'Perkerasan Beton', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, '9.08 (2)', '9', '8', '2', '9.08.02', 'Perkerasan Beton , Double Wire Mesh', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, '9.08 (3)', '9', '8', '3', '9.08.03', 'Perkerasan Beton , Single Wire Mesh', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, '9.09 (1)', '9', '9', '1', '9.09.01', 'Lean Concrete ( t = 10 cm )', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'BAB 10', '10', '0', '0', '10.00.00', 'STRUKTUR BETON', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, '10.01 (4)', '10', '1', '4', '10.01.04', 'Beton Kelas B 1-1 Deck Slab', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, '10.01 (5)', '10', '1', '5', '10.01.05', 'Beton Kelas B 1-2 Pier Head', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, '10.01 (6)', '10', '1', '6', '10.01.06', 'Beton Kelas B 1-2 Kolom', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, '10.01 (10)', '10', '1', '10', '10.01.10', 'Beton Kelas C - 1 Abutment', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, '10.01 (11)', '10', '1', '11', '10.01.11', 'Beton Kelas C - 1-2', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, '10.01 (12)', '10', '1', '12', '10.01.12', 'Beton Kelas C - 2 Approach Slab', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, '10.01 (13)', '10', '1', '13', '10.01.13', 'Beton Kelas C - 2 Tangga', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, '10.01 (16)', '10', '1', '16', '10.01.16', 'Beton Kelas D', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, '10.01 (17)', '10', '1', '17', '10.01.17', 'Beton Kelas E', 'm3', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, '10.01 (18)', '10', '1', '18', '10.01.18', 'Cut Off Plate untuk water stop', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, '10.01 (19)', '10', '1', '19', '10.01.19', 'Asphaltic Joint Filler, tebal 20 mm', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, '10.02 (1)', '10', '2', '1', '10.02.01', 'Batang Baja Tulangan Polos', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, '10.02 (2)', '10', '2', '2', '10.02.02', 'Batang Baja Tulangan Ulir', 'kg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, '10.02 (3)', '10', '2', '3', '10.02.03', 'P.C.I Girder, Span L = 15 m, depth 0.9 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, '10.03 (1)', '10', '3', '1', '10.03.01', 'P.C.I Girder, Span L = 16 m, depth 0.9 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, '10.03 (2)', '10', '3', '2', '10.03.02', 'P.C.I Girder, Span L = 20 m, depth 1.25 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, '10.03 (3)', '10', '3', '3', '10.03.03', 'P.C.I Girder, Span L = 25 m, depth 1.6 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, '10.03 (4)', '10', '3', '4', '10.03.04', 'P.C.I Girder, Span L = 30 m, depth 1.7 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, '10.03 (5)', '10', '3', '5', '10.03.05', 'P.C.I Girder, Span L = 40 m, depth 2.1 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, '10.03 (6)', '10', '3', '6', '10.03.06', 'P.C.I Girder, Span L = 50 m, depth 2.1 m', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, '10.03 (8)', '10', '3', '8', '10.03.08', 'Plat Precetak ( Concrete Plate )', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, '10.05 (1)', '10', '5', '1', '10.05.01', 'Penyediaan Tiang Pancang Beton bertulang prcast, 45 x 45 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, '10.05 (2)', '10', '5', '2', '10.05.02', 'Pemancangan Tiang Pancang Beton bertulang prcast, 45 x 45 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, '10.05 (3)', '10', '5', '3', '10.05.03', 'Penyediaan dan Pemancangan Tiang Pancang Beton bertulang prcast test 45 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, '10.05 (4)', '10', '5', '4', '10.05.04', 'Penyediaan Tiang Pancang Beton bulat pretensioned, dia. 60 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, '10.05 (5)', '10', '5', '5', '10.05.05', 'Pemancangan Tiang Pancang Beton bulat pretensioned, dia. 60 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, '10.05 (6)', '10', '5', '6', '10.05.06', 'Penyediaan dan Pemancangan Tiang Pancang Beton Bulat Pretensioned', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, '10.07 (1)', '10', '7', '1', '10.07.01', 'Tiang bor beton cast-in-place, dia. 50 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, '10.07 (2)', '10', '7', '2', '10.07.02', 'Tiang bor beton cast-in-place, dia. 60 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, '10.07 (3)', '10', '7', '3', '10.07.03', 'Tiang bor beton cast-in-place, dia. 80 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, '10.07 (4)', '10', '7', '4', '10.07.04', 'Tiang bor beton cast-in-place, dia. 100 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, '10.07 (5)', '10', '7', '5', '10.07.05', 'Tiang bor beton cast-in-place, dia. 120 cm', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, '10.09 (1)', '10', '9', '1', '10.09.01', 'Sambungan Ekspansi (Expansion Joint), tipe A', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, '10.09 (2)', '10', '9', '2', '10.09.02', 'Sambungan Ekspansi (Expansion Joint), tipe B', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, '10.09 (3)a', '10', '9', '3', '10.09.03', 'Sambungan Ekspansi (Expansion Joint), tipe C', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, '10.10 (2)', '10', '10', '2', '10.10.02', 'Bearing Pad dengan asesori ukuran (300 x 350 x 36 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, '10.10 (3)', '10', '10', '3', '10.10.03', 'Bearing Pad dengan asesori ukuran (350 x 300 x 31 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, '10.10 (4)', '10', '10', '4', '10.10.04', 'Bearing Pad dengan asesori ukuran (350 x 300 x 35 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, '10.10 (4)a', '10', '10', '5', '10.10.05', 'Bearing Pad dengan asesori ukuran (350 x 400 x 40 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, '10.10 (6)', '10', '10', '6', '10.10.06', 'Bearing Pad dengan asesori ukuran (450 x 400 x 35 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, '10.10 (7)', '10', '10', '7', '10.10.07', 'Bearing Pad dengan asesori ukuran (200 x 200 x 20 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, '10.10 (8)', '10', '10', '8', '10.10.08', 'Bearing Pad dengan asesori ukuran (400 x 400 x 39 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, '10.10 (9)', '10', '10', '9', '10.10.09', 'Bearing Pad dengan asesori ukuran (400 x 400 x 40 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, '10.10 (9)a', '10', '10', '10', '10.10.10', 'Bearing Pad dengan asesori ukuran (450 x 500 x 60 mm)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, '10.10 (12)', '10', '10', '12', '10.10.12', 'Rubber Sheet', 'm2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, '10.11(1)', '10', '11', '1', '10.11.01', 'Sheet Pile / Turap Beton (6 m, Lengkap sampai Pemancangan)', 'm1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, '10,12(1)', '10', '12', '1', '10.12.01', 'Test Pembebanan', 'bh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'BAB 11', '11', '1', '1', '11.01.01', 'PEKERJAAN BAJA STRUKTURAL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'BAB 12', '12', '0', '0', '12.00.00', 'PEKERJAAN LAIN-LAIN', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, '12.01', '12', '1', '1', '12.01.01', 'Pohon', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, '12.01 (20)', '12', '1', '20', '12.01.20', 'Solid Sodding', 'm²', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, '12.05 (01)', '12', '5', '1', '12.05.01', 'Guardrail tipe A', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, '12.05 (02)', '12', '5', '2', '12.05.02', 'End Section Guardrail', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, '12.05 (06)', '12', '5', '6', '12.05.06', 'Chainlink Fence', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, '12.06 (1)', '12', '6', '1', '12.06.01', 'Rambu Pengaturan dan Peringatan, Tipe A-1', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, '12.06 (2)', '12', '6', '2', '12.06.02', 'Rambu Pengaturan dan Peringatan, Tipe A-2', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, '12.06 (5)', '12', '6', '5', '12.06.05', 'Rambu Pengaturan dan Peringatan, Tipe C', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, '12.07 (2)', '12', '7', '2', '12.07.02', 'Rambu Petunjuk, Peringatan dan Larangan Tipe A - 2', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, '12.07 (3)', '12', '7', '3', '12.07.03', 'Rambu Petunjuk, Peringatan dan Larangan Tipe A - 3', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, '12.07 (4)a', '12', '7', '4', '12.07.04', 'Rambu Petunjuk, Peringatan dan Larangan Tipe A - 4', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, '12.07 (5)', '12', '7', '5', '12.07.05', 'Rambu Petunjuk, Peringatan dan Larangan Tipe B - 1', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, '12.07 (6)', '12', '7', '6', '12.07.06', 'Rambu Petunjuk, Peringatan dan Larangan Tipe B - 2', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, '12.07 (7)', '12', '7', '7', '12.07.07', 'Rambu Petunjuk, Peringatan dan Larangan Tipe C2', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, '12.08 (1)', '12', '8', '1', '12.08.01', 'Marka jalan, Tipe-A', 'm²', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, '12.08 (2)', '12', '8', '2', '12.08.02', 'Marka Jalan, Tipe-B', 'm²', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, '12.09 (1)', '12', '9', '1', '12.09.01', 'Guide Post, Tipe A', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, '12.09 (2)', '12', '9', '2', '12.09.02', 'Guide Post, Tipe B', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, '12.09 (3)', '12', '9', '3', '12.09.03', 'Guide Post, Tipe C', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, '12.09 (5)', '12', '9', '5', '12.09.05', 'Kilometer Post', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, '12.10 (1)', '12', '10', '1', '12.10.01', 'Concrete Barrier, tipe – A', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, '12.10 (2)', '12', '10', '2', '12.10.02', 'Concrete Barrier, tipe – B', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, '12.11 (1)', '12', '11', '1', '12.11.01', 'Kerb Beton, Tipe-A', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, '12.12 (1)', '12', '12', '1', '12.12.01', 'Pagar ROW, Tipe 1 (Panel Beton)', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, '12.12 (2)', '12', '12', '2', '12.12.02', 'Pagar ROW, Tipe 2 (Kawat Berduri)', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, '12.12 (3)', '12', '12', '3', '12.12.03', 'Pagar ROW, Tipe 3 (BRC, FS 3)', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, '12.13 (1)', '12', '13', '1', '12.13.01', 'Blok Beton Perlindungan lereng/talud', 'm²', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, '12.14', '12', '14', '1', '12.14.01', 'Hand railing', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'BAB 13', '13', '0', '0', '13.00.00', 'PENCAHAYAAN LAMPU LALU LINTAS DAN PEKERJAAN LISTRIK', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, '13.01.(1)', '13', '1', '1', '13.01.01', 'Lampu Penerangan Jalan, Tinggi 13 m (1 x HPS 250 watt)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, '13.01.(3)', '13', '1', '2', '13.01.02', 'Lampu Penerangan Jalan, Tinggi 13 m (2 x HPS 250 watt)', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, '13.01.(14)', '13', '1', '14', '13.01.14', 'Kabel NYFGBY 4C - 16 mm2', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, '13.01.(15)', '13', '1', '15', '13.01.15', 'Kabel NYFGBY 4C - 25 mm2', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, '13.01.(16)', '13', '1', '16', '13.01.16', 'Kabel NYFGBY 4C - 50 mm2', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, '13.01.(17)a', '13', '1', '17', '13.01.17', 'Kabel NYY/NYM 3x4 mm2', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, '13.01.(21)', '13', '1', '21', '13.01.21', 'Panel PJU I', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, '13.01.(23)', '13', '1', '23', '13.01.23', 'Grounding Panel PJU', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, '13.01.(30)', '13', '1', '30', '13.01.30', 'MCB 6A.IP', 'buah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, '13.01.(36)', '13', '1', '36', '13.01.36', 'Pipa PVC ø 2"', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, '13.01.(37)', '13', '1', '37', '13.01.37', 'Pipa PVC ø 3"', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, '13.02.(1)', '13', '2', '1', '13.02.01', 'Pelindung Kabel', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, '13.02.(3)', '13', '2', '3', '13.02.03', 'Galian Kabel', 'm''', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, '13.03.(1)', '13', '3', '1', '13.03.01', 'Pondasi Beton', 'bh', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, '13.04.(1)', '13', '4', '1', '13.04.01', 'Penyambungan Daya', 'Ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'BAB 14', '14', '0', '0', '14.00.00', 'PLAZA TOL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'BAB 15', '15', '0', '0', '15.00.00', 'PENGALIHAN DAN PERLINDUNGAN UTILITAS YANG ADA', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, '15.1', '15', '1', '1', '15.01.01', 'Provisional Sum untuk Pengalihan dan Perlindungan Utilitas Yang Ada', 'ls', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'BAB 16', '16', '0', '0', '16.00.00', 'PEKERJAAN FASILITAS TOL DAN KANTOR GERBANG TOL', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `costcodes_lv4`
--

CREATE TABLE IF NOT EXISTS `costcodes_lv4` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `costcodes_lv4`
--

INSERT INTO `costcodes_lv4` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Labor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Material', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Equipment', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Fuel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Operator wages', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Others', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `costs`
--

CREATE TABLE IF NOT EXISTS `costs` (
`id` int(10) unsigned NOT NULL,
  `transaksi_id` int(10) unsigned NOT NULL,
  `costcode_id` int(10) unsigned NOT NULL,
  `costcode_lv4_id` int(10) unsigned NOT NULL,
  `construction_description_id` int(10) unsigned NOT NULL,
  `type` enum('debet','credit') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'debet',
  `cost_type` enum('MT','LB','EQ','SC','OH') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MT',
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
('2017_06_22_035015_create_attachments_table', 1),
('2017_07_27_050642_create_accounting_category_table', 1),
('2017_08_01_074740_create_construction_category_table', 1),
('2017_08_01_074829_create_construction_description_table', 1),
('2017_08_01_074903_create_costcodes_table', 1),
('2017_08_01_075006_create_costcodes_lv4_table', 1);

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
  `accounting_id` int(10) unsigned NOT NULL,
  `construction_id` int(10) unsigned NOT NULL,
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
(1, 'admin 1', 'admin1@admin.com', '$2y$10$2LjhbIYOJStsI9BW9KT/zOz5YqP7nlj4EkMOga52C4voI4.JPbCA.', 'admin', NULL, '2017-08-01 01:45:52', '2017-08-01 01:45:52'),
(2, 'checker 1', 'checker1@admin.com', '$2y$10$qU24U8Pth61BPJTL.7HRceDrrTGzwNFb1Oaqm5/S0oDn0DC3RWLAW', 'checker', NULL, '2017-08-01 01:45:52', '2017-08-01 01:45:52'),
(3, 'operator 1', 'operator1@admin.com', '$2y$10$nxtB97j1LUlGAy3N9MV3xugXNTG05dXyVTkcTjvbGwYNEvv5v/xnq', 'operator', NULL, '2017-08-01 01:45:52', '2017-08-01 01:45:52');

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `construction_description`
--
ALTER TABLE `construction_description`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=438;
--
-- AUTO_INCREMENT for table `costcodes`
--
ALTER TABLE `costcodes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `costcodes_lv4`
--
ALTER TABLE `costcodes_lv4`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
-- Constraints for table `requests`
--
ALTER TABLE `requests`
ADD CONSTRAINT `requests_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `requests_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
