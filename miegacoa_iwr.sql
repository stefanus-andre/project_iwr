-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2025 at 09:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miegacoa_iwr`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:8:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:6:\"create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:4:\"read\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:6:\"update\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:6:\"delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:12:\"manage roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"manage users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}}}', 1740024170);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_resto`
--

CREATE TABLE `master_resto` (
  `id` int(11) NOT NULL,
  `kode_resto` varchar(512) DEFAULT NULL,
  `resto` varchar(512) DEFAULT NULL,
  `kode_city` int(11) DEFAULT NULL,
  `city` varchar(512) DEFAULT NULL,
  `kom_resto` varchar(512) DEFAULT NULL,
  `rm` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `email_am` varchar(512) DEFAULT NULL,
  `email_rm` varchar(512) DEFAULT NULL,
  `email_mrt` varchar(512) DEFAULT NULL,
  `id_regional` int(11) DEFAULT NULL,
  `id_user_am` int(11) DEFAULT NULL,
  `store_code` varchar(255) DEFAULT NULL,
  `name_store_street` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_resto`
--

INSERT INTO `master_resto` (`id`, `kode_resto`, `resto`, `kode_city`, `city`, `kom_resto`, `rm`, `email`, `email_am`, `email_rm`, `email_mrt`, `id_regional`, `id_user_am`, `store_code`, `name_store_street`) VALUES
(1, 'TLGTEU', 'TLG - TEUKU UMAR', 49, 'TULUNGAGUNG', 'MIE GACOAN - TULUNGAGUNG', 'JAWA TIMUR 1', 'miegacoan.tulungagung@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1001.TLGTEU', 'MIE GACOAN - TULUNGAGUNG - TEUKU UMAR'),
(2, 'MADSAP', 'MAD - KAPTEN SAPUTRA', 23, 'MADIUN', 'MIE GACOAN - MADIUN', 'JAWA TIMUR 1', 'miegacoan.madiun@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1002.MADSAP', 'MIE GACOAN - MADIUN - KAPTEN SAPUTRA'),
(3, 'MJKSUD', 'MJK - JENDRAL SUDIRMAN', 27, 'MOJOKERTO', 'MIE GACOAN - MOJOKERTO', 'JAWA TIMUR 1', 'miegacoan.mojokerto@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1003.MJKSUD', 'MIE GACOAN - MOJOKERTO - JENDRAL SUDIRMAN'),
(4, 'KDRJOY', 'KDR - JOYOBOYO', 19, 'KEDIRI', 'MIE GACOAN - KEDIRI', 'JAWA TIMUR 1', 'miegacoan.kediri@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1004.KDRJOY', 'MIE GACOAN - KEDIRI - JOYOBOYO'),
(5, 'SKTMAW', 'SKT - MAWAR', 44, 'SURAKARTA', 'MIE GACOAN - SURAKARTA', 'JAWA TENGAH', 'miegacoan.solo@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1005.SKTMAW', 'MIE GACOAN - SURAKARTA - MAWAR'),
(6, 'SMNBAB', 'SMN - BABARSARI', 40, 'SLEMAN', 'MIE GACOAN - SLEMAN', 'JAWA TENGAH', 'miegacoan.jogjabbc@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1006.SMNBAB', 'MIE GACOAN - SLEMAN - BABARSARI'),
(7, 'PNGDIP', 'PNG - DIPONEGORO', 32, 'PONOROGO', 'MIE GACOAN - PONOROGO', 'JAWA TIMUR 1', 'miegacoan.ponorogo@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1007.PNGDIP', 'MIE GACOAN - PONOROGO - DIPONEGORO'),
(8, 'BLTKAL', 'BLT - KALIMANTAN', 4, 'BLITAR', 'MIE GACOAN - BLITAR', 'JAWA TIMUR 1', 'miegacoanblitar.grabfood@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1008.BLTKAL', 'MIE GACOAN - BLITAR - KALIMANTAN'),
(9, 'MLGKEN', 'MLG - KENDALSARI', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1010.MLGKEN', 'MIE GACOAN - MALANG - KENDALSARI'),
(10, 'PSNSOE', 'PSN - SOEKARNO HATTA', 30, 'PASURUAN', 'MIE GACOAN - PASURUAN', 'JAWA TIMUR 1', 'miegacoan.pasuruann2@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1070.PSNSOE', 'MIE GACOAN - PASURUAN - SOEKARNO HATTA'),
(11, 'JBGURI', 'JBG - URIP SUMOHARJO', 17, 'JOMBANG', 'MIE GACOAN - JOMBANG', 'JAWA TIMUR 1', 'miegacoan.jombang@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1011.JBGURI', 'MIE GACOAN - JOMBANG - URIP SUMOHARJO'),
(12, 'NGWDIP', 'NGW - DIPONEGORO', 28, 'NGAWI', 'MIE GACOAN - NGAWI', 'JAWA TIMUR 1', 'miegacoan.ngawi@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1013.NGWDIP', 'MIE GACOAN - NGAWI - DIPONEGORO'),
(13, 'JMRSUM', 'JMR - SUMATRA', 16, 'JEMBER', 'MIE GACOAN - JEMBER', 'JAWA TIMUR 1', 'gfgacoanjember.@gmail.com.', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1014.JMRSUM', 'MIE GACOAN - JEMBER - SUMATRA'),
(14, 'SKHSOE', 'SKH - Ir SOEKARNO', 41, 'SUKOHARJO', 'MIE GACOAN - SUKOHARJO', 'JAWA TENGAH', 'miegacoan.solobaru@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1015.SKHSOE', 'MIE GACOAN - SUKOHARJO - Ir SOEKARNO'),
(15, 'MLGJAK', 'MLG - JAKARTA', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang2@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1016.MLGJAK', 'MIE GACOAN - MALANG - JAKARTA'),
(16, 'MLGCIL', 'MLG - CILIWUNG', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malcil.@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1017.MLGCIL', 'MIE GACOAN - MALANG - CILIWUNG'),
(18, 'PBLSUR', 'PBL - SUROYO', 33, 'PROBOLINGGO', 'MIE GACOAN - PROBOLINGGO', 'JAWA TIMUR 1', 'miegacoan.probolinggo@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1019.PBLSUR', 'MIE GACOAN - PROBOLINGGO - SUROYO'),
(19, 'SMGMAK', 'SMG - KOMPOL MAKSUM', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'gfmiegacoansemarang@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1021.SMGMAK', 'MIE GACOAN - SEMARANG - KOMPOL MAKSUM'),
(20, 'SBYAMB', 'SBY - AMBENGAN', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sbyambengan@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1020.SBYAMB', 'MIE GACOAN - SURABAYA - AMBENGAN'),
(21, 'YYKKRA', 'YYK - KRASAK TIMUR', 50, 'YOGYAKARTA', 'MIE GACOAN - YOGYAKARTA', 'JAWA TENGAH', 'miegacoan.jogja4@gmail.con', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1022.YYKKRA', 'MIE GACOAN - YOGYAKARTA - KRASAK TIMUR'),
(22, 'SKTADI', 'SKT - ADI SUCIPTO', 44, 'SURAKARTA', 'MIE GACOAN - SURAKARTA', 'JAWA TENGAH', 'miegacoan.solo3@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1023.SKTADI', 'MIE GACOAN - SURAKARTA - ADI SUCIPTO'),
(23, 'SMNNGA', 'SMN - NGAPAK', 40, 'SLEMAN', 'MIE GACOAN - SLEMAN', 'JAWA TENGAH', 'miegacoan.jogja5@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1024.SMNNGA', 'MIE GACOAN - SLEMAN - NGAPAK'),
(24, 'TBNBAS', 'TBN - BASUKI RACHMAD', 48, 'TUBAN', 'MIE GACOAN - TUBAN', 'JAWA TIMUR 1', 'miegacoan.tuban@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1025.TBNBAS', 'MIE GACOAN - TUBAN - BASUKI RACHMAD'),
(25, 'SDATEU', 'SDA - TEUKU UMAR', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sidoarjo@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1026.SDATEU', 'MIE GACOAN - SIDOARJO - TEUKU UMAR'),
(26, 'SMGSET', 'SMG - SETIABUDI', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarang2@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 26, '1027.SMGSET', 'MIE GACOAN - SEMARANG - SETIABUDI'),
(27, 'SBYMEN', 'SBY - RAYA MENGANTI', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.surabaya@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1028.SBYMEN', 'MIE GACOAN - SURABAYA - RAYA MENGANTI'),
(28, 'CBNTEN', 'CBN - TENTARA PELAJAR', 12, 'CIREBON', 'MIE GACOAN - CIREBON', 'JAWA BARAT 1', 'miegacoan.cirebon@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 33, '1029.CBNTEN', 'MIE GACOAN - CIREBON - TENTARA PELAJAR'),
(29, 'BDGSET', 'BDG - SETIABUDI', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1030.BDGSET', 'MIE GACOAN - BANDUNG - SETIABUDI'),
(30, 'GSKSUD', 'GSK - PANGLIMA SUDIRMAN', 14, 'GRESIK', 'MIE GACOAN - GRESIK', 'JAWA TIMUR 2', 'miegacoan.gresik@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1031.GSKSUD', 'MIE GACOAN - GRESIK - PANGLIMA SUDIRMAN'),
(31, 'BTUSUP', 'BTU - WR SUPRATMAN', 2, 'BATU', 'MIE GACOAN - BATU', 'JAWA TIMUR 1', 'miegacoan.batu@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1032.BTUSUP', 'MIE GACOAN - BATU - WR SUPRATMAN'),
(32, 'MGGTID', 'MGG - TIDAR', 24, 'MAGELANG', 'MIE GACOAN - MAGELANG', 'JAWA TENGAH', 'miegacoan.magelang@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1034.MGGTID', 'MIE GACOAN - MAGELANG - TIDAR'),
(33, 'SMGHAM', 'SMG - PROF HAMKA', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.smg3@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 13, '1033.SMGHAM', 'MIE GACOAN - SEMARANG - PROF HAMKA'),
(34, 'TGLSUD', 'TGL - KAPTEN SUDIBYO', 47, 'TEGAL', 'MIE GACOAN - TEGAL', 'JAWA TENGAH', 'miegacoan.tegal@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1035.TGLSUD', 'MIE GACOAN - TEGAL - KAPTEN SUDIBYO'),
(35, 'MLGRON', 'MLG - RONGGOWARSITO', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang4@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1036.MLGRON', 'MIE GACOAN - MALANG - RONGGOWARSITO'),
(36, 'SBYMAN', 'SBY - MANYAR', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.surabaya3@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1037.SBYMAN', 'MIE GACOAN - SURABAYA - MANYAR'),
(37, 'SMGSUD', 'SMG - BRIGJEN SUDIARTO', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarang4@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 26, '1038.SMGSUD', 'MIE GACOAN - SEMARANG - BRIGJEN SUDIARTO'),
(38, 'PWTSOE', 'PWT - DR SOEPARNO', 36, 'PURWOKERTO', 'MIE GACOAN - PURWOKERTO', 'JAWA TENGAH', 'pmiegacoan@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1039.PWTSOE', 'MIE GACOAN - PURWOKERTO - DR SOEPARNO'),
(39, 'SMGPAM', 'SMG - PAMULARSIH', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarang5@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1040.SMGPAM', 'MIE GACOAN - SEMARANG - PAMULARSIH'),
(40, 'BDGUKU', 'BDG - DIPATI UKUR', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung2@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1041.BDGUKU', 'MIE GACOAN - BANDUNG - DIPATI UKUR'),
(41, 'MLGSUP', 'MLG - S SUPRIADI', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang5@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1043.MLGSUP', 'MIE GACOAN - MALANG - S SUPRIADI'),
(42, 'SBYSOE', 'SBY - Dr Ir H SOEKARNO', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sby4merr@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1044.SBYSOE', 'MIE GACOAN - SURABAYA - Dr Ir H SOEKARNO'),
(43, 'BDGPAS', 'BDG - PASIR KALIKI', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung3@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1046.BDGPAS', 'MIE GACOAN - BANDUNG - PASIR KALIKI'),
(44, 'SBYMAR', 'SBY - MARGOREJO', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.surabaya5@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1050.SBYMAR', 'MIE GACOAN - SURABAYA - MARGOREJO'),
(45, 'SMGSUK', 'SMG - SUKUN RAYA', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarang6@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 26, '1045.SMGSUK', 'MIE GACOAN - SEMARANG - SUKUN RAYA'),
(46, 'KWGGAL', 'KWG - GALUH MAS RAYA', 18, 'KARAWANG', 'MIE GACOAN - KARAWANG', 'JAWA BARAT 2', 'miegacoan.karawang88@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1042.KWGGAL', 'MIE GACOAN - KARAWANG - GALUH MAS RAYA'),
(47, 'SKTSLA', 'SKT - SLAMET RIYADI', 44, 'SURAKARTA', 'MIE GACOAN - SURAKARTA', 'JAWA TENGAH', 'miegacoan.kartasura@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1048.SKTSLA', 'MIE GACOAN - SURAKARTA - SLAMET RIYADI'),
(48, 'DPKMAR', 'DPK - MARGONDA', 13, 'DEPOK', 'MIE GACOAN - DEPOK', 'JAWA BARAT 2', 'miegacoan.depokmargo@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1049.DPKMAR', 'MIE GACOAN - DEPOK - MARGONDA'),
(49, 'SKTURI', 'SKT - JENDRAL URIP SUMOHAR', 44, 'SURAKARTA', 'MIE GACOAN - SURAKARTA', 'JAWA TENGAH', 'miegacoan.soloo4@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1054.SKTURI', 'MIE GACOAN - SURAKARTA - JENDRAL URIP SUMOHAR'),
(50, 'MLGTLO', 'MLG - RAYA TLOGOMAS', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang6@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1051.MLGTLO', 'MIE GACOAN - MALANG - RAYA TLOGOMAS'),
(51, 'BGRPAD', 'BGR - RAYA PADJAJARAN', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bogor@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1053.BGRPAD', 'MIE GACOAN - BOGOR - RAYA PADJAJARAN'),
(52, 'SMGVET', 'SMG - VETERAN', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarang7@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1047.SMGVET', 'MIE GACOAN - SEMARANG - VETERAN'),
(53, 'SMNMAG', 'SMN - MAGELANG', 40, 'SLEMAN', 'MIE GACOAN - SLEMAN', 'JAWA TENGAH', 'miegacoan.jogja6@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1055.SMNMAG', 'MIE GACOAN - SLEMAN - MAGELANG'),
(54, 'SBYSUN', 'SBY - MAYJEN SUNGKONO', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.surabaya6@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1057.SBYSUN', 'MIE GACOAN - SURABAYA - MAYJEN SUNGKONO'),
(55, 'MLGMON', 'MLG - RAYA MONDOROKO', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malang7@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1052.MLGMON', 'MIE GACOAN - MALANG - RAYA MONDOROKO'),
(56, 'SMNAFF', 'SMN - AFFANDI', 40, 'SLEMAN', 'MIE GACOAN - SLEMAN', 'JAWA TENGAH', 'miegacoan.jogja7@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1068.SMNAFF', 'MIE GACOAN - SLEMAN - AFFANDI'),
(57, 'BKSJUA', 'BKS - JUANDA', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bekasi1@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1059.BKSJUA', 'MIE GACOAN - BEKASI - JUANDA'),
(58, 'BDGDAG', 'BDG - DAGO', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung4@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1058.BDGDAG', 'MIE GACOAN - BANDUNG - DAGO'),
(59, 'SDAPAB', 'SDA - PABEAN RAYA', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sda2@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1061.SDAPAB', 'MIE GACOAN - SIDOARJO - PABEAN RAYA'),
(60, 'KYBTEB', 'JKT - TEBET', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jakteb1@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1056.KYBTEB', 'MIE GACOAN - JAKARTA - TEBET'),
(61, 'SBYKEN', 'SBY - KENJERAN', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sby7@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1065.SBYKEN', 'MIE GACOAN - SURABAYA - KENJERAN'),
(62, 'CKRTHA', 'CKR - MH THAMRIN', 9, 'CIKARANG', 'MIE GACOAN - CIKARANG', 'JAWA BARAT 2', 'miegacoan.cikarang1@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1060.CKRTHA', 'MIE GACOAN - CIKARANG - MH THAMRIN'),
(63, 'BKSJAT', 'BKS - RAYA JATIWARINGIN', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bks2jatiwaringin@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1062.BKSJAT', 'MIE GACOAN - BEKASI - RAYA JATIWARINGIN'),
(64, 'BDGGAT', 'BDG - GATOT SUBROTO', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung5@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1066.BDGGAT', 'MIE GACOAN - BANDUNG - GATOT SUBROTO'),
(65, 'YYKSON', 'YYK - SONOSEWU', 50, 'YOGYAKARTA', 'MIE GACOAN - YOGYAKARTA', 'JAWA TENGAH', 'miegacoan.jogja8@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1064.YYKSON', 'MIE GACOAN - YOGYAKARTA - SONOSEWU'),
(66, 'SBYAHM', 'SBY - AHMAD YANI', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.surabaya8@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1077.SBYAHM', 'MIE GACOAN - SURABAYA - AHMAD YANI'),
(67, 'DPKJAS', 'DPK - KOMJEN POL JASIN', 13, 'DEPOK', 'MIE GACOAN - DEPOK', 'JAWA BARAT 2', 'miegacoan.depok2@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1073.DPKJAS', 'MIE GACOAN - DEPOK - KOMJEN POL JASIN'),
(68, 'BDGSUR', 'BDG - SURYA SUMANTRI', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandung6@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1067.BDGSUR', 'MIE GACOAN - BANDUNG - SURYA SUMANTRI'),
(69, 'BGRTAJ', 'BGR - RAYA TAJUR', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr2tajur@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1074.BGRTAJ', 'MIE GACOAN - BOGOR - RAYA TAJUR'),
(70, 'BDGBUA', 'BDG - BUAH BATU', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bdg7bubat@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1069.BDGBUA', 'MIE GACOAN - BANDUNG - BUAH BATU'),
(71, 'GSKSUM', 'GSK - SUMATRA', 14, 'GRESIK', 'MIE GACOAN - GRESIK', 'JAWA TIMUR 2', 'miegacoan.gresik2@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1076.GSKSUM', 'MIE GACOAN - GRESIK - SUMATRA'),
(72, 'BKSBIN', 'BKS - BINTARA', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bks3bintara@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1072.BKSBIN', 'MIE GACOAN - BEKASI - BINTARA'),
(73, 'PWKTAM', 'PWK - TAMAN PAHLAWAN', 35, 'PURWAKARTA', 'MIE GACOAN - PURWAKARTA', 'JAWA BARAT 2', 'miegacoan.purwakarta@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1071.PWKTAM', 'MIE GACOAN - PURWAKARTA - TAMAN PAHLAWAN'),
(74, 'KYBKES', 'JKT - KESEHATAN RAYA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt2bintaro@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1080.KYBKES', 'MIE GACOAN - JAKARTA - KESEHATAN RAYA'),
(75, 'BGRSAP', 'BGR - BRIGJEN SAPTADJI HADIPRAWIRA', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr3yasmin@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1079.BGRSAP', 'MIE GACOAN - BOGOR - BRIGJEN SAPTADJI HADIPRAWIRA'),
(76, 'SBYTAN', 'SBY - RAYA MANUKAN WETAN TANDES', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sby9manukan@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1083.SBYTAN', 'MIE GACOAN - SURABAYA - RAYA MANUKAN WETAN TANDES'),
(77, 'BKSGOL', 'BKS - PERUM GOLDEN CITY', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bks4goldencity@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1084.BKSGOL', 'MIE GACOAN - BEKASI - PERUM GOLDEN CITY'),
(78, 'BDGNAS', 'BDG - A.H. NASUTION', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.cibiru@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 33, '1078.BDGNAS', 'MIE GACOAN - BANDUNG - A.H. NASUTION'),
(79, 'CPTPUS', 'TNG - RAYA PUSPITEK', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tangerangpuspitek@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1081.CPTPUS', 'MIE GACOAN - TANGERANG - RAYA PUSPITEK'),
(80, 'SORTAM', 'BDG - TAMAN KOPO INDAH', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bdgmargaasih@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1082.SORTAM', 'MIE GACOAN - BANDUNG - TAMAN KOPO INDAH'),
(81, 'SDAPON', 'SDA - RAYA PONTI', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sdaponti@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1088.SDAPON', 'MIE GACOAN - SIDOARJO - RAYA PONTI'),
(82, 'CLPPAR', 'CLP - S PARMAN', 10, 'CILACAP', 'MIE GACOAN - CILACAP', 'JAWA TENGAH', 'miegacoan.cilacap1@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1087.CLPPAR', 'MIE GACOAN - CILACAP - S PARMAN'),
(83, 'SDAGEL', 'SDA - RAYA GELAM', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sdacandi@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1086.SDAGEL', 'MIE GACOAN - SIDOARJO - RAYA GELAM'),
(84, 'CBNPEM', 'CBN - PEMUDA RAYA', 12, 'CIREBON', 'MIE GACOAN - CIREBON', 'JAWA BARAT 1', 'miegacoan.cirebon2pemuda@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 33, '1085.CBNPEM', 'MIE GACOAN - CIREBON - PEMUDA RAYA'),
(85, 'TNGHAS', 'TNG - HASYIM ASHARI', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgr2cipondoh@gmail.com', 'lizayati@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1095.TNGHAS', 'MIE GACOAN - TANGERANG - HASYIM ASHARI'),
(86, 'TNGMER', 'TNG - PANTURA', 45, 'TANGERANG', 'MIE GACOAN - PANTURA', 'JAKARTA TANGERANG', 'miegacoan.tangerangrayapantura@gmail.com', 'lizayati@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1186.TNGMER', 'MIE GACOAN - PANTURA - PANTURA'),
(87, 'CKGBOU', 'JKT - BOULEVARD GARDEN CITY', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt3cakung@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1097.CKGBOU', 'MIE GACOAN - JAKARTA - BOULEVARD GARDEN CITY'),
(88, 'BJNTEU', 'BJN - TEUKU UMAR', 6, 'BOJONEGORO', 'MIE GACOAN - BOJONEGORO', 'JAWA TIMUR 1', 'miegacoan.bojonegoro1teukuumar@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1093.BJNTEU', 'MIE GACOAN - BOJONEGORO - TEUKU UMAR'),
(89, 'SDATAM', 'SDA - TAMAN ATHENA', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sda5purisurya@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1099.SDATAM', 'MIE GACOAN - SIDOARJO - TAMAN ATHENA'),
(90, 'BKSBAN', 'BKS - BANTAR GEBANG SETU', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bks5mustika@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1109.BKSBAN', 'MIE GACOAN - BEKASI - BANTAR GEBANG SETU'),
(91, 'CMHAMI', 'CMH - JEND H AMIR MACHMUD', 11, 'CIMAHI', 'MIE GACOAN - CIMAHI', 'JAWA BARAT 1', 'miegacoan.bdgcimahi@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1096.CMHAMI', 'MIE GACOAN - CIMAHI - JEND H AMIR MACHMUD'),
(92, 'BGRABD', 'BGR - RE ABDULLAH', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr4gunungbatu@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1100.BGRABD', 'MIE GACOAN - BOGOR - RE ABDULLAH'),
(93, 'KWGAHM', 'KWG - JENDRAL AHMAD YANI', 18, 'KARAWANG', 'MIE GACOAN - KARAWANG', 'JAWA BARAT 2', 'miegacoan.cikampek@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1094.KWGAHM', 'MIE GACOAN - KARAWANG - JENDRAL AHMAD YANI'),
(94, 'SDABAM', 'SDA - MAYJEN BAMBANG YUWON', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sda6krian@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 270, '1101.SDABAM', 'MIE GACOAN - SIDOARJO - MAYJEN BAMBANG YUWON'),
(95, 'KDRURI', 'KDR - URIP SUMOHARJO', 19, 'KEDIRI', 'MIE GACOAN - KEDIRI', 'JAWA TIMUR 1', 'miegacoan.kdruripsumoharjo@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1102.KDRURI', 'MIE GACOAN - KEDIRI - URIP SUMOHARJO'),
(96, 'CJRSUR', 'CJR - SUROSO', 8, 'CIANJUR', 'MIE GACOAN - CIANJUR', 'JAWA BARAT 2', 'miegacoan.cianjur@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1103.CJRSUR', 'MIE GACOAN - CIANJUR - SUROSO'),
(97, 'SKTVET', 'SKT - VETERAN', 44, 'SURAKARTA', 'MIE GACOAN - SURAKARTA', 'JAWA TENGAH', 'miegacoan.soloveteran@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1118.SKTVET', 'MIE GACOAN - SURAKARTA - VETERAN'),
(98, 'CPTCIA', 'TNG - CIATER RAYA', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgr3ciater@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1090.CPTCIA', 'MIE GACOAN - TANGERANG - CIATER RAYA'),
(99, 'DPKBOJ', 'DPK - RAYA BOJONGSARI', 13, 'DEPOK', 'MIE GACOAN - DEPOK', 'JAWA BARAT 2', 'miegacoan.depokbojongsari@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1104.DPKBOJ', 'MIE GACOAN - DEPOK - RAYA BOJONGSARI'),
(100, 'DPKSAW', 'DPK - RAYA SAWANGAN', 13, 'DEPOK', 'MIE GACOAN - DEPOK', 'JAWA BARAT 2', 'miegacoan.depok3sawangan@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1092.DPKSAW', 'MIE GACOAN - DEPOK - RAYA SAWANGAN'),
(101, 'BGRSHO', 'BGR - SHOLEH ISKANDAR', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr5solehiskandar@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1112.BGRSHO', 'MIE GACOAN - BOGOR - SHOLEH ISKANDAR'),
(102, 'KDRKED', 'KDR - RAYA KEDIRI-PARE', 19, 'KEDIRI', 'MIE GACOAN - KEDIRI', 'JAWA TIMUR 1', 'miegacoan.pare@gmail.com', 'ilyasha.agung@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 14, '1107.KDRKED', 'MIE GACOAN - KEDIRI - RAYA KEDIRI-PARE'),
(103, 'UNRDIP', 'SMG - DIPONEGORO', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.semarangungaran@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 26, '1111.UNRDIP', 'MIE GACOAN - SEMARANG - DIPONEGORO'),
(104, 'BDGSUM', 'BDG - SUMATERA', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandungbraga@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1110.BDGSUM', 'MIE GACOAN - BANDUNG - SUMATERA'),
(105, 'KDSSUB', 'KDS - HM SUBCHAN', 21, 'KUDUS', 'MIE GACOAN - KUDUS', 'JAWA TENGAH', 'miegacoan.kudus@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 26, '1120.KDSSUB', 'MIE GACOAN - KUDUS - HM SUBCHAN'),
(106, 'BDGPET', 'BDG - PETA', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandungpeta@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1115.BDGPET', 'MIE GACOAN - BANDUNG - PETA'),
(107, 'PMKJOK', 'PMK - JOKOTOLE', 29, 'PAMEKASAN', 'MIE GACOAN - PAMEKASAN', 'JAWA TIMUR 2', 'miegacoan.madurapamekasan@gmail.com', 'maulana.adiwara@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 19, '1116.PMKJOK', 'MIE GACOAN - PAMEKASAN - JOKOTOLE'),
(108, 'BKSWIB', 'BKS - WIBAWA MUKTI', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bksjatiasih@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1108.BKSWIB', 'MIE GACOAN - BEKASI - WIBAWA MUKTI'),
(109, 'MLGDIR', 'MLG - DIRGANTARA', 26, 'MALANG', 'MIE GACOAN - MALANG', 'JAWA TIMUR 1', 'miegacoan.malangsawojajar@gmail.com', 'marhatus.soleha@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 18, '1106.MLGDIR', 'MIE GACOAN - MALANG - DIRGANTARA'),
(110, 'SBYRAN', 'SBY - KENJERAN RANGKAH', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sbytambaksari@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1123.SBYRAN', 'MIE GACOAN - SURABAYA - KENJERAN RANGKAH'),
(111, 'SMGIMA', 'SMG - IMAM BONJOL', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.smrgimambonjol@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1121.SMGIMA', 'MIE GACOAN - SEMARANG - IMAM BONJOL'),
(112, 'KLNKUS', 'KLN - MAYOR KUSMANTO', 20, 'KLATEN', 'MIE GACOAN - KLATEN', 'JAWA TENGAH', 'miegacoan.klaten@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 16, '1119.KLNKUS', 'MIE GACOAN - KLATEN - MAYOR KUSMANTO'),
(113, 'CMHBAR', 'CMH - RAYA BARAT', 11, 'CIMAHI', 'MIE GACOAN - CIMAHI', 'JAWA BARAT 1', 'miegacoan.cimahi2padasuka@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1124.CMHBAR', 'MIE GACOAN - CIMAHI - RAYA BARAT'),
(114, 'SMGSOE', 'SMG - SOEKARNO HATTA', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.smrgsoekarnohatta@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 0, '1114.SMGSOE', 'MIE GACOAN - SEMARANG - SOEKARNO HATTA'),
(115, 'SBYBUN', 'SBY - BUNG TOMO', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sbybungtomo@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1131.SBYBUN', 'MIE GACOAN - SURABAYA - BUNG TOMO'),
(116, 'CKRTAR', 'CKR - TARUM BARAT', 9, 'CIKARANG', 'MIE GACOAN - CIKARANG', 'JAWA BARAT 2', 'miegacoan.bkstarumbarat@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1129.CKRTAR', 'MIE GACOAN - CIKARANG - TARUM BARAT'),
(117, 'KWGTUP', 'KWG - TUPAREV', 18, 'KARAWANG', 'MIE GACOAN - KARAWANG', 'JAWA BARAT 2', 'miegacoan.karawang2barat@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 13, '1134.KWGTUP', 'MIE GACOAN - KARAWANG - TUPAREV'),
(118, 'SORKOP', 'BDG - RAYA KOPO', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bdgkoposayati@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 0, '1133.SORKOP', 'MIE GACOAN - BANDUNG - RAYA KOPO'),
(119, 'TJPDAN', 'JKT - DANAU SUNTER UTARA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jktsunterutara@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1127.TJPDAN', 'MIE GACOAN - JAKARTA - DANAU SUNTER UTARA'),
(120, 'NPHLEM', 'BDG - RAYA LEMBANG', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bdglembang@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1135.NPHLEM', 'MIE GACOAN - BANDUNG - RAYA LEMBANG'),
(121, 'MKSTUN', 'MKS - TUN ABDUL RAZAK', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.makassar1gowa@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1122.MKSTUN', 'MIE GACOAN - MAKASSAR - TUN ABDUL RAZAK'),
(122, 'CBICIB', 'BGR - RAYA CIBUNGBULANG', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr6dramaga@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1128.CBICIB', 'MIE GACOAN - BOGOR - RAYA CIBUNGBULANG'),
(123, 'MKSAHM', 'MKS - AHMAD YANI', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.mks2karebosi@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1136.MKSAHM', 'MIE GACOAN - MAKASSAR - AHMAD YANI'),
(124, 'BKSALT', 'BKS - ALTERNATIF CIBUBUR', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bks7cibubur@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1140.BKSALT', 'MIE GACOAN - BEKASI - ALTERNATIF CIBUBUR'),
(125, 'CKGPAH', 'JKT - PAHLAWAN REVOLUSI', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt5pahlawanrevolusi@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1137.CKGPAH', 'MIE GACOAN - JAKARTA - PAHLAWAN REVOLUSI'),
(126, 'SDAIMA', 'SDA - IMAM BONJOL', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sda7geluran@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 0, '1141.SDAIMA', 'MIE GACOAN - SIDOARJO - IMAM BONJOL'),
(127, 'TNGSAL', 'TNG - RADEN SALEH', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgr4radensaleh@gmail.com', 'lizayati@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 268, '1139.TNGSAL', 'MIE GACOAN - TANGERANG - RADEN SALEH'),
(128, 'SDABRI', 'SDA - RAYA BRINGIN', 39, 'SIDOARJO', 'MIE GACOAN - SIDOARJO', 'JAWA TIMUR 2', 'miegacoan.sda8citraharmoni@gmail.com', 'rizya.tyas@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 0, '1143.SDABRI', 'MIE GACOAN - SIDOARJO - RAYA BRINGIN'),
(129, 'SBYMUL', 'SBY - IR H SOEKARNO MULYOREJO', 43, 'SURABAYA', 'MIE GACOAN - SURABAYA', 'JAWA TIMUR 2', 'miegacoan.sby12mulyorejo@gmail.com', 'annisa.setia@miegacoan.co.id', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 258, '1125.SBYMUL', 'MIE GACOAN - SURABAYA - IR H SOEKARNO MULYOREJO'),
(130, 'CMSAHM', 'CMS - JENDRAL AHMAD YANI', 7, 'CIAMIS', 'MIE GACOAN - CIAMIS', 'JAWA BARAT 1', 'miegacoan.ciamis@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1142.CMSAHM', 'MIE GACOAN - CIAMIS - JENDRAL AHMAD YANI'),
(131, 'SPASIL', 'TSM - SILIWANGI', 46, 'TASIKMALAYA', 'MIE GACOAN - TASIKMALAYA', 'JAWA BARAT 1', 'miegacoan.taksimalaya1siliwangi@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1148.SPASIL', 'MIE GACOAN - TASIKMALAYA - SILIWANGI'),
(132, 'TNACEM', 'JKT - CEMPAKA PUTIH TIMUR', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt6cempakaputih@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 268, '1152.TNACEM', 'MIE GACOAN - JAKARTA - CEMPAKA PUTIH TIMUR'),
(133, 'GGPDAA', 'JKT - RAYA DAAN MOGOT', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt6daanmogot@gmail.com', 'rafdyardiansyah01@gmail.com', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 268, '1151.GGPDAA', 'MIE GACOAN - JAKARTA - RAYA DAAN MOGOT'),
(134, 'SMGWOL', 'SMG - WOLTER MONGINSIDI', 38, 'SEMARANG', 'MIE GACOAN - SEMARANG', 'JAWA TENGAH', 'miegacoan.smrg11genuk@gmail.com', 'risal.imam@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 0, '1150.SMGWOL', 'MIE GACOAN - SEMARANG - WOLTER MONGINSIDI'),
(135, 'LMGSUD', 'LMG - PANGLIMA SUDIRMAN', 22, 'LAMONGAN', 'MIE GACOAN - LAMONGAN', 'JAWA TIMUR 1', 'miegacoan.lamongan1pangsud@gmail.com', 'pangestutidina445@gmail.com', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 12, '1144.LMGSUD', 'MIE GACOAN - LAMONGAN - PANGLIMA SUDIRMAN'),
(136, 'CBIMAY', 'BGR - RAYA MAYOR OKING', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr8mayoroking@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1156.CBIMAY', 'MIE GACOAN - BOGOR - RAYA MAYOR OKING'),
(137, 'TNGCIL', 'TNG - CILEDUG RAYA', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgr4ciledugraya@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1063.TNGCIL', 'MIE GACOAN - TANGERANG - CILEDUG RAYA'),
(138, 'KYBFAT', 'JKT - FATMAWATI RAYA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt8fatmawati@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1159.KYBFAT', 'MIE GACOAN - JAKARTA - FATMAWATI RAYA'),
(139, 'TNAMAN', 'JKT - RAYA MANGGA BESAR', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt9manggabesar@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1164.TNAMAN', 'MIE GACOAN - JAKARTA - RAYA MANGGA BESAR'),
(140, 'CPTALA', 'TNG - TANGERANG ALAM SUTRA', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgr5alamsutra@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1130.CPTALA', 'MIE GACOAN - TANGERANG - TANGERANG ALAM SUTRA'),
(141, 'TGRHAR', 'TNG - TANGERANG CITRA RAYA', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgrcitraraya@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1154.TGRHAR', 'MIE GACOAN - TANGERANG - TANGERANG CITRA RAYA'),
(142, 'PBGHAR', 'PBG - PURBALINGGA HARYONO', 34, 'PURBALINGGA', 'MIE GACOAN - PURBALINGGA', 'JAWA TENGAH', 'miegacoan.purbalingga@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1162.PBGHAR', 'MIE GACOAN - PURBALINGGA - PURBALINGGA HARYONO'),
(143, 'CPTCIP', 'TNG - TANGERANG JOMBANG CIPUTAT', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tgrciputatjombang@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1138.CPTCIP', 'MIE GACOAN - TANGERANG - TANGERANG JOMBANG CIPUTAT'),
(144, 'GGPPAN', 'JKT - JAKARTA PANJANG', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt11panjang@gmail.com', 'lizayati@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 268, '1166.GGPPAN', 'MIE GACOAN - JAKARTA - JAKARTA PANJANG'),
(145, 'MKSPER', 'MKS - MAKASSAR PERINTIS', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.mks4perintis@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1153.MKSPER', 'MIE GACOAN - MAKASSAR - MAKASSAR PERINTIS'),
(146, 'MKSRAT', 'MKS - MAKASSAR SAM RATULANGI', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.mkssamratulangi@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1170.MKSRAT', 'MIE GACOAN - MAKASSAR - MAKASSAR SAM RATULANGI'),
(147, 'BDGTER', 'BDG - BANDUNG PASIRKOJA', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandungpasirkoja@gmail.com', 'jhosuaragil999@gmail.com', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 15, '1168.BDGTER', 'MIE GACOAN - BANDUNG - BANDUNG PASIRKOJA'),
(148, 'CBITEG', 'BGR - BOGOR CIBINONG', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bgr7cibinong@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1117.CBITEG', 'MIE GACOAN - BOGOR - BOGOR CIBINONG'),
(149, 'MKSPET', 'MKS - MAKASSAR PETTARANI', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.mks3pettarani@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1149.MKSPET', 'MIE GACOAN - MAKASSAR - MAKASSAR PETTARANI'),
(150, 'CKGINT', 'JKT - RADEN INTEN', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt9radeninten@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1160.CKGINT', 'MIE GACOAN - JAKARTA - RADEN INTEN'),
(151, 'DPKPAR', 'DPK - DEPOK PARUNG', 13, 'DEPOK', 'MIE GACOAN - DEPOK', 'JAWA BARAT 2', 'miegacoan.depokparung@gmail.com', 'ratna.dwi@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 25, '1155.DPKPAR', 'MIE GACOAN - DEPOK - DEPOK PARUNG'),
(152, 'SPAYUD', 'TSM - TASIKMALAYA YUDHANEGARA', 46, 'TASIKMALAYA', 'MIE GACOAN - TASIKMALAYA', 'JAWA BARAT 1', 'miegacoan.tasik2yudanegara@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1158.SPAYUD', 'MIE GACOAN - TASIKMALAYA - TASIKMALAYA YUDHANEGARA'),
(153, 'NPHCIB', 'BDG - BANDUNG PADALARANG', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandungpadalarang@gmail.com', 'novita.evanti@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 23, '1178.NPHCIB', 'MIE GACOAN - BANDUNG - BANDUNG PADALARANG'),
(154, 'TGRKUT', 'TNG - KUTABUMI', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG', 'JAKARTA TANGERANG', 'miegacoan.tangerangkutabumi@gmail.com', 'lizayati@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1177.TGRKUT', 'MIE GACOAN - TANGERANG - KUTABUMI'),
(155, 'KYBAMP', 'JKT - AMPERA RAYA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jktamperaraya@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1172.KYBAMP', 'MIE GACOAN - JAKARTA - AMPERA RAYA'),
(156, 'SORLAS', 'BDG - MAJALAYA', 1, 'BANDUNG', 'MIE GACOAN - BANDUNG', 'JAWA BARAT 1', 'miegacoan.bandungmajalaya@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1179.SORLAS', 'MIE GACOAN - BANDUNG - MAJALAYA'),
(157, 'KYBKEM', 'JKT - KEMANG RAYA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jkt10kemangraya@gmail.com', 'wasil.masduki@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 30, '1165.KYBKEM', 'MIE GACOAN - JAKARTA - KEMANG RAYA'),
(158, 'MKSPOR', 'MKS - POROS MAROS', 25, 'MAKASSAR', 'MIE GACOAN - MAKASSAR', 'JAWA TIMUR 1', 'miegacoan.mksporosmaros@gmail.com', NULL, 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1180.MKSPOR', 'MIE GACOAN - MAKASSAR - POROS MAROS'),
(159, 'KYBCIL', 'JKT - CILANDAK', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jakselcilandak@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1182.KYBCIL', 'MIE GACOAN - JAKARTA - CILANDAK'),
(160, 'SMDJAT', 'SMD - JATINANGOR', 42, 'SUMEDANG', 'MIE GACOAN - SUMEDANG', 'JAWA BARAT 1', 'miegacoan.sumedangjatinangor@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 0, '1181.SMDJAT', 'MIE GACOAN - SUMEDANG - JATINANGOR'),
(161, 'PKLONG', 'PKL - PEKALONGAN', 31, 'PEKALONGAN', 'MIE GACOAN - PEKALONGAN', 'JAWA TENGAH', 'miegacoan.pekalongann@gmail.com', NULL, 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 0, '79.PKLONG', 'MIE GACOAN - PEKALONGAN - PEKALONGAN'),
(162, 'SLTIGA', 'SLT - SALATIGA', 37, 'SALATIGA', 'MIE GACOAN - SALATIGA', 'JAWA TENGAH', 'miegacoan.salatiga@gmail.com', 'ppnacomplaincustomer@gmail.com', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 32, '35.SLTIGA', 'MIE GACOAN - SALATIGA - SALATIGA'),
(163, 'BJRLAP', 'BJR - MAYJEND LAPANG BHAKTI', 51, 'BANJAR', 'MIE GACOAN - BANJAR', 'JAWA TENGAH', 'miegacoan.banjar1lapangbakti@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1185.BJRLAP', 'MIE GACOAN - BANJAR - MAYJEND LAPANG BHAKTI'),
(164, 'BPPHAR', 'BPP - BALIKPAPAN MT HARYONO', 52, 'BALIKPAPAN', 'MIE GACOAN - BALIKPAPAN', 'JAWA TIMUR 2', 'miegacoan.balikpapan1mtharyono@gmail.com', 'hardiningsihd@gmail.com', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 263, '1176.BPPHAR', 'MIE GACOAN - BALIKPAPAN - BALIKPAPAN MT HARYONO'),
(165, 'BKSJAI', 'BKS - JATIKRAMAT', 3, 'BEKASI', 'MIE GACOAN - BEKASI', 'JAWA BARAT 2', 'miegacoan.bekasijatikramat@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1189.BKSJAI', 'MIE GACOAN - BEKASI - JATIKRAMAT'),
(166, 'CKGBIN', 'JKT - BINA MARGA', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA', 'JAKARTA TANGERANG', 'miegacoan.jktbinamargacipayung@gmail.com', 'novan.aziz@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 22, '1145.CKGBIN', 'MIE GACOAN - JAKARTA - BINA MARGA'),
(167, 'BGRBAT', 'BGR - BATU TULIS', 5, 'BOGOR', 'MIE GACOAN - BOGOR', 'JAWA BARAT 2', 'miegacoan.bogorbatutulis@gmail.com', 'windy.primarta@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 29, '1190.BGRBAT', 'MIE GACOAN - BOGOR - BATU TULIS'),
(168, 'MJLABD', 'MJL - ABDUL HALIM', 53, 'MAJALENGKA', 'MIE GACOAN - MAJALENGKA', 'JAWA TENGAH', 'miegacoan.majalengkaabdulhalim@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 33, '1192.MJLABD', 'MIE GACOAN - MAJALENGKA - ABDUL HALIM'),
(169, 'SMDABD', 'SMD - ABDURRAHMAN', 42, 'SUMEDANG', 'MIE GACOAN - SUMEDANG', 'JAWA TIMUR 2', 'miegacoan.sumedang2abdurahman@gmail.com', 'desi.herpimia@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 0, '1183.SMDABD', 'MIE GACOAN - SUMEDANG - ABDURRAHMAN'),
(170, 'TJPGUN', 'TJP - GUNUNG SAHARI', 15, 'JAKARTA', 'MIE GACOAN - JAKARTA GUNUNG SAHARI', 'JAKARTA TANGERANG', 'miegacoan.jktgunungsahari@gmail.com', 'rafdyardiansyah01@gmail.com', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 268, '1175.TJPGUN', 'MIE GACOAN - JAKARTA GUNUNG SAHARI - GUNUNG SAHARI'),
(176, 'JPAVET', 'JPA -VETERAN', 54, 'JEPARA', 'MIE GACOAN - JEPARA VETERAN', 'JAWA TENGAH', 'miegacoan.jeparaveteran@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 27, '1194.JPAVET', 'MIE GACOAN - JEPARA VETERAN - ETERAN'),
(177, 'MKSPEN', 'MKS - PENGAYOMAN', 25, NULL, 'MIE GACOAN - MAKASSAR PENGAYOMAN', 'JAWA TIMUR 1', 'miegacoan.mks8pengayoman@gmail.com', 'david.dwi@miegacoan.co.id', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1174.MKSPEN', 'MIE GACOAN - MAKASSAR PENGAYOMAN - PENGAYOMAN'),
(178, 'CPTJUA', 'TNG - JUANDA CIPUTAT', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG JUANDA CIPUTAT', 'JAWA BARAT 1', 'miegacoan.tangseljuandaciputat@gmail.com', 'yosua.michael@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1146.CPTJUA', 'MIE GACOAN - TANGERANG JUANDA CIPUTAT - JUANDA CIPUTAT'),
(179, 'CPTPON', 'TNG - PONDOK BETUNG', 45, 'TANGERANG', 'MIE GACOAN - TANGERANG PONDOK BETUNG.', 'JAKARTA TANGERANG', 'miegacoan.tangselpondokbetung@gmail.com', 'yosua.michael@miegacoan.co.id', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 24, '1167.CPTPON', 'MIE GACOAN - TANGERANG PONDOK BETUNG. - PONDOK BETUNG'),
(180, 'PTIPEM', 'PTI - PEMUDA', 55, 'PATI', 'MIE GACOAN - PATI PEMUDA', 'JAWA TENGAH', 'miegacoan.patipemuda@gmail.com', 'henry.saputra@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 275, '1191.PTIPEM', 'MIE GACOAN - PATI PEMUDA - PEMUDA'),
(186, 'SORBOJ', 'BDG - BOJONGSOANG', 1, '1', 'MIE GACOAN - BANDUNG BOJONGSOANG', 'JAWA BARAT 1', 'miegacoan.bandungbojongsoang@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1169.SORBOJ', 'MIE GACOAN - BANDUNG BOJONGSOANG - BOJONGSOANG');
INSERT INTO `master_resto` (`id`, `kode_resto`, `resto`, `kode_city`, `city`, `kom_resto`, `rm`, `email`, `email_am`, `email_rm`, `email_mrt`, `id_regional`, `id_user_am`, `store_code`, `name_store_street`) VALUES
(191, 'CBICIL', 'BGR - CILEUNGSI', 5, 'BOGOR', 'MIE GACOAN - BOGOR CILEUNGSI', 'JAWA BARAT 2', 'miegacoan.bogorcileungsi@gmail.com', 'nur.robiatul@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 24, '1203.CBICIL', 'MIE GACOAN - BOGOR CILEUNGSI - CILEUNGSI'),
(196, 'YYKTAM', 'YYK - TAMAN SISWA', 50, 'YOGYAKARTA', 'MIE GACOAN - YOGYAKARTA', 'JAWA TENGAH', 'miegacoan.tamsis@gmail.com', 'nabila.hermawan@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 4, 21, '1018.YYKTAM', 'MIE GACOAN - YOGYAKARTA - TAMAN SISWA'),
(198, 'SMRYAM', 'SMR - WAHID HASYIM', 56, NULL, 'MIE GACOAN -  SAMARINDA WAHID HASYIM', 'JAWA TIMUR 2', 'miegacoan.samarinda1wahidhasyim@gmail.com', 'hardiningsihd@gmail.com', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 6, 263, '1193.SMRYAM', 'MIE GACOAN -  SAMARINDA WAHID HASYIM - WAHID HASYIM'),
(199, 'MKSALA', 'MKS - ALAUDDIN', 25, '25', 'MIE GACOAN - MAKASSAR ALAUDDIN', 'JAWA TIMUR 1', 'miegacoan.makassar7alaudin@gmail.com', '-', 'david.dwi@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 5, 15, '1195.MKSALA', 'MIE GACOAN - MAKASSAR ALAUDDIN - ALAUDDIN'),
(200, 'TNGHUS', 'TNG - HUSEIN SASTRANEGARA', 45, NULL, 'MIE GACOAN - TANGERANG HUSEIN SASTRANEGARA', 'JAKARTA TANGERANG', 'miegacoan.tgrhuseinsastranegara@gmail.com', '-', 'priya.ikhbal@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 1, 17, '1202.TNGHUS', 'MIE GACOAN - TANGERANG HUSEIN SASTRANEGARA - HUSEIN SASTRANEGARA'),
(201, 'SMRAHM', 'SMR - AHMAD YANI', 56, '56', 'MIE GACOAN - SAMARINDA AHMAD YANI', 'JAWA TIMUR 2', 'miegacoan.samarindayani@gmail.com', 'hardiningsihd@gmail.com', 'theofilus.dimar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 0, 263, '1206.SMRAHM', 'MIE GACOAN - SAMARINDA AHMAD YANI - AHMAD YANI'),
(202, 'BDGMAG', 'BDG - SUMMARECON MAGNA RAYA', 1, NULL, 'MIE GACOAN - SUMMARECON MAGNA RAYA', 'JAWA BARAT 1', 'miegacoan.bandungmagnaraya@gmail.com', 'septyan.harpin@miegacoan.co.id', 'gede.dhana@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 2, 28, '1201.BDGMAG', 'MIE GACOAN - SUMMARECON MAGNA RAYA - SUMMARECON MAGNA RAYA'),
(203, 'BKSMUT', 'BKS - CUT MUTIA', 3, '3', 'MIE GACOAN - BEKASI CUT MUTIA', 'JAWA BARAT 2', 'miegacoan.bekasicutmutia@gmail.com', 'muhammad.khafid@miegacoan.co.id', 'ahmad.bahtiyar@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 3, 20, '1205.BKSMUT', 'MIE GACOAN - BEKASI CUT MUTIA - CUT MUTIA'),
(204, 'KBMSAR', 'KBM - SARBINI', 37, '37', 'KBM - HM SARBINI', 'JAWA TENGAH', 'miegacoan.kebumensarbini@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 0, 16, '1208.KBMSAR', 'KBM - HM SARBINI - SARBINI'),
(205, 'WNGSUD', 'WNG - SUDIRMAN', 37, '37', 'MIE GACOAN - WONOGIRI SUDIRMAN', 'JAWA TENGAH', 'miegacoan.wonogiri1jendsudirman@gmail.com', 'kelara.utami@miegacoan.co.id', 'fitri.fathulillah@miegacoan.co.id', 'alfinliktrisna8@gmail.com', 0, 16, '1210.WNGSUD', 'MIE GACOAN - WONOGIRI SUDIRMAN - SUDIRMAN');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_02_12_094643_create_permission_tables', 1),
(5, '2025_02_17_153645_create_iwr_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'create', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(2, 'read', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(3, 'update', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(4, 'delete', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(5, 'manage roles', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(6, 'manage users', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14'),
(7, 'role-edit', 'web', '2025-02-19 04:02:23', '2025-02-19 04:02:23'),
(8, 'role-delete', 'web', '2025-02-19 04:02:23', '2025-02-19 04:02:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-02-19 01:47:14', '2025-02-19 01:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
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
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bbNWYU3WD0InkH1bFlYG0FoBcu4lTAYzw2ynzfgI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzI5Z3plMU1RUWdZeTdHSjJjZ1pDZnhRV0N1WEl4WEhYMW9IVXRRZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9hZGRfZGF0YV9pd3IiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1739950949);

-- --------------------------------------------------------

--
-- Table structure for table `table_iwr`
--

CREATE TABLE `table_iwr` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wr_no` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `nama_resto` varchar(255) DEFAULT NULL,
  `lokasi_resto` varchar(255) DEFAULT NULL,
  `urgensi` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `permintaan_sparepart` text DEFAULT NULL,
  `permintaan_barang` text DEFAULT NULL,
  `jumlah_permintaan_wcs` int(11) DEFAULT NULL,
  `status_pengajuan` varchar(255) DEFAULT NULL,
  `upload_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `table_iwr`
--

INSERT INTO `table_iwr` (`id`, `wr_no`, `kategori`, `keterangan`, `nama_resto`, `lokasi_resto`, `urgensi`, `deskripsi`, `permintaan_sparepart`, `permintaan_barang`, `jumlah_permintaan_wcs`, `status_pengajuan`, `upload_file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'asdasdasasfssasdsadsa', 'Equipment', 'Rusak', 'asdasdassdfdsfds', 'asdasdas', 'High', 'asdasdas', 'asdasdas', 'asdasdas', 1, 'Done', 'asdasdas', '2025-02-18 03:32:28', '2025-02-18 08:53:39', NULL),
(2, 'asdasdsa', 'Equipment', 'Hilang', 'asdsadsadsa', 'sadasgfdgfdsgfd', 'Medium', 'sdfsdgdsfdsf', 'dsfdsfsdfds', 'dsfdsfds', 1, 'Done', NULL, '2025-02-18 06:53:04', '2025-02-18 08:31:31', '2025-02-18 08:31:31'),
(3, 'OPS.19.02.2025.001', 'Equipment', 'Rusak', 'MIE GACOAN - MADIUN - KAPTEN SAPUTRA', 'Jl. Kapten Saputra No.37, Kejuron, Kec. Taman, Kota Madiun, Jawa Timur 63132', 'High', 'ganti ram', 'ganti ram', 'ganti ram', 1, 'Done', NULL, '2025-02-19 07:42:12', '2025-02-19 07:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', NULL, '$2y$12$1xzsY1wljG1hvhmAr0wcOuNR4z7c6UUuP2VX.uT9AX53vVWQdWNJi', 'admin', NULL, '2025-02-19 01:47:14', '2025-02-19 01:47:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `table_iwr`
--
ALTER TABLE `table_iwr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `table_iwr`
--
ALTER TABLE `table_iwr`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
