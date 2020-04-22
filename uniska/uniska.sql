-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2020 pada 10.18
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniska`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` char(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `matkul` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama`, `matkul`, `alamat`, `telpon`) VALUES
('987', 'coba', 'JST', 'BJM', '628901829298');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` char(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` enum('PNS','HONORER') NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `jabatan`, `alamat`, `telpon`) VALUES
('7819010', 'sutan', 'PNS', '<p>\r\n	handi; balkd;ald</p>\r\n<p>\r\n	adadjldaddasdla;dlajda&#39;d;ald&#39;;ad</p>\r\n', '0928738391');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` char(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `alamat`, `telpon`) VALUES
('01', 'adjakj', 'akdksadj', 9876);

-- --------------------------------------------------------

--
-- Struktur dari tabel `praktikum`
--

CREATE TABLE `praktikum` (
  `id_praktikum` char(8) NOT NULL,
  `nama_mhs` varchar(25) NOT NULL,
  `nama_dosen` varchar(25) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `matkul_praktikum` enum('WEB','JAVA','DELPHI','MICRO') NOT NULL,
  `kehadiran` enum('Hadir','Izin','Alpa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(7) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jeniskelamin` enum('laki-laki','perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jeniskelamin`, `alamat`, `telpon`) VALUES
(123, 'udin', 'laki-laki', 'panglima', '62009867');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
