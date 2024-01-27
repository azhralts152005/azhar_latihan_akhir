-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jan 2024 pada 10.13
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sample`
--

CREATE TABLE `tbl_sample` (
  `id` int(15) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `upload_image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_sample`
--

INSERT INTO `tbl_sample` (`id`, `first_name`, `upload_image`) VALUES
(2, 'azhar', 'C:\\fakepath\\download (2).jpg'),
(3, 'dsxavc', 'C:\\fakepath\\downloadd.png'),
(4, 'sadcas', 'C:\\fakepath\\sampah.jpg'),
(5, 'asfces', 'C:\\fakepath\\downloadd.png'),
(6, 'azhar', 'C:\\fakepath\\bola.jpeg'),
(7, 'scz', 'C:\\fakepath\\download.jpg'),
(8, 'wsajdbsa', 'C:\\fakepath\\sampah.jpg'),
(9, 'asfc', 'C:\\fakepath\\downloadd.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_sample`
--
ALTER TABLE `tbl_sample`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_sample`
--
ALTER TABLE `tbl_sample`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
