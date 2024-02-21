-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 08:41 AM
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
-- Database: `perpustakaan_digital`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `BukuID` int(5) NOT NULL,
  `Judul` varchar(20) NOT NULL,
  `Penulis` varchar(20) NOT NULL,
  `Penerbit` varchar(20) NOT NULL,
  `TahunTerbit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`) VALUES
(551, 'Resign', 'Almira Bastari', 'Gramedia', 2022),
(552, 'Antologi Rasa', 'Ika Natassa', 'Gramedia', 2021),
(553, 'Laut Bercerita', 'Leila S.', 'Gramedia', 2023),
(554, 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', 2022),
(555, 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `No` int(5) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`No`, `Username`, `Password`) VALUES
(1, 'elsa', 'elsa');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(5) NOT NULL,
  `UserID` int(5) NOT NULL,
  `BukuID` int(5) NOT NULL,
  `TanggalPeminjaman` date NOT NULL,
  `TanggalPengembalian` date NOT NULL,
  `StatusPeminjaman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`) VALUES
(201, 1011, 553, '2024-02-01', '2024-02-06', 'Kembali'),
(202, 1013, 553, '2024-02-06', '2024-02-10', 'Kembali'),
(203, 1011, 551, '2024-02-07', '2024-02-11', 'Kembali'),
(204, 1015, 552, '2024-02-12', '2024-02-20', 'Kembali'),
(205, 1015, 555, '2024-02-20', '0000-00-00', 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(5) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nama Lengkap` varchar(30) NOT NULL,
  `Alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Email`, `Nama Lengkap`, `Alamat`) VALUES
(1011, 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
(1012, 'rosi@gmail.com', 'Rosiana ', 'Jl. S. Parman Malang'),
(1013, 'arima@gmail.com', 'Arima Nanda', 'Jl. Bunga Cengkeh Malang'),
(1014, 'davin@gmail.com', 'Davin Nugroho', 'Komplek AU Singosari Malang'),
(1015, 'kemal@gmail.com', 'Kemal Airlangga', 'Jl. Intan Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`No`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
