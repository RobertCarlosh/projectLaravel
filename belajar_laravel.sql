-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 23 Jun 2024 pada 09.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Diki Alfarabi Hadi', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `hadiah_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', NULL, NULL),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(5, 'Qui consequatur eum fuga corrupti.', NULL, NULL),
(6, 'Quos nesciunt blanditiis amet odio.', NULL, NULL),
(7, 'Ex doloremque consequuntur velit alias repellendus ullam.', NULL, NULL),
(8, 'Perspiciatis a quo beatae nobis et suscipit illo.', NULL, NULL),
(9, 'Maiores voluptate animi est enim totam.', NULL, NULL),
(10, 'Rerum expedita inventore nulla voluptates perferendis placeat.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `umur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_05_25_053412_create_mahasiswa_table', 1),
(14, '2024_05_25_054437_create_pegawais_table', 1),
(15, '2024_06_09_083908_create_gambars_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('doniwijaya@gmail.com', '$2y$10$5sD1ucPOZFmNFhxxbRga/uuaiD3BxuJtLXMU7/VWkKHeQGXFFtHdG', '2024-06-08 23:35:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(20) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(6, 'haddad', 'ceo', 12, 'lempeh'),
(7, 'Joni', 'Web Designer', 25, 'Jl. Panglateh'),
(8, 'Kezia Hariyah', 'Petani / Pekebun', 38, 'Jr. Nanas No. 248, Dumai 82535, Aceh'),
(9, 'Nrima Maryadi', 'Pilot', 25, 'Jr. Bara Tambar No. 779, Lubuklinggau 98944, Kalbar'),
(10, 'Jaya Nugroho', 'Jaksa', 39, 'Dk. Gading No. 785, Tomohon 63627, Sulut'),
(11, 'Gading Hutagalung', 'Guru', 33, 'Kpg. Bhayangkara No. 8, Sorong 31322, Kalteng'),
(12, 'Prayitna Akarsana Siregar S.T.', 'Atlet', 35, 'Jr. Sadang Serang No. 514, Ternate 52460, Kalsel'),
(13, 'Vega Galang Waskita', 'Wartawan', 31, 'Dk. Bak Mandi No. 964, Kediri 38619, Malut'),
(14, 'Shania Laksita', 'Penata Rambut', 38, 'Psr. Achmad No. 872, Pekalongan 72198, Sulbar'),
(15, 'Novi Wijayanti', 'Perangkat Desa', 36, 'Gg. Bayam No. 542, Lhokseumawe 68004, Kalteng'),
(16, 'Najib Putra S.Kom', 'Tukang Jahit', 29, 'Dk. Gajah No. 461, Salatiga 31323, Sulteng'),
(17, 'Mujur Rajasa', 'Penata Rias', 39, 'Jln. Jayawijaya No. 463, Madiun 76608, Jambi'),
(18, 'Pranata Kusumo S.Farm', 'Transportasi', 34, 'Ki. Basuki No. 342, Jayapura 11442, DKI'),
(19, 'Queen Mardhiyah', 'Tukang Jahit', 39, 'Dk. Muwardi No. 910, Sorong 73242, Jambi'),
(20, 'Hairyanto Mandala', 'Peneliti', 34, 'Dk. Dipatiukur No. 433, Administrasi Jakarta Selatan 18158, Sumut'),
(21, 'Bagya Megantara', 'Transportasi', 40, 'Ki. Baladewa No. 643, Pematangsiantar 37601, Kepri'),
(22, 'Shakila Halimah', 'Wartawan', 39, 'Ki. Pelajar Pejuang 45 No. 920, Bau-Bau 74736, Papua'),
(23, 'Setya Uwais S.I.Kom', 'Pelajar / Mahasiswa', 30, 'Kpg. Basudewo No. 789, Padangsidempuan 14932, Bengkulu'),
(24, 'Jayadi Cakrawangsa Firgantoro S.Pt', 'Pelaut', 27, 'Ki. Ciwastra No. 749, Metro 18273, Bengkulu'),
(25, 'Yunita Puspita S.H.', 'Imam Masjid', 38, 'Ki. Cikapayang No. 774, Sawahlunto 73404, Gorontalo'),
(26, 'Darmaji Situmorang M.Kom.', 'Pialang', 25, 'Gg. Cikutra Barat No. 494, Tangerang Selatan 82797, Kaltim'),
(27, 'Cinthia Dalima Wulandari', 'Dosen', 34, 'Ds. Kalimalang No. 68, Prabumulih 78106, Gorontalo'),
(28, 'Rahmi Halimah M.Pd', 'Hakim', 31, 'Gg. Honggowongso No. 603, Solok 58276, Maluku'),
(29, 'Dian Karimah Hariyah', 'Pelajar / Mahasiswa', 37, 'Ki. Bawal No. 171, Tebing Tinggi 93228, Banten'),
(30, 'Mumpuni Iswahyudi', 'Penyelam', 35, 'Gg. Jend. Sudirman No. 979, Tebing Tinggi 17632, Kalsel'),
(31, 'Zalindra Hasanah', 'Penulis', 33, 'Jr. Bagis Utama No. 44, Batam 20447, Sulteng'),
(32, 'Gilda Susanti M.M.', 'Tukang Gigi', 32, 'Gg. Haji No. 265, Sibolga 37799, DKI'),
(33, 'Diana Kayla Nuraini', 'Penata Rambut', 35, 'Dk. Diponegoro No. 318, Singkawang 90807, Malut'),
(34, 'Syahrini Hasanah', 'Pramusaji', 35, 'Gg. Pacuan Kuda No. 339, Bandar Lampung 72164, Sulbar'),
(35, 'Vivi Padmasari', 'Dokter', 37, 'Jln. Mulyadi No. 302, Probolinggo 34842, Maluku'),
(36, 'Dina Andriani', 'Atlet', 31, 'Gg. M.T. Haryono No. 493, Administrasi Jakarta Selatan 84397, Sulteng'),
(37, 'Kambali Labuh Marbun S.Ked', 'Karyawan BUMN', 35, 'Jr. Raden Saleh No. 175, Singkawang 88426, Sulbar'),
(38, 'Jaka Mahendra', 'Tabib', 29, 'Psr. B.Agam Dlm No. 98, Dumai 79024, Sumsel'),
(39, 'Halim Tedi Gunarto S.Pt', 'Pialang', 33, 'Gg. Pasirkoja No. 966, Denpasar 46758, Lampung'),
(40, 'Jinawi Suryono S.Pt', 'Montir', 27, 'Jr. Pintu Besar Selatan No. 600, Batu 40235, Sulsel'),
(41, 'Ellis Mardhiyah', 'Satpam', 37, 'Psr. Qrisdoren No. 648, Surakarta 90991, Sulsel'),
(42, 'Bahuraksa Tampubolon', 'Petani / Pekebun', 34, 'Psr. Bak Mandi No. 400, Sawahlunto 74793, Bali'),
(43, 'Luis Asman Budiyanto S.H.', 'Kondektur', 35, 'Kpg. Ciumbuleuit No. 127, Pangkal Pinang 56521, Jateng'),
(44, 'Caturangga Waluyo', 'Perdagangan', 40, 'Jr. Ki Hajar Dewantara No. 625, Manado 35579, Kalteng'),
(45, 'Rahmi Amelia Hassanah M.Ak', 'Hakim', 36, 'Ds. Basoka No. 74, Gunungsitoli 41064, Jabar'),
(46, 'Hamima Padma Pratiwi', 'Hakim', 33, 'Kpg. Bakhita No. 79, Tangerang Selatan 94266, Riau'),
(47, 'Jindra Kambali Tarihoran', 'Karyawan Swasta', 26, 'Dk. Wora Wari No. 118, Gunungsitoli 23517, Bali'),
(48, 'Yance Ade Farida', 'Karyawan Swasta', 36, 'Ds. Sadang Serang No. 169, Manado 34245, Kalsel'),
(49, 'Aurora Nurdiyanti', 'Karyawan BUMN', 37, 'Ds. Bata Putih No. 154, Bengkulu 93247, Sultra'),
(50, 'Salwa Sudiati', 'Pastor', 34, 'Kpg. Abdul Muis No. 540, Medan 28655, Riau'),
(51, 'Raden Dabukke', 'Pelajar / Mahasiswa', 30, 'Kpg. Diponegoro No. 34, Tangerang Selatan 82924, Sumbar'),
(52, 'Samiah Hariyah', 'Wartawan', 39, 'Dk. Merdeka No. 585, Singkawang 70273, Sumsel'),
(53, 'erg', '1efef', 12, 'efwef'),
(54, 'gargwgw', 'qwgeqe', 12, 'feweq'),
(55, 'sfef', 'awef', 21, 'sfasd'),
(56, 'ef', 'efw', 12, 'fefefwaf'),
(57, 'wef', 'qfeeq', 12, 'rvqrc'),
(58, 'wef', 'qfeeq', 12, 'rvqrc'),
(59, 'wefwe', 'ewfw12', 12, 'efwefw'),
(60, 'yupi', 'angoota', 12, 'kamp.durian runtuh'),
(61, 'Artanto Eko Gunawan', 'Paraji', 26, 'Kpg. Madrasah No. 426, Palu 30402, Jateng'),
(62, 'Lukita Samosir', 'Pelajar / Mahasiswa', 38, 'Ds. Babakan No. 243, Sibolga 26682, Sulsel'),
(63, 'Ghaliyati Suci Zulaika', 'Wiraswasta', 33, 'Psr. Bakau Griya Utama No. 391, Bengkulu 67533, Jatim'),
(64, 'Maryanto Sakti Gunarto', 'Dosen', 27, 'Ki. Kali No. 912, Sukabumi 24394, Sulteng'),
(65, 'Tiara Yolanda', 'Pedagang', 37, 'Gg. Haji No. 860, Padangpanjang 48526, Sultra'),
(66, 'Paris Astuti', 'Arsitek', 26, 'Jr. R.E. Martadinata No. 637, Palopo 34403, Jambi'),
(67, 'Ian Tasdik Pratama', 'Wartawan', 33, 'Kpg. Madiun No. 1, Prabumulih 39722, DIY'),
(68, 'Damar Jagaraga Tarihoran M.Kom.', 'Pialang', 30, 'Dk. Pintu Besar Selatan No. 884, Surabaya 61462, Bali'),
(69, 'Emas Tugiman Sinaga', 'Tukang Listrik', 27, 'Jr. Setiabudhi No. 197, Tanjungbalai 61678, DIY'),
(70, 'Paulin Kusmawati', 'Seniman', 32, 'Jln. Nanas No. 547, Kupang 84361, Jateng'),
(71, 'Ina Widiastuti', 'Presiden', 38, 'Gg. Ters. Kiaracondong No. 874, Cimahi 52655, Malut'),
(72, 'Kadir Prasasta', 'Tukang Gigi', 34, 'Kpg. Bacang No. 436, Administrasi Jakarta Barat 61077, Sulut'),
(73, 'Harsaya Budi Nugroho S.E.', 'Pilot', 30, 'Ki. Lada No. 152, Salatiga 59792, Kalbar'),
(74, 'Amelia Raina Usada S.IP', 'Petani / Pekebun', 34, 'Kpg. Ters. Buah Batu No. 695, Tidore Kepulauan 83888, Kepri'),
(75, 'Rachel Nurdiyanti', 'Paraji', 34, 'Ds. Adisucipto No. 859, Solok 94782, Kaltim'),
(76, 'Kunthara Ardianto', 'Pensiunan', 34, 'Dk. Bakau No. 254, Banjar 17920, Maluku'),
(77, 'Ika Usada', 'Penambang', 40, 'Dk. Warga No. 842, Pangkal Pinang 37666, Kaltara'),
(78, 'Dian Rahimah', 'Pedagang', 25, 'Ds. Pattimura No. 541, Pangkal Pinang 18817, Sumut'),
(79, 'Diah Wastuti S.Farm', 'Pramugari', 29, 'Jr. Setiabudhi No. 794, Banda Aceh 19493, Kalsel'),
(80, 'Eman Nainggolan', 'Dokter', 40, 'Gg. Yos No. 117, Banda Aceh 89362, Jatim'),
(81, 'Citra Restu Puspita S.Farm', 'Pengacara', 28, 'Ki. Jakarta No. 681, Malang 38180, Aceh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Padmi Kamila Hassanah S.Farm', NULL, NULL),
(2, 'Julia Oktaviani', NULL, NULL),
(3, 'Darmana Sitompul', NULL, NULL),
(4, 'Naradi Nainggolan', NULL, NULL),
(5, 'Tedi Winarno', NULL, NULL),
(6, 'Ulya Yani Permata S.Pt', NULL, NULL),
(7, 'Maida Uyainah', NULL, NULL),
(8, 'Putri Dian Nasyidah M.Pd', NULL, NULL),
(9, 'Lantar Uwais', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, NULL, NULL),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL),
(5, 'inventore', 5, NULL, NULL),
(6, 'ut', 7, NULL, NULL),
(7, 'quisquam', 5, NULL, NULL),
(8, 'fugiat', 7, NULL, NULL),
(9, 'perspiciatis', 5, NULL, NULL),
(10, 'voluptatem', 3, NULL, NULL),
(11, 'non', 2, NULL, NULL),
(12, 'ducimus', 5, NULL, NULL),
(13, 'tempora', 4, NULL, NULL),
(14, 'voluptatem', 10, NULL, NULL),
(15, 'nisi', 3, NULL, NULL),
(16, 'exercitationem', 10, NULL, NULL),
(17, 'sed', 2, NULL, NULL),
(18, 'tempora', 6, NULL, NULL),
(19, 'laudantium', 7, NULL, NULL),
(20, 'a', 6, NULL, NULL),
(21, 'consequuntur', 9, NULL, NULL),
(22, 'omnis', 1, NULL, NULL),
(23, 'rerum', 9, NULL, NULL),
(24, 'ut', 1, NULL, NULL),
(25, 'amet', 10, NULL, NULL),
(26, 'atque', 9, NULL, NULL),
(27, 'at', 4, NULL, NULL),
(28, 'hic', 3, NULL, NULL),
(29, 'itaque', 1, NULL, NULL),
(30, 'quia', 9, NULL, NULL),
(31, 'consequatur', 8, NULL, NULL),
(32, 'non', 9, NULL, NULL),
(33, 'explicabo', 10, NULL, NULL),
(34, 'eos', 6, NULL, NULL),
(35, 'eveniet', 5, NULL, NULL),
(36, 'dolor', 10, NULL, NULL),
(37, 'magnam', 10, NULL, NULL),
(38, 'aut', 1, NULL, NULL),
(39, 'et', 6, NULL, NULL),
(40, 'ut', 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '(+62) 509 9868 0557', 2, NULL, NULL),
(3, '023 9503 4379', 3, NULL, NULL),
(4, '(+62) 24 1120 052', 4, NULL, NULL),
(5, '0535 3676 2454', 5, NULL, NULL),
(6, '0614 0945 4128', 6, NULL, NULL),
(7, '0460 8541 5478', 7, NULL, NULL),
(8, '(+62) 713 5497 976', 8, NULL, NULL),
(9, '(+62) 653 4057 294', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'doni', 'doniwijaya@gmail.com', NULL, '$2y$10$7SZdg/miTbvztf1bEcADfu.o7YhjmtA7RKO4FF90Mbzye5hGMzWTS', NULL, '2024-06-08 23:22:51', '2024-06-08 23:22:51'),
(2, 'donn', 'doni.forkill@gmail.com', NULL, '$2y$10$mbTuzF7xA7ozcyJH85xRTOeNdsabLU3GrgoIe9bCxw0dNW3brLcCi', '3w2sULutXc43TYcXj6O3wAyxKqdDZlknb7RfktPGp2DW8woKIkzSuTky9GxR', '2024-06-08 23:36:05', '2024-06-09 21:50:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
