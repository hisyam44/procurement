-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2017 at 06:22 
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(153, '(Pengeluaran Lagsng Konstruksi)', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Penarikan Tunai', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE IF NOT EXISTS `issues` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `hod_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diketahui` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diterima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diserahkan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `unit_id`, `operator_id`, `hod_id`, `admin_id`, `no`, `lokasi`, `sn`, `hm`, `diketahui`, `diterima`, `diserahkan`, `created_at`, `updated_at`) VALUES
(1, 94, 3, 0, 0, '20170001', 'Wangandowo', '12', '21', 'Sumardi', 'Mawardi', 'Slamet', '2017-10-01 17:00:00', '2017-10-02 06:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `issue_item`
--

CREATE TABLE IF NOT EXISTS `issue_item` (
`id` int(10) unsigned NOT NULL,
  `issue_id` int(10) unsigned NOT NULL,
  `part_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `issue_item`
--

INSERT INTO `issue_item` (`id`, `issue_id`, `part_id`, `name`, `qty`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Part Item', '3', 'Lorem Ipsum', '2017-10-02 06:10:05', '2017-10-02 06:10:05'),
(2, 1, 2, 'Part', '4', 'Lorem Ispum', '2017-10-02 06:10:05', '2017-10-02 06:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `itemcode2`
--

CREATE TABLE IF NOT EXISTS `itemcode2` (
`id` int(10) unsigned NOT NULL,
  `itemcode_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `itemcode2`
--

INSERT INTO `itemcode2` (`id`, `itemcode_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'HE (Heavy Equipment)', '2017-11-01 22:02:18', '2017-11-01 22:02:18'),
(2, 1, 'TK (Trucks)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(3, 1, 'PT (Plants)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(4, 1, 'CM (Construction Material)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(5, 2, 'HE (Heavy Equipment)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(6, 2, 'TK (Trucks)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(7, 2, 'PT (Plants)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(8, 3, 'FL (Fuel)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(9, 3, 'LU (Lubes)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(10, 3, 'CH (Chemical)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(11, 3, 'CL (Cleaning Material)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(12, 4, 'FR (Furniture)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(13, 4, 'MI (Mechanical Installation)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(14, 4, 'EI (Electrical Installation)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(15, 4, 'ST (Stationary)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(16, 5, 'HT (Hand Tools)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(17, 5, 'PT (Power Tools)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(18, 5, 'ST (Special Tools)', '2017-11-01 22:02:19', '2017-11-01 22:02:19'),
(19, 5, 'LT (Lifting Tools)', '2017-11-01 22:02:20', '2017-11-01 22:02:20'),
(20, 5, 'PG (Personal Gadget)', '2017-11-01 22:02:20', '2017-11-01 22:02:20'),
(21, 6, 'AG (Aggregate)', '2017-11-01 22:02:20', '2017-11-01 22:02:20'),
(22, 6, 'BT (Bitumen)', '2017-11-01 22:02:20', '2017-11-01 22:02:20'),
(23, 6, 'ST (Steel)', '2017-11-01 22:02:20', '2017-11-01 22:02:20'),
(24, 6, 'CT (Cement)', '2017-11-01 22:02:20', '2017-11-01 22:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `itemcode3`
--

CREATE TABLE IF NOT EXISTS `itemcode3` (
`id` int(10) unsigned NOT NULL,
  `itemcode2_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `itemcode3`
--

INSERT INTO `itemcode3` (`id`, `itemcode2_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'EX (Excavator)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(2, 1, 'DZ (Bulldozer)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(3, 1, 'GD (Motor Grader)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(4, 1, 'CM (Compactor/Vibro)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(5, 1, 'PV (Paver)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(6, 2, 'DT (Dump Truck)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(7, 2, 'FT (Fuel Truck)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(8, 2, 'LT (Lube Truck)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(9, 2, 'WT (Water Truck)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(10, 2, 'TT (Trailer)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(11, 2, 'AT (Articulated Truck)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(12, 3, 'SC (Stone Crusher)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(13, 3, 'AM (Alphalt Mixing Plant)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(14, 3, 'BP (Concrete Batching Plant)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(15, 4, 'AG (Aggregates)', '2017-11-01 22:09:26', '2017-11-01 22:09:26'),
(16, 4, 'GT (Geotextile)', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(17, 4, 'FN (Fencing Material)', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(18, 4, 'LT (Lighting Equipment)', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(19, 4, 'DR (Drainage Material)', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(20, 4, 'CP (Chemical & Paints)', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(21, 4, 'BR (Barriers', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(22, 5, 'Ground Engaging Tools', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(23, 5, 'Engine ', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(24, 5, 'Work Equipment', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(25, 5, 'Undercarriage', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(26, 5, 'Electrical', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(27, 5, 'Hydraulic System', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(28, 5, 'Power Train', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(29, 5, 'Tires', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(30, 5, 'Transmission', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(31, 5, 'Differential', '2017-11-01 22:09:27', '2017-11-01 22:09:27'),
(32, 6, 'Engine ', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(33, 6, 'Tires', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(34, 6, 'Electrical', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(35, 6, 'Hydraulic System', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(36, 6, 'Transmission', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(37, 6, 'Differential', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(38, 6, 'Attachments', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(39, 6, 'Cabin', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(40, 6, 'Chassis', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(41, 7, 'Electrical ', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(42, 7, 'Conveyor System', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(43, 8, 'IH (Industrial HSD)', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(44, 8, 'LH (SPBU HSD)', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(45, 8, 'PR (Premium)', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(46, 10, 'CC (Cleaning Chemical)', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(47, 10, 'LC (Lab Chemical)', '2017-11-01 22:09:28', '2017-11-01 22:09:28'),
(48, 10, 'OT (Others)', '2017-11-01 22:09:28', '2017-11-01 22:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `itemcode4`
--

CREATE TABLE IF NOT EXISTS `itemcode4` (
`id` int(10) unsigned NOT NULL,
  `itemcode3_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `itemcodes`
--

CREATE TABLE IF NOT EXISTS `itemcodes` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `itemcodes`
--

INSERT INTO `itemcodes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CG (Capital Good)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(2, 'SP (Spares)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(3, 'CN (Consumable)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(4, 'OE (Office Equipment)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(5, 'TL (Tools & Tackles)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(6, 'CM (Construction Material)', '2017-11-01 21:47:08', '2017-11-01 21:47:08'),
(7, 'RP (Repairs)', '2017-11-01 21:47:08', '2017-11-01 21:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(10) unsigned NOT NULL,
  `code_id` int(10) unsigned NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `code_id`, `item_no`, `description`, `uom`, `weight`, `dimension`, `shelf_life`, `warranty`, `remark`, `component`, `created_at`, `updated_at`) VALUES
(1, 0, '155000001', 'asd', 'Packet', '1 Kg', '12 x 12 x 12 M', '12 Jam', '12 Tahun', 'L', 'PG (Personal Gadget)', '2017-09-11 03:39:25', '2017-09-11 03:39:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_part_no`
--

INSERT INTO `item_part_no` (`id`, `item_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'GH125415', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'HH123762', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_type` enum('galian','timbunan') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'galian',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mulai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akhir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DT26` int(11) NOT NULL DEFAULT '0',
  `DT71` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `code`, `location_type`, `name`, `mulai`, `akhir`, `DT26`, `DT71`, `created_at`, `updated_at`) VALUES
(1, '', 'timbunan', 'Akses Road quary', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', 'timbunan', 'Ambokembang', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', 'timbunan', 'Arrayan', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', 'timbunan', 'Bojong', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', 'timbunan', 'Bulak Pelem', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '', 'timbunan', 'Karangsari', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '', 'timbunan', 'Purwodadi', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '', 'timbunan', 'Sijeruk', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '', 'timbunan', 'Cibiyuk', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '', 'timbunan', 'Comal', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '', 'timbunan', 'Kajen', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '', 'timbunan', 'Bodeh', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '', 'timbunan', 'Kali Winong', '', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '', 'timbunan', 'Kelang Depok', '', '', 1, 1, '0000-00-00 00:00:00', '2017-05-31 19:46:55'),
(15, '', 'timbunan', 'Klunjukan', '', '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '', 'galian', 'Wangandowo', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '', 'galian', 'Sampih 1', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '', 'galian', 'Sampih 2', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '', 'timbunan', 'Babalan', '', '', 1, 1, '2017-06-01 20:09:31', '2017-06-01 20:09:31'),
(20, '', 'timbunan', 'Sitemu', '', '', 0, 1, '2017-05-30 03:16:32', '2017-05-30 03:16:32'),
(21, '', 'timbunan', 'Jarakah', '', '', 0, 1, '2017-05-30 03:16:55', '2017-05-30 03:16:55'),
(22, '', 'timbunan', 'Ampel Gading', '', '', 0, 1, '2017-05-30 22:15:12', '2017-05-30 22:15:12'),
(23, '', 'timbunan', 'Jajar Wayang', '', '', 0, 1, '2017-05-31 23:33:25', '2017-05-31 23:33:25'),
(24, '', 'timbunan', 'Rengas', '', '', 1, 0, '2017-06-05 00:57:51', '2017-06-05 00:57:51'),
(25, '', 'timbunan', 'Pendowo', '', '', 0, 1, '2017-07-02 20:23:06', '2017-07-02 20:23:06'),
(26, '', 'timbunan', 'Petanjungan', '', '', 1, 1, '2017-08-31 01:25:25', '2017-08-31 01:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE IF NOT EXISTS `materials` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `hod_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `deliveryman` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diketahui` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diterima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `unit_id`, `order_id`, `operator_id`, `hod_id`, `admin_id`, `deliveryman`, `lokasi`, `diketahui`, `diterima`, `created_at`, `updated_at`) VALUES
(1, 94, 1, 3, 0, 0, '0', 'Logistik', 'Sumardi', 'Mawardi', '2017-10-01 17:00:00', '2017-10-02 06:07:04'),
(2, 94, 1, 3, 0, 0, '0', 'Logistik', 'Sumardi', 'Mawardi', '2017-10-01 17:00:00', '2017-10-02 06:07:31');

-- --------------------------------------------------------

--
-- Table structure for table `material_item`
--

CREATE TABLE IF NOT EXISTS `material_item` (
`id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  `partno_id` int(10) unsigned NOT NULL,
  `part_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `net` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `material_item`
--

INSERT INTO `material_item` (`id`, `material_id`, `partno_id`, `part_name`, `qty`, `net`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PG (Personal Gadget)', '5', '21', 'Request this Part Item 10', '2017-10-02 06:07:04', '2017-10-02 06:07:04'),
(2, 1, 2, 'PG (Personal Gadget)', '8', '12', 'Request this Part Item  15', '2017-10-02 06:07:04', '2017-10-02 06:07:04'),
(3, 2, 1, 'PG (Personal Gadget)', '5', '43', 'Request this Part Item 10', '2017-10-02 06:07:31', '2017-10-02 06:07:31'),
(4, 2, 2, 'PG (Personal Gadget)', '7', '23', 'Request this Part Item  15', '2017-10-02 06:07:31', '2017-10-02 06:07:31');

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
('2017_08_15_060204_create_item_part_no', 1),
('2017_09_04_120838_create_orders_table', 1),
('2017_09_04_120923_create_suppliers_table', 1),
('2017_09_04_121018_create_order_item_table', 1),
('2017_09_12_172813_create_materials_table', 1),
('2017_09_13_123823_create_material_item_table', 1),
('2017_09_21_201600_create_issues_table', 1),
('2017_09_21_202042_create_issue_item_table', 1),
('2017_10_02_110351_create_returns_table', 1),
('2017_10_02_110520_create_return_item_table', 1),
('2017_10_28_015136_create_locations_table', 1),
('2017_10_29_232915_create_petties_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` int(10) unsigned NOT NULL,
  `supplier_id` int(10) unsigned NOT NULL,
  `purchase_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `hod_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `type` enum('ho','local') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ho',
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reference_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatch_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatch_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dispatch_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incoterms` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ship_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `sub_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diskon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `warranty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diketahui` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `supplier_id`, `purchase_id`, `operator_id`, `hod_id`, `admin_id`, `type`, `no`, `address`, `reference_no`, `dispatch_to`, `dispatch_address`, `dispatch_name`, `payment_term`, `incoterms`, `ship_by`, `delivery_date`, `sub_total`, `tax`, `diskon`, `total`, `warranty`, `author`, `diketahui`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 0, 0, 'ho', 'HO 1-001', '51, Jl Raya Pekajangan Kec Kedungwuni, Kab Pekalongan Jawa Tengah , 51173 logistic.pbtr@sumbermitrajaya.com', '00001', 'PT Sumber Mitra Jaya', 'Gudang Base Camp Jl Raya Bojong Kajen Wangandowo, Jawa Tengah 51156', 'Mawardi', 'Wangandowo', 'DDP', 'air', '2017-10-02', '295000', '29500', '0', '265500', ' 2 Years from date of install', 'Slamet', 'Sumardi', '2017-10-01 17:00:00', '2017-10-02 06:02:10');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE IF NOT EXISTS `order_item` (
`id` int(10) unsigned NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `order_id` int(10) unsigned NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unit_price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `item_id`, `order_id`, `qty`, `unit_price`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10', '10000', 'Request this Part Item 10', '2017-10-02 06:02:10', '2017-10-02 06:02:10'),
(2, 2, 1, '15', '13000', 'Request this Part Item  15', '2017-10-02 06:02:11', '2017-10-02 06:02:11');

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
-- Table structure for table `petties`
--

CREATE TABLE IF NOT EXISTS `petties` (
`id` int(10) unsigned NOT NULL,
  `t100rb` int(11) NOT NULL,
  `t50rb` int(11) NOT NULL,
  `t20rb` int(11) NOT NULL,
  `t10rb` int(11) NOT NULL,
  `t5rb` int(11) NOT NULL,
  `t2rb` int(11) NOT NULL,
  `t1rb` int(11) NOT NULL,
  `t500r` int(11) NOT NULL,
  `t200r` int(11) NOT NULL,
  `t100r` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `admin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approval_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `hod_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `purchases` (`id`, `unit_id`, `operator_id`, `hod_id`, `admin_id`, `no`, `type`, `department`, `mol`, `km_hm`, `warehouse_manager`, `maintenance_manager`, `project_manager`, `purpose`, `created_at`, `updated_at`) VALUES
(1, 94, 3, 0, 0, '00001', 'BD', 'Engineering', '12/10-2017', '21', 'Siti', 'Slamet', 'Veera', 'fix', '2017-10-01 17:00:00', '2017-10-02 06:00:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `purchase_id`, `part_no_id`, `component`, `description`, `qty`, `model`, `damage_description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PG (Personal Gadget)', 'asd', '10', '2017-10-02', 'Request this Part Item 10', '2017-10-02 06:00:55', '2017-10-02 06:00:55'),
(2, 1, 2, 'PG (Personal Gadget)', 'asd', '15', '2017-10-02', 'Request this Part Item  15', '2017-10-02 06:00:55', '2017-10-02 06:00:55');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE IF NOT EXISTS `returns` (
`id` int(10) unsigned NOT NULL,
  `unit_id` int(10) unsigned NOT NULL,
  `operator_id` int(10) unsigned NOT NULL,
  `hod_id` int(10) unsigned NOT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diketahui` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diterima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dikembalikan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `unit_id`, `operator_id`, `hod_id`, `admin_id`, `no`, `lokasi`, `sn`, `hm`, `diketahui`, `diterima`, `dikembalikan`, `created_at`, `updated_at`) VALUES
(1, 94, 3, 0, 0, '20170001', 'wangandowo', '12', '21', 'Sumardi', 'Mawardi', 'Slamet', '2017-10-01 17:00:00', '2017-10-02 06:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `return_item`
--

CREATE TABLE IF NOT EXISTS `return_item` (
`id` int(10) unsigned NOT NULL,
  `return_id` int(10) unsigned NOT NULL,
  `part_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `return_item`
--

INSERT INTO `return_item` (`id`, `return_id`, `part_id`, `name`, `qty`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Part', '2', 'Lorem Ipsum', '2017-10-02 06:12:56', '2017-10-02 06:12:56'),
(2, 1, 2, 'Part Item', '2', 'Lorem Ipsum', '2017-10-02 06:12:56', '2017-10-02 06:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
`id` int(10) unsigned NOT NULL,
  `no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `no`, `type`, `name`, `address`, `phone`, `attn`, `email`, `contact`, `description`, `created_at`, `updated_at`) VALUES
(1, '2016 - 0001', 'Perseroan Komanditer(CV)', 'Megakom', 'Jl Manggis No 45\nSampangan, Pekalongan Timur\nKota Pekalongan, Jawa Tengah 51126', '62 285 421864', 'Danny Tanuwinata', 'admin1@admin.com', '62 285 421864', 'Sampangan, Pekalongan Timur', NULL, '2017-10-02 05:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`id` int(10) unsigned NOT NULL,
  `no_voucher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accounting_id` int(10) unsigned NOT NULL,
  `type` enum('cash','bank','iou','ious') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cash',
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receiver_rekening` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bank_details` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount_total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `date_commissioning` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `smu_km` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gps` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `make` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `no_registration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stnk_ex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kir_ex` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serial_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `engine_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `power_rating` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `operation_weight` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `code`, `date_commissioning`, `smu_km`, `gps`, `type`, `make`, `model`, `no_registration`, `stnk_ex`, `kir_ex`, `serial_no`, `engine_no`, `power_rating`, `capacity`, `operation_weight`, `yom`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'EX2101', '09/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC210B', '-', '-', '-', 'VCEC210BE000084344', '11771764', '167 HP', '0.95 m3', '21655 kg', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'EX2102', '09/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC210B', '-', '-', '-', 'VCEC210BE000084345', '11771768', '167 HP', '0.95 m3', '21655 kg', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'EX2103', '09/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC210B', '-', '-', '-', 'VCEC210BE000084346', '11768899', '167 HP', '0.95 m3', '21655 kg', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'EX2104', '09/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC210B', '-', '-', '-', 'VCEC210BE000084347', '11768897', '167 HP', '0.95 m3', '21655 kg', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'EX2105', '09/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC210B', '-', '-', '-', 'VCEC210BE000084348', '11746861', '167 HP', '0.95 m3', '21655 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'EX3301', '12/06/16', '', 'Yes', 'Excavator', 'Volvo', 'EC330B', '-', '-', '-', 'VCEC330BH00015311', '672403', '328 HP', '2.29 m3', '34600 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'EX3302', '01/08/17', '5.1', 'Yes', 'Excavator', 'Caterpilar', 'EC330D2L', '-', '-', '-', 'SZK10075', '', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'EX3303', '01/08/17', '5.8', 'Yes', 'Excavator', 'Caterpilar', 'EC330D2L', '-', '-', '-', 'SZK10076', '', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'EX2001', '03/13/17', '', 'No', 'Excavator', 'Komatsu', 'PC200-8MO', '-', '-', '-', 'J60535', '26650142', '', '0.97 m3', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'EX2002', '03/13/17', '', 'No', 'Excavator', 'Komatsu', 'PC200-8MO', '-', '-', '-', 'J60536', '26650150', '', '0.97 m3', '', '2016', 'DIKIRIM KE MEDAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'EX2003', '04/21/17', '18.7', 'No', 'Excavator', 'Komatsu', 'PC200-8MO', '', '', '', 'C18037', '', '', '', '', '2016', 'DIKIRIM KE MEDAN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'CM1101', '09/08/16', '', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110BAOC552115', '11903397', '134 HP', '2.13 m', '11932 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'CM1102', '09/08/16', '', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110BAOC552116', '11903398', '134 HP', '2.13 m', '11932 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'CM1103', '09/25/16', '', 'Yes', 'Compactor', 'Volvo', 'SD110P', '-', '-', '-', 'VCES110V00550589', '11471971', '134 HP', '2.13 m', '11932 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'CM1104', '10/24/16', '20.2', 'Yes', 'Compactor', 'Volvo', 'SD110P', '-', '-', '-', 'VCES110V00550511', '', '134 HP', '2.13 m', '11932 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'CM1105', '01/12/17', '4.8', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110BJ0C552175', '11942865', '134 HP', '2.13 m', '11.212 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'CM1106', '01/13/17', '5.5', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110BC0C552176', '11950236', '134 HP', '2.13 m', '11.212 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'CM1107', '01/13/17', '3.5', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110B110BV0C552177', '11950235', '134 HP', '2.13 m', '11.212 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'CM1108', '01/13/17', '3.8', 'Yes', 'Compactor', 'Volvo', 'SD110B', '-', '-', '-', 'VCES110BA0C552178', '11942866', '134 HP', '2.13 m', '11.212 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'CM2101', '01/04/17', '', 'No', 'Compactor', 'Bomag', 'BW212-2DL', '-', '-', '-', '101400280391', '', '', '', '10.22 kg', '1994', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'DZ6501', '09/07/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D65P-12/S1', '-', '-', '-', '65925', '', '190 HP', '3.69 m3', '20185 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'DZ6502', '09/21/16', '4', 'Yes', 'Bulldozer', 'Komatsu', 'D65P-12/S1', '-', '-', '-', '65926', '116721', '190 HP', '3.69 m3', '20185 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'DZ6503', '09/07/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D65E-12/S1', '-', '-', '-', '67656', '', '180 HP', '3.89 m3', '19125 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'DZ6504', '09/07/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D65E-12/S1', '-', '-', '-', '67657', '115471', '180 HP', '3.89 m3', '19125 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'DZ6505', '03/30/17', '', 'No', 'Bulldozer', 'Komatsu', 'D65E-12/S1', '-', '-', '-', '67671', '', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'DZ8501', '01/20/17', '', 'No', 'Bulldozer', 'Komatsu', 'D85 ESS -2', '-', '-', '-', 'J 10669', '1003227', '200 HP', '4.4 m3', '20670 kg', '1997', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'DZ8502', '12/18/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D85 ESS -2', '-', '-', '-', 'J 10794', '1003581', '200 HP', '4.4 m3', '20670 kg', '1998', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'DZ8503', '12/18/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D85 ESS -2', '-', '-', '-', 'J 10916', '1003769', '200 HP', '4.4 m3', '20670 kg', '1998', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'DZ8504', '10/08/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D85 ESS -2', '-', '-', '-', 'J 11143', '1004385', '200 HP', '4.4 m3', '20670 kg', '1998', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'DZ 8505', '10/08/16', '', 'Yes', 'Bulldozer', 'Komatsu', 'D85 ESS -2', '-', '-', '-', 'J11264', '86417', '200 HP', '4.4 m3', '20670 kg', '1998', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'GD5101', '09/08/16', '', 'Yes', 'Motor Grader', 'Komatsu', 'GD511A-1/S1', '-', '-', '-', 'J 20950', '173257', '135 HP', '3710 mm', '10800 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'GD5102', '09/08/16', '', 'Yes', 'Motor Grader', 'Komatsu', 'GD511A-1/S1', '-', '-', '-', 'J 20974', '173270', '135 HP', '3710 mm', '10800 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'DT2601', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9518SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE12062', 'J08EUFJ77226', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'DT2602', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9519SYV', '08/25/17', '09/25/17', 'MJEFM8JN1GJE12060', 'J08EUFJ77224', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'DT2603', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9520SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE12061', 'J08EUFJ77225', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'DT2604', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9521SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE12064', 'J08EUFJ77228', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'DT2605', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9522SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE012021', 'J08EUFJ77101', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'DT2606', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9523SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE012020', 'J08EUFJ77100', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'DT2607', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9524SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE012019', 'J08EUFJ77099', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'DT2608', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9525SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE012018', 'J08EUFJ77098', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'DT2609', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9526SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE12063', 'J08EUFJ77227', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'DT2610', '09/09/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9527SYV', '08/23/17', '09/25/17', 'MJEFM8JN1GJE012017', 'J08EUFJ77097', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'DT2611', '09/25/16', '12.2', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9544SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12037', 'J08EUFJ77165', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DT2612', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9549SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12059', 'J08EUFJ77223', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DT2613', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9550SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12022', 'J08EUFJ77102', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DT2614', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9552SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12027', 'J08EUFJ77137', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'DT2615', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9553SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12028', 'J08EUFJ77138', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'DT2616', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9554SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12026', 'J08EUFJ77136', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'DT2617', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9556SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12025', 'J08EUFJ77135', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'DT2618', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9557SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12024', 'J08EUFJ77134', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'DT2619', '09/22/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9558SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12023', 'J08EUFJ77133', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'DT2620', '09/25/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9559SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12039', 'J08EUFJ77167', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'DT2621', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9566SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12070', 'J08EUFJ77252', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'DT2622', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9567SYV', '-', '-', 'MJEFM8JN1GJE12078', 'J08EUFJ77278', '260 PS', '24 m3', '26000 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'DT2623', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9568SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12049', 'J08EUFJ77195', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'DT2624', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9569SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12050', 'J08EUFJ77196', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DT2625', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9570SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12052', 'J08EUFJ77198', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'DT2626', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9581SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12408', 'J08EUFJ78622', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'DT2627', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9582SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12409', 'J08EUFJ78623', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'DT2628', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9583SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12402', 'J08EUFJ78604', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'DT2629', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9584SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12400', 'J08EUFJ78602', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'DT2630', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9585SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12404', 'J08EUFJ78606', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'DT2631', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9586SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12401', 'J08EUFJ78603', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'DT2632', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9587SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12403', 'J08EUFJ78605', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'DT2633', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9588SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12405', 'J08EUFJ78607', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'DT2634', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9589SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12406', 'J08EUFJ78608', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'DT2635', '11/23/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9590SYV', '10/14/17', '09/25/17', 'MJEFM8JN1GJE12407', 'J08EUFJ78621', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'DT2636', '11/30/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9595SYV', '11/05/16', '09/25/17', 'MJEFM8JN1GJE12613', 'J08EUFJ79061', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'DT2637', '11/30/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9596SYV', '11/05/16', '09/25/17', 'MJEFM8JN1GJE12608', 'J08EUFJ79056', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'DT2638', '11/30/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9597SYV', '11/05/17', '09/25/17', 'MJEFM8JN1GJE12621', 'J08EUFJ79069', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'DT2639', '11/30/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9598SYV', '11/05/17', '09/25/17', 'MJEFM8JN1GJE12616', 'J08EUFJ79064', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'DT2640', '11/30/16', '', 'Yes', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B9599SYV', '-', '-', 'MJEFM8JN1GJE12618', 'J08EUFJ79066', '260 PS', '24 m3', '26000 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'DT2641', '01/22/17', '8890', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9545 SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12038', 'J08EUFJ77166', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'DT2642', '01/21/17', '9178', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9546 SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12048', 'J08EUFJ77194', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'DT2643', '01/19/17', '9246', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9547 SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12040', 'J08EUFJ77168', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'DT2644', '01/22/17', '9424', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9548 SYV', '09/01/17', '09/25/17', 'MJEFM8JN1GJE12047', 'J08EUFJ77193', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'DT2645', '01/22/17', '9310', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9551 SYV', '-', '-', 'MJEFM8JN1GJE12036', 'J08EUFJ77164', '260 PS', '24 m3', '26000 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'DT2646', '01/21/17', '7468', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9561 SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12077', 'J08EUFJ77277', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'DT2647', '01/20/17', '7230', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9562 SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12067', 'J08EUFJ77249', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'DT2648', '01/22/17', '7329', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9563 SYV', '09/27/17', '09/25/17', 'MJEFM8JN1GJE12051', 'J08EUFJ77197', '260 PS', '24 m3', '26000 kg', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'DT2649', '01/22/17', '7164', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9564 SYV', '-', '-', 'MJEFM8JN1GJE12069', 'J08EUFJ77251', '260 PS', '24 m3', '26000 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'DT2650', '01/13/17', '7468', 'No', 'Dump Truck', 'Hino', 'Ranger FM260 JD', 'B 9565 SYV', '-', '-', 'MJEFM8JN1GJE12068', 'J08EUFJ77250', '260 PS', '24 m3', '26000 kg', '2016', 'UNIT RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'DT7101', '03/04/17', '717', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9651 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078718', 'B078718', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'DT7102', '03/04/17', '728', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9617 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078739', 'B078739', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'DT7103', '03/04/17', '720', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9621 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078602', 'B078602', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'DT7104', '03/04/17', '684', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9643 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078661', 'B078661', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'DT7105', '03/04/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9640 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078594', 'B078594', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'DT7106', '03/04/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9658 SYV', '02/24/17', '09/01/17', 'MHCNMR71HHJ078595', 'B078595', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'DT7107', '03/05/17', '689', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9627 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078598', 'B078598', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'DT7108', '03/05/17', '4350', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9628 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078599', 'B078599', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'DT7109', '03/05/17', '688', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9662 SYV', '02/28/18', '09/01/17', 'MHCNMR71HHJ078600', 'B078600', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'DT7110', '03/05/17', '712', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9622 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078601', 'B078601', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'DT7111', '03/05/17', '74', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9624 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078603', 'B078603', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'DT7112', '03/05/17', '701', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9660 SYV', '02/28/18', '08/28/17', 'MHCNMR71HHJ078712', 'B078712', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'DT7113', '03/04/17', '708', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9620 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078713', 'B078713', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'DT7114', '03/05/17', '695', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9631 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078722', 'B078722', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'DT7115', '03/04/17', '714', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9630 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078723', 'B078723', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'DT7116', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9650 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078724', 'B078724', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'DT7117', '03/04/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9618 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078736', 'B078736', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'DT7118', '03/04/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9629 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078743', 'B078743', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'DT7119', '03/05/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9649 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078744', 'B078744', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'DT7120', '03/04/17', '700', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9654 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078752', 'B078752', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'DT7121', '03/04/17', '674', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9632 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078757', 'B078757', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'DT7122', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9623 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078758', 'B078758', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'DT7123', '03/04/17', '679', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9645 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078760', 'B078760', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'DT7124', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9633 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078762', 'B078762', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'DT7125', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9619 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078764', 'B078764', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'DT7126', '03/04/17', '673', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9641 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078774', 'B078774', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'DT7127', '03/05/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9639 SYV', '02/24/18', '08/28/17', 'MHCNMR71HHJ078777', 'B078777', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'DT7128', '03/04/17', '694', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9665 SYV', '02/28/18', '08/28/17', 'MHCNMR71HHJ078784', 'B078784', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'DT7129', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9659 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078785', 'B078785', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'DT7130', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9647 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078787', 'B078787', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'DT7131', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9656 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078790', 'B078790', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'DT7132', '03/05/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9626 SYV', '02/24/18', '09/01/17', 'MHCNMR71HHJ078792', 'B078792', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'DT7133', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9655 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078793', 'B078793', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'DT7134', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9648 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078794', 'B078794', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'DT7135', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9652 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078796', 'B078796', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'DT7136', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9636 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078798', 'B078798', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'DT7137', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9634 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078811', 'B078811', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'DT7138', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9653 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078819', 'B078819', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'DT7139', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9646 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078821', 'B078821', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'DT7140', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9663 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078822', 'B078822', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'DT7141', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9638 SYV', '02/24/18', '09/08/17', 'MHCNMR71HHJ078824', 'B078824', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'DT7142', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9667 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078827', 'B078827', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'DT7143', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9657 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078828', 'B078828', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'DT7144', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9625 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078830', 'B078830', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'DT7145', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9664 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078831', 'B078831', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'DT7146', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9642 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078832', 'B078832', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'DT7147', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9661 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078833', 'B078833', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'DT7148', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9637 SYV', '02/24/18', '09/09/17', 'MHCNMR71HHJ078834', 'B078834', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'DT7149', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9635 SYV', '02/24/18', '07/09/17', 'MHCNMR71HHJ078836', 'B078836', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'DT7150', '03/26/17', '', 'No', 'Dump Truck', 'Isuzu', 'NMR 71 HD 6.1', 'B 9644 SYV', '02/24/18', '09/07/17', 'MHCNMR71HHJ078856', 'B078856', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'WT1201', '10/20/16', '', 'Yes', 'Water Truck', 'Nissan', 'CWA 12', 'B 9168 EA', '10/12/17', '04/18/17', 'CWA12-01537', 'NE-6016404.TY', '', '12 KL', '', '2011', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'WT1202', '12/01/16', '', 'Yes', 'Water Truck', 'Nissan', 'CWA 12', 'BG 4147 DB', '05/18/17', '', 'CWA12-01304', 'NE-6012831.TY', '', '12 KL', '', '2011', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'WT1301', '04/09/17', '', 'No', 'Water Truck', 'Hino', 'Dutro 130 HD X Power', 'B 9848 SFU', '22 APRIL-17', '12 Des- 17', 'MJEC1JG43H5 150950', 'W04DTRR 42896', '', '8 KL', '', '2017', 'NEW STNK -', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'WT1302', '04/22/17', '', 'No', 'Water Truck', 'Hino', 'Dutro 130 HD X Power', 'B 9686 SYV', '', '', '', '', '', '8 KL', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'FT2601', '09/15/16', '', 'Yes', 'Fuel Truck', 'Hino', 'FG 235', 'B 9106 SFA', '06/10/17', '09/25/17', 'MJEFG8JKAEJG29723', 'J08EUHJ14359', '', '10 KL', '', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'FT1301', '05/11/17', '', 'No', 'Fuel Truck', 'Hino', 'DT130HD PS', 'B 9850 SFU', '', '', '152011', '43837', '', '5 KL', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'DT1201', '11/24/16', '', 'Yes', 'Dump Truck', 'Mitsubishi', 'PS 125', 'B 9524 BT', '02/23/18', '09/25/17', 'MHMFE74P5AK025660', '4D34TF18219', '125 PS', '8 m3', '8000 kg', '2010', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'TT5301', '12/09/16', '', 'Yes', 'Trailer Truck', 'Nissan', 'CWA 53 H', 'B 9368 E', '06/12/17', '07/19/17', 'CWA53H-02242', 'PE8-018377', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'LC01', '12/08/16', '', 'Yes', 'Lube Car', 'Mitsubishi', 'Triton SC HDX', 'G 1706 T', '12/19/17', '08/09/17', 'MMBENKL306H073206', '4DS6UAG9641', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'LV01', '09/09/16', '', 'Yes', 'Light Vehcile', 'Mitsubishi', 'Triton DC HDX All New', 'G 1935 WA', '10/07/17', '04/11/17', 'MMBJNKL30GH053517', '4D56UAF0239', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'LV02', '09/09/16', '', 'Yes', 'Light Vehcile', 'Mitsubishi', 'Triton DC HDX All New', 'G 1937 WA', '08/03/17', '04/12/17', 'MMBJNKL30GH053525', '4D56UAF0472', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'LV03', '09/09/16', '', 'Yes', 'Light Vehcile', 'Mitsubishi', 'Triton DC HDX All New', 'G 1936 WA', '10/07/17', '04/12/17', 'MMBJNKL30GH053561', '4D56UAF0497', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'LV04', '03/14/17', '', 'No', 'MICRO/MINIBUS', 'Toyota', 'New Avanza 1.3e G MT', 'B 2528 SOP', '03/04/18', '-', 'MHKM5EA3JHK049228', '1NRF229171', '', '', '', '2017', 'RETURN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'LV05', '01/02/17', '69070', 'No', 'MPNP/MINIBUS', 'Toyota', 'New Avanza 1.3e M/T', 'G 9335 MA', '08/03/17', '-', 'MHMK1BA2JFK066056', 'K3MG35750', '', '', '', '2015', 'RENTAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'LV06', '01/02/17', '174045', 'No', 'MPNP/MINIBUS', 'Toyota', 'New Avanza 1.3e M/T', 'G 8957 KA', '07/16/17', '-', 'MHMK1BA3JDJ024532', 'MB88904', '', '', '', '2013', 'RENTAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'LV07', '04/01/17', '', 'No', 'MINIBUS', 'Toyota', 'New Avanza 1.3e M/T', 'G 9143 JC', '', '-', 'MHKM1BA3JEK200635', 'MD63592', '', '', '', '2014', 'RENTAL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'LV08', '04/01/17', '', 'No', 'Mobil Barang', 'Isuzu', 'TBR 54 PU TURBO', 'G 9593 SAH', '03/10/18', '09/14/17', 'MHCTBR54FHK176251', 'E176251', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'MB1501', '06/26/16', '', 'Yes', 'Motorbike', 'Honda', 'GL15B1DF M/T', 'G 4209 KH', '07/18/17', '-', 'MK1KC5211GK299624', 'KC52E1297125', '', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'MB1502', '01/24/17', '', 'Yes', 'Motorbike', 'Kawasaki', 'KLX 150 G', 'G 4662 CB', '02/24/18', '-', 'MH4LX150GHJP39527', 'LX150CEW13584', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'MB1503', '01/24/17', '', 'Yes', 'Motorbike', 'Kawasaki', 'KLX 150 G', 'G 4668 CB', '02/24/18', '-', 'MH4LX150GHJP39528', 'LX150CEW13585', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'MB1504', '01/24/17', '', 'Yes', 'Motorbike', 'Kawasaki', 'KLX 150 G', 'G 4660 CB', '02/24/18', '-', 'MH4LX150GHJP40769', 'LX150CEW18514', '', '', '', '2017', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'TL01', '12/08/16', '0,1', 'Yes', 'Lighting Tower MKT', 'KUBOTA', 'Z482', '-', '-', '-', 'CC1779', '1G657-00000', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'TL02', '12/24/16', '0,1', 'Yes', 'Portable Lighting System', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'TL03', '12/24/16', '0,1', 'Yes', 'Portable Lighting System', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'TL09', '07/28/17', '', 'No', 'Portable Lighting System', 'Doosan Infraco Portable Power', '-', '-', '-', '-', '-', '-', '4 Kw', '', '', '2017', 'Engine Kubota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'TL10', '07/25/17', '', 'No', 'Portable Lighting System', 'Doosan Infraco Portable Power', '-', '-', '-', '-', '-', '-', '4 Kw', '', '', '2017', 'Engine Kubota', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'DG3401', '11/30/16', '', 'No', 'Generator', 'Himoinsa', 'Yanmar / Stamford', '-', '-', '-', 'X2CH03348', '4TNV98ZGGEH', '34 Kva', '', '', '2015', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'DG3402', '03/18/17', '', 'No', 'Generator', 'Honda Oshima', 'GX160 3MZ1T160', '-', '-', '-', '', '', '2000 Watts', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'CP', '11/30/17', '', 'No', 'Air compressor', 'PUMA', 'PK50160A', '-', '-', '-', '', '', '3.7 kW', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'WP01', '12/03/17', '', 'No', 'Water Pump', 'Honda', '80SQPB', '-', '-', '-', '80SQPB', '', '3.6 kW', '', '', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'SL5701', '12/16/16', '4,3', 'No', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'AL6301', '01/27/17', '', 'Yes', 'Articulate Loader', 'Avant', 'Avant 635', '-', '-', '-', '1FP4345', '', '36 HP', '', '170 KG', '2016', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` enum('dev','admin','direksi','supervisior','hod','operator') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'operator',
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `department`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hisyam', 'hisyam@hisyam.com', '$2y$10$PsEwlHE8rYuc3PVpNeomUeB6jUEY1neEH.GmrtFtLi3GqOO5FuGLe', 'dev', 'None', NULL, '2017-11-01 22:21:57', '2017-11-01 22:21:57'),
(2, 'Admin', 'admin1@admin.com', '$2y$10$LTXPy2lpZjXYBzzNAlXcyOFavv0H.h98CL67mvJ7qF1c0gY6RsQOO', 'admin', 'None', NULL, '2017-11-01 22:21:57', '2017-11-01 22:21:57'),
(3, 'Operator 1', 'op@op.com', '$2y$10$i1GXHsn4vV8tf044TNkNFODemSv8E1eEqJ9zDy4qChmFmDs26xx6m', 'operator', 'Logistic', NULL, '2017-11-01 22:21:58', '2017-11-01 22:21:58');

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
-- Indexes for table `costs`
--
ALTER TABLE `costs`
 ADD PRIMARY KEY (`id`), ADD KEY `costs_transaksi_id_foreign` (`transaksi_id`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
 ADD PRIMARY KEY (`id`), ADD KEY `issues_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `issue_item`
--
ALTER TABLE `issue_item`
 ADD PRIMARY KEY (`id`), ADD KEY `issue_item_issue_id_foreign` (`issue_id`);

--
-- Indexes for table `itemcode2`
--
ALTER TABLE `itemcode2`
 ADD PRIMARY KEY (`id`), ADD KEY `itemcode2_itemcode_id_foreign` (`itemcode_id`);

--
-- Indexes for table `itemcode3`
--
ALTER TABLE `itemcode3`
 ADD PRIMARY KEY (`id`), ADD KEY `itemcode3_itemcode2_id_foreign` (`itemcode2_id`);

--
-- Indexes for table `itemcode4`
--
ALTER TABLE `itemcode4`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemcodes`
--
ALTER TABLE `itemcodes`
 ADD PRIMARY KEY (`id`);

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
-- Indexes for table `locations`
--
ALTER TABLE `locations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
 ADD PRIMARY KEY (`id`), ADD KEY `materials_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `material_item`
--
ALTER TABLE `material_item`
 ADD PRIMARY KEY (`id`), ADD KEY `material_item_material_id_foreign` (`material_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `orders_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
 ADD PRIMARY KEY (`id`), ADD KEY `order_item_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `petties`
--
ALTER TABLE `petties`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
 ADD PRIMARY KEY (`id`), ADD KEY `purchases_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
 ADD PRIMARY KEY (`id`), ADD KEY `requests_purchase_id_foreign` (`purchase_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
 ADD PRIMARY KEY (`id`), ADD KEY `returns_operator_id_foreign` (`operator_id`);

--
-- Indexes for table `return_item`
--
ALTER TABLE `return_item`
 ADD PRIMARY KEY (`id`), ADD KEY `return_item_return_id_foreign` (`return_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
 ADD PRIMARY KEY (`id`);

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
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `costs`
--
ALTER TABLE `costs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `issue_item`
--
ALTER TABLE `issue_item`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `itemcode2`
--
ALTER TABLE `itemcode2`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `itemcode3`
--
ALTER TABLE `itemcode3`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `itemcode4`
--
ALTER TABLE `itemcode4`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `itemcodes`
--
ALTER TABLE `itemcodes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `item_part_no`
--
ALTER TABLE `item_part_no`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `material_item`
--
ALTER TABLE `material_item`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `petties`
--
ALTER TABLE `petties`
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
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `return_item`
--
ALTER TABLE `return_item`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=165;
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
-- Constraints for table `issues`
--
ALTER TABLE `issues`
ADD CONSTRAINT `issues_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_item`
--
ALTER TABLE `issue_item`
ADD CONSTRAINT `issue_item_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `itemcode2`
--
ALTER TABLE `itemcode2`
ADD CONSTRAINT `itemcode2_itemcode_id_foreign` FOREIGN KEY (`itemcode_id`) REFERENCES `itemcodes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `itemcode3`
--
ALTER TABLE `itemcode3`
ADD CONSTRAINT `itemcode3_itemcode2_id_foreign` FOREIGN KEY (`itemcode2_id`) REFERENCES `itemcode2` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_part_no`
--
ALTER TABLE `item_part_no`
ADD CONSTRAINT `item_part_no_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `materials`
--
ALTER TABLE `materials`
ADD CONSTRAINT `materials_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `material_item`
--
ALTER TABLE `material_item`
ADD CONSTRAINT `material_item_material_id_foreign` FOREIGN KEY (`material_id`) REFERENCES `materials` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
ADD CONSTRAINT `order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
ADD CONSTRAINT `purchases_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
ADD CONSTRAINT `requests_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
ADD CONSTRAINT `returns_operator_id_foreign` FOREIGN KEY (`operator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `return_item`
--
ALTER TABLE `return_item`
ADD CONSTRAINT `return_item_return_id_foreign` FOREIGN KEY (`return_id`) REFERENCES `returns` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
