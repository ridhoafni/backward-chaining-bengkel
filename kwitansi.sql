-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 04, 2018 at 05:51 AM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kwitansi`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(200) NOT NULL,
  `id_pegawai` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`, `id_pegawai`, `id_user`) VALUES
(1, 'Pejabat Pembuat Komitmen ', '2', 16),
(2, 'Bendahara Pengeluaran', '11', 16),
(3, 'Bendahara Pengeluaran Pembantu', '10', 16),
(5, 'Kepala Bagian Akademik', '3', 16),
(6, 'Kasubbag Administrasi Akademik', '4', 16),
(7, 'Kasubbag Informasi Akademik', '8', 16),
(8, 'Kasubbag Layanan Akademik', '9', 16),
(9, 'JFU Pengelola Layanan Akademik', '19720611.200701.1.033', 16),
(10, 'JFU Analis Data dan Informasi ', '7', 16),
(11, 'JFU Analis Data dan Informasi', '12', 16),
(12, 'JFU Penyusun Standar Layanan Informasi Akademik', '19810418.200701.1.022', 16),
(13, 'JFU Penyusun Rencana Program dan Pelaporan', '19840727.200604.1.002', 16),
(14, 'Bendahara Pengeluaran', '1', 0),
(15, 'Kepala Sub Bagian Penyusu-nan, Evaluasi dan Pelaporan Program dan Anggaran Bagian Perencanaan ', '25', 17),
(16, 'Kepala Bagian Perencanaan', '24', 17),
(17, 'Kasubag Data dan Informasi Bagian Perencanaan', '26', 17),
(18, 'Bendahara Pengeluaran', '38', 17),
(19, 'Bendahara Pengeluaran Pembantu', '37', 17),
(20, 'Pejabat Pembuat Komitmen', '36', 17),
(21, 'Pejabat Pembuat Komitmen UM PTKIN', '39', 16),
(22, 'Pejabat Pembuat Komitmen,', '41', 19),
(23, 'Kepala Biro AUPK,', '42', 19),
(24, 'Kepala Bagian Perencanaan,', '40', 19),
(25, 'Bendahara Pengeluaran.', '43', 19);

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(12) NOT NULL,
  `kode_kegiatan` varchar(50) NOT NULL,
  `nama_kegiatan` varchar(25) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `kode_kegiatan`, `nama_kegiatan`, `id_user`) VALUES
(1, '2132.031.400.053', 'Penerimaan Mahasiswa Baru', 16),
(2, '2132.002.400.058', 'Wisuda', 16),
(3, '2132.031.200.051', 'Seleksi Nasional Penerima', 16),
(4, '3242.343.243.242.A', 'Laporan Kegiatan', 0),
(5, '2132.002.400.056', 'Pengembangan Sistem Tata ', 17),
(6, '2135.951.003.009', 'Data dan Informasi', 17),
(7, '2135.951.006.005', 'Dukungan Penyelenggaraan ', 17),
(8, '2135.994.002', 'Operasional dan Pemelihar', 17),
(9, 'Biaya Operasional SPAN UM PTKIN 2018', 'Biaya Operasional SPAN UM', 16),
(10, '2132.002.400.056', 'Pengembangan Sistem Tata ', 16),
(11, '2132.002.400.056', 'Pengembangan Sistem Tata ', 19),
(12, '2132.007.400.051', 'Sarana dan prasarana PTKI', 19);

-- --------------------------------------------------------

--
-- Table structure for table `kwitansi`
--

CREATE TABLE `kwitansi` (
  `id_kwitansi` int(12) NOT NULL,
  `tgl_kwitansi` date DEFAULT NULL,
  `kegiatan` int(12) NOT NULL,
  `mak` int(12) NOT NULL,
  `keterangan` text NOT NULL,
  `ppn` enum('0','10') NOT NULL,
  `total` varchar(100) DEFAULT NULL,
  `kepada` int(12) DEFAULT NULL,
  `pegawai` varchar(100) NOT NULL,
  `no_spd` varchar(100) NOT NULL,
  `tgl_spd` date NOT NULL,
  `uang_muka` varchar(20) NOT NULL,
  `no_bukti` varchar(100) NOT NULL,
  `jabatan1` varchar(100) NOT NULL,
  `pegawai1` int(11) NOT NULL,
  `jabatan2` varchar(100) NOT NULL,
  `pegawai2` int(11) NOT NULL,
  `jabatan3` varchar(100) NOT NULL,
  `pegawai3` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `delete_date` datetime NOT NULL,
  `delete_by` int(12) NOT NULL,
  `delete_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kwitansi`
--

INSERT INTO `kwitansi` (`id_kwitansi`, `tgl_kwitansi`, `kegiatan`, `mak`, `keterangan`, `ppn`, `total`, `kepada`, `pegawai`, `no_spd`, `tgl_spd`, `uang_muka`, `no_bukti`, `jabatan1`, `pegawai1`, `jabatan2`, `pegawai2`, `jabatan3`, `pegawai3`, `created_date`, `created_by`, `id_user`, `delete_date`, `delete_by`, `delete_status`) VALUES
(15, '2018-02-21', 1, 8, 'Biaya Settingan dan Cetak Leaflet Penerimaan Mahasiswa Baru dalam rangka sosialisasi Penerimaan Mahasiswa Baru UIN Suska Riau TA. 2018/2019 di Provinsi Riau dan Kepulauan Riau', '10', '14960000', 4, '', '', '0000-00-00', '', '53/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '0000-00-00 00:00:00', 0, 16, '0000-00-00 00:00:00', 0, 0),
(16, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hadi Saputra dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 3 Februari 2018', '0', '2687000', NULL, '14', 'Un.04/PPK/0044/2018', '2018-02-13', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(17, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Sri Susilawati, S.E dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor :061/B.1/02/2018 Tanggal 3 Februari 2018 ', '0', '2350000', NULL, '1', 'Un.04/PPK/0044/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(18, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Sukmaleta, S.Sos dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : Tanggal 3 Februari 2018 ', '0', '2350000', NULL, '9', 'Un.04/PPK/0044/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(19, '2018-02-20', 1, 8, 'Biaya Settingan dan Cetak Buku Petunjuk Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019', '10', '44550000', 4, '', '', '0000-00-00', '', '64/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(20, '2018-02-20', 1, 8, 'Biaya Settingan dan Cetak Spanduk Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Riau dan Kepulauan Riau', '10', '1980000', 4, '', '', '0000-00-00', '', '65/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(21, '2018-02-20', 1, 8, 'Biaya Pembelian ATK Kegiatan Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019', '10', '4125000', 9, '', '', '0000-00-00', '', '66/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(22, '2018-02-20', 1, 8, 'Biaya Konsumsi rapat persiapan Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019', '0', '1775000', 12, '', '', '0000-00-00', '', '67/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(23, '2018-02-21', 2, 8, 'Biaya Cetak Map Ijazah  untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '20240000', 4, '', '', '0000-00-00', '', '54/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(24, '2018-02-21', 2, 8, ' Biaya Cetak Tas Wisudawan untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '13640000', 6, '', '', '0000-00-00', '', '55/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(25, '2018-02-21', 2, 8, 'Biaya Cetak Buku Album Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau ', '10', '22720500', 7, '', '', '0000-00-00', '', '56/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(26, '2018-02-21', 2, 8, 'Biaya Cetak Medali Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '19800000', 9, '', '', '0000-00-00', '', '57/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(27, '2018-02-21', 2, 8, 'Biaya Cetak Buku Panduan Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau ', '10', '2970000', 6, '', '', '0000-00-00', '', '58/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(28, '2018-02-21', 2, 8, 'Biaya Cetak Sertifikat Pemuncak dan Bingkai Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '1782000', 4, '', '', '0000-00-00', '', '59/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(30, '2018-03-05', 2, 8, 'Biaya Pembelian Penghargaan Pemuncak Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '3575000', 16, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(31, '2018-02-21', 2, 8, 'Biaya Cetak Co Card Panitia Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '0', '1000000', 4, '', '', '0000-00-00', '', '60/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(32, '2018-02-21', 2, 8, 'Biaya Cetak Sampul Ijazah untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '3520000', 9, '', '', '0000-00-00', '', '61/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(33, '2018-02-21', 2, 8, 'Biaya Cetak Baleho dan Spanduk Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau ', '10', '1485000', 4, '', '', '0000-00-00', '', '62/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(34, '2018-03-05', 2, 8, 'Biaya ATK untuk keperluan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '4840000', 4, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(35, '2018-03-05', 2, 8, 'Biaya Konsumsi Persiapan  Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '3905000', 12, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(36, '2018-03-05', 2, 9, 'Biaya Sewa Blower untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '5940000', 10, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(37, '2018-03-05', 2, 9, 'Biaya Sewa Taman Bunga untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau ', '10', '3795000', 13, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(38, '2018-03-05', 2, 9, 'Biaya Tenda dan Kursi Plastik untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '5720000', 5, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(39, '2018-02-21', 2, 8, 'Biaya Cetak Undangan Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau', '10', '6220500', 4, '', '', '0000-00-00', '', '63/II.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(40, '2018-03-05', 1, 9, 'Biaya Pengiriman Surat Undangan dalam rangka Penerimaan Mahasiswa Baru jalur Undangan Mandiri UIN Suska Riau Tahun Akademik 2018/2019', '10', '4367000', 15, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-23 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(41, '2018-04-24', 1, 9, 'Biaya Pengiriman Surat Undangan Tahap II dalam rangka Penerimaan Mahasiswa Baru jalur Undangan Mandiri UIN Suska Riau Tahun Akademik 2018/2019 ', '10', '1562000', 15, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-26 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(42, '2018-03-06', 3, 12, 'Biaya Konsumsi dan Makan Siang kegiatan Sosialisasi SPAN dan UM PTKIN Tahun 2018 khusus Sekolah SMA/MA/SMK yang berada di Kota Pekanbaru, di Auditorium Lt. 5 UIN Suska Riau pada Tanggal 20 Februari 2018', '10', '4004000', 12, '', '', '0000-00-00', '', ' ', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-02-27 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(43, '2018-03-05', 1, 8, 'Biaya Pembelian Ribbon Colour untuk keperluan Data Print cetak Kartu Tanda Mahasiswa (KTM) mahasiswa baru Tahun Akademik 2018/2019', '10', '48125000', 11, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-02-27 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(45, '2018-03-06', 3, 12, 'Biaya Cetak Petunjuk Sosialisasi, Spanduk, dan Seminar Kits kegiatan Sosialisasi SPAN dan UM PTKIN Tahun 2018 SMA/MA/SMK di Kota Pekanbaru, Auditorium Lt. 5 UIN Suska Riau Tanggal 20 Februari 2018 ', '10', '12265000', 4, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-02 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(46, '2018-03-06', 3, 12, 'Biaya Pembelian ATK kegiatan Sosialisasi SPAN dan UM PTKIN Tahun 2018 khusus Sekolah SMA/MA/SMK yang berada di Kota Pekanbaru, di Auditorium Lt. 5 UIN Suska Riau pada Tanggal 20 Februari 2018', '10', '1028500', 4, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-02 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(47, '2018-03-06', 3, 12, 'Biaya Cetak Leaflet SPAN UM - PTKIN dan Cetak Spanduk Sosialisasi SPAN dan UM - PTKIN Tahun 2018 di Provinsi Riau dan Kepulauan Riau', '10', '10076000', 6, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-02 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(48, '2018-03-05', 2, 8, 'Biaya Photo dan Cuci Cetak Photo Wisudawan untuk keperluan Wisuda untuk keperluan wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 Tanggal 28 Februari 2018 UIN Sultan Syarif Kasim Riau ', '10', '22880000', 8, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-02 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(49, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Rinayeni, S.Sos dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018 ', '0', '4834760', NULL, '3', 'Un.04/PPK/0044/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-02 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(51, '2018-03-05', 2, 11, 'Uang Lelah Petugas Keamanan Pelaksanaan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 UIN Suska Riau Berdasarkan Surat Tugas Rektor Nomor : 112/B.I/2/2018 Tanggal 22 Februari 2018 untuk Kegiatan Tanggal 28 Februari 2018', '0', '6500000', 17, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(52, '2018-03-05', 2, 11, 'Uang Lelah Petugas Acara Pelaksanaan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 UIN Suska Riau Berdasarkan Surat Tugas Rektor Nomor : 111/B.I/2/2018 Tanggal 22 Februari 2018 untuk Kegiatan Tanggal 28 Februari 2018', '0', '1000000', 17, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(54, '2018-03-05', 2, 11, 'Uang Lelah Petugas Kebersihan Pelaksanaan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 UIN Suska Riau Berdasarkan Surat Tugas Rektor Nomor : 110/B.I/2/2018 Tanggal 22 Februari 2018 untuk Kegiatan Tanggal 28 Februari 2018 ', '0', '2000000', 17, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(55, '2018-03-05', 2, 11, 'Uang Lelah Paduan Suara Pelaksanaan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 UIN Suska Riau Berdasarkan Surat Tugas Rektor Nomor : 114/B.I/2/2018 Tanggal 22 Februari 2018 untuk Kegiatan Tanggal 28 Februari 2018', '0', '3000000', 17, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(56, '2018-03-05', 2, 11, 'Uang Lelah Pemain Kompang Pelaksanaan Wisuda Program Magister ke 46, Program Sarjana dan Diploma ke 65 Periode II TA. 2017/2018 UIN Suska Riau Berdasarkan Surat Tugas Rektor Nomor : 113/B.I/2/2018 Tanggal 22 Februari 2018 untuk Kegiatan Tanggal 28 Februari 2018', '0', '2000000', 17, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(57, '2018-03-05', 1, 8, 'Biaya Settingan dan Cetak Baleho dan Banner Keperluan Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau TA. 2018/2019', '10', '2255000', 4, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-05 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(59, '2018-03-05', 1, 9, 'Biaya siaran langsung di RTv dalam rangka sosialisasi penerimaan mahasiswa baru UIN Sultan Syarif Kasim Riau tanggal 20 Februari 2018', '10', '11550000', 18, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-06 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(60, '2018-03-06', 3, 13, 'Honorarium Tim Sekretariat Sosialisasi SPAN UM-PTKIN Tahun Akademik 2018/2019 Panlok UIN Suska Riau, berdasarkan Surat Keputusan Rektor UIN Suska Riau Nomor : 0573/R/2018 Tanggal 12 Februari 2018', '0', '8700000', 17, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(61, '2018-03-06', 3, 13, 'Honorarium Panitia Pelaksana Sosialisasi SPAN UM-PTKIN SMA/MA/SMK se Kota Pekanbaru Panlok UIN Suska Riau, berdasarkan Surat Keputusan Rektor UIN Suska Riau Nomor : 0571/R/2018 Tanggal 12 Februari 2018, Kegiatan Tanggal 20 Februari 2018 ', '0', '8100000', 17, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(62, '2018-03-06', 3, 13, 'Honorarium Narasumber an. Dr. Hj. Helmiati, M.Ag  Sosialisasi SPAN UM-PTKIN SMA/MA/SMK se Kota Pekanbaru Panlok UIN Suska Riau, berdasarkan Surat Keputusan Rektor UIN Suska Riau Nomor : 0571/R/2018 Tanggal 12 Februari 2018, Kegiatan Tanggal 20 Februari 2018 ', '0', '2100000', 17, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(63, '2018-03-06', 3, 13, 'Honorarium Moderator an. Purwanto, S.Kom Sosialisasi SPAN UM-PTKIN SMA/MA/SMK se Kota Pekanbaru Panlok UIN Suska Riau, berdasarkan Surat Keputusan Rektor UIN Suska Riau Nomor : 0571/R/2018 Tanggal 12 Februari 2018, Kegiatan Tanggal 20 Februari 2018 ', '0', '500000', 17, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(64, '2018-03-06', 3, 13, 'Uang Transportasi Peserta an. Dra. Yumarni, Dkk Sosialisasi SPAN UM-PTKIN SMA/MA/SMK se Kota Pekanbaru Panlok UIN Suska Riau, berdasarkan Surat Keputusan Rektor UIN Suska Riau Nomor : 0571/R/2018 Tanggal 12 Februari 2018, Kegiatan Tanggal 20 Februari 2018 ', '0', '11550000', 17, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran Pembantu', 10, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(65, '2018-03-14', 1, 9, 'Biaya Iklan Pendidikan di Koran Riau Pos dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau TA. 2018/2019 dengan ukuran 4 Kolom x 270 mm, terbit selama 30 hari', '0', '30000000', 19, '', '', '0000-00-00', '', '/III.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(66, '2018-04-03', 2, 8, 'Biaya Konsumsi Snack ringan persiapan kegiatan Wisuda tanggal 28 Februari 2018', '10', '1470700', 20, '', '', '0000-00-00', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-08 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(67, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hardianto dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018', '0', '2350000', NULL, '6', 'Un.04/PPK/0044/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(68, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Surya El Hadi, S.T dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Rohil dan Kota Dumai selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018', '0', '3330000', NULL, '20', 'Un.04/PPK/0045/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(69, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Yusniarti, S.P dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Rohil dan Kota Dumai selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018', '0', '3330000', NULL, '15', 'Un.04/PPK/0045/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(70, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Yennita Trisia, S.E., M.M., Ak dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Rohil dan Kota Dumai selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018 ', '0', '1850000', NULL, '16', 'Un.04/PPK/0045/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(71, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hamzami dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Rohil dan Kota Dumai selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018 ', '0', '1850000', NULL, '18', 'Un.04/PPK/0045/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(72, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Azwir dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Rohil dan Kota Dumai selama 5 Hari pada tanggal 5 s.d 9 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/02/2018 Tanggal 1 Februari 2018', '0', '4005732', NULL, '21', 'Un.04/PPK/0045/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-10 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(73, '2018-04-03', 1, 10, ' Biaya Perjalanan Dinas an. Desi Devrika Devra, S.HI., M.Si dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Siak dan Bengkalis selama 4 Hari pada tanggal 31 Januari s.d 3 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018', '0', '4426000', NULL, '8', 'Un.04/PPK/0041/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(74, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. irhamna dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Siak dan Bengkalis selama 4 Hari pada tanggal 31 Januari s.d 3 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018', '0', '1480000', NULL, '19', 'Un.04/PPK/0041/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(75, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Winardi, S.T dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Siak dan Bengkalis selama 4 Hari pada tanggal 31 Januari s.d 3 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018 ', '0', '2480000', NULL, '22', 'Un.04/PPK/0041/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(76, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Andika dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Siak dan Bengkalis selama 4 Hari pada tanggal 31 Januari s.d 3 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018 ', '0', '1480000', NULL, '23', 'Un.04/PPK/0041/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(77, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Laily Kurniati, S.Th.I dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Kampar dan Rohul selama 3 Hari pada tanggal 31 Januari s.d 2 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018', '0', '3112400', NULL, '4', 'Un.04/PPK/0040/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(78, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Nur Azizah, S.Pd.I dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Kampar dan Rohul selama 3 Hari pada tanggal 31 Januari s.d 2 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018 ', '0', '1110000', NULL, '17', 'Un.04/PPK/0040/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(79, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Purwanto, S.Kom dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Kampar dan Rohul selama 3 Hari pada tanggal 31 Januari s.d 2 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018 ', '0', '2025000', NULL, '13', 'Un.04/PPK/0040/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(80, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hardianto dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Kampar dan Rohul selama 3 Hari pada tanggal 31 Januari s.d 2 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018', '0', '1110000', NULL, '6', 'Un.04/PPK/0040/2018', '2018-03-12', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(81, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Azwir dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Kampar dan Rohul selama 3 Hari pada tanggal 31 Januari s.d 2 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 054/B.I/01/2018 Tanggal 29 Januari 2018 ', '0', '1110000', NULL, '21', 'Un.04/PPK/0040/2018', '2018-01-29', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-11 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(82, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Rinayeni, S.Sos dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Pinang dan Bintan selama 3 Hari pada tanggal 14 s.d 16 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '3977800', NULL, '3', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(83, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hadi Saputra, S.E dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Pinang dan Bintan selama 3 Hari pada tanggal 14 s.d 16 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '4227800', NULL, '14', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(84, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Laily Kurniati, S.Th.I dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Pinang dan Bintan selama 3 Hari pada tanggal 14 s.d 16 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '2277800', NULL, '4', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(85, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hardianto dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Pinang dan Bintan selama 3 Hari pada tanggal 14 s.d 16 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '2277800', NULL, '6', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(86, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Sukmaleta, S.Sos dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Balai Karimun dan Selat Panjang selama 4 Hari pada tanggal 11 s.d 14 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '4813300', NULL, '9', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(87, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Purwanto, S.Kom dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Balai Karimun dan Selat Panjang selama 4 Hari pada tanggal 11 s.d 14 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '4116300', NULL, '13', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(88, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Sri Susilawati, S.E dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Balai Karimun dan Selat Panjang selama 4 Hari pada tanggal 11 s.d 14 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '2576300', NULL, '1', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(89, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Yennita Trisia, S.E., M.M, Ak dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Balai Karimun dan Selat Panjang selama 4 Hari pada tanggal 11 s.d 14 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '2576300', NULL, '16', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(90, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Hamzami dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Tanjung Balai Karimun dan Selat Panjang selama 4 Hari pada tanggal 11 s.d 14 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '2576300', NULL, '18', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-12 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(91, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Desi Devrika Devra, S.HI., M.Si dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Batam selama 3 Hari pada tanggal 11 s.d 13 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '3680750', NULL, '8', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(92, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. irhamna dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Batam selama 3 Hari pada tanggal 11 s.d 13 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '1828000', NULL, '19', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(93, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Yusniarti, S.P dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Batam selama 3 Hari pada tanggal 11 s.d 13 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '2706750', NULL, '15', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(94, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Nurazizah, S.Pd.I dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Batam selama 3 Hari pada tanggal 11 s.d 13 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018', '0', '1828000', NULL, '17', 'Un.04/PPK/0061/2018', '2018-02-01', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(95, '2018-04-03', 1, 10, 'Biaya Perjalanan Dinas an. Budi Candra Negara Mazda, S.E dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Batam selama 3 Hari pada tanggal 11 s.d 13 Februari 2018 berdasarkan Surat Tugas Rektor Nomor : 061/B.I/01/2018 Tanggal 1 Februari 2018 ', '0', '2980750', NULL, '7', 'Un.04/PPK/0061/2018', '2018-02-01', '1000000', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-03-13 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(96, '2018-04-03', 1, 8, 'Biaya Konsumsi Sosialisasi Penerimaan Mahasiswa Baru Tahun Akademik 2018/2019 di Kabupaten Tg. Balai Karimun, pada Tanggal 12 Februari 2018', '0', '350000', 21, '', '', '0000-00-00', '', '/IV.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-03 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(97, '2018-04-23', 2, 8, 'Biaya Cetak Undangan Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim', '10', '6149000', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(98, '2018-04-23', 2, 8, 'Biaya Cetak Tas Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '14492500', 6, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(99, '2018-04-23', 2, 8, 'Biaya Cetak Medali Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '19800000', 9, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(100, '2018-04-23', 2, 8, 'Biaya Cetak Map Ijazah Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim', '10', '20240000', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(101, '2018-04-23', 2, 8, 'Biaya Cetak Album Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '22720500', 7, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(102, '2018-04-23', 2, 8, 'Biaya Cetak Sertifikat Pemuncak dan Bingkai Sertifikat Pemuncak Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '1930500', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(103, '2018-04-23', 2, 8, 'Biaya Cetak Buku Panduan Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim', '10', '2970000', 6, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(104, '2018-04-23', 2, 8, 'Biaya Cetak Co Carde Panitia Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '1100000', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(105, '2018-04-23', 2, 8, 'Biaya Cetak Baleho dan Spanduk Wisuda untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim', '10', '1485000', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-21 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(108, NULL, 1, 10, 'SPD Rampung an. Purwanto, S.Kom dalam rangka Sosialisasi Penomoran Ijazah Nasional ( PIN ) di Hotel Ciputra Jakarta selama 3 Hari pada tanggal 15 s.d 17 April 2018 berdasarkan Surat Tugas Rektor Nomor : Un.04/B.II/PP.00.9/04/2018 Tanggal 13 April 2018. ( Rincian Terlampir )', '0', '3879435', NULL, '13', 'Un.04/PPK/125/2018', '2018-04-23', '', '', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-23 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(110, '2018-04-23', 2, 9, 'Biaya Sewa Blower untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '5940000', 10, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-24 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(111, '2018-04-23', 2, 9, 'Biaya Sewa Taman Bunga untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '3795000', 13, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-24 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(112, '2018-04-23', 2, 9, 'Biaya Sewa Tenda dan Kursi Plastik untuk keperluan wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 UIN Sultan Syarif Kasim ', '10', '5720000', 5, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-24 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(113, '2018-04-23', 2, 8, ' Biaya Konsumsi Persiapan Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '10', '3388000', 12, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-24 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(114, '2018-04-23', 2, 8, 'Biaya ATK dan Perlengkapan Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '0', '575000', 4, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-24 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(115, '2018-04-23', 2, 11, 'Uang Lelah Petugas Kebersihan Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018', '0', '2000000', 17, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(116, '2018-04-23', 2, 11, 'Uang Lelah Petugas Keamanan Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '0', '6500000', 17, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(117, '2018-04-23', 2, 11, ' Uang Lelah Pemain Kompang Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '0', '2000000', 17, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(118, '2018-04-23', 2, 11, ' Uang Lelah Petugas Panduan Suara Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '0', '3000000', 17, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(119, '2018-04-23', 2, 11, 'Uang Lelah Petugas Acara Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '0', '1000000', 17, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(120, '2018-04-23', 2, 8, 'Biaya Photo dan Cuci Cetak Photo Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018', '10', '22880000', 8, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(121, '2018-04-24', 2, 8, 'Biaya Pembelian Penghargaan Pemuncak Wisuda Program Doktor ke 18, Program Magister ke 47, Program Sarjana dan Diploma ke 66 Periode III TA. 2017/2018 Tanggal 25 April 2018 ', '10', '3217500', 16, '', '', '0000-00-00', '', '/V.K/2018', 'Pejabat Pembuat Komitmen Uin Suska Riau', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-04-26 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(124, '2018-05-25', 10, 10, 'Uang Muka Perjalanan Dinas an. Ari Delvia dalam rangka Evaluasi Pelaporan PD Dikti di Hotel Pangeran Beach Kota Padang Selama 3 Hari Tanggal 28 s.d 30 Mei 2018 berdasarkan surat tugas rektor Nomor : 397/Un.04/B.I/KP.02.3/05/2018  Tanggal 25 Mei 2018', '0', '2417000', NULL, '12', 'Un.04/PPK/361/2018', '2018-05-25', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-25 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(125, '2018-05-25', 7, 18, 'Biaya Cetak Buku Juknis Penyusunan Anggaran Tahun 2018', '10', '14300000', 23, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-05-25 00:00:00', 1, 17, '0000-00-00 00:00:00', 0, 0),
(126, '2018-05-25', 7, 18, 'Biaya Pencetakan Rencana Bisnis dan Anggaran Tahun 2018 Definitif UIN Suska Riau  ', '10', '13200000', 24, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-05-25 00:00:00', 1, 17, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `kwitansi` (`id_kwitansi`, `tgl_kwitansi`, `kegiatan`, `mak`, `keterangan`, `ppn`, `total`, `kepada`, `pegawai`, `no_spd`, `tgl_spd`, `uang_muka`, `no_bukti`, `jabatan1`, `pegawai1`, `jabatan2`, `pegawai2`, `jabatan3`, `pegawai3`, `created_date`, `created_by`, `id_user`, `delete_date`, `delete_by`, `delete_status`) VALUES
(134, NULL, 9, 10, 'Biaya SPD rampung an. Hadi Saputra, S.E dalam rangka mengantar Lembar Jawaban Ujian (LJU) UM PTKIN ke Pusat Validasi Data UIN Alauddin Makassar selama 2 Hari Tanggal 23 s.d 24 Mei 2018 berdasarkan Surat Tugas Rektor Nomor : 359/Un.04/B.I/PP.00.9/05/2018 Tanggal 22 Mei 2018', '0', '5578500', NULL, '14', 'Un.04/PPK/339/2018', '2018-05-22', '', '', 'Pejabat Pembuat Komitmen UM PTKIN', 39, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-28 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(135, NULL, 9, 10, 'Biaya SPD rampung an. Rinayeni, S.Sos dalam rangka mengantar Lembar Jawaban Ujian (LJU) UM PTKIN ke Pusat Validasi Data UIN Alauddin Makassar selama 2 Hari Tanggal 23 s.d 24 Mei 2018 berdasarkan Surat Tugas Rektor Nomor : 359/Un.04/B.I/PP.00.9/05/2018 Tanggal 22 Mei 2018', '0', '5578500', NULL, '3', 'Un.04/PPK/339/2018', '2018-05-22', '', '', 'Pejabat Pembuat Komitmen UM PTKIN', 39, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-28 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(137, '2018-06-04', 1, 11, 'Biaya Fullday Meeting dalam rangka Sidang Penentuan Kelulusan Penerimaan Mahasiswa Baru Jalur Undangan Mandiri TA. 2018/2019 tanggal 1 Mei 2018 pada Pukul 08.00 s.d 16.00', '10', '3712500', 26, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-28 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(138, '2018-06-04', 1, 8, 'Biaya Cetak Kalender Akademik Tahun Akademik 2018/2019', '10', '14190000', 4, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-28 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(139, '2018-05-28', 3, 10, 'Biaya SPD rampung an. Drs. H. Eramli Jantan Abdullah, M.M dalam rangka mengantar Lembar Jawaban Ujian (LJU) UM PTKIN ke Pusat Validasi Data UIN Alauddin Makassar selama 2 Hari Tanggal 23 s.d 24 Mei 2018 berdasarkan Surat Tugas Rektor Nomor : 358/Un.04/B.I/PP.00.9/05/2018 Tanggal 22 Mei 2018', '0', '7562100', NULL, '2', 'Un.04/PPK/338/2018', '2018-05-22', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-30 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(140, '2018-06-04', 1, 8, 'Biaya Cetak Form Tanda Terima Undangan Mandiri dan Form Verifikasi, dan Validasi serta cetak KTM Tahun Akademik 2018/2019', '10', '8415000', 4, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-30 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(141, '2018-06-04', 1, 8, 'Biaya Cetak Baleho Orientasi Sistem Informasi Akademik bagi Mahasiswa Baru Jalur SNMPTN, SPAN PTKIN, dan Undangan mandiri Tahun Akademik 2018/2019, kegiatan tanggal 8 Mei 2018 di Pusat Kegiatan Mahasiswa UIN Suska Riau', '0', '700000', 4, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-30 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(142, '2018-06-04', 10, 8, 'Biaya Operasional Pengembangan Aplikasi Kwitansi Akademik berbasis web', '10', '7700000', 27, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen ', 2, 'Bendahara Pengeluaran', 11, 'Kepala Bagian Akademik', 3, '2018-05-30 00:00:00', 1, 16, '0000-00-00 00:00:00', 0, 0),
(146, '2018-06-04', 11, 25, 'Biaya Sewa Tenda untuk Kegiatan Pekan Ilmiah Olahraga dan Seni UIN Suska Riau Tahun 2018 pada tanggal 2-7  Februari 2018, dengan rincian sebagai berikut :', '0', '7500000', NULL, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen,', 41, '', 43, '19', 42, '2018-05-31 00:00:00', 19, 19, '0000-00-00 00:00:00', 0, 0),
(147, NULL, 11, 25, 'testing aupk', '0', '0', NULL, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen,', 40, 'Kepala Biro AUPK,', 40, '19', 40, '2018-05-31 00:00:00', 19, 19, '0000-00-00 00:00:00', 0, 0),
(148, '2018-05-31', 7, 19, 'Biaya Pembelian Aqua Galon, Gula, Teh, dll untuk bulan Januari s/d Maret 2018 untuk keperluan konsumsi harian dan peningkatan pelayanan kepada stake holder diambil dari dana koordinasi dan kegiatan perencanaan tahun 2018 dengan rincian sbb:', '10', '4020500', 29, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-06-04 00:00:00', 17, 17, '0000-00-00 00:00:00', 0, 0),
(149, '2018-05-31', 7, 19, 'Biaya Pembelian Aqua Galon, Gula, Teh, dll untuk bulan April s/d Juni 2018 untuk keperluan konsumsi harian dan peningkatan pelayanan kepada stake holder diambil dari dana koordinasi dan kegiatan perencanaan tahun 2018 dengan rincian sbb: ', '10', '4020500', 29, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-06-04 00:00:00', 17, 17, '0000-00-00 00:00:00', 0, 0),
(150, '2018-05-31', 7, 19, 'Biaya konsumsi untuk kegiatan rapat koordinasi Bagian Perencanaan bulan Januari s.d April tahun 2018 diambil dari dana konsumsi kegiatan rapat koordinasi Bagian Perencanaan dengan rincian sbb:', '10', '3696000', 31, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-06-04 00:00:00', 17, 17, '0000-00-00 00:00:00', 0, 0),
(151, '2018-05-31', 7, 19, 'Biaya Konsumsi Rapat Dalam Kantor Pembahasan Alokasi Penambahan Pagu Dalam Rangka Revisi Anggaran Tahun 2018 UIN Sultan Syarif Kasim Riau Tanggal 22, 23, 24 Mei 2018 dengan rincian sbb:', '10', '1336500', 31, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-06-04 00:00:00', 17, 17, '0000-00-00 00:00:00', 0, 0),
(152, '2018-05-31', 7, 19, 'Biaya Konsumsi FGD Monitoring Tim Perencanaan Pendis UIN Sultan Syarif Kasim Riau Tahun 2018 Tanggal 2 Mei 2018 dengan rincian sbb:', '10', '504900', 31, '', '', '0000-00-00', '', '', 'Pejabat Pembuat Komitmen', 36, 'Bendahara Pengeluaran Pembantu', 37, 'Kepala Bagian Perencanaan', 24, '2018-06-04 00:00:00', 17, 17, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kwitansi_detail`
--

CREATE TABLE `kwitansi_detail` (
  `id_kd` int(12) NOT NULL,
  `id_kwitansi` int(12) NOT NULL,
  `kegiatan` varchar(250) NOT NULL,
  `volume` int(12) NOT NULL,
  `satuan` int(12) NOT NULL,
  `harga` varchar(25) NOT NULL,
  `riil` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(12) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kwitansi_detail`
--

INSERT INTO `kwitansi_detail` (`id_kd`, `id_kwitansi`, `kegiatan`, `volume`, `satuan`, `harga`, `riil`, `created_date`, `created_by`, `id_user`) VALUES
(1, 1, 'Kompang dan Tari Persembahan', 1, 1, '6500000', 0, '2018-01-27 00:00:00', 1, 16),
(2, 1, 'test', 2, 1, '20', 0, '2018-01-30 00:00:00', 1, 16),
(3, 1, 'gendang', 2, 1, '2000', 0, '2018-01-31 00:00:00', 1, 16),
(4, 2, 'test1', 2, 1, '20000', 0, '2018-02-03 00:00:00', 1, 16),
(5, 5, 'menginap di hotel', 1, 3, '200000', 0, '2018-02-07 00:00:00', 1, 16),
(6, 8, 'jalan', 1, 2, '10000000', 0, '2018-02-07 00:00:00', 1, 16),
(7, 2, 'nginap di hotel', 2, 3, '123000', 0, '2018-02-07 00:00:00', 1, 16),
(10, 15, 'Settingan dan Pencetakan Leaflet UIN Suska Riau', 3000, 13, '3200', 0, '2018-02-12 00:00:00', 1, 16),
(11, 15, 'Cetak Leaflet SNMPTN dan SBMPTN 2018', 2000, 13, '2000', 0, '2018-02-12 00:00:00', 1, 16),
(14, 16, 'Uang Harian di Riau', 5, 14, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(15, 16, 'Hotel di Inhu ', 1, 3, '462000', 0, '2018-03-10 00:00:00', 1, 16),
(16, 16, 'Hotel di Inhil (450.000 x 30% = 125.000)', 3, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(17, 17, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(18, 17, 'Hotel di Inhu (450.000 x 30% = 125.000)', 1, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(19, 17, 'Hotel di Inhil (450.000 x 30% = 125.000)', 3, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(20, 18, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(21, 18, 'Hotel di Inhu (450.000 x 30% = 125.000)', 1, 3, '125000', 0, '2018-02-11 00:00:00', 1, 16),
(22, 18, 'Hotel di Inhil (450.000 x 30% = 125.000)', 3, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(23, 19, 'Settingan dan Pencetakan Buku ', 3000, 12, '13500', 0, '2018-02-12 00:00:00', 1, 16),
(24, 20, 'Settingan dan Cetak Spanduk (12 Buah x 5 M)', 60, 23, '30000', 0, '2018-02-12 00:00:00', 1, 16),
(25, 21, 'Amplop Surat ', 1500, 13, '1000', 0, '2018-02-12 00:00:00', 1, 16),
(27, 21, 'Data Print Cannon Black', 20, 17, '30000', 0, '2018-02-13 00:00:00', 1, 16),
(28, 21, 'Kertas Quarto', 20, 24, '45000', 0, '2018-02-12 00:00:00', 1, 16),
(30, 21, 'Foco Copy Surat Undangan mandiri (3 Lbr x 1.000 Eks)', 3000, 13, '250', 0, '2018-02-12 00:00:00', 1, 16),
(31, 22, 'Nasi Kotak Rapat Tanggal 22 Januari 2018', 20, 17, '25000', 0, '2018-02-12 00:00:00', 1, 16),
(32, 22, 'Nasi Kotak Rapat Tanggal 23 Januari 2018', 15, 17, '25000', 0, '2018-02-12 00:00:00', 1, 16),
(33, 22, 'Nasi Kotak Rapat Tanggal 30 Januari 2018', 20, 17, '25000', 0, '2018-02-12 00:00:00', 1, 16),
(34, 23, 'Cetak Map Wisuda', 800, 20, '23000', 0, '2018-02-12 00:00:00', 1, 16),
(35, 24, 'Cetak Tas Wisudawan', 800, 20, '15500', 0, '2018-02-12 00:00:00', 1, 16),
(36, 25, 'Cetak Buku Album Wisuda', 810, 12, '25500', 0, '2018-02-13 00:00:00', 1, 16),
(37, 26, 'Medali Wisuda S1 dan D3', 750, 20, '22500', 0, '2018-02-13 00:00:00', 1, 16),
(38, 26, 'Medali Wisuda S2 dan S3', 50, 20, '22500', 0, '2018-02-13 00:00:00', 1, 16),
(39, 27, 'Cetak Buku Pandunan Wisuda', 200, 12, '13500', 0, '2018-02-12 00:00:00', 1, 16),
(40, 28, 'Cetak Sertifikat dan Bingkai Pemuncak', 12, 20, '135000', 0, '2018-02-13 00:00:00', 1, 16),
(41, 29, 'Dokumentasi dan Publikasi', 1, 21, '800000', 0, '2018-02-12 00:00:00', 1, 16),
(42, 30, 'Pembelian Al Quran Al Uswah B5', 13, 20, '250000', 0, '2018-03-02 00:00:00', 1, 16),
(43, 31, 'Cetak Co Card', 200, 20, '5000', 0, '2018-02-12 00:00:00', 1, 16),
(44, 32, 'Cetak Sampul Ijazah', 800, 13, '4000', 0, '2018-02-12 00:00:00', 1, 16),
(45, 33, 'Baleho ( 4 x 5 M)', 20, 23, '45000', 0, '2018-02-12 00:00:00', 1, 16),
(46, 33, 'Spanduk Wisuda ( 5 M x 3 Buah)', 15, 23, '30000', 0, '2018-02-12 00:00:00', 1, 16),
(47, 34, 'Kertas Quarto', 10, 24, '40000', 0, '2018-03-07 00:00:00', 1, 16),
(48, 34, 'Lem Isolasi Bening Besar', 40, 20, '25000', 0, '2018-02-12 00:00:00', 1, 16),
(49, 34, 'Lem Uhu', 20, 22, '150000', 0, '2018-03-07 00:00:00', 1, 16),
(51, 35, 'Nasi Bungkus Persiapan Lokasi dan Tempat Wisuda', 100, 26, '17000', 0, '2018-03-05 00:00:00', 1, 16),
(53, 35, 'Nasi Bungkus Gladi Wisuda', 50, 26, '17000', 0, '2018-03-05 00:00:00', 1, 16),
(55, 36, 'Sewa Blower', 12, 19, '450000', 0, '2018-02-12 00:00:00', 1, 16),
(56, 37, 'Sewa Taman Bunga', 1, 1, '3450000', 0, '2018-02-12 00:00:00', 1, 16),
(57, 38, 'Sewa Tenda ( 4 x 6 M)', 12, 19, '350000', 0, '2018-02-12 00:00:00', 1, 16),
(58, 38, 'Sewa Kursi Plastik', 200, 20, '5000', 0, '2018-02-12 00:00:00', 1, 16),
(59, 22, 'Beli Air Mineral Aqua', 10, 27, '40000', 0, '2018-02-13 00:00:00', 1, 16),
(60, 39, 'Undangan Wisuda', 870, 20, '6500', 0, '2018-02-13 00:00:00', 1, 16),
(61, 40, 'Biaya Pengiriman Surat Undangan ', 1, 1, '3970000', 0, '2018-02-23 00:00:00', 1, 16),
(62, 41, 'Biaya Pengiriman Surat Undangan', 1, 1, '1420000', 0, '2018-02-26 00:00:00', 1, 16),
(63, 35, 'Jus Gladi dan Persiapan Lokasi Wisuda', 100, 28, '10000', 0, '2018-03-05 00:00:00', 1, 16),
(64, 42, 'Makan Siang Panitia Pelaksana', 20, 26, '17000', 0, '2018-03-02 00:00:00', 1, 16),
(65, 43, 'Ribbon Colour', 35, 17, '1250000', 0, '2018-02-27 00:00:00', 1, 16),
(66, 42, 'Makan Siang Peserta dan Tamu Kegiatan', 100, 26, '17000', 0, '2018-03-02 00:00:00', 1, 16),
(67, 42, 'Konsumsi Snack Kegiatan', 200, 17, '8000', 0, '2018-03-02 00:00:00', 1, 16),
(68, 45, 'Cetak Petunjuk SPAN dan UM PTKIN', 200, 12, '35000', 0, '2018-03-02 00:00:00', 1, 16),
(69, 45, 'Cetak Spanduk ', 5, 23, '30000', 0, '2018-03-02 00:00:00', 1, 16),
(70, 45, 'Seminar Kits', 200, 16, '20000', 0, '2018-03-02 00:00:00', 1, 16),
(71, 46, 'Kertas Quarto', 3, 24, '45000', 0, '2018-03-02 00:00:00', 1, 16),
(72, 46, 'Data Print Cannon Black', 5, 17, '25000', 0, '2018-03-02 00:00:00', 1, 16),
(73, 46, 'Cardrige Black Cannon iP2770', 3, 20, '225000', 0, '2018-03-02 00:00:00', 1, 16),
(74, 47, 'Cetak Leaflet SPAN UM - PTKIN ', 2000, 13, '3500', 0, '2018-03-02 00:00:00', 1, 16),
(75, 47, 'Cetak Spanduk SPAN UM - PTKIN (12 BH x 6 M)', 72, 23, '30000', 0, '2018-03-02 00:00:00', 1, 16),
(76, 48, 'Photo dan Cuci Cetak Photo (12 R 2 Lbr)', 800, 25, '26000', 0, '2018-03-02 00:00:00', 1, 16),
(77, 49, 'Lumsump di Riau ', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(78, 49, 'Hotel di Inhu ', 1, 3, '462000', 0, '2018-03-02 00:00:00', 1, 16),
(79, 49, 'Hotel di Inhil (450.000 x 30% = 125.000)', 3, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(82, 51, 'Uang Lelah', 1, 1, '6500000', 0, '2018-03-03 00:00:00', 1, 16),
(83, 52, 'Uang Lelah Petugas Acara', 1, 1, '1000000', 0, '2018-03-03 00:00:00', 1, 16),
(84, 54, 'Uang Lelah Petugas Kebersihan', 1, 1, '2000000', 0, '2018-03-03 00:00:00', 1, 16),
(85, 55, 'Uang Lelah Paduan Suara', 1, 1, '3000000', 0, '2018-03-03 00:00:00', 1, 16),
(86, 56, 'Uang Lelah Pemain Kompang', 1, 1, '2000000', 0, '2018-03-03 00:00:00', 1, 16),
(87, 57, 'Baleho (3 x 4 M x 3 Buah)', 36, 23, '45000', 0, '2018-03-05 00:00:00', 1, 16),
(88, 57, 'Standing Banner ', 1, 20, '250000', 0, '2018-03-05 00:00:00', 1, 16),
(89, 57, 'Spanduk (1 x 3 M x 2 Buah)', 6, 23, '30000', 0, '2018-03-05 00:00:00', 1, 16),
(90, 58, 'Siaran Langusng', 1, 1, '10400000', 0, '2018-03-05 00:00:00', 1, 16),
(91, 59, 'Siaran Lansung RTv', 1, 1, '10500000', 0, '2018-03-06 00:00:00', 1, 16),
(92, 60, 'Tim Sekretariat Sosialisasi SPAN UM PTKIN', 1, 1, '8700000', 0, '2018-03-08 00:00:00', 1, 16),
(93, 61, 'Panpel Sospro SPAN UM PTKIN Pekanbaru', 1, 1, '8100000', 0, '2018-03-08 00:00:00', 1, 16),
(94, 62, 'Honorarium Narasumber', 1, 1, '2100000', 0, '2018-03-08 00:00:00', 1, 16),
(95, 63, 'Honorarium Moderator', 1, 1, '500000', 0, '2018-03-08 00:00:00', 1, 16),
(96, 64, 'Uang Transportasi Peserta', 1, 1, '11550000', 0, '2018-03-08 00:00:00', 1, 16),
(97, 65, 'Iklan Pendidikan (4 Kolom x 270 mm)', 30, 2, '1000000', 0, '2018-03-08 00:00:00', 1, 16),
(98, 66, 'Konsumsi Snack Persiapan Wisuda', 1, 1, '1337000', 0, '2018-04-03 00:00:00', 1, 16),
(99, 49, 'Biaya Rental Mobil ', 5, 2, '300000', 0, '2018-03-10 00:00:00', 1, 16),
(100, 49, 'Bahan Bakar Minyak PKU - Inhil PP', 1, 21, '647760', 0, '2018-04-21 00:00:00', 1, 16),
(101, 67, 'Lumsump di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(102, 67, 'Hotel di Inhu (450.000 x 30% = 125.000)', 1, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(103, 67, 'Hotel di Inhil (450.000 x 30% = 125.000)', 3, 3, '125000', 0, '2018-03-10 00:00:00', 1, 16),
(104, 68, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(105, 68, 'Hotel di Bagansiapiapi', 2, 3, '325000', 0, '2018-03-10 00:00:00', 1, 16),
(106, 68, 'Hotel di Dumai', 2, 3, '415000', 0, '2018-03-10 00:00:00', 1, 16),
(107, 69, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(108, 69, 'Hotel di Bagansiapiapi', 2, 3, '325000', 0, '2018-03-10 00:00:00', 1, 16),
(109, 69, 'Hotel di Dumai', 2, 3, '415000', 0, '2018-03-10 00:00:00', 1, 16),
(110, 70, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(111, 71, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(112, 72, 'Uang Harian di Riau', 5, 2, '370000', 0, '2018-03-10 00:00:00', 1, 16),
(113, 72, 'Sewa Mobil', 5, 2, '275000', 0, '2018-03-10 00:00:00', 1, 16),
(114, 72, 'Bahan Bakar Minyak PP PKU - Bagan - Dumai', 1, 21, '780732', 0, '2018-04-04 00:00:00', 1, 16),
(115, 73, 'Uang Harian di Riau', 4, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(116, 73, 'Hotel di Siak', 1, 3, '400000', 0, '2018-03-11 00:00:00', 1, 16),
(117, 73, 'Hotel di Bengkalis', 2, 3, '300000', 0, '2018-03-11 00:00:00', 1, 16),
(118, 73, 'Sewa Mobil', 4, 2, '275000', 0, '2018-03-11 00:00:00', 1, 16),
(119, 73, 'Bahan Bakar Minyak PP PKU - Siak - Bengkalis', 1, 21, '590000', 0, '2018-04-04 00:00:00', 1, 16),
(120, 73, 'Fery Sei Pakning - Bengkalis PP', 2, 21, '128000', 0, '2018-03-11 00:00:00', 1, 16),
(121, 74, 'Uang Harian di Riau', 4, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(122, 75, 'Uang Harian di Riau', 4, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(123, 75, 'Hotel di Siak', 1, 3, '400000', 0, '2018-03-11 00:00:00', 1, 16),
(124, 75, 'Hotel di Bengkalis', 2, 3, '300000', 0, '2018-03-11 00:00:00', 1, 16),
(125, 76, 'Uang Harian di Riau', 4, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(126, 77, 'Uang Harian di Riau', 3, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(127, 77, 'Hotel di Rohul', 1, 3, '425000', 0, '2018-03-11 00:00:00', 1, 16),
(128, 77, 'Hotel di Kampar', 1, 3, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(129, 77, 'Sewa Mobil', 3, 2, '275000', 0, '2018-03-11 00:00:00', 1, 16),
(130, 77, 'Bahan Bakar Minyak PKU - Rohul PP', 1, 21, '382400', 0, '2018-04-21 00:00:00', 1, 16),
(131, 78, 'Uang Harian di Riau', 3, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(132, 79, 'Uang Harian di Riau', 3, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(133, 79, 'Hotel di Rohul', 1, 3, '425000', 0, '2018-03-11 00:00:00', 1, 16),
(134, 79, 'Hotel di Kampar', 1, 3, '490000', 0, '2018-03-11 00:00:00', 1, 16),
(135, 80, 'Uang Harian di Riau', 3, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(136, 81, 'Uang Harian di Riau', 3, 2, '370000', 0, '2018-03-11 00:00:00', 1, 16),
(137, 82, 'Tiket Pesawat PKU - Batam PP', 1, 21, '849800', 0, '2018-03-12 00:00:00', 1, 16),
(138, 82, 'Hotel di Batam', 2, 3, '588000', 0, '2018-03-12 00:00:00', 1, 16),
(139, 82, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(140, 82, 'Taxi  Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(141, 82, 'Taxi Bandara - Hotel di Batam', 2, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(142, 82, 'Taksi Hotel - Pelabuhan PP', 2, 21, '125000', 0, '2018-03-12 00:00:00', 1, 16),
(143, 83, 'Tiket Pesawat PKU - Batam PP', 1, 21, '849800', 0, '2018-03-12 00:00:00', 1, 16),
(144, 83, 'Hotel di Batam', 2, 3, '588000', 0, '2018-03-12 00:00:00', 1, 16),
(145, 83, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(146, 83, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(147, 83, 'Taksi Bandara - Hotel di Batam', 2, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(148, 83, 'Transportasi Lokal di Tg. Pinang', 1, 2, '500000', 0, '2018-03-12 00:00:00', 1, 16),
(149, 84, 'Tiket Pesawat PKU - Batam PP', 1, 21, '849800', 0, '2018-03-12 00:00:00', 1, 16),
(150, 84, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(151, 84, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(153, 85, 'Tiket Pesawat PKU - Batam PP', 1, 21, '849800', 0, '2018-03-12 00:00:00', 1, 16),
(154, 85, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(155, 85, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(157, 85, 'Fery Batam - Tg. Pinang PP', 1, 21, '130000', 0, '2018-03-12 00:00:00', 1, 16),
(158, 84, 'Fery Batam - Tg. Pinang PP', 1, 21, '130000', 0, '2018-03-12 00:00:00', 1, 16),
(159, 83, 'Fery Batam - Tg. Pinang PP', 1, 21, '130000', 0, '2018-03-12 00:00:00', 1, 16),
(160, 86, 'Tiket Pesawat PKU - Batam PP', 1, 25, '588300', 0, '2018-04-11 00:00:00', 1, 16),
(161, 86, 'Uang Harian di Kepulauan Riau', 4, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(162, 86, 'Taxi  Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(163, 86, 'Taksi Bandara - Pelabuhan Batam', 1, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(164, 86, 'Taksi Hotel - Bandara di Batam', 1, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(165, 86, 'Fery Batam - Tg. Balai - Meranti PP', 1, 21, '320000', 0, '2018-03-16 00:00:00', 1, 16),
(166, 86, 'Hotel di Tg. Balai', 1, 3, '340000', 0, '2018-03-12 00:00:00', 1, 16),
(167, 86, 'Hotel di Selat Panjang', 1, 3, '553000', 0, '2018-03-12 00:00:00', 1, 16),
(168, 86, 'Hotel di Batam', 1, 3, '570000', 0, '2018-04-11 00:00:00', 1, 16),
(169, 87, 'Tiket Pesawat PKU - Batam PP', 1, 21, '588300', 0, '2018-03-12 00:00:00', 1, 16),
(170, 87, 'Uang Harian di Kepulauan Riau', 4, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(171, 87, 'Taksi Bandara - Pelabuhan Batam', 1, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(172, 87, 'Taksi Hotel - Bandara di Batam', 1, 21, '137000', 0, '2018-03-12 00:00:00', 1, 16),
(173, 87, 'Fery Batam - Tg. Balai - Meranti PP', 1, 21, '320000', 0, '2018-03-16 00:00:00', 1, 16),
(174, 87, 'Hotel di Tg. Balai', 1, 3, '306000', 0, '2018-03-12 00:00:00', 1, 16),
(175, 87, 'Hotel di Selat Panjang', 1, 3, '390000', 0, '2018-03-12 00:00:00', 1, 16),
(176, 87, 'Hotel di Batam', 1, 3, '570000', 0, '2018-03-12 00:00:00', 1, 16),
(177, 88, 'Tiket Pesawat PKU - Batam PP', 1, 21, '588300', 0, '2018-03-12 00:00:00', 1, 16),
(178, 88, 'Uang Harian di Kepulauan Riau', 4, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(181, 88, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(182, 88, 'Fery Batam - Tg. Balai - Meranti PP', 1, 21, '320000', 0, '2018-03-16 00:00:00', 1, 16),
(183, 87, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(184, 89, 'Tiket Pesawat PKU - Batam PP', 1, 21, '588300', 0, '2018-03-12 00:00:00', 1, 16),
(185, 89, 'Uang Harian di Kepulauan Riau', 4, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(186, 89, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(189, 89, 'Fery Batam - Tg. Balai - Meranti PP', 1, 21, '320000', 0, '2018-03-16 00:00:00', 1, 16),
(190, 90, 'Tiket Pesawat PKU - Batam PP', 1, 21, '588300', 0, '2018-03-12 00:00:00', 1, 16),
(191, 90, 'Uang Harian di Kepulauan Riau', 4, 2, '370000', 0, '2018-03-12 00:00:00', 1, 16),
(192, 90, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-12 00:00:00', 1, 16),
(195, 90, 'Fery Batam - Tg. Balai - Meranti PP', 1, 21, '320000', 0, '2018-03-16 00:00:00', 1, 16),
(196, 91, 'Tiket Pesawat PKU - Batam PP', 1, 21, '530000', 0, '2018-03-13 00:00:00', 1, 16),
(197, 91, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-13 00:00:00', 1, 16),
(198, 91, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-13 00:00:00', 1, 16),
(199, 91, 'Taksi Bandara - Hotel di Batam', 2, 21, '137000', 0, '2018-03-13 00:00:00', 1, 16),
(200, 91, 'Hotel di Batam', 2, 3, '439375', 0, '2018-03-13 00:00:00', 1, 16),
(201, 91, 'Transportasi Lokal di Batam ', 1, 2, '700000', 0, '2018-03-13 00:00:00', 1, 16),
(202, 92, 'Tiket Pesawat PKU - Batam PP', 1, 21, '530000', 0, '2018-03-13 00:00:00', 1, 16),
(203, 92, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-13 00:00:00', 1, 16),
(204, 92, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-13 00:00:00', 1, 16),
(206, 93, 'Tiket Pesawat PKU - Batam PP', 1, 21, '530000', 0, '2018-03-13 00:00:00', 1, 16),
(207, 93, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-13 00:00:00', 1, 16),
(208, 93, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-13 00:00:00', 1, 16),
(210, 93, 'Hotel di Batam', 2, 3, '439375', 0, '2018-03-13 00:00:00', 1, 16),
(211, 94, 'Tiket Pesawat PKU - Batam PP', 1, 25, '530000', 0, '2018-04-10 00:00:00', 1, 16),
(212, 94, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-13 00:00:00', 1, 16),
(213, 94, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 0, '2018-03-13 00:00:00', 1, 16),
(215, 95, 'Tiket Pesawat PKU - Batam PP', 1, 25, '530000', 0, '2018-04-10 00:00:00', 1, 16),
(216, 95, 'Uang Harian di Kepulauan Riau', 3, 2, '370000', 0, '2018-03-13 00:00:00', 1, 16),
(217, 95, 'Taksi Rumah - Bandara PKU', 2, 21, '94000', 1, '2018-03-13 00:00:00', 1, 16),
(218, 95, 'Taksi Bandara - Hotel di Batam', 2, 21, '137000', 1, '2018-03-13 00:00:00', 1, 16),
(219, 95, 'Hotel di Batam', 2, 3, '439375', 0, '2018-03-13 00:00:00', 1, 16),
(225, 86, 'Taksi Pelabuhan - Hotel di Batam', 2, 19, '125000', 0, '2018-03-15 00:00:00', 1, 16),
(226, 96, 'Snack ', 70, 17, '5000', 0, '2018-04-03 00:00:00', 1, 16),
(227, 86, 'Ekstras Bed Hotel di Batam', 1, 3, '250000', 0, '2018-04-11 00:00:00', 1, 16),
(228, 82, 'Fery Batam - Tg. Pinang PP', 2, 21, '65000', 0, '2018-04-21 00:00:00', 1, 16),
(229, 97, 'Undangan Wisuda', 860, 20, '6500', 0, '2018-04-21 00:00:00', 1, 16),
(230, 98, 'Biaya Cetak Tas Wisuda', 850, 20, '15500', 0, '2018-04-21 00:00:00', 1, 16),
(231, 99, 'Medali Wisuda Sarjan dan Diploma', 750, 20, '22500', 0, '2018-04-21 00:00:00', 1, 16),
(232, 99, 'Medali Program Doktor dan S2', 50, 20, '22500', 0, '2018-04-21 00:00:00', 1, 16),
(233, 100, 'Map Ijazah ', 800, 20, '23000', 0, '2018-04-21 00:00:00', 1, 16),
(234, 101, 'Cetak Album Wisuda', 810, 12, '25500', 0, '2018-04-21 00:00:00', 1, 16),
(235, 102, 'Cetak Sertifikat dan Bingkai', 13, 20, '135000', 0, '2018-04-21 00:00:00', 1, 16),
(236, 103, 'Cetak Buku Panduan Wisuda', 200, 12, '13500', 0, '2018-04-21 00:00:00', 1, 16),
(237, 104, 'Cetak Co Carde Panitia', 200, 20, '5000', 0, '2018-04-21 00:00:00', 1, 16),
(238, 105, 'Baleho Wisuda', 20, 23, '45000', 0, '2018-04-21 00:00:00', 1, 16),
(239, 105, 'Spanduk Wisuda (3 Buah @5 M)', 15, 23, '30000', 0, '2018-04-21 00:00:00', 1, 16),
(240, 106, 'Isolasi Bening ', 12, 20, '15000', 0, '2018-04-21 00:00:00', 1, 16),
(241, 106, 'Copy SK Wisudawan dan SK Pemuncak ', 500, 13, '200', 0, '2018-04-21 00:00:00', 1, 16),
(242, 107, 'Tiket Pesawat Pekanbaru-Jakarta ( PP )', 1, 21, '995949', 0, '2018-04-23 00:00:00', 1, 16),
(243, 107, 'Taksi Rumah - Bandara Sultan Syarif Kasim II ( PP )', 2, 21, '94000', 0, '2018-04-23 00:00:00', 1, 16),
(244, 107, 'Taksi Bandara Cengkareng Soeta - Hotel ( PP )', 2, 21, '256000', 0, '2018-04-23 00:00:00', 1, 16),
(245, 107, 'Hotel Ciputra Jakarta', 1, 3, '479988,5', 0, '2018-04-23 00:00:00', 1, 16),
(246, 108, 'Tiket Pesawat Pekanbaru-Jakarta ( PP )', 1, 21, '995949', 0, '2018-04-23 00:00:00', 1, 16),
(247, 108, 'Taksi Rumah - Bandara Sultan Syarif Kasim II ( PP )', 2, 21, '94000', 0, '2018-04-23 00:00:00', 1, 16),
(248, 108, 'Taksi Bandara Cengkareng Soeta - Hotel ( PP )', 2, 21, '256000', 0, '2018-04-23 00:00:00', 1, 16),
(249, 108, 'Hotel Ciputra Jakarta', 1, 3, '479988', 0, '2018-04-23 00:00:00', 1, 16),
(250, 108, 'Hotel Amaris Hotel Bandara Soeta', 1, 3, '463498', 0, '2018-04-23 00:00:00', 1, 16),
(251, 108, 'Uang Harian', 2, 2, '530000', 0, '2018-04-24 00:00:00', 1, 16),
(252, 109, 'Tiket Pesawat Pekanbaru-Jakarta ( PP )', 1, 21, '995949', 0, '2018-04-23 00:00:00', 1, 16),
(253, 108, 'Uang Harian Fullboard', 1, 2, '180000', 0, '2018-04-24 00:00:00', 1, 16),
(254, 110, 'Sewa Blower', 12, 20, '450000', 0, '2018-04-24 00:00:00', 1, 16),
(255, 111, 'Sewa Taman Bunga Wisuda', 1, 16, '3450000', 0, '2018-04-24 00:00:00', 1, 16),
(257, 112, 'Sewa Tenda Ukuran 4 x 6', 12, 20, '350000', 0, '2018-04-24 00:00:00', 1, 16),
(258, 112, 'Sewa Kursi Plastik', 200, 20, '5000', 0, '2018-04-24 00:00:00', 1, 16),
(260, 113, 'Nasi Bungkus Persiapan Tempat Wisuda', 70, 26, '17000', 0, '2018-04-24 00:00:00', 1, 16),
(261, 113, 'Nasi Bungkus Malam Persiapan', 70, 26, '17000', 0, '2018-04-24 00:00:00', 1, 16),
(262, 113, 'Jus Malam Persiapan', 70, 28, '10000', 0, '2018-04-24 00:00:00', 1, 16),
(264, 114, 'Isolasi Bening Besar', 20, 20, '15000', 0, '2018-04-24 00:00:00', 1, 16),
(265, 114, 'Pisau Cutter', 10, 20, '12500', 0, '2018-04-24 00:00:00', 1, 16),
(266, 114, 'Foto Copy SK ', 750, 13, '200', 0, '2018-04-24 00:00:00', 1, 16),
(267, 115, 'Uang Lelah Petugas Kebersihan', 1, 16, '2000000', 0, '2018-04-25 00:00:00', 1, 16),
(268, 116, 'Uang Lelah Petugas Keamanan', 1, 1, '6500000', 0, '2018-04-25 00:00:00', 1, 16),
(269, 117, 'Uang lelah Pemain Kompang', 1, 1, '2000000', 0, '2018-04-25 00:00:00', 1, 16),
(270, 118, 'Uang Lelah Petugas Paduan Suara', 1, 1, '3000000', 0, '2018-04-25 00:00:00', 1, 16),
(271, 119, 'Uang Lelah Petugas Acara', 1, 1, '1000000', 0, '2018-04-25 00:00:00', 1, 16),
(272, 120, 'Biaya Photo dan Cuci Cetak Photo (12 R @ 2 Lbr)', 800, 25, '26000', 0, '2018-04-25 00:00:00', 1, 16),
(275, 121, 'Pembelian Al Quran Al Jamil Besar', 13, 12, '225000', 0, '2018-04-26 00:00:00', 1, 16),
(276, 122, 'spanduk', 1, 23, '50000', 0, '2018-05-24 00:00:00', 1, 0),
(278, 124, 'BBM Mobil Pekanbaru - Padang  PP', 2, 21, '400000', 1, '2018-05-25 00:00:00', 1, 0),
(279, 124, 'Uang Harian di Padang (370.000 x 3 Hari x 70%)', 3, 2, '259000', 0, '2018-05-25 00:00:00', 1, 0),
(280, 124, 'Hotel di Padang (600.000 x 2 Hari x 70 %)', 2, 2, '420000', 1, '2018-05-25 00:00:00', 1, 0),
(281, 123, 'Biaya Cetak', 100, 12, '120000', 0, '2018-05-25 00:00:00', 1, 0),
(282, 125, 'Biaya Cetak', 100, 12, '130000', 0, '2018-05-25 00:00:00', 1, 0),
(283, 126, 'Biaya Cetak', 50, 12, '240000', 0, '2018-05-25 00:00:00', 1, 0),
(284, 127, 'Nasi Kotak', 12, 17, '28000', 0, '2018-05-25 00:00:00', 1, 0),
(285, 128, 'Nasi Kotak', 16, 17, '28000', 0, '2018-05-25 00:00:00', 1, 0),
(286, 129, 'Nasi Kotak', 16, 17, '28000', 0, '2018-05-25 00:00:00', 1, 0),
(287, 130, 'Biaya Cetak', 50, 3, '100000', 0, '2018-05-25 00:00:00', 1, 0),
(288, 131, 'Nasi Kotak', 16, 17, '28000', 0, '2018-05-25 00:00:00', 1, 0),
(289, 132, 'Nasi Kotak', 16, 17, '28000', 0, '2018-05-25 00:00:00', 1, 0),
(290, 134, 'Tiket Pesawat PKU - Ujung Pandang ', 1, 21, '1925000', 0, '2018-05-28 00:00:00', 1, 0),
(291, 134, 'Tiket Pesawat Ujung Pandang - PKU', 1, 21, '1697500', 0, '2018-05-28 00:00:00', 1, 0),
(292, 134, 'Hotel di Makassar', 1, 3, '618000', 0, '2018-05-28 00:00:00', 1, 0),
(293, 134, 'Taksi Tempat Kedudukan - Bandara di PKU PP', 2, 21, '94000', 1, '2018-05-28 00:00:00', 1, 0),
(294, 134, 'Taksi Bandara - Hotel di Makassar PP', 2, 21, '145000', 1, '2018-05-28 00:00:00', 1, 0),
(295, 134, 'Uang Harian di Makassar', 2, 2, '430000', 0, '2018-05-28 00:00:00', 1, 0),
(296, 135, 'Tiket Pesawat PKU - Ujung Pandang ', 1, 21, '1925000', 0, '2018-05-28 00:00:00', 1, 0),
(297, 135, 'Tiket Pesawat Ujung Pandang - PKU', 1, 21, '1697500', 0, '2018-05-28 00:00:00', 1, 0),
(298, 135, 'Hotel di Makassar', 1, 3, '618000', 0, '2018-05-28 00:00:00', 1, 0),
(299, 135, 'Taksi Tempat Kedudukan - Bandara di PKU PP', 2, 21, '94000', 1, '2018-05-28 00:00:00', 1, 0),
(300, 135, 'Taksi Bandara - Hotel di Makassar PP', 2, 21, '145000', 1, '2018-05-28 00:00:00', 1, 0),
(301, 135, 'Uang Harian di Makassar', 2, 2, '430000', 0, '2018-05-28 00:00:00', 1, 0),
(302, 136, 'Tiket Pesawat PKU - Ujung Pandang ', 1, 21, '1925000', 0, '2018-05-28 00:00:00', 1, 0),
(303, 136, 'Tiket Pesawat Ujung Pandang - PKU', 1, 21, '1697500', 0, '2018-05-28 00:00:00', 1, 0),
(305, 136, 'Taksi Tempat Kedudukan - Bandara di PKU PP', 2, 21, '94000', 1, '2018-05-28 00:00:00', 1, 0),
(306, 136, 'Taksi Bandara - Hotel di Makassar PP', 2, 21, '145000', 1, '2018-05-28 00:00:00', 1, 0),
(307, 136, 'Uang Harian di Makassar', 2, 2, '430000', 0, '2018-05-28 00:00:00', 1, 0),
(308, 137, 'Fullday Meeting', 25, 16, '135000', 0, '2018-05-28 00:00:00', 1, 0),
(309, 138, 'Cetak Kalender Akademik', 6000, 13, '2150', 0, '2018-05-28 00:00:00', 1, 0),
(310, 139, 'Tiket Pesawat PKU - Ujung Pandang ', 1, 21, '2755000', 0, '2018-05-30 00:00:00', 1, 0),
(311, 139, 'Tiket Pesawat Ujung Pandang - PKU', 1, 21, '2639100', 0, '2018-05-30 00:00:00', 1, 0),
(312, 139, 'Hotel di Makassar', 1, 3, '718000', 0, '2018-05-30 00:00:00', 1, 0),
(314, 139, 'Taksi Bandara - Hotel di Makassar PP', 2, 21, '145000', 1, '2018-05-28 00:00:00', 1, 0),
(315, 139, 'Uang Harian di Makassar', 2, 2, '430000', 0, '2018-05-28 00:00:00', 1, 0),
(316, 139, 'Uang Representasi', 2, 2, '150000', 0, '2018-05-30 00:00:00', 1, 0),
(317, 140, 'Cetak Form Tanda Terima Undangan Mandiri NCR', 3, 24, '850000', 0, '2018-05-30 00:00:00', 1, 0),
(318, 140, 'Cetak Form Verifikasi, Validasi dan Cetak KTM NCR', 6, 24, '850000', 0, '2018-05-30 00:00:00', 1, 0),
(319, 141, 'Cetak Baleho Orientasi ( 4 x 5 M)', 20, 23, '35000', 0, '2018-05-30 00:00:00', 1, 0),
(321, 142, 'Biaya Operasional Pengadaan Aplikasi Kwitansi', 1, 16, '7000000', 0, '2018-05-30 00:00:00', 1, 0),
(322, 143, 'Biaya Operasional Update dan Upgrade Web Akademik', 1, 16, '5500000', 0, '2018-05-30 00:00:00', 1, 0),
(323, 144, 'BBM Mobil Pekanbaru - Padang  PP', 1, 21, '637506', 1, '2018-05-31 00:00:00', 1, 0),
(324, 144, 'Uang Harian di Padang ', 3, 2, '380000', 0, '2018-05-31 00:00:00', 1, 0),
(325, 144, 'Hotel di Padang ', 2, 2, '775000', 1, '2018-05-31 00:00:00', 1, 0),
(327, 145, 'Snack Peserta Jalur SNMPTN', 680, 22, '3000', 0, '2018-05-31 00:00:00', 1, 0),
(328, 145, 'Snack Peserta Jalur SPAN PTKIN', 1337, 22, '3000', 0, '2018-05-31 00:00:00', 1, 0),
(329, 145, 'Snack Peserta Jalur Undangan Mandiri', 659, 22, '3000', 0, '2018-05-31 00:00:00', 1, 0),
(330, 146, 'Sewa Tenda Ukuran 3x4 m', 15, 19, '500000', 0, '2018-05-31 00:00:00', 1, 0),
(331, 148, 'Aqua Galon', 45, 30, '25000', 0, '2018-06-04 00:00:00', 1, 0),
(332, 148, 'Aqua Gelas', 18, 17, '30000', 0, '2018-06-04 00:00:00', 1, 0),
(334, 148, 'Gula Pasir', 15, 31, '15000', 0, '2018-06-04 00:00:00', 1, 0),
(335, 148, 'Teh Celup', 10, 17, '10000', 0, '2018-06-04 00:00:00', 1, 0),
(336, 148, 'Biskuit', 30, 26, '15000', 0, '2018-06-04 00:00:00', 1, 0),
(337, 148, 'Tisu Box Besar', 6, 26, '40000', 0, '2018-06-04 00:00:00', 1, 0),
(338, 148, 'Kopi Giseng CNI', 15, 26, '65000', 0, '2018-06-04 00:00:00', 1, 0),
(339, 149, 'Aqua Galon', 45, 30, '25000', 0, '2018-06-04 00:00:00', 1, 0),
(340, 149, 'Aqua Gelas', 18, 17, '30000', 0, '2018-06-04 00:00:00', 1, 0),
(341, 149, 'Gula Pasir', 15, 31, '15000', 0, '2018-06-04 00:00:00', 1, 0),
(342, 149, 'Teh Celup', 10, 17, '10000', 0, '2018-06-04 00:00:00', 1, 0),
(343, 149, 'Biskuit', 30, 26, '15000', 0, '2018-06-04 00:00:00', 1, 0),
(344, 149, 'Tisu Box Besar', 6, 26, '40000', 0, '2018-06-04 00:00:00', 1, 0),
(345, 149, 'Kopi Giseng CNI', 15, 26, '65000', 0, '2018-06-04 00:00:00', 1, 0),
(346, 150, 'Nasi Kotak', 96, 17, '27000', 0, '2018-06-04 00:00:00', 1, 0),
(347, 150, 'Jus', 96, 26, '8000', 0, '2018-06-04 00:00:00', 1, 0),
(348, 151, 'Nasi Kotak', 45, 17, '27000', 0, '2018-06-04 00:00:00', 1, 0),
(349, 152, 'Nasi Kotak', 17, 17, '27000', 0, '2018-06-04 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mak`
--

CREATE TABLE `mak` (
  `id_mak` int(12) NOT NULL,
  `mak` int(6) NOT NULL,
  `nama_mak` varchar(100) NOT NULL,
  `saldo` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mak`
--

INSERT INTO `mak` (`id_mak`, `mak`, `nama_mak`, `saldo`, `id_user`) VALUES
(8, 525112, 'Belanja Barang', '2253712000', 16),
(9, 525113, 'Belanja Jasa', '155500000', 16),
(10, 525115, 'Belanja Perjalanan', '321682000', 16),
(11, 525119, 'Belanja Penyedia Barang dan Jasa BLU Lainnya', '450000000', 16),
(12, 521211, 'Belanja Bahan', '32400000', 16),
(13, 521213, 'Honor Output Kegiatan', '67600000', 16),
(14, 525112, 'Belanja Barang', '122410000', 17),
(15, 525115, 'Belanja Perjalanan', '133000000', 17),
(16, 521211, 'Belanja Bahan', '7750000', 17),
(17, 521213, 'Honor Output Kegiatan', '47250000', 17),
(18, 521119, 'Belanja Barang Operasional Lainnya', '178790000', 17),
(19, 521211, 'Belanja Bahan', '45460000', 17),
(20, 521213, 'Honor Output Kegiatan', '214300000', 17),
(21, 524111, 'Belanja Perjalanan Biasa', '292450000', 17),
(22, 524111, 'Belanja Perjalanan Biasa', '200000000', 17),
(23, 521111, 'Keperluan Sehari hari Perkantoran', '91597000', 17),
(24, 525112, 'Belanja Barang', '787550000', 19),
(25, 525113, 'Belanja Jasa', '86800000', 19),
(26, 525111, 'Belanja Gaji dan Tunjangan ', '77289422000', 19),
(27, 525114, 'Belanja Pemeliharaan', '323366000', 19),
(28, 525115, 'Belanja Perjalanan', '1033028000', 19),
(29, 525119, 'Belanja Penyediaan Barang dan Jasa  BLU Lainnya', '1945837000', 19),
(30, 537112, 'Belanja Modal Peralatan dan Mesin', '1303010000', 19),
(31, 537115, 'Belanja Modal Fisik Lainnya ', '195000000', 19),
(32, 537113, 'Belanja Modal Gedung dan Bangunan', '5200000000', 19),
(33, 537111, 'Belanja Modal Tanah', '2170000000', 19);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1493937473),
('m130524_201442_init', 1493937485);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(12) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `nama_pegawai` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `id_user`) VALUES
(1, '040005077', 'Sri Susilawati, S.E', 16),
(2, '19670104 199402 1 001', 'Drs. H. Eramli Jantan Abdullah, M.M', 16),
(3, '19690618 199102 2 001', 'Rinayeni, S.Sos', 16),
(4, '19700926 199103 2 002', 'Laily Kurniati, S.Th.I', 16),
(5, '19720517 199903 2 004', 'Dr.Suriani,S.Ag., S.S., M.Si', 16),
(6, '19720611 200701 1 033', 'Hardianto', 16),
(7, '19730223 200701 1 022', 'Budi Candra Negara Mazda, S.E', 16),
(8, '19731227 199402 2 001', 'Desi Devrika Devra, S.HI., M.Si', 16),
(9, '19740420 199402 2 001', 'Sukmaleta, S.Sos', 16),
(10, '19741216 200012 2 002', 'Desy Sesmita Wati', 16),
(11, '19780717 200701 1 019', 'Yusrizal, S.E', 16),
(12, '19800408 200701 2 012', 'Ari Delvia', 16),
(13, '19810418 200701 1 013', 'Purwanto, S.Kom', 16),
(14, '19840727 200604 1 002', 'Hadi Saputra, S.E', 16),
(15, '040005033', 'Yusniarti, S.P', 16),
(16, '040006053', 'Yennita Trisia, S.E., M.M., Ak', 16),
(17, '130015006', 'Nur Azizah, S.Pd.I', 16),
(18, '040006025', 'Hamzami', 16),
(19, '130010016', 'Irhamna', 16),
(20, '130 012 016', 'Surya El Hadi, S.T', 16),
(21, '130 011 018', 'Azwir', 16),
(22, '130009006', 'Winardi, S.T', 16),
(23, '130011013', 'Andika', 16),
(24, '19650517 199102 1 001', 'H. A. Bukhari, SH, MH', 17),
(25, '19731020 199803 1 001', 'Ulva Indra, SE', 17),
(26, '19760827 200604 1 002', 'Budi Satriadi, S.Ag', 17),
(27, '19830104 200901 2 010', 'Khalidah Aini, SE', 17),
(28, '19641010 198912 1 001', 'Sayang Rizal', 17),
(29, '19770215 200901 2 004', 'Febriati, ST', 17),
(30, '19760821 200701 1 017', 'Zamzalis, Spd.I', 17),
(31, '19821012 200901 2 009', 'Rika Anggraini, SE', 17),
(32, '19820520 200901 1 014', 'Malvi Asra Van Suri, SE', 17),
(33, '130 008 045', 'Afri Roza, S.Sos', 17),
(34, '130 012 005', 'Agus Alfiandri, SE', 17),
(35, '130 010 017', 'Jaka Ramadhan', 17),
(36, '19670104 199402 1 001', 'Drs. H. Eramli Jantan Abdullah, MM', 17),
(37, '19741216 200012 2 002', 'Desy Sesmita Wati', 17),
(38, '19780717 200701 1 019', 'Yusrizal, SE', 17),
(39, '19550823 198503 1 003', 'Dr. H. Akhyar, M.Ag', 16),
(40, '19650517 199102 1 001', 'H. A. Bukhari, SH, MH', 19),
(41, '19670104 199402 1 001', 'Drs. H. Eramli Jantan Abdullah, MM', 19),
(42, '19630810 198803 2 001', 'Dra. Hj. Kafrina', 19),
(43, '19780717 200701 1 019', 'Yusrizal, SE', 19);

-- --------------------------------------------------------

--
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(12) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerima`
--

INSERT INTO `penerima` (`id_penerima`, `nama_penerima`, `nama_toko`, `created_date`, `id_user`) VALUES
(4, 'Rony Junaidi, S.E', 'Salafy Grafika', '0000-00-00 00:00:00', 16),
(5, 'Nasir', 'Nita Pesta', '2018-02-09 00:00:00', 16),
(6, 'Herizal', 'Fathiya Printing', '2018-02-09 00:00:00', 16),
(7, 'Syariful', 'Rizki Grafika', '2018-02-09 00:00:00', 16),
(8, 'Azhar', 'Azhar Shooting', '2018-02-09 00:00:00', 16),
(9, 'T. Mukhlis, S.E', 'Cipta Utama Advertising', '2018-02-09 00:00:00', 16),
(10, 'Iskandar', 'CV. Mikra Sukses Bersama', '2018-02-09 00:00:00', 16),
(11, 'Ishak', 'Centra Comp', '2018-02-09 00:00:00', 16),
(12, 'Doni', 'RM. Cimpago Jaya', '2018-02-09 00:00:00', 16),
(13, 'Teguh', 'Pondok Bunga', '2018-02-09 00:00:00', 16),
(14, 'Edison', 'Suska TV', '2018-02-12 00:00:00', 16),
(15, 'Betti Wahyuningsih', 'PT. Pos Indonesia', '2018-02-23 00:00:00', 16),
(16, 'Nona', 'Toko Buku Zanafa', '2018-03-02 00:00:00', 16),
(17, 'Rinayeni, S.Sos', 'Kepala Bagian Akademik', '2018-03-03 00:00:00', 16),
(18, 'Riau Televisi', 'Tri Hilda Putri', '2018-03-06 00:00:00', 16),
(19, 'M. Nazir Fahmi', 'PT. Riau Pos, tbk', '2018-03-08 00:00:00', 16),
(20, 'Toko Hendra', 'Hendra', '2018-03-08 00:00:00', 16),
(21, 'Faranudia Julfirdana', 'Koperasi Tuah Bela Karimun', '2018-04-03 00:00:00', 16),
(23, 'Alwi', 'Indra Jaya', '2018-05-24 00:00:00', 17),
(24, 'Reza', 'Semangat Baru', '2018-05-25 00:00:00', 17),
(25, 'OMI', 'RM. Pak Nurdin', '2018-05-25 00:00:00', 17),
(26, 'Esti Novisera', 'Chief Accounting GSH', '2018-05-28 00:00:00', 16),
(27, 'Yuhaya Lissera, S.T', 'Flash Soft', '2018-05-30 00:00:00', 16),
(28, '.......................', 'Toko Roti Hoya', '2018-05-31 00:00:00', 16),
(29, 'Mekar', 'UD Jaya', '2018-06-04 00:00:00', 17),
(30, 'Janeti', 'RM Densiko', '2018-06-04 00:00:00', 17),
(31, 'Wahyu', 'RM. Keluarga Kita', '2018-06-04 00:00:00', 17);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `id_satuan` int(12) NOT NULL,
  `nama_satuan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'Paket'),
(2, 'Hari'),
(3, 'Malam'),
(4, 'Shift'),
(12, 'Eksemplar'),
(13, 'Lembar'),
(14, 'Hari'),
(15, 'Bulan'),
(16, 'Paket'),
(17, 'Kotak'),
(18, 'Box'),
(19, 'Unit'),
(20, 'Buah'),
(21, 'Kali'),
(22, 'Pack'),
(23, 'Meter'),
(24, 'Rim'),
(25, 'Orang'),
(26, 'Bungkus'),
(27, 'Karton'),
(28, 'Gelas'),
(29, 'Liter'),
(30, 'Galon'),
(31, 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `ttd`
--

CREATE TABLE `ttd` (
  `id_ttd` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttd`
--

INSERT INTO `ttd` (`id_ttd`, `id_jabatan`, `id_user`) VALUES
(1, 5, 16),
(2, 1, 16),
(3, 2, 16),
(4, 1, 16),
(5, 2, 16),
(6, 2, 16),
(7, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level_user` enum('writer','admin','super admin') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `level_user`, `email`, `status`, `created_at`, `updated_at`, `unit`, `parent`) VALUES
(12, 'admin', '0x4ACYuhVYsC-7I7rCddjpefeve7qQ-O', '$2y$13$yoB7LEg7oMaPSQ86U5TPfu9A1hnf7W0vaL.qEigL7kjTg8MS25AyS', NULL, 'writer', 'admin@gmail.com', 0, 1504533573, 1526455597, '', 0),
(16, '198407272006041002', 'XixscYJ-843yJsS1GfRi_n6Jg3pp-2I8', '$2y$13$7r6k4HZJh.pZw5CVz3LHRe4xoqCAX0rriXIzf7372EN.eLoZTUfwK', NULL, 'admin', '198407272006041002@gmail.com', 10, 1526283809, 1527490001, 'Bagian Akademik Biro AAKK UIN SUSKA RIAU', 0),
(17, 'perencanaan', 'BzFOHwCitSKfz7SxRxDAfo-hiQsh_0ab', '$2y$13$IgvFJBBI9DBj4FH/Ihx1Z.QFdH7VP/zNGXngLggSZoMWv.BxB3seC', NULL, 'admin', 'perencanaan@gmail.com', 10, 1526296352, 1526297142, 'Bagian Perencanaan Biro AUPK UIN SUSKA RIAU', 0),
(19, 'aupk', 'CmawK0Qwh2r4UD7jwNjb1EhtO6wvFIll', '$2y$13$iK2Lna3gcS2b75QN.M5v.OaUOy2DNWDUBU039dp0EEbHH/FLwW9j.', NULL, 'admin', 'aupk@gmail.com', 10, 1526455788, 1527746145, 'Biro AUPK UIN SUSKA RIAU', 0),
(23, 'youkai', 'FPWMez9_sOZJJjj0QnHRU6b6mZFrAETl', '$2y$13$ziIyWBY8tT3VflG53rwx9uU8c6qpSOg920voZR.M85cvO4Hdnif3e', NULL, 'super admin', 'youkai@gmail.com', 10, 1527753991, 1527753991, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `kwitansi`
--
ALTER TABLE `kwitansi`
  ADD PRIMARY KEY (`id_kwitansi`);

--
-- Indexes for table `kwitansi_detail`
--
ALTER TABLE `kwitansi_detail`
  ADD PRIMARY KEY (`id_kd`);

--
-- Indexes for table `mak`
--
ALTER TABLE `mak`
  ADD PRIMARY KEY (`id_mak`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `ttd`
--
ALTER TABLE `ttd`
  ADD PRIMARY KEY (`id_ttd`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id_kegiatan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kwitansi`
--
ALTER TABLE `kwitansi`
  MODIFY `id_kwitansi` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `kwitansi_detail`
--
ALTER TABLE `kwitansi_detail`
  MODIFY `id_kd` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `mak`
--
ALTER TABLE `mak`
  MODIFY `id_mak` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ttd`
--
ALTER TABLE `ttd`
  MODIFY `id_ttd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
