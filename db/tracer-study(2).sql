-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2021 at 04:27 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracer-study`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidang_pekerjaan`
--

CREATE TABLE `bidang_pekerjaan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidang_pekerjaan`
--

INSERT INTO `bidang_pekerjaan` (`id`, `nama`) VALUES
(1, 'System Analyst, Programmer, Project Manager Etc'),
(2, 'Network Engineer, Etc'),
(3, 'Pentester, Etc'),
(4, 'Non IT'),
(5, 'Tidak Bekerja'),
(6, 'Kuliah');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `aksi` varchar(100) NOT NULL,
  `waktu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_pertanyaan`
--

CREATE TABLE `jawaban_pertanyaan` (
  `id` int(10) NOT NULL,
  `id_survei` int(10) NOT NULL,
  `id_pertanyaan` int(10) NOT NULL,
  `jawaban` int(10) NOT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban_pertanyaan`
--

INSERT INTO `jawaban_pertanyaan` (`id`, `id_survei`, `id_pertanyaan`, `jawaban`, `id_user`) VALUES
(2, 5, 1, 1, 53),
(3, 5, 2, 4, 53),
(4, 5, 4, 181, 53),
(5, 5, 5, 182, 53),
(6, 5, 6, 186, 53),
(7, 5, 7, 22, 53),
(8, 5, 8, 109, 53),
(9, 5, 9, 26, 53),
(10, 5, 10, 28, 53),
(11, 5, 11, 190, 53),
(12, 5, 12, 33, 53),
(13, 5, 14, 37, 53),
(14, 5, 15, 41, 53),
(15, 6, 16, 54, 53),
(16, 6, 17, 56, 53),
(17, 6, 18, 59, 53),
(18, 6, 19, 60, 53),
(19, 6, 20, 62, 53),
(20, 6, 21, 76, 53),
(21, 6, 22, 99, 53),
(22, 6, 23, 94, 53),
(23, 6, 24, 103, 53),
(24, 6, 25, 98, 53),
(25, 6, 26, 95, 53),
(26, 6, 27, 105, 53),
(27, 6, 28, 102, 53),
(28, 6, 29, 150, 53),
(29, 6, 30, 92, 53),
(30, 6, 31, 90, 53),
(31, 6, 32, 108, 53),
(32, 6, 33, 88, 53),
(33, 6, 34, 149, 53),
(34, 6, 35, 85, 53),
(35, 6, 36, 84, 53),
(36, 6, 37, 81, 53),
(37, 6, 38, 79, 53),
(38, 6, 39, 73, 53),
(39, 6, 40, 78, 53),
(40, 6, 41, 72, 53),
(41, 6, 42, 69, 53),
(42, 6, 43, 68, 53),
(43, 6, 44, 65, 53),
(44, 5, 1, 3, 48),
(45, 5, 2, 14, 48),
(46, 5, 4, 180, 48),
(47, 5, 5, 184, 48),
(48, 5, 6, 187, 48),
(49, 5, 7, 22, 48),
(50, 5, 8, 112, 48),
(51, 5, 9, 27, 48),
(52, 5, 10, 32, 48),
(53, 5, 11, 192, 48),
(54, 5, 12, 36, 48),
(55, 5, 14, 40, 48),
(56, 5, 15, 52, 48);

-- --------------------------------------------------------

--
-- Table structure for table `loker`
--

CREATE TABLE `loker` (
  `id` int(11) NOT NULL,
  `id_user` int(3) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `syarat` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_buat` varchar(255) NOT NULL,
  `tgl_akhir` varchar(255) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loker`
--

INSERT INTO `loker` (`id`, `id_user`, `judul`, `kota`, `instansi`, `email`, `syarat`, `deskripsi`, `tgl_buat`, `tgl_akhir`, `foto`, `status`) VALUES
(4, 47, 'Software Engineering', 'Medan', 'PT COBA COBA', 'ansjasn@gmail.com', '<p>asdasdasd</p>', '<p>asdasdasd</p>', '29 08 2020', '31 08 2020', 'admin1.jpg', 'unpublish');

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan_alumni`
--

CREATE TABLE `pekerjaan_alumni` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `instansi` varchar(150) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `id_bidang` int(11) NOT NULL,
  `mulai_bekerja` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pekerjaan_alumni`
--

INSERT INTO `pekerjaan_alumni` (`id`, `id_user`, `instansi`, `jabatan`, `id_bidang`, `mulai_bekerja`, `alamat`, `kota`) VALUES
(1, 48, 'Pt. Coba-Coba', 'Manager', 1, '2021-05-26', 'Jln. Belum diketahui No.799 C O ', 'Medan'),
(7, 76, 'Pertamina', 'Supervisor', 4, '2021-05-12', 'jermal', 'medan'),
(8, 77, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survei`
--

CREATE TABLE `survei` (
  `id` int(10) NOT NULL,
  `nama_survei` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_mulai` varchar(15) NOT NULL,
  `tgl_berahkir` varchar(15) NOT NULL,
  `tgl_update` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei`
--

INSERT INTO `survei` (`id`, `nama_survei`, `deskripsi`, `tgl_mulai`, `tgl_berahkir`, `tgl_update`) VALUES
(5, 'SURVEI TRACER STUDY', 'Survei ini dibuat berdasarkan borang tracer study dari dikti', '30 08 2020', '', '12 08 2020'),
(6, 'SURVEI TRACER STUDY', 'Pada saat lulus, pada tingkat mana kompetensi di bawah ini anda kuasai? ', '', '', '12 08 2020'),
(7, 'SURVEI TRACER STUDY', 'Pada saat lulus, bagaimana kontribusi perguruan tinggi dalam hal kompetensi di bawah ini?', '', '', '12 08 2020');

-- --------------------------------------------------------

--
-- Table structure for table `survei_jawaban`
--

CREATE TABLE `survei_jawaban` (
  `id` int(3) NOT NULL,
  `id_survey` int(3) NOT NULL,
  `id_pertanyaan` int(3) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_jawaban`
--

INSERT INTO `survei_jawaban` (`id`, `id_survey`, `id_pertanyaan`, `jawaban`) VALUES
(1, 5, 1, '[1] 1-3 Bulan'),
(2, 5, 1, '[2] 3-6 bulan'),
(3, 5, 1, '[3] 6-12 Bulan'),
(4, 5, 2, 'Melalui iklan di koran/majalah, brosur '),
(5, 5, 2, ' [1] Melamar ke perusahaan tanpa mengetahui lowongan yang ada '),
(6, 5, 2, ' [1] Pergi ke bursa/pameran kerja'),
(7, 5, 2, ' [1] Mencari lewat internet/iklan online/milis'),
(8, 5, 2, '[1] Dihubungi oleh perusahaan'),
(9, 5, 2, ' [1] Menghubungi Kemenakertrans '),
(10, 5, 2, ' [1] Menghubungi agen tenaga kerja komersial/swasta'),
(11, 5, 2, ' [1] Memeroleh informasi dari pusat/kantor pengembangan karir fakultas/universitas'),
(12, 5, 2, ' [1] Menghubungi kantor kemahasiswaan/hubungan alumni '),
(13, 5, 2, ' [1] Membangun jejaring (network) sejak masih kuliah  '),
(14, 5, 2, ' [1] Melalui relasi (misalnya dosen, orang tua, saudara, teman, dll.)'),
(15, 5, 2, ' [1] Membangun bisnis sendiri '),
(16, 5, 2, ' [1] Melalui penempatan kerja atau magang '),
(17, 5, 2, ' [1] Bekerja di tempat yang sama dengan tempat kerja semasa kuliah  '),
(18, 5, 2, ' [1] Lainnya:  '),
(21, 5, 7, 'YA'),
(22, 5, 7, 'TIDAK'),
(23, 5, 9, ' [1] Tidak'),
(24, 5, 9, '[2] Tidak, tapi saya sedang menunggu hasil lamaran kerja'),
(25, 5, 9, ' [3] Ya, saya akan mulai bekerja dalam 2 minggu ke depan'),
(26, 5, 9, ' [4] Ya, tapi saya belum pasti akan bekerja dalam 2 minggu ke depan'),
(27, 5, 9, ' [5] Lainnya'),
(28, 5, 10, ' [1] Instansi pemerintah (termasuk BUMN)'),
(29, 5, 10, ' [2] Organisasi non-profit/Lembaga Swadaya Masyarakat'),
(30, 5, 10, ' [3] Perusahaan swasta'),
(31, 5, 10, '[4] Wiraswasta/perusahaan sendiri'),
(32, 5, 10, ' [5] Lainnya, '),
(33, 5, 12, ' [1] Sangat Erat'),
(34, 5, 12, ' [2] Erat'),
(35, 5, 12, ' [4] Kurang Erat'),
(36, 5, 12, ' [5] Tidak Sama Sekali '),
(37, 5, 14, ' [1] Setingkat Lebih Tinggi'),
(38, 5, 14, '[2] Tingkat yang Sama'),
(39, 5, 14, ' [3] Setingkat Lebih Rendah'),
(40, 5, 14, ' [4] Tidak Perlu Pendidikan Tinggi'),
(41, 5, 15, ' [1] Pertanyaan tidak sesuai; pekerjaan saya sekarang sudah sesuai dengan pendidikan saya'),
(42, 5, 15, ' [2] Saya belum mendapatkan pekerjaan yang lebih sesuai.'),
(43, 5, 15, ' [3] Di pekerjaan ini saya memeroleh prospek karir yang baik. '),
(44, 5, 15, ' [4] Saya lebih suka bekerja di area pekerjaan yang tidak ada hubungannya dengan pendidikan saya'),
(45, 5, 15, ' [5] Saya dipromosikan ke posisi yang kurang berhubungan dengan pendidikan saya dibanding posisi sebelumnya.'),
(46, 5, 15, ' [6] Saya dapat memeroleh pendapatan yang lebih tinggi di pekerjaan ini.'),
(47, 5, 15, ' [7] Pekerjaan saya saat ini lebih aman/terjamin/secure'),
(48, 5, 15, ' [8] Pekerjaan saya saat ini lebih menarik'),
(49, 5, 15, ' [9] Pekerjaan saya saat ini lebih memungkinkan saya mengambil pekerjaan tambahan/jadwal yang fleksibel, dl'),
(50, 5, 15, ' [10] Pekerjaan saya saat ini lokasinya lebih dekat dari rumah saya'),
(51, 5, 15, ' [11] Pekerjaan saya saat ini dapat lebih menjamin kebutuhan keluarga saya.'),
(52, 5, 15, ' [12] Pada awal meniti karir ini, saya harus menerima pekerjaan yang tidak berhubungan dengan pendidikan saya.'),
(53, 5, 15, '[13] Lainnya: '),
(54, 6, 16, 'Sangat Tinggi'),
(55, 6, 16, 'Sangat Rendah'),
(56, 6, 17, 'Sangat Rendah'),
(57, 6, 17, 'Sangat Tinggi'),
(58, 6, 18, 'Sangat Rendah'),
(59, 6, 18, 'Sangat Tinggi'),
(60, 6, 19, 'Sangat Rendah'),
(61, 6, 19, 'Sangat Tinggi'),
(62, 6, 20, 'Sangat Rendah'),
(63, 6, 20, 'Sangat Tinggi'),
(64, 6, 44, 'Sangat Rendah'),
(65, 6, 44, 'Sangat Tinggi'),
(67, 6, 43, 'Sangat Rendah'),
(68, 6, 43, 'Sangat Tinggi'),
(69, 6, 42, 'Sangat Rendah'),
(70, 6, 42, 'Sangat Tinggi'),
(71, 6, 41, 'Sangat Rendah'),
(72, 6, 41, 'Sangat Tinggi'),
(73, 6, 39, 'Sangat Rendah'),
(74, 6, 39, 'Sangat Tinggi'),
(75, 6, 21, 'Sangat Rendah'),
(76, 6, 21, 'Sangat Tinggi'),
(77, 6, 40, 'Sangat Rendah'),
(78, 6, 40, 'Sangat Tinggi'),
(79, 6, 38, 'Sangat Rendah'),
(80, 6, 38, 'Sangat Tinggi'),
(81, 6, 37, 'Sangat Rendah'),
(82, 6, 37, 'Sangat Tinggi'),
(83, 6, 36, 'Sangat Rendah'),
(84, 6, 36, 'Sangat Tinggi'),
(85, 6, 35, 'Sangat Rendah'),
(86, 6, 35, 'Sangat Tinggi'),
(87, 6, 33, 'Sangat Rendah'),
(88, 6, 33, 'Sangat Tinggi'),
(89, 6, 31, 'Sangat Rendah'),
(90, 6, 31, 'Sangat Tinggi'),
(91, 6, 30, 'Sangat Rendah'),
(92, 6, 30, 'Sangat Tinggi'),
(93, 6, 23, 'Sangat Rendah'),
(94, 6, 23, 'Sangat Tinggi'),
(95, 6, 26, 'Sangat Rendah'),
(96, 6, 26, 'Sangat Tinggi'),
(97, 6, 25, 'Sangat Rendah'),
(98, 6, 25, 'Sangat Tinggi'),
(99, 6, 22, 'Sangat Rendah'),
(100, 6, 22, 'Sangat Tinggi'),
(101, 6, 28, 'Sangat Rendah'),
(102, 6, 28, 'Sangat Tinggi'),
(103, 6, 24, 'Sangat Rendah'),
(104, 6, 24, 'Sangat Tinggi'),
(105, 6, 27, 'Sangat Rendah'),
(106, 6, 27, 'Sangat Tinggi'),
(107, 6, 32, 'Sangat Rendah'),
(108, 6, 32, 'Sangat Tinggi'),
(109, 5, 8, ' [1] Saya masih belajar/melanjutkan kuliah profesi atau pascasarjana '),
(110, 5, 8, ' [2] Saya menikah '),
(111, 5, 8, ' [3] Saya sibuk dengan keluarga dan anak-anak'),
(112, 5, 8, ' [4] Saya sekarang sedang mencari pekerjaan '),
(113, 5, 8, ' [5] Lainnya'),
(114, 7, 45, 'Sangat Rendah'),
(115, 7, 45, 'Sangat Tinggi'),
(116, 7, 46, 'Sangat Rendah'),
(117, 7, 46, 'Sangat Tinggi'),
(118, 7, 47, 'Sangat Rendah'),
(119, 7, 47, 'Sangat Tinggi'),
(120, 7, 48, 'Sangat Rendah'),
(121, 7, 48, 'Sangat Tinggi'),
(124, 7, 49, 'Sangat Rendah'),
(125, 7, 49, 'Sangat Tinggi'),
(126, 7, 51, 'Sangat Rendah'),
(127, 7, 51, 'Sangat Tinggi'),
(128, 7, 52, 'Sangat Rendah'),
(129, 7, 52, 'Sangat Tinggi'),
(130, 7, 53, 'Sangat Rendah'),
(131, 7, 53, 'Sangat Tinggi'),
(132, 7, 54, 'Sangat Rendah'),
(133, 7, 54, 'Sangat Tinggi'),
(134, 7, 55, 'Sangat Rendah'),
(135, 7, 55, 'Sangat Tinggi'),
(136, 7, 56, 'Sangat Rendah'),
(137, 7, 56, 'Sangat Tinggi'),
(138, 7, 59, 'Sangat Rendah'),
(139, 7, 59, 'Sangat Tinggi'),
(140, 7, 60, 'Sangat Rendah'),
(141, 7, 60, 'Sangat Tinggi'),
(142, 7, 64, 'Sangat Rendah'),
(143, 7, 64, 'Sangat Tinggi'),
(144, 7, 62, 'Sangat Rendah'),
(145, 7, 62, 'Sangat Tinggi'),
(146, 7, 57, 'Sangat Rendah'),
(147, 7, 57, 'Sangat Tinggi'),
(148, 6, 34, 'Sangat Rendah'),
(149, 6, 34, 'Sangat Tinggi'),
(150, 6, 29, 'Sangat Rendah'),
(151, 6, 29, 'Sangat Tinggi'),
(152, 7, 50, 'Sangat Rendah'),
(153, 7, 50, 'Sangat Tinggi'),
(154, 7, 58, 'Sangat Rendah'),
(155, 7, 58, 'Sangat Tinggi'),
(156, 7, 61, 'Sangat Rendah'),
(157, 7, 61, 'Sangat Tinggi'),
(158, 7, 63, 'Sangat Rendah'),
(159, 7, 63, 'Sangat Tinggi'),
(160, 7, 65, 'Sangat Rendah'),
(161, 7, 65, 'Sangat Tinggi'),
(162, 7, 66, 'Sangat Rendah'),
(163, 7, 66, 'Sangat Tinggi'),
(164, 7, 67, 'Sangat Rendah'),
(165, 7, 67, 'Sangat Tinggi'),
(166, 7, 69, 'Sangat Rendah'),
(167, 7, 69, 'Sangat Tinggi'),
(168, 7, 68, 'Sangat Rendah'),
(169, 7, 68, 'Sangat Tinggi'),
(170, 7, 70, 'Sangat Rendah'),
(171, 7, 70, 'Sangat Tinggi'),
(172, 7, 71, 'Sangat Rendah'),
(173, 7, 71, 'Sangat Tinggi'),
(174, 7, 72, 'Sangat Rendah'),
(175, 7, 72, 'Sangat Tinggi'),
(176, 7, 73, 'Sangat Rendah'),
(177, 7, 73, 'Sangat Tinggi'),
(178, 5, 1, '[4] Lebih dari 12 bulan'),
(179, 5, 4, '1-3 Perusahaan'),
(180, 5, 4, '3-6 Perusahaan'),
(181, 5, 4, 'lebih dari 6 perusahaan'),
(182, 5, 5, '1-3 Perusahaan'),
(183, 5, 5, '3-6 Perusahaan'),
(184, 5, 5, 'lebih dari 6 perusahaan'),
(185, 5, 6, '1-3 Perusahaan'),
(186, 5, 6, '3-6 Perusahaan'),
(187, 5, 6, 'lebih dari 6 perusahaan'),
(188, 5, 11, 'kurang Rp 1.000.000'),
(189, 5, 11, 'Rp 1.000.000 -  Rp 2.500.000'),
(190, 5, 11, 'Rp 2.500.000 - Rp 5.000.000'),
(191, 5, 11, 'Rp 5.000.000 - Rp 7.500.000'),
(192, 5, 11, 'lebih  Rp 7.500.000'),
(193, 5, 74, 'sdsds');

-- --------------------------------------------------------

--
-- Table structure for table `survei_pertanyaan`
--

CREATE TABLE `survei_pertanyaan` (
  `id` int(3) NOT NULL,
  `id_survei` int(3) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_pertanyaan`
--

INSERT INTO `survei_pertanyaan` (`id`, `id_survei`, `pertanyaan`) VALUES
(1, 5, 'Kapan anda mulai mencari pekerjaan?'),
(2, 5, 'Bagaimana anda mencari pekerjaan tersebut?'),
(4, 5, 'Berapa perusahaan/instansi/institusi yang sudah anda lamar (lewat surat atau e-mail) sebelum anda memeroleh pekerjaan pertama?'),
(5, 5, 'Berapa banyak perusahaan/instansi/institusi yang merespons lamaran anda?'),
(6, 5, 'Berapa banyak perusahaan/instansi/institusi yang mengundang anda untuk wawancara?'),
(7, 5, 'Apakah anda bekerja saat ini (termasuk kerja sambilan dan wirausaha)?'),
(8, 5, 'Bagaimana anda menggambarkan situasi anda saat ini?'),
(9, 5, 'Apakah anda aktif mencari pekerjaan dalam 4 minggu terakhir?'),
(10, 5, 'Apa jenis perusahaan/instansi/institusi tempat anda bekerja sekarang?'),
(11, 5, 'Kira-kira berapa pendapatan anda setiap bulannya?'),
(12, 5, 'Seberapa erat hubungan antara bidang studi dengan pekerjaan anda?'),
(14, 5, 'Tingkat pendidikan apa yang paling tepat/sesuai untuk pekerjaan anda saat ini?'),
(15, 5, 'Jika menurut anda pekerjaan anda saat ini tidak sesuai dengan pendidikan anda, mengapa anda mengambilnya?'),
(16, 6, 'Pengetahuan di bidang atau disiplin ilmu anda'),
(17, 6, 'Pengetahuan di luar bidang atau disiplin ilmu anda'),
(18, 6, 'Pengetahuan umum'),
(19, 6, 'Bahasa Inggris'),
(20, 6, 'Ketrampilan internet '),
(21, 6, 'Ketrampilan komputer'),
(22, 6, 'Berpikir kritis'),
(23, 6, 'Ketrampilan riset'),
(24, 6, 'Kemampuan belajar'),
(25, 6, 'Kemampuan berkomunikasi'),
(26, 6, 'Bekerja di bawah tekanan '),
(27, 6, 'Manajemen waktu'),
(28, 6, 'Bekerja secara mandiri'),
(29, 6, 'Bekerja dalam tim/bekerjasama dengan orang lain'),
(30, 6, 'Kemampuan dalam memecahkan masalah'),
(31, 6, 'Negosiasi '),
(32, 6, 'Kemampuan analisis'),
(33, 6, 'Toleransi'),
(34, 6, 'Kemampuan adaptasi '),
(35, 6, 'Loyalitas'),
(36, 6, 'Integritas'),
(37, 6, 'Bekerja dengan orang yang berbeda budaya maupun latar belakang'),
(38, 6, 'Kepemimpinan'),
(39, 6, 'Kemampuan dalam memegang tanggungjawab'),
(40, 6, 'Inisiatif '),
(41, 6, 'Manajemen proyek/program'),
(42, 6, 'Kemampuan untuk memresentasikan ide/produk/laporan '),
(43, 6, 'Kemampuan dalam menulis laporan, memo dan dokumen'),
(44, 6, 'Kemampuan untuk terus belajar sepanjang hayat '),
(45, 7, 'Pengetahuan di bidang atau disiplin ilmu anda'),
(46, 7, 'Pengetahuan di luar bidang atau disiplin ilmu anda'),
(47, 7, 'Pengetahuan umum'),
(48, 7, 'Bahasa Inggris'),
(49, 7, 'Ketrampilan internet'),
(50, 7, 'Ketrampilan komputer '),
(51, 7, 'Berpikir kritis'),
(52, 7, 'Ketrampilan riset'),
(53, 7, 'Kemampuan belajar'),
(54, 7, 'Kemampuan berkomunikasi'),
(55, 7, 'Bekerja di bawah tekanan'),
(56, 7, 'Manajemen waktu'),
(57, 7, 'Bekerja secara mandiri'),
(58, 7, 'Bekerja dalam tim/bekerjasama dengan orang lain'),
(59, 7, 'Kemampuan dalam memecahkan masalah'),
(60, 7, 'Negosiasi'),
(61, 7, 'Kemampuan analisis'),
(62, 7, 'Toleransi'),
(63, 7, 'Kemampuan adaptasi'),
(64, 7, 'Loyalitas'),
(65, 7, 'Integritas'),
(66, 7, 'Bekerja dengan orang yang berbeda budaya maupun latar belakang'),
(67, 7, 'Kepemimpinan'),
(68, 7, 'Kemampuan dalam memegang tanggungjawab'),
(69, 7, 'Inisiatif'),
(70, 7, 'Manajemen proyek/program'),
(71, 7, 'Kemampuan untuk memresentasikan ide/produk/laporan'),
(72, 7, 'Kemampuan dalam menulis laporan, memo dan dokumen'),
(73, 7, 'Kemampuan untuk terus belajar sepanjang hayat'),
(74, 5, 'axaxa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `id_user_grup` int(10) NOT NULL,
  `nim` int(9) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(2) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `tahun_lulus` varchar(30) DEFAULT NULL,
  `angkatan` varchar(50) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user_grup`, `nim`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `telp`, `email`, `alamat`, `password`, `tahun_lulus`, `angkatan`, `foto`, `status`) VALUES
(1, 1, 0, 'Bagja septian', 'munawar', 'L', NULL, '2020-06-01', '083821354485', 'bagja672@gmail.com', '', '493fd8c3e10972043bcb48e4743a2587', '2020-06-25', '', '', ''),
(24, 1, 0, 'admin', 'istrator', 'L', NULL, '', '', 'adminadmin@gmail.com', '', '21232f297a57a5a743894a0e4a801fc3', '', '', '', 'aktif'),
(27, 2, 0, 'Dosen', 'Test', 'L', NULL, '', '0832827371', 'iwanabadi@gmail.com', 'jl karapitan no11', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'admin3.jpg', 'aktif'),
(29, 2, 0, 'BJ', 'SP', 'L', NULL, '', '123131313', 'traos.corp@gmail.com', 'bandung', 'a4165381b7249b57a8c4589fe96b6fc5', '', '', '1267016_4cb469fb-1e44-414a-95dc-b3b6eb5e03b2_(1).png', 'aktif'),
(47, 0, 0, 'Budiman', 'rahayu', 'L', NULL, '03 August 2020', '0821435784932', 'fahmyal080397@gmail.com', 'jl karapitan no11', '456b39e6cf4fdc9bda6b84b0a0b557dd', '2019', '2015', 'admin.jpg', 'nonaktif'),
(48, 0, 191402076, 'Sergi Apriatnaa a', 'Djumantara', 'L', 'Medan', '26 November 1996', '087823728172', 'sergi@gmail.com', 'ciparay indah', '8b8d481c6dcdbd24b4e43825c5345309', '2020', '2016', 'UZLTE5704-removebg-preview.png', 'aktif'),
(49, 0, 0, 'Lora pradita', 'dasrul', 'P', NULL, '26 November 1996', '0827352435', 'lora@gmail.com', 'pasirkoja', '174c94f5c7f5a11941cab1d8069bf820', '2020', '2016', 'admin.jpg', 'nonaktif'),
(50, 0, 0, 'Topan ', 'nurdiansyah', 'L', NULL, '07 January 1991', '0827352435', 'topan@gmail.com', 'tegal lega ', '2b165d92e828c00b5b83f9dc3eb7cc20', '2017', '2011', 'admin.jpg', 'nonaktif'),
(76, 0, 1223, 'Kenzie', 'Ammar Achmad Siregar', 'L', 'Medan', '28 July 2019', '0864454545454', 'wndkhlish@gmail.com', 'jermal', 'ed2b1f468c5f915f3f1cf75d7068baae', '2021', '2019', 'UZLTE5704-removebg-preview.png', 'aktif'),
(77, 0, 1223, 'wanda', 'khalishah', NULL, NULL, NULL, NULL, 'wndkhlish@gmail.com', NULL, 'ed2b1f468c5f915f3f1cf75d7068baae', NULL, NULL, 'adha.jpg', 'nonaktif');

-- --------------------------------------------------------

--
-- Stand-in structure for view `user_v`
-- (See below for the actual view)
--
CREATE TABLE `user_v` (
`id` int(10)
,`id_user_grup` int(10)
,`nim` int(9)
,`nama_depan` varchar(50)
,`nama_belakang` varchar(50)
,`jenis_kelamin` varchar(2)
,`tempat_lahir` varchar(100)
,`tgl_lahir` varchar(30)
,`telp` varchar(20)
,`email` varchar(50)
,`alamat` text
,`password` varchar(255)
,`tahun_lulus` varchar(30)
,`angkatan` varchar(50)
,`foto` varchar(255)
,`status` varchar(30)
,`instansi` varchar(150)
,`jabatan` varchar(100)
,`mulai_bekerja` date
,`alamat_kerja` text
,`kota` varchar(50)
,`bidang_pekerjaan` varchar(100)
,`id_bidang` int(10)
);

-- --------------------------------------------------------

--
-- Structure for view `user_v`
--
DROP TABLE IF EXISTS `user_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `user_v`  AS  (select `u`.`id` AS `id`,`u`.`id_user_grup` AS `id_user_grup`,`u`.`nim` AS `nim`,`u`.`nama_depan` AS `nama_depan`,`u`.`nama_belakang` AS `nama_belakang`,`u`.`jenis_kelamin` AS `jenis_kelamin`,`u`.`tempat_lahir` AS `tempat_lahir`,`u`.`tgl_lahir` AS `tgl_lahir`,`u`.`telp` AS `telp`,`u`.`email` AS `email`,`u`.`alamat` AS `alamat`,`u`.`password` AS `password`,`u`.`tahun_lulus` AS `tahun_lulus`,`u`.`angkatan` AS `angkatan`,`u`.`foto` AS `foto`,`u`.`status` AS `status`,`p`.`instansi` AS `instansi`,`p`.`jabatan` AS `jabatan`,`p`.`mulai_bekerja` AS `mulai_bekerja`,`p`.`alamat` AS `alamat_kerja`,`p`.`kota` AS `kota`,`b`.`nama` AS `bidang_pekerjaan`,`b`.`id` AS `id_bidang` from ((`user` `u` left join `pekerjaan_alumni` `p` on(`u`.`id` = `p`.`id_user`)) left join `bidang_pekerjaan` `b` on(`p`.`id_bidang` = `b`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidang_pekerjaan`
--
ALTER TABLE `bidang_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban_pertanyaan`
--
ALTER TABLE `jawaban_pertanyaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loker`
--
ALTER TABLE `loker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pekerjaan_alumni`
--
ALTER TABLE `pekerjaan_alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survei`
--
ALTER TABLE `survei`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survei_jawaban`
--
ALTER TABLE `survei_jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pertanyaan` (`id_pertanyaan`),
  ADD KEY `id_survey` (`id_survey`);

--
-- Indexes for table `survei_pertanyaan`
--
ALTER TABLE `survei_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_survey` (`id_survei`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidang_pekerjaan`
--
ALTER TABLE `bidang_pekerjaan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jawaban_pertanyaan`
--
ALTER TABLE `jawaban_pertanyaan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `loker`
--
ALTER TABLE `loker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pekerjaan_alumni`
--
ALTER TABLE `pekerjaan_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `survei`
--
ALTER TABLE `survei`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `survei_jawaban`
--
ALTER TABLE `survei_jawaban`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `survei_pertanyaan`
--
ALTER TABLE `survei_pertanyaan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
