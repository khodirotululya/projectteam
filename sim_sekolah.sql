-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Mar 2022 pada 01.37
-- Versi server: 10.1.40-MariaDB
-- Versi PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sim_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`) VALUES
(1, 'Bank BRI'),
(2, 'Bank BCA'),
(3, 'Bank Mandiri'),
(4, 'Bank BNI'),
(5, 'Panin Bank'),
(6, 'Bank Permata'),
(7, 'Bank Mega'),
(8, 'Bank Syariah Mandiri'),
(9, 'Bank BNI Syariah'),
(10, 'Bank Muamalat'),
(11, 'Permata Bank Syariah'),
(12, 'Bank Mega Syariah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catering`
--

CREATE TABLE `catering` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `waktu` date NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `catering`
--

INSERT INTO `catering` (`id`, `id_siswa`, `nominal`, `tanggal`, `waktu`, `time`) VALUES
(1, 3, '15000', '2019-12-18 10:11:30', '2019-11-08', '2019-11-17'),
(2, 2, '15000', '2019-11-16 20:48:15', '2019-11-09', '2019-11-17'),
(3, 2, '15000', '2019-11-16 20:48:15', '2019-11-11', '2019-11-17'),
(4, 9, '15000', '2019-12-04 07:55:13', '2019-12-04', '2019-12-04'),
(5, 9, '15000', '2019-12-04 07:55:13', '2019-12-05', '2019-12-04'),
(6, 9, '0', '2019-12-18 10:40:36', '2019-12-06', '2019-12-04'),
(7, 9, '15000', '2019-12-04 07:55:13', '2019-12-07', '2019-12-04'),
(9, 9, '15000', '2019-12-04 08:04:39', '2019-12-27', '2019-12-04'),
(10, 9, '15000', '2019-12-04 08:04:39', '2019-12-28', '2019-12-04'),
(11, 9, '15000', '2019-12-04 08:04:39', '2019-12-30', '2019-12-04'),
(12, 8, '15000', '2019-12-04 08:07:48', '2019-12-12', '2019-12-04'),
(13, 8, '15000', '2019-12-04 08:07:48', '2019-12-13', '2019-12-04'),
(14, 8, '15000', '2019-12-04 08:07:48', '2019-12-14', '2019-12-04'),
(15, 8, '15000', '2019-12-04 08:08:51', '2019-12-26', '2019-12-04'),
(16, 8, '15000', '2019-12-04 08:08:51', '2019-12-30', '2019-12-04'),
(17, 8, '0', '2019-12-18 10:25:52', '2019-12-31', '2019-12-04'),
(18, 8, '15000', '2019-12-18 09:15:55', '2019-12-19', '2019-12-18'),
(19, 8, '15000', '2019-12-18 09:15:55', '2019-12-23', '2019-12-18'),
(20, 8, '15000', '2019-12-18 09:15:55', '2019-12-24', '2019-12-18'),
(21, 8, '15000', '2019-12-18 09:15:55', '2019-12-25', '2019-12-18'),
(22, 8, '15000', '2019-12-18 09:15:55', '2020-01-01', '2019-12-18'),
(23, 8, '15000', '2019-12-18 09:15:55', '2020-01-02', '2019-12-18'),
(24, 8, '15000', '2019-12-18 09:15:55', '2020-01-06', '2019-12-18'),
(25, 8, '15000', '2019-12-18 09:15:55', '2020-01-07', '2019-12-18'),
(26, 8, '15000', '2019-12-18 09:15:55', '2020-01-08', '2019-12-18'),
(27, 8, '15000', '2019-12-18 09:15:55', '2020-01-09', '2019-12-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `danabos`
--

CREATE TABLE `danabos` (
  `id` int(11) NOT NULL,
  `nominal` varchar(15) NOT NULL,
  `sekarang` varchar(10) NOT NULL,
  `time` date NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `id_guru` tinyint(4) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `jam` varchar(4) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `time` date NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gaji`
--

INSERT INTO `gaji` (`id`, `id_guru`, `periode`, `jam`, `nominal`, `time`, `tanggal`) VALUES
(2, 3, 'Februari-2020', '16', '40000', '2020-02-25', '2020-02-25 05:16:50'),
(3, 4, 'Januari-2022', '31', '40000', '2022-02-11', '2022-02-11 05:49:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `nip` varchar(15) NOT NULL,
  `bidang` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` enum('Berhenti','Cuti','Aktif') NOT NULL,
  `number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `name`, `sex`, `nip`, `bidang`, `alamat`, `status`, `number`) VALUES
(3, 'Baharuddin', 'Pria', '1201200221', 'Matimatika', 'Jln Kenangan', 'Aktif', '0853-8833-2311'),
(4, 'Rismasuci', 'Wanita', '02130001231', 'Bahasa Indonesia', 'Jl. Kelapa dua', 'Aktif', '0852-9992-1212');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasbank`
--

CREATE TABLE `kasbank` (
  `id_bank` int(10) NOT NULL,
  `sekarang` varchar(15) NOT NULL,
  `time` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kaskeluar`
--

CREATE TABLE `kaskeluar` (
  `id_keluar` int(11) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `sekarang` varchar(10) NOT NULL,
  `time` date NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kastunai`
--

CREATE TABLE `kastunai` (
  `id_tunai` int(10) NOT NULL,
  `sekarang` varchar(15) NOT NULL,
  `time` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kastunai`
--

INSERT INTO `kastunai` (`id_tunai`, `sekarang`, `time`, `keterangan`, `nominal`, `tanggal`) VALUES
(0, '220308', '2022-03-08', 'dana masuk', '4000000', '2022-03-08 05:25:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `wali` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `wali`, `keterangan`) VALUES
(5, 'Ahmad Dahlan', 'Baharuddin', ''),
(6, 'Buya Hamka', 'Rismasuci', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lainnya`
--

CREATE TABLE `lainnya` (
  `id` int(11) NOT NULL,
  `sekarang` varchar(15) NOT NULL,
  `time` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lainnya`
--

INSERT INTO `lainnya` (`id`, `sekarang`, `time`, `keterangan`, `nominal`, `tanggal`) VALUES
(6, '200225', '2020-02-25', 'Saldo Awal Sekolah', '25000000', '2020-02-25 05:21:15'),
(7, '220311', '2022-03-11', 'masuk', '3000000', '2022-03-11 05:51:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `saldo_awal` varchar(15) NOT NULL DEFAULT '0',
  `kas_masuk` varchar(15) DEFAULT '0',
  `kas_keluar` varchar(15) NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id`, `saldo_awal`, `kas_masuk`, `kas_keluar`, `tanggal`) VALUES
(13, '0', '25000000', '0', '2020-02-25'),
(14, '25000000', '0', '4240000', '2022-02-11'),
(15, '20760000', '0', '0', '2022-02-14'),
(16, '20760000', '0', '0', '2022-02-15'),
(17, '20760000', '0', '0', '2022-02-16'),
(18, '20760000', '0', '0', '2022-02-17'),
(19, '20760000', '0', '0', '2022-02-19'),
(20, '20760000', '0', '0', '2022-02-21'),
(21, '20760000', '0', '0', '2022-02-22'),
(22, '20760000', '0', '0', '2022-02-24'),
(23, '20760000', '0', '0', '2022-02-25'),
(24, '20760000', '70000', '0', '2022-02-27'),
(25, '20830000', '0', '0', '2022-02-28'),
(26, '20830000', '0', '0', '2022-03-01'),
(27, '20830000', '0', '0', '2022-03-02'),
(28, '20830000', '0', '0', '2022-03-03'),
(29, '20830000', '0', '0', '2022-03-07'),
(30, '20830000', '0', '0', '2022-03-08'),
(31, '20830000', '0', '0', '2022-03-09'),
(32, '20830000', '0', '0', '2022-03-10'),
(33, '20830000', '3000000', '0', '2022-03-11'),
(34, '23830000', '0', '0', '2022-03-12'),
(35, '23830000', '300000', '0', '2022-03-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporanbos`
--

CREATE TABLE `laporanbos` (
  `id` int(11) NOT NULL,
  `saldo_awal` varchar(12) NOT NULL,
  `kas_masuk` varchar(12) NOT NULL,
  `kas_keluar` varchar(12) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporankas`
--

CREATE TABLE `laporankas` (
  `id` int(11) NOT NULL,
  `saldo_awal` varchar(15) NOT NULL,
  `dana_masuk` varchar(15) NOT NULL,
  `dana_keluar` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `id_bank` int(11) NOT NULL,
  `id_tunai` int(11) NOT NULL,
  `id_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporankeluar`
--

CREATE TABLE `laporankeluar` (
  `id` int(11) NOT NULL,
  `saldo_awal` varchar(12) NOT NULL,
  `kas_masuk` varchar(12) NOT NULL,
  `kas_keluar` varchar(12) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tipe` enum('KM','KK') NOT NULL,
  `kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `nama`, `nominal`, `tipe`, `kode`) VALUES
(1, 'Uang SPP', '70000', 'KM', 'KM-0001'),
(2, 'Uang Ujian', '50000', 'KM', 'KM-0002'),
(3, 'Uang Snack', '5000', 'KM', 'KM-0003'),
(4, 'Uang Catering', '15000', 'KM', 'KM-0004'),
(5, 'Uang Pendaftaran', '200000', 'KM', 'KM-0005'),
(6, 'Pembayaran Gaji', '40000', 'KK', 'KK-0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `time` date NOT NULL,
  `siswa` varchar(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `sekarang` varchar(10) NOT NULL,
  `time` date NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `nominal`, `sekarang`, `time`, `keterangan`, `tanggal`) VALUES
(5, '3000000', '220211', '2022-02-11', 'persami', '2022-02-11 04:45:39'),
(6, '300000', '220313', '2022-03-13', 'masuk', '2022-03-12 23:52:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `status` enum('Berhenti','Cuti','Aktif') NOT NULL,
  `wali` varchar(50) NOT NULL,
  `tempat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kelas` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `name`, `nis`, `sex`, `status`, `wali`, `tempat`, `tanggal`, `alamat`, `kelas`) VALUES
(10, 'Suci Permata Sari', '123313134223', 'Wanita', 'Aktif', 'Musa Harun', 'Kampar', '2020-02-17', 'Jl. Simpang Lima', 6),
(11, 'Ahmad Dhairobbi', '1231314331', '', 'Aktif', 'Darmijan', 'Batu Guntung', '2002-07-25', 'Jln Kebakyoran Baru', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `snack`
--

CREATE TABLE `snack` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `time` date NOT NULL,
  `waktu` date NOT NULL,
  `nominal` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `snack`
--

INSERT INTO `snack` (`id`, `id_siswa`, `tanggal`, `time`, `waktu`, `nominal`) VALUES
(15, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-18', '5000'),
(16, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-19', '5000'),
(17, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-20', '5000'),
(18, 8, '2019-12-18 11:57:24', '2019-11-17', '2019-11-21', '0'),
(19, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-22', '5000'),
(20, 8, '2019-11-17 07:08:52', '2019-11-17', '2019-11-23', '5000'),
(21, 8, '2019-12-18 11:01:43', '2019-11-17', '2019-11-25', '0'),
(22, 10, '2020-02-25 05:11:36', '2020-02-25', '2020-02-12', '5000'),
(23, 10, '2020-02-25 05:11:36', '2020-02-25', '2020-02-13', '5000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `time` date NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `nominal` varchar(12) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id`, `id_siswa`, `time`, `bulan`, `nominal`, `tanggal`) VALUES
(3, 9, '2019-11-17', 'Januari-2019', '70000', '2019-11-17 07:20:18'),
(4, 10, '2020-02-25', 'Januari-2020', '70000', '2020-02-25 05:09:48'),
(5, 11, '2022-02-27', 'Februari-2022', '70000', '2022-02-27 14:37:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggal`
--

CREATE TABLE `tanggal` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `Keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggal`
--

INSERT INTO `tanggal` (`id`, `tgl`, `Keterangan`) VALUES
(3, '2020-06-01', 'Hari Pancasila'),
(4, '2020-05-22', 'Hari Buruh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nis` varchar(15) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `wali` varchar(100) NOT NULL,
  `sex` enum('Pria','Wanita') NOT NULL,
  `status` enum('Non-Aktif','Aktif') NOT NULL,
  `kelas` tinyint(4) NOT NULL,
  `bayar` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `temp`
--

INSERT INTO `temp` (`id`, `name`, `nis`, `tempat`, `tanggal`, `alamat`, `wali`, `sex`, `status`, `kelas`, `bayar`) VALUES
(3, 'Ahmad Safawi', '1333', 'Rambah Samo', '2000-06-13', 'Jl. Simpang Mangga', 'Bahar', 'Pria', 'Non-Aktif', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id` int(11) NOT NULL,
  `id_siswa` smallint(6) NOT NULL,
  `nominal` varchar(15) NOT NULL,
  `periode` varchar(20) NOT NULL,
  `time` date NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` int(11) NOT NULL,
  `active` enum('1','0') NOT NULL,
  `gambar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `role`, `active`, `gambar`) VALUES
(1, 'sdm-kampa1@gmail.com', '$2y$10$dFdQaba34BplJRnmCv54/uhoFLU0wlXCY4lRG/EG9FpX9fN1kzjq.', 'SDM Kampa', 1, '1', 'j.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `danabos`
--
ALTER TABLE `danabos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasbank`
--
ALTER TABLE `kasbank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `kaskeluar`
--
ALTER TABLE `kaskeluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lainnya`
--
ALTER TABLE `lainnya`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporanbos`
--
ALTER TABLE `laporanbos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporankas`
--
ALTER TABLE `laporankas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporankeluar`
--
ALTER TABLE `laporankeluar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `snack`
--
ALTER TABLE `snack`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanggal`
--
ALTER TABLE `tanggal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `lainnya`
--
ALTER TABLE `lainnya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `snack`
--
ALTER TABLE `snack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tanggal`
--
ALTER TABLE `tanggal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
