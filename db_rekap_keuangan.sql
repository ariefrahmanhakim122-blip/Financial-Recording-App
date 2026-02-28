-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2026 at 05:20 AM
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
-- Database: `db_rekap_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL,
  `tipe` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tipe`) VALUES
(1, 'Gaji Bulanan', 'Pemasukan'),
(2, 'Investasi', 'Pemasukan'),
(3, 'Makanan & Minuman', 'Pengeluaran'),
(4, 'Transportasi', 'Pengeluaran'),
(5, 'Tagihan Listrik', 'Pengeluaran'),
(6, 'Belanja Pribadi', 'Pengeluaran');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` decimal(10,2) NOT NULL,
  `deskripsi` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `id_kategori`, `tanggal`, `jumlah`, `deskripsi`) VALUES
(1, 1, 1, '2025-12-05', 250000.00, ' | Catatan Tambahan: '),
(3, 1, 2, '2025-12-13', 20000.00, ' | Catatan Tambahan: '),
(8, 1, 3, '2025-12-12', 3000.00, ' | Catatan Tambahan: '),
(11, 1, 1, '2023-12-02', 3000000.00, ' | Catatan Tambahan: '),
(17, 1, 6, '2025-12-15', 2000000.00, ' | Catatan Tambahan: '),
(29, 11, 1, '2026-01-01', 1300000.00, ' | Catatan Tambahan: '),
(30, 11, 2, '2026-01-03', 100000.00, 'belanja | Catatan Tambahan: habis'),
(31, 11, 3, '2026-01-16', 200000.00, ' | Catatan Tambahan: '),
(32, 12, 3, '2026-01-01', 100000.00, ' | Catatan Tambahan: '),
(33, 1, 1, '2026-02-01', 10000.00, ' | Catatan Tambahan: '),
(35, 1, 2, '2026-02-10', 3000000.00, ' | Catatan Tambahan: '),
(37, 1, 3, '2026-02-11', 1000000.00, ' | Catatan Tambahan: '),
(38, 1, 1, '2026-02-05', 100000.00, ' Catatan Tambahan: ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`) VALUES
(1, 'arief', '81dc9bdb52d04dc20036dbd8313ed055', 'Email'),
(11, 'ahmad', '202cb962ac59075b964b07152d234b70', 'Email'),
(12, 'wafa', 'caf1a3dfb505ffed0d024130f58c5cfa', 'Email');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `ux_kategori_nama` (`nama_kategori`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `fk_transaksi_kategori_correct` (`id_kategori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `ux_user_username` (`username`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `fk_transaksi_kategori_correct` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
