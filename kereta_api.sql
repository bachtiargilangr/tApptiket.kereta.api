-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Agu 2023 pada 09.37
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kereta_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `username`, `password`) VALUES
(2, 'admin', 'admin', 'admin'),
(5, 'Gilang', 'gilang', 'gilang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id`, `status`, `kelas`, `harga`) VALUES
(1, 'dewasa', 'eksekutif', '75000'),
(2, 'anak', 'eksekutif', '50000'),
(3, 'dewasa', 'ekonomi', '65000'),
(4, 'anak', 'ekonomi', '40000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang`
--

CREATE TABLE `penumpang` (
  `id` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `awal` varchar(50) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `berangkat` varchar(50) NOT NULL,
  `tiba` varchar(50) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `kereta` varchar(50) NOT NULL,
  `gerbong` varchar(50) NOT NULL,
  `dewasa` varchar(50) NOT NULL,
  `anak` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penumpang`
--

INSERT INTO `penumpang` (`id`, `nama`, `alamat`, `awal`, `tujuan`, `berangkat`, `tiba`, `tanggal`, `kereta`, `gerbong`, `dewasa`, `anak`, `total`) VALUES
('71', 'Agung', 'Jl. Meranti', 'Purwokerto (PWT)', 'Surabaya Gubeng (SGU)', '08.30 WIB', '20.19 WITA', 'Sun Aug 20 13:27:19 WIB 2023', 'Argo Wilis', 'Eksekutif 1', '1', '0', 'Rp. 75000'),
('72', 'Gilang', 'JL. Serayu 12 Purwokerto', 'Purwokerto (PWT)', 'Gambir (GMR)', '08.30 WIB', '11.45 WIB', 'Sun Aug 20 14:02:35 WIB 2023', 'Argo Parahyangan', 'Eksekutif 2', '2', '0', 'Rp. 150000'),
('73', 'Dewi', 'Jl. Raya Wangon 12 Wangon', 'Purwokerto (PWT)', 'Surabaya Gubeng (SGU)', '08.15 WIB', '20.05 WITA', 'Sun Aug 20 14:03:24 WIB 2023', 'Lodaya', 'Eksekutif 2', '2', '0', 'Rp. 150000'),
('74', 'Anton S', 'Jl. Kenangan 12 Purwokerto', 'Purwokerto (PWT)', 'Gambir (GMR)', '08.30 WIB', '11.45 WIB', 'Sun Aug 20 14:18:07 WIB 2023', 'Argo Parahyangan', 'Eksekutif 2', '2', '0', 'Rp. 150000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
