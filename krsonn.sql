-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2016 at 10:59 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krson`
--

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `id_penerima` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id`, `id_pengirim`, `id_penerima`, `pesan`, `tanggal`, `status`) VALUES
(1, 3, 5, 'assalamualaikum pak', '2016-06-08 07:41:00', 0),
(2, 3, 5, 'assalamualaikum pak', '2016-06-08 07:41:40', 0),
(3, 3, 5, 'gimana nilai tisi saya?\r\n', '2016-06-08 07:42:15', 0),
(4, 4, 5, 'Assalamu''alaikum Pak. Pa'' saya udah ngisii krs pak, \r\nmatkul yang saya pilih aman kan pak? soalnya nilai saya yang semester kemaren rendah pak,\r\nmkasiii pak', '2016-06-08 08:50:37', 0),
(5, 5, 3, 'ga apa-apa kok. kamu rajin aja kuliahnya tugasnya dbuat tepat waktu', '2016-06-08 08:54:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nidn` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `alamat` text COLLATE utf8_unicode_ci,
  `agama` int(11) DEFAULT NULL,
  `status_perkawinan` int(11) DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_telp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_ktp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_rek` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_sertifikasi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tahun_sertifikasi` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_sertifikasi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_npwp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_npwp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `nidn`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `agama`, `status_perkawinan`, `email`, `no_telp`, `no_ktp`, `photo`, `bank`, `no_rek`, `no_sertifikasi`, `tahun_sertifikasi`, `file_sertifikasi`, `no_npwp`, `file_npwp`, `created_at`, `updated_at`, `id_user`) VALUES
(1, '198201182008121002', NULL, 'Surya Afnarius', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5),
(2, '198301182008121001', NULL, 'Darwison', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6),
(3, '198201182008121003', NULL, 'Husnil Kamil', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '198201182008121004', NULL, 'Hasdi Putra', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '198301182008121005', NULL, 'Ricky Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '198003102012121003', NULL, 'Haris Suryamen', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '197901182008121001', NULL, 'Fajril Akbar', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '198101182008122001', NULL, 'Meza Silvana', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(10) UNSIGNED NOT NULL,
  `ruangan_id` int(10) UNSIGNED NOT NULL,
  `kelas_id` int(10) UNSIGNED NOT NULL,
  `hari` int(11) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `matakuliah_id` int(10) UNSIGNED NOT NULL,
  `dosen_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `tahun`, `semester`, `nama`, `matakuliah_id`, `dosen_id`, `created_at`, `updated_at`) VALUES
(1, 2014, 1, 'TIK103-SI', 1, 1, NULL, NULL),
(2, 2014, 1, 'PAM111-SI', 2, 2, NULL, NULL),
(3, 2014, 1, 'TIK210-SI', 3, 3, NULL, NULL),
(4, 2014, 1, 'EKM201-SI', 4, 5, NULL, NULL),
(5, 2014, 1, 'TIK405-SI', 5, 4, NULL, NULL),
(6, 2014, 1, 'SSI110-SI', 6, 7, NULL, NULL),
(7, 2014, 1, 'SSE110-SI', 7, 6, NULL, NULL),
(8, 2014, 1, 'SSE120-SI', 8, 6, NULL, NULL),
(9, 2014, 1, 'SSE210-SI', 9, 6, NULL, NULL),
(10, 2014, 1, 'TIK201-SI', 10, 3, NULL, NULL),
(11, 2014, 1, 'TIK202-SI', 11, 3, NULL, NULL),
(12, 2014, 1, 'TIK309-SI', 12, 1, NULL, NULL),
(13, 2014, 1, 'TIK422-SI', 13, 7, NULL, NULL),
(14, 2014, 1, 'TIK303-SI', 14, 3, NULL, NULL),
(15, 2014, 1, 'HKU310-SI', 15, 5, NULL, NULL),
(16, 2014, 1, 'TIK203-SI', 16, 6, NULL, NULL),
(17, 2014, 1, 'TIK204-SI', 17, 6, NULL, NULL),
(18, 2014, 1, 'ISP110-SI', 18, 7, NULL, NULL),
(19, 2014, 1, 'TIK307-SI', 19, 1, NULL, NULL),
(20, 2014, 1, 'TIK305-SI', 20, 4, NULL, NULL),
(21, 2014, 1, 'TIk308-SI', 21, 4, NULL, NULL),
(22, 2014, 1, 'TIK404-SI', 22, 4, NULL, NULL),
(23, 2014, 1, 'TIK420-SI', 23, 4, NULL, NULL),
(24, 2014, 1, 'SIN338-SI', 24, 5, NULL, NULL),
(25, 2014, 1, 'TIK403-SI', 25, 5, NULL, NULL),
(26, 2014, 1, 'TIA401-SI', 26, 5, NULL, NULL),
(27, 2014, 1, 'TIK106-SI', 27, 5, NULL, NULL),
(28, 2014, 1, 'TIK102-SI', 28, 5, NULL, NULL),
(29, 2014, 1, 'AND401-SI', 29, 5, NULL, NULL),
(30, 2014, 1, 'TIK306-SI', 30, 8, NULL, NULL),
(31, 2014, 1, 'EKP347-SI', 31, 2, NULL, NULL),
(32, 2014, 1, 'TIK415-SI', 32, 3, NULL, NULL),
(33, 2014, 1, 'TIK301-SI', 33, 3, NULL, NULL),
(34, 2014, 1, 'HKU110-SI', 34, 5, NULL, NULL),
(35, 2014, 1, 'HKU120-SI', 35, 7, NULL, NULL),
(36, 2014, 1, 'EKM103-SI', 36, 6, NULL, NULL),
(37, 2014, 1, 'TIK101-SI', 37, 2, NULL, NULL),
(38, 2014, 1, 'EKM101-SI', 38, 5, NULL, NULL),
(39, 2014, 1, 'TIK206-SI', 39, 1, NULL, NULL),
(40, 2014, 1, 'TIK407-SI', 40, 4, NULL, NULL),
(41, 2014, 1, 'TIK302-SI', 41, 3, NULL, NULL),
(42, 2014, 1, 'TIK205-SI', 42, 1, NULL, NULL),
(43, 2014, 1, 'TIK208-SI', 43, 8, NULL, NULL),
(44, 2014, 1, 'TIK304-SI', 44, 8, NULL, NULL),
(45, 2014, 1, 'PAM112-SI', 45, 2, NULL, NULL),
(46, 2014, 1, 'TIK104-SI', 46, 1, NULL, NULL),
(47, 2014, 1, 'TIK418-SI', 47, 4, NULL, NULL),
(48, 2014, 1, 'TIK416-SI', 48, 7, NULL, NULL),
(49, 2014, 1, 'TIK413-SI', 49, 6, NULL, NULL),
(50, 2014, 1, 'TIK310-SI', 50, 1, NULL, NULL),
(51, 2014, 2, 'TIK103-SI', 1, 1, NULL, NULL),
(52, 2014, 2, 'PAM111-SI', 2, 2, NULL, NULL),
(53, 2014, 2, 'TIK210-SI', 3, 3, NULL, NULL),
(54, 2014, 2, 'EKM201-SI', 4, 5, NULL, NULL),
(55, 2014, 2, 'TIK405-SI', 5, 4, NULL, NULL),
(56, 2014, 2, 'SSI110-SI', 6, 7, NULL, NULL),
(57, 2014, 2, 'SSE110-SI', 7, 6, NULL, NULL),
(58, 2014, 2, 'SSE120-SI', 8, 6, NULL, NULL),
(59, 2014, 2, 'SSE210-SI', 9, 6, NULL, NULL),
(60, 2014, 2, 'TIK201-SI', 10, 3, NULL, NULL),
(61, 2014, 2, 'TIK202-SI', 11, 3, NULL, NULL),
(62, 2014, 2, 'TIK309-SI', 12, 1, NULL, NULL),
(63, 2014, 2, 'TIK422-SI', 13, 7, NULL, NULL),
(64, 2014, 2, 'TIK303-SI', 14, 3, NULL, NULL),
(65, 2014, 2, 'HKU310-SI', 15, 5, NULL, NULL),
(66, 2014, 2, 'TIK203-SI', 16, 6, NULL, NULL),
(67, 2014, 2, 'TIK204-SI', 17, 6, NULL, NULL),
(68, 2014, 2, 'ISP110-SI', 18, 7, NULL, NULL),
(69, 2014, 2, 'TIK307-SI', 19, 1, NULL, NULL),
(70, 2014, 2, 'TIK305-SI', 20, 4, NULL, NULL),
(71, 2014, 2, 'TIk308-SI', 21, 4, NULL, NULL),
(72, 2014, 2, 'TIK404-SI', 22, 4, NULL, NULL),
(73, 2014, 2, 'TIK420-SI', 23, 4, NULL, NULL),
(74, 2014, 2, 'SIN338-SI', 24, 5, NULL, NULL),
(75, 2014, 2, 'TIK403-SI', 25, 5, NULL, NULL),
(76, 2014, 2, 'TIA401-SI', 26, 5, NULL, NULL),
(77, 2014, 2, 'TIK106-SI', 27, 5, NULL, NULL),
(78, 2014, 2, 'TIK102-SI', 28, 5, NULL, NULL),
(79, 2014, 2, 'AND401-SI', 29, 5, NULL, NULL),
(80, 2014, 2, 'TIK306-SI', 30, 8, NULL, NULL),
(81, 2014, 2, 'EKP347-SI', 31, 2, NULL, NULL),
(82, 2014, 2, 'TIK415-SI', 32, 3, NULL, NULL),
(83, 2014, 2, 'TIK301-SI', 33, 3, NULL, NULL),
(84, 2014, 2, 'HKU110-SI', 34, 5, NULL, NULL),
(85, 2014, 2, 'HKU120-SI', 35, 7, NULL, NULL),
(86, 2014, 2, 'EKM103-SI', 36, 6, NULL, NULL),
(87, 2014, 2, 'TIK101-SI', 37, 2, NULL, NULL),
(88, 2014, 2, 'EKM101-SI', 38, 5, NULL, NULL),
(89, 2014, 2, 'TIK206-SI', 39, 1, NULL, NULL),
(90, 2014, 2, 'TIK407-SI', 40, 4, NULL, NULL),
(91, 2014, 2, 'TIK302-SI', 41, 3, NULL, NULL),
(92, 2014, 2, 'TIK205-SI', 42, 1, NULL, NULL),
(93, 2014, 2, 'TIK208-SI', 43, 8, NULL, NULL),
(94, 2014, 2, 'TIK304-SI', 44, 8, NULL, NULL),
(95, 2014, 2, 'PAM112-SI', 45, 2, NULL, NULL),
(96, 2014, 2, 'TIK104-SI', 46, 1, NULL, NULL),
(97, 2014, 2, 'TIK418-SI', 47, 4, NULL, NULL),
(98, 2014, 2, 'TIK416-SI', 48, 7, NULL, NULL),
(99, 2014, 2, 'TIK413-SI', 49, 6, NULL, NULL),
(100, 2014, 2, 'TIK310-SI', 50, 1, NULL, NULL),
(101, 2015, 1, 'TIK103-SI', 1, 1, NULL, NULL),
(102, 2015, 1, 'PAM111-SI', 2, 2, NULL, NULL),
(103, 2015, 1, 'TIK210-SI', 3, 3, NULL, NULL),
(104, 2015, 1, 'EKM201-SI', 4, 5, NULL, NULL),
(105, 2015, 1, 'TIK405-SI', 5, 4, NULL, NULL),
(106, 2015, 1, 'SSI110-SI', 6, 7, NULL, NULL),
(107, 2015, 1, 'SSE110-SI', 7, 6, NULL, NULL),
(108, 2015, 1, 'SSE120-SI', 8, 6, NULL, NULL),
(109, 2015, 1, 'SSE210-SI', 9, 6, NULL, NULL),
(110, 2015, 1, 'TIK201-SI', 10, 3, NULL, NULL),
(111, 2015, 1, 'TIK202-SI', 11, 3, NULL, NULL),
(112, 2015, 1, 'TIK309-SI', 12, 1, NULL, NULL),
(113, 2015, 1, 'TIK422-SI', 13, 7, NULL, NULL),
(114, 2015, 1, 'TIK303-SI', 14, 3, NULL, NULL),
(115, 2015, 1, 'HKU310-SI', 15, 5, NULL, NULL),
(116, 2015, 1, 'TIK203-SI', 16, 6, NULL, NULL),
(117, 2015, 1, 'TIK204-SI', 17, 6, NULL, NULL),
(118, 2015, 1, 'ISP110-SI', 18, 7, NULL, NULL),
(119, 2015, 1, 'TIK307-SI', 19, 1, NULL, NULL),
(120, 2015, 1, 'TIK305-SI', 20, 4, NULL, NULL),
(121, 2015, 1, 'TIk308-SI', 21, 4, NULL, NULL),
(122, 2015, 1, 'TIK404-SI', 22, 4, NULL, NULL),
(123, 2015, 1, 'TIK420-SI', 23, 4, NULL, NULL),
(124, 2015, 1, 'SIN338-SI', 24, 5, NULL, NULL),
(125, 2015, 1, 'TIK403-SI', 25, 5, NULL, NULL),
(126, 2015, 1, 'TIA401-SI', 26, 5, NULL, NULL),
(127, 2015, 1, 'TIK106-SI', 27, 5, NULL, NULL),
(128, 2015, 1, 'TIK102-SI', 28, 5, NULL, NULL),
(129, 2015, 1, 'AND401-SI', 29, 5, NULL, NULL),
(130, 2015, 1, 'TIK306-SI', 30, 8, NULL, NULL),
(131, 2015, 1, 'EKP347-SI', 31, 2, NULL, NULL),
(132, 2015, 1, 'TIK415-SI', 32, 3, NULL, NULL),
(133, 2015, 1, 'TIK301-SI', 33, 3, NULL, NULL),
(134, 2015, 1, 'HKU110-SI', 34, 5, NULL, NULL),
(135, 2015, 1, 'HKU120-SI', 35, 7, NULL, NULL),
(136, 2015, 1, 'EKM103-SI', 36, 6, NULL, NULL),
(137, 2015, 1, 'TIK101-SI', 37, 2, NULL, NULL),
(138, 2015, 1, 'EKM101-SI', 38, 5, NULL, NULL),
(139, 2015, 1, 'TIK206-SI', 39, 1, NULL, NULL),
(140, 2015, 1, 'TIK407-SI', 40, 4, NULL, NULL),
(141, 2015, 1, 'TIK302-SI', 41, 3, NULL, NULL),
(142, 2015, 1, 'TIK205-SI', 42, 1, NULL, NULL),
(143, 2015, 1, 'TIK208-SI', 43, 8, NULL, NULL),
(144, 2015, 1, 'TIK304-SI', 44, 8, NULL, NULL),
(145, 2015, 1, 'PAM112-SI', 45, 2, NULL, NULL),
(146, 2015, 1, 'TIK104-SI', 46, 1, NULL, NULL),
(147, 2015, 1, 'TIK418-SI', 47, 4, NULL, NULL),
(148, 2015, 1, 'TIK416-SI', 48, 7, NULL, NULL),
(149, 2015, 1, 'TIK413-SI', 49, 6, NULL, NULL),
(150, 2015, 1, 'TIK310-SI', 50, 1, NULL, NULL),
(161, 2015, 2, 'TIK103-SI', 1, 1, NULL, NULL),
(162, 2015, 2, 'PAM111-SI', 2, 2, NULL, NULL),
(163, 2015, 2, 'TIK210-SI', 3, 3, NULL, NULL),
(164, 2015, 2, 'EKM201-SI', 4, 5, NULL, NULL),
(165, 2015, 2, 'TIK405-SI', 5, 4, NULL, NULL),
(166, 2015, 2, 'SSI110-SI', 6, 7, NULL, NULL),
(167, 2015, 2, 'SSE110-SI', 7, 6, NULL, NULL),
(168, 2015, 2, 'SSE120-SI', 8, 6, NULL, NULL),
(169, 2015, 2, 'SSE210-SI', 9, 6, NULL, NULL),
(170, 2015, 2, 'TIK201-SI', 10, 3, NULL, NULL),
(171, 2015, 2, 'TIK202-SI', 11, 3, NULL, NULL),
(172, 2015, 2, 'TIK309-SI', 12, 1, NULL, NULL),
(173, 2015, 2, 'TIK422-SI', 13, 7, NULL, NULL),
(174, 2015, 2, 'TIK303-SI', 14, 3, NULL, NULL),
(175, 2015, 2, 'HKU310-SI', 15, 5, NULL, NULL),
(176, 2015, 2, 'TIK203-SI', 16, 6, NULL, NULL),
(177, 2015, 2, 'TIK204-SI', 17, 6, NULL, NULL),
(178, 2015, 2, 'ISP110-SI', 18, 7, NULL, NULL),
(179, 2015, 2, 'TIK307-SI', 19, 1, NULL, NULL),
(180, 2015, 2, 'TIK305-SI', 20, 4, NULL, NULL),
(181, 2015, 2, 'TIk308-SI', 21, 4, NULL, NULL),
(182, 2015, 2, 'TIK404-SI', 22, 4, NULL, NULL),
(183, 2015, 2, 'TIK420-SI', 23, 4, NULL, NULL),
(184, 2015, 2, 'SIN338-SI', 24, 5, NULL, NULL),
(185, 2015, 2, 'TIK403-SI', 25, 5, NULL, NULL),
(186, 2015, 2, 'TIA401-SI', 26, 5, NULL, NULL),
(187, 2015, 2, 'TIK106-SI', 27, 5, NULL, NULL),
(188, 2015, 2, 'TIK102-SI', 28, 5, NULL, NULL),
(189, 2015, 2, 'AND401-SI', 29, 5, NULL, NULL),
(190, 2015, 2, 'TIK306-SI', 30, 8, NULL, NULL),
(191, 2015, 2, 'EKP347-SI', 31, 2, NULL, NULL),
(192, 2015, 2, 'TIK415-SI', 32, 3, NULL, NULL),
(193, 2015, 2, 'TIK301-SI', 33, 3, NULL, NULL),
(194, 2015, 2, 'HKU110-SI', 34, 5, NULL, NULL),
(195, 2015, 2, 'HKU120-SI', 35, 7, NULL, NULL),
(196, 2015, 2, 'EKM103-SI', 36, 6, NULL, NULL),
(197, 2015, 2, 'TIK101-SI', 37, 2, NULL, NULL),
(198, 2015, 2, 'EKM101-SI', 38, 5, NULL, NULL),
(199, 2015, 2, 'TIK206-SI', 39, 1, NULL, NULL),
(200, 2015, 2, 'TIK407-SI', 40, 4, NULL, NULL),
(201, 2015, 2, 'TIK302-SI', 41, 3, NULL, NULL),
(202, 2015, 2, 'TIK205-SI', 42, 1, NULL, NULL),
(203, 2015, 2, 'TIK208-SI', 43, 8, NULL, NULL),
(204, 2015, 2, 'TIK304-SI', 44, 8, NULL, NULL),
(205, 2015, 2, 'PAM112-SI', 45, 2, NULL, NULL),
(206, 2015, 2, 'TIK104-SI', 46, 1, NULL, NULL),
(207, 2015, 2, 'TIK418-SI', 47, 4, NULL, NULL),
(208, 2015, 2, 'TIK416-SI', 48, 7, NULL, NULL),
(209, 2015, 2, 'TIK413-SI', 49, 6, NULL, NULL),
(210, 2015, 2, 'TIK310-SI', 50, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id` int(10) UNSIGNED NOT NULL,
  `mahasiswa_id` int(10) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`id`, `mahasiswa_id`, `tahun`, `semester`, `created_at`, `updated_at`) VALUES
(1, 1, 2015, 1, NULL, NULL),
(2, 1, 2015, 2, NULL, NULL),
(3, 2, 2015, 1, NULL, NULL),
(4, 2, 2015, 2, NULL, NULL),
(5, 3, 2014, 1, NULL, NULL),
(6, 3, 2014, 2, NULL, NULL),
(7, 3, 2015, 1, NULL, NULL),
(8, 3, 2015, 2, NULL, NULL),
(9, 4, 2014, 1, NULL, NULL),
(10, 4, 2014, 2, NULL, NULL),
(11, 4, 2015, 1, NULL, NULL),
(12, 4, 2015, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `krsdetail`
--

CREATE TABLE `krsdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `krs_id` int(10) UNSIGNED NOT NULL,
  `kelas_id` int(10) UNSIGNED NOT NULL,
  `nilai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `krsdetail`
--

INSERT INTO `krsdetail` (`id`, `krs_id`, `kelas_id`, `nilai`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', NULL, NULL, NULL),
(2, 1, 37, 'A-', NULL, NULL, NULL),
(3, 1, 2, 'B-', NULL, NULL, NULL),
(4, 1, 38, 'B', NULL, NULL, NULL),
(5, 1, 34, 'B', NULL, NULL, NULL),
(6, 1, 36, 'A', NULL, NULL, NULL),
(7, 2, 35, NULL, NULL, NULL, NULL),
(8, 2, 28, NULL, NULL, NULL, NULL),
(9, 2, 8, NULL, NULL, NULL, NULL),
(10, 2, 45, NULL, NULL, NULL, NULL),
(11, 2, 31, NULL, NULL, NULL, NULL),
(12, 2, 46, NULL, NULL, NULL, NULL),
(13, 3, 1, 'C-', NULL, NULL, NULL),
(14, 3, 37, 'A', NULL, NULL, NULL),
(15, 3, 2, 'E', NULL, NULL, NULL),
(16, 3, 38, 'D', NULL, NULL, NULL),
(17, 3, 34, 'C', NULL, NULL, NULL),
(18, 3, 36, 'B-', NULL, NULL, NULL),
(19, 4, 35, NULL, NULL, NULL, NULL),
(20, 4, 28, NULL, NULL, NULL, NULL),
(21, 4, 8, NULL, NULL, NULL, NULL),
(22, 4, 45, NULL, NULL, NULL, NULL),
(23, 4, 31, NULL, NULL, NULL, NULL),
(24, 4, 46, NULL, NULL, NULL, NULL),
(25, 5, 1, 'B', NULL, NULL, NULL),
(26, 5, 37, 'B-', NULL, NULL, NULL),
(27, 5, 2, 'C-', NULL, NULL, NULL),
(28, 5, 38, 'D', NULL, NULL, NULL),
(29, 5, 34, 'B', NULL, NULL, NULL),
(30, 5, 36, 'A', NULL, NULL, NULL),
(31, 6, 35, 'A', NULL, NULL, NULL),
(32, 6, 28, 'A-', NULL, NULL, NULL),
(33, 6, 8, 'B-', NULL, NULL, NULL),
(34, 6, 45, 'B', NULL, NULL, NULL),
(35, 6, 31, 'B', NULL, NULL, NULL),
(36, 6, 46, 'A', NULL, NULL, NULL),
(37, 7, 10, 'A', NULL, NULL, NULL),
(38, 7, 18, 'A-', NULL, NULL, NULL),
(39, 7, 4, 'A', NULL, NULL, NULL),
(40, 7, 42, 'A-', NULL, NULL, NULL),
(41, 7, 16, 'B+', NULL, NULL, NULL),
(42, 7, 9, 'A', NULL, NULL, NULL),
(43, 8, 17, NULL, NULL, NULL, NULL),
(44, 8, 3, NULL, NULL, NULL, NULL),
(45, 8, 39, NULL, NULL, NULL, NULL),
(46, 8, 11, NULL, NULL, NULL, NULL),
(47, 8, 6, NULL, NULL, NULL, NULL),
(48, 8, 43, NULL, NULL, NULL, NULL),
(49, 9, 1, 'A', NULL, NULL, NULL),
(50, 9, 37, 'A', NULL, NULL, NULL),
(51, 9, 2, 'B', NULL, NULL, NULL),
(52, 9, 38, 'B', NULL, NULL, NULL),
(53, 9, 34, 'C', NULL, NULL, NULL),
(54, 9, 36, 'A', NULL, NULL, NULL),
(55, 10, 35, 'A', NULL, NULL, NULL),
(56, 10, 28, 'A-', NULL, NULL, NULL),
(57, 10, 8, 'B-', NULL, NULL, NULL),
(58, 10, 45, 'B', NULL, NULL, NULL),
(59, 10, 31, 'B', NULL, NULL, NULL),
(60, 10, 46, 'A', NULL, NULL, NULL),
(61, 11, 10, 'A-', NULL, NULL, NULL),
(62, 11, 18, 'C+', NULL, NULL, NULL),
(63, 11, 4, 'D', NULL, NULL, NULL),
(64, 11, 42, 'B-', NULL, NULL, NULL),
(65, 11, 16, 'B+', NULL, NULL, NULL),
(66, 11, 9, 'A-', NULL, NULL, NULL),
(67, 12, 17, NULL, NULL, NULL, NULL),
(68, 12, 3, NULL, NULL, NULL, NULL),
(69, 12, 39, NULL, NULL, NULL, NULL),
(70, 12, 11, NULL, NULL, NULL, NULL),
(71, 12, 6, NULL, NULL, NULL, NULL),
(72, 12, 43, NULL, NULL, NULL, NULL),
(73, 2, 198, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `nama`, `prodi`, `created_at`, `updated_at`) VALUES
(1, 'kurikulum 2010', 'SI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(12) DEFAULT NULL,
  `nim` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dosen_id` int(10) UNSIGNED DEFAULT NULL,
  `nama` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tempat_lahir` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `angkatan` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agama` int(11) DEFAULT NULL,
  `photo` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alamat_sekarang` text COLLATE utf8_unicode_ci,
  `alamat_asal` text COLLATE utf8_unicode_ci,
  `kota_asal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `jalur_masuk` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pt_asal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prodi_asal` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sks_asal` int(11) DEFAULT NULL,
  `nilai_un` decimal(8,2) DEFAULT NULL,
  `sumber_dana` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_hp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_kelamin` int(11) DEFAULT NULL,
  `sekolah_asal` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `id_user`, `nim`, `dosen_id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `angkatan`, `status`, `agama`, `photo`, `alamat_sekarang`, `alamat_asal`, `kota_asal`, `tanggal_masuk`, `jalur_masuk`, `pt_asal`, `prodi_asal`, `sks_asal`, `nilai_un`, `sumber_dana`, `email`, `no_hp`, `jenis_kelamin`, `sekolah_asal`, `created_at`, `updated_at`) VALUES
(1, 3, '1511521001', 1, 'Simanu Keling', NULL, NULL, '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 4, '1511521002', 1, 'Adek Purnama', NULL, NULL, '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 7, '1411521002', 2, 'Super Dede', NULL, NULL, '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '1411521003', 2, 'Hanifah', NULL, NULL, '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `kurikulum_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode`, `nama`, `sks`, `semester`, `kurikulum_id`, `created_at`, `updated_at`) VALUES
(1, 'TIK103', 'Algoritma dan Pemrograman', 4, 1, 1, NULL, NULL),
(2, 'PAM111', 'Aljabar Linear', 3, 1, 1, NULL, NULL),
(3, 'TIK210', 'Analisis dan Perancangan Sistem Informasi', 4, 4, 1, NULL, NULL),
(4, 'EKM201', 'Analisis Proses Bisnis', 4, 3, 1, NULL, NULL),
(5, 'TIK405', 'Audit Sistem Informasi', 3, 7, 1, NULL, NULL),
(6, 'SSI110', 'Bahasa Indonesia', 3, 4, 1, NULL, NULL),
(7, 'SSE110', 'Bahasa Inggris I', 2, 1, 1, NULL, NULL),
(8, 'SSE120', 'Bahasa Inggris II', 2, 2, 1, NULL, NULL),
(9, 'SSE210', 'Bahasa Inggris III', 2, 3, 1, NULL, NULL),
(10, 'TIK201', 'Bahasa Pemrograman I', 3, 3, 1, NULL, NULL),
(11, 'TIK202', 'Bahasa Pemrograman II', 3, 4, 1, NULL, NULL),
(12, 'TIK309', 'Data Warehouse dan Mining', 3, 5, 1, NULL, NULL),
(13, 'TIK422', 'E-Government', 3, 8, 1, NULL, NULL),
(14, 'TIK303', 'Enterprise Application (EA)', 3, 5, 1, NULL, NULL),
(15, 'HKU310', 'Etika Profesi', 2, 5, 1, NULL, NULL),
(16, 'TIK203', 'Geographical Information System (GIS) I', 4, 3, 1, NULL, NULL),
(17, 'TIK204', 'Geographical Information System (GIS) II', 3, 4, 1, NULL, NULL),
(18, 'ISP110', 'Ilmu Sosial dan Budaya Dasar', 3, 3, 1, NULL, NULL),
(19, 'TIK307', 'Implementasi GIS', 3, 5, 1, NULL, NULL),
(20, 'TIK305', 'Jaringan Komputer I', 4, 5, 1, NULL, NULL),
(21, 'TIk308', 'Jaringan Komputer II', 2, 6, 1, NULL, NULL),
(22, 'TIK404', 'Kapita Selekta', 3, 8, 1, NULL, NULL),
(23, 'TIK420', 'Keamanan Sistem Informasi', 3, 8, 1, NULL, NULL),
(24, 'SIN338', 'Kecakapan Antar Personal', 2, 5, 1, NULL, NULL),
(25, 'TIK403', 'Kerja Praktek', 2, 7, 1, NULL, NULL),
(26, 'TIA401', 'Kewirausahaan', 2, 6, 1, NULL, NULL),
(27, 'TIK106', 'Komputer dan Masyarakat', 2, 2, 1, NULL, NULL),
(28, 'TIK102', 'Konsep Sistem Informasi', 4, 2, 1, NULL, NULL),
(29, 'AND401', 'Kuliah Kerja Nyata', 3, 7, 1, NULL, NULL),
(30, 'TIK306', 'Manajemen Proyek Sistem Informasi', 3, 6, 1, NULL, NULL),
(31, 'EKP347', 'Manajemen Sains', 3, 2, 1, NULL, NULL),
(32, 'TIK415', 'Pemograman Berorientasi Objek Lanjut', 3, 7, 1, NULL, NULL),
(33, 'TIK301', 'Pemrograman Web', 3, 5, 1, NULL, NULL),
(34, 'HKU110', 'Pendidikan Agama', 3, 1, 1, NULL, NULL),
(35, 'HKU120', 'Pendidikan Kewarganegaraan', 3, 2, 1, NULL, NULL),
(36, 'EKM103', 'Pengantar Manajemen', 3, 1, 1, NULL, NULL),
(37, 'TIK101', 'Pengenalan Teknologi Informasi', 3, 1, 1, NULL, NULL),
(38, 'EKM101', 'Pengetahuan Bisnis', 3, 1, 1, NULL, NULL),
(39, 'TIK206', 'Perancangan Basis Data', 4, 4, 1, NULL, NULL),
(40, 'TIK407', 'Perencanaan Strategis SI', 3, 7, 1, NULL, NULL),
(41, 'TIK302', 'Rekayasa Perangkat Lunak', 3, 6, 1, NULL, NULL),
(42, 'TIK205', 'Sistem Basis Data', 3, 3, 1, NULL, NULL),
(43, 'TIK208', 'Sistem Informasi Manajemen', 4, 4, 1, NULL, NULL),
(44, 'TIK304', 'Sistem Operasi', 3, 6, 1, NULL, NULL),
(45, 'PAM112', 'Statistika', 3, 2, 1, NULL, NULL),
(46, 'TIK104', 'Struktur Data', 3, 2, 1, NULL, NULL),
(47, 'TIK418', 'Tata Kelola TI', 3, 8, 1, NULL, NULL),
(48, 'TIK416', 'Teknologi dan Infrastruktur E-Bisnis', 3, 7, 1, NULL, NULL),
(49, 'TIK413', 'Teknologi GIS/GPS/Remote Sensing', 3, 7, 1, NULL, NULL),
(50, 'TIK310', 'Testing dan Implementasi SI', 3, 6, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2016_04_21_045813_create_table_kurikulum', 1),
('2016_04_21_045855_create_table_matakuliah', 1),
('2016_04_21_045945_create_table_dosen', 1),
('2016_04_21_050021_create_table_kelas', 1),
('2016_04_21_050110_create_table_ruangan', 1),
('2016_04_21_050131_create_table_jadwal', 1),
('2016_04_21_050214_create_table_mahasiswa', 1),
('2016_04_21_050340_create_table_semester', 1),
('2016_04_21_050555_create_table_krs', 1),
('2016_04_21_050901_create_table_krs_detail', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_mahasiswa` int(11) UNSIGNED NOT NULL,
  `id_matakuliah` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`id`, `id_mahasiswa`, `id_matakuliah`, `status`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 7, 1),
(4, 1, 34, 1),
(5, 1, 36, 1),
(6, 1, 37, 1),
(7, 1, 38, 1),
(15, 3, 4, 1),
(16, 3, 9, 1),
(17, 3, 10, 1),
(18, 3, 16, NULL),
(19, 3, 18, NULL),
(20, 3, 42, NULL),
(28, 2, 1, 1),
(29, 2, 2, 1),
(30, 2, 7, 1),
(31, 2, 34, 1),
(32, 2, 36, 1),
(33, 2, 37, 1),
(34, 2, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `noink` varchar(25) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `noink`, `password`, `level`) VALUES
(2, '1511522023', '12', 1),
(3, '1511521001', '12', 1),
(4, '1511521002', '23', 1),
(5, '198201182008121002', 'sa', 2),
(6, '198301182008121001', 'dar', 2),
(7, '1411521002', '34', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosen_nip_unique` (`nip`),
  ADD UNIQUE KEY `dosen_nidn_unique` (`nidn`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jadwal_ruangan_id_hari_jam_mulai_unique` (`ruangan_id`,`hari`,`jam_mulai`),
  ADD KEY `jadwal_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_matakuliah_id_foreign` (`matakuliah_id`),
  ADD KEY `kelas_dosen_id_foreign` (`dosen_id`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `krs_mahasiswa_id_foreign` (`mahasiswa_id`);

--
-- Indexes for table `krsdetail`
--
ALTER TABLE `krsdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `krsdetail_krs_id_foreign` (`krs_id`),
  ADD KEY `krsdetail_kelas_id_foreign` (`kelas_id`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_nim_unique` (`nim`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD KEY `mahasiswa_dosen_id_foreign` (`dosen_id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matakuliah_kode_kurikulum_id_unique` (`kode`,`kurikulum_id`),
  ADD KEY `matakuliah_kurikulum_id_foreign` (`kurikulum_id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_matakuliah` (`id_matakuliah`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `krsdetail`
--
ALTER TABLE `krsdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `jadwal_ruangan_id_foreign` FOREIGN KEY (`ruangan_id`) REFERENCES `ruangan` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `kelas_matakuliah_id_foreign` FOREIGN KEY (`matakuliah_id`) REFERENCES `matakuliah` (`id`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_mahasiswa_id_foreign` FOREIGN KEY (`mahasiswa_id`) REFERENCES `mahasiswa` (`id`);

--
-- Constraints for table `krsdetail`
--
ALTER TABLE `krsdetail`
  ADD CONSTRAINT `krsdetail_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `krsdetail_krs_id_foreign` FOREIGN KEY (`krs_id`) REFERENCES `krs` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_dosen_id_foreign` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_kurikulum_id_foreign` FOREIGN KEY (`kurikulum_id`) REFERENCES `kurikulum` (`id`);

--
-- Constraints for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD CONSTRAINT `pilihan_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id`),
  ADD CONSTRAINT `pilihan_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `matakuliah` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
