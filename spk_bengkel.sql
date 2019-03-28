-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2018 at 04:26 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fs_contoh`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(3) NOT NULL,
  `ket_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `ket_gejala`) VALUES
('G01', 'Di stater listrik tidak bisa'),
('G02', 'Klakson tidak bunyi'),
('G03', 'Reating dan lampu tidak bekerja'),
('G04', 'Kelistrikan mati'),
('G05', 'Di stater manual sulit'),
('G06', 'Terjadi suara ledakan kecil pada knalpot'),
('G07', 'Tarikan Berat'),
('G08', 'Keluar asap kehitaman pada knalpot'),
('G09', 'Mesin mudah panas'),
('G10', 'Bahan bakar boros'),
('G11', 'Bunyi gemelitik pada mesin'),
('G12', 'Suara mesin kasar'),
('G13', 'Kecepatan tidak optimal'),
('G14', 'Bunyi kasar saat jalan pelan'),
('G15', 'Kampas kopling lambat'),
('G16', 'suara bising ketika motor digunakan'),
('G17', 'Motor mati (tidak bisa hidup sama sekali)'),
('G18', 'Pada suhu dingin mesin motor susah dihidupkan'),
('G19', 'Kemampuan pengereman berkurang'),
('G20', 'Timbul suara berderit ketika rem digunakan'),
('G21', 'Ayunan motor lembut'),
('G22', 'Ayunan motor keras'),
('G23', 'Pantulan motor berlebihan'),
('G24', 'Berbunyi ketika motor berjalan'),
('G25', 'Performa dan tenaga motor turun'),
('G26', 'Bola lampu mati atau tidak menyala');

-- --------------------------------------------------------

--
-- Table structure for table `kerusakan`
--

CREATE TABLE `kerusakan` (
  `kode_kerusakan` varchar(3) NOT NULL,
  `ket_kerusakan` varchar(100) NOT NULL,
  `solusi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerusakan`
--

INSERT INTO `kerusakan` (`kode_kerusakan`, `ket_kerusakan`, `solusi`) VALUES
('K01', 'Aki', '1. Cas Aki\r\n2. Cek Pengecasan Aki\r\n3. Ganti Aki'),
('K02', 'Busi', '1. Cek Celah Busi\r\n2. Cek Fisik Busi\r\n3. Cek Api Busi'),
('K03', 'Celah Klep', 'Perbaiki motor anda ke bengkel resmi Yamaha'),
('K04', 'Injector', 'Perbaiki motor anda ke bengkel resmi Yamaha'),
('K05', 'Roller', 'Perbaiki motor anda ke bengkel resmi Yamaha'),
('K06', 'CVT', 'Perbaiki motor anda ke bengkel resmi Yamaha'),
('K07', 'ECU', 'Perbaiki motor anda ke bengkel resmi Yamaha'),
('K08', 'FUEL PUMP', '1. Bongkar Body motor daerah tengki minyak\n2. Bongkar Tengki minyak\n3. Kosongkan tengki minyak\n4. Buka baut pengikat Fuel Pump\n5. Belilah Fuel Pump sesuai dengan tipe motor anda\n6. Lalu Pasang Kembali  '),
('K09', 'Kampas', '1. Setel rem \r\n2. Ganti rem'),
('K10', 'Shock Breaker', '1. Buka body motor\n2. Buka baut pengikat\n3. Beli Shock Breaker sesuai tipe\n4. Pasang kembali'),
('K11', 'Filter Udara', '1. Buka body motor\n2. Buka baut pengikat\n3. Beli Filter Udara sesuai tipe\n4. Pasang kembali'),
('K12', 'Sistem Sinyal', '-');

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
  `no_bukti` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `created_by` int(12) NOT NULL,
  `jabatan3` int(12) NOT NULL,
  `pegawai3` int(12) NOT NULL,
  `jabatan2` int(12) NOT NULL,
  `pegawai2` int(12) NOT NULL,
  `pegawai1` int(12) NOT NULL,
  `jabatan1` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kwitansi`
--

INSERT INTO `kwitansi` (`id_kwitansi`, `tgl_kwitansi`, `kegiatan`, `mak`, `keterangan`, `ppn`, `total`, `kepada`, `pegawai`, `no_spd`, `tgl_spd`, `no_bukti`, `created_date`, `created_by`, `jabatan3`, `pegawai3`, `jabatan2`, `pegawai2`, `pegawai1`, `jabatan1`) VALUES
(15, '2018-01-15', 1, 8, 'Biaya Settingan dan Cetak Leaflet Penerimaan Mahasiswa Baru dalam rangka sosialisasi Penerimaan Mahasiswa Baru UIN Suska Riau TA. 2018/2019 di Provinsi Riau dan Kepulauan Riau', '10', '14960000', 4, '', '', '0000-00-00', '-', '0000-00-00 00:00:00', 0, 0, 0, 0, 0, 0, 0),
(16, NULL, 1, 10, 'Biaya Perjalanan Dinas an. Hadi Saputra dalam rangka Sosialisasi Penerimaan Mahasiswa Baru UIN Sultan Syarif Kasim Riau Tahun Akademik 2018/2019 di Kabupaten Pelalawan, Inhu, dan Inhil selama 4 Hari pada tanggal 5 s.d 8 Februari 2018 berdasarkan Surat Tugas Rektor Nomor :             Tanggal 3 Februari 2018', '0', '2205000', NULL, '14', 'Un.04/PPK/           /2018', '2018-02-13', '', '2018-02-10 00:00:00', 1, 0, 0, 0, 0, 0, 0);

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
  `created_date` datetime NOT NULL,
  `created_by` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kwitansi_detail`
--

INSERT INTO `kwitansi_detail` (`id_kd`, `id_kwitansi`, `kegiatan`, `volume`, `satuan`, `harga`, `created_date`, `created_by`) VALUES
(10, 15, 'Settingan dan Pencetakan Leaflet UIN Suska Riau', 3000, 13, '3200', '2018-02-12 00:00:00', 1),
(11, 15, 'Cetak Leaflet SNMPTN dan SBMPTN 2018', 2000, 13, '2000', '2018-02-12 00:00:00', 1),
(14, 16, 'Uang Harian di Riau', 4, 14, '370000', '2018-02-10 00:00:00', 1),
(15, 16, 'Hotel di Inhu ', 1, 3, '475000', '2018-02-10 00:00:00', 1),
(16, 16, 'Hotel di Inhil (450.000 x 30% = 125.000)', 2, 3, '125000', '2018-02-11 00:00:00', 1);

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
-- Table structure for table `penerima`
--

CREATE TABLE `penerima` (
  `id_penerima` int(12) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `kode_rule` varchar(5) NOT NULL,
  `kaidah_aturan` varchar(100) NOT NULL,
  `kode_kerusakan` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`kode_rule`, `kaidah_aturan`, `kode_kerusakan`) VALUES
('R01', 'G01,G02,G03,G04', 'K01'),
('R02', 'G05,G06,G07,G08', 'K02'),
('R03', 'G07,G09', 'K03'),
('R04', 'G01,G05,G07,G10', 'K04'),
('R05', 'G05,G07,G11,G12,G13', 'K05'),
('R06', 'G07,G14,G15', 'K06'),
('R07', 'G16,G17', 'K07'),
('R08', 'G16,G17,G18', 'K08'),
('R09', 'G19,G20', 'K09'),
('R10', 'G21,G22,G23,G24', 'K10'),
('R11', 'G10,G12,G25', 'K11'),
('R12', 'G01,G02,G03,G04,G26', 'K12');

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
(27, 'Karton');

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
  `level_user` enum('User','Admin') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `level_user`, `email`, `status`, `created_at`, `updated_at`, `unit`) VALUES
(12, 'wulan90', 'G5IcDbvnV5Ho-MC7tAYL06XVSJ4wfx9p', '$2y$13$dnvukORKghIgSO9wgJcGueZUfRl1l.JRn8u3b8C9bN52cwDNkVcTu', NULL, 'User', 'wulan90@gmail.com', 10, 1504533573, 1538410775, ''),
(24, '198407272006041002', 'dFGoHTjcHX-v1LRaVZN7zl5A6xBstKmw', '$2y$13$2j9SEePtaPukEpS54GwYfOMvwcfv03sw8aJae0HWQl0L5iIqcWhAm', NULL, 'User', '198407272006041002@gmail.com', 0, 1525689501, 1536650872, ''),
(26, 'Dikha Friasi', '1M-vhNaWxIZJ_e-aG59Go0Z7XKrKbteJ', '$2y$13$BCrGMlq1vmsIuaSPXcTztu01g1mZq4NKV7bUrda7rlrcCwdb1ph8.', NULL, 'Admin', 'dikhafriasisitanggang@gmail.com', 10, 1536650582, 1536650582, '10'),
(27, 'tania', 'tWO2pQ_gySnEfwBXKpFrG8iCA52eSwuq', '$2y$13$XOGdDTn8AAVaf9kbaH9qPuP1tyVD8jlbS2vgpDcBFRdNBV7nYjhzS', NULL, 'User', 'tania@gmail.com', 0, 1538662626, 1538662626, '10'),
(29, '1', 'YK31dIug2-Tvy_NnPn4dpcAXHP4J_pj9', '$2y$13$oBglFMcr1pHJ6/C9UUKEluOViMMnGf9MvVwU9gqJS/nuxfQzh01Hy', NULL, 'User', '1@gmail.com', 0, 1539317673, 1539317673, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`kode_kerusakan`);

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
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `penerima`
--
ALTER TABLE `penerima`
  ADD PRIMARY KEY (`id_penerima`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`kode_rule`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id_satuan`);

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
-- AUTO_INCREMENT for table `kwitansi`
--
ALTER TABLE `kwitansi`
  MODIFY `id_kwitansi` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kwitansi_detail`
--
ALTER TABLE `kwitansi_detail`
  MODIFY `id_kd` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `penerima`
--
ALTER TABLE `penerima`
  MODIFY `id_penerima` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id_satuan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
