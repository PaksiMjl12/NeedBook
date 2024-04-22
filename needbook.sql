-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2024 pada 18.02
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
-- Database: `needbook`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(255) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `kategori`) VALUES
(1, 'Atlas Sejarah Indonesia', 'Pustaka Baru Press', 'Sejarah'),
(3, 'The Remarkable Story of Soekarno', 'Roemah Soekarno', 'Sejarah'),
(4, 'Cerita Perang Kemerdekaan Indonesia melawan jepang', 'Wahyu Media Barat', 'Sejarah'),
(5, 'World History Sejarah Dunia Lengkap', 'Indoliterasi', 'Sejarah'),
(6, 'The People Immortal', 'Vasily Grossman', 'Sejarah'),
(7, 'Selected Works II', 'Vladimir Vysotsky', 'Sejarah'),
(8, 'Barcelona Prose', 'Efim Etkind', 'Sejarah'),
(9, 'Countries That Don’t Exist', 'Sigizmund Krzhizhanovsky', 'Sejarah'),
(10, 'Experiments in prose', 'Peter the Great’s African', 'Sejarah'),
(11, 'Hikayat Majapahit-Kebangkitan dan Keruntuhan Kerajaan Terbesar di Nusantara', 'Elex Media Komputindo', 'Sejarah'),
(12, 'Tortured: When Good Soldiers Do Bad Things', 'Galuh Wandita', 'Sejarah'),
(13, 'Krakatoa: The Day the World Exploded', 'Simon Winchester', 'Sejarah'),
(14, 'The Indonesian Genocide of 1965: Causes, Dynamics and Legacies', 'Jess Melvin', 'Sejarah'),
(15, 'Indonesia Menggugat', 'Mochtar Lubis', 'Sejarah'),
(16, 'Menulis Sejarah, Mengungkap Pemalsuan', 'Asvi Warman Adam', 'Sejarah'),
(18, 'The People Immortal', 'Vasily Grossman', 'Sejarah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `siswa_id` bigint(20) NOT NULL,
  `book_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `siswa_id`, `book_id`) VALUES
(1, 6, 5),
(2, 6, 4),
(3, 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `username`, `email`, `password`, `is_admin`) VALUES
(5, 'ewrewr', 'sdwasdrw', 'aweqwe', 0),
(6, 'paksi', 'paksi@gmail.com', 'password123', 0),
(7, 'rafi', 'rafi@gmail.com', 'pw123', 1),
(123, 'paksi', 'admin@gmail.com', 'admin1', 1),
(12433244, 'paksi12', 'aw@gmail.com', '123', 0),
(12433245, 'pks', 'pks@gmail.com', '333', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12433246;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
