-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 05:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dqlab_sql_part_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `ms_pelanggan`
--

CREATE TABLE `ms_pelanggan` (
  `no_urut` int(11) NOT NULL,
  `kode_pelanggan` varchar(50) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_pelanggan`
--

INSERT INTO `ms_pelanggan` (`no_urut`, `kode_pelanggan`, `nama_customer`, `alamat`) VALUES
(1, 'dqlabcust01', 'Eva Novianti, S.H.', 'Vila Sempilan, No. 67 - Kota B'),
(2, 'dqlabcust02', 'Heidi Goh', 'Vila Sempilan, No. 11 - Kota B'),
(3, 'dqlabcust03', 'Unang Handoko', 'Vila Sempilan, No. 1 - Kota B'),
(4, 'dqlabcust04', 'Jokolono Sukarman', 'Vila Permata Intan Berkilau, Blok C5-7'),
(5, 'dqlabcust05', 'Tommy Sinaga', 'Vila Permata Intan Berkilau, Blok A1/2'),
(6, 'dqlabcust06', 'Irwan Setianto', 'Vila Gunung Seribu, Blok 01 - No. 1'),
(7, 'dqlabcust07', 'Agus Cahyono', 'Vila Gunung Seribu, Blok F4 - No. 8'),
(8, 'dqlabcust08', 'Maria Sirait', 'Vila Bukit Sagitarius, Gang. Sawit No. 3'),
(9, 'dqlabcust09', 'Ir. Ita Nugraha', 'Vila Bukit Sagitarius, Gang Kelapa No. 6'),
(10, 'dqlabcust10', 'Djoko Wardoyo, Drs.', 'Vila Bukit Sagitarius, Blok A1 No. 1'),
(11, 'dqlabcust11', 'Unang Handoko', 'Vila Sempilan, No. 1 - Kota B'),
(12, 'dqlabcust12', 'Tommy Sinaga', 'Vila Permata Intan Berkilau, Blok A1/2');

-- --------------------------------------------------------

--
-- Table structure for table `ms_produk`
--

CREATE TABLE `ms_produk` (
  `no_urut` int(2) NOT NULL,
  `kode_produk` varchar(7) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_produk`
--

INSERT INTO `ms_produk` (`no_urut`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'prod-01', 'Kotak Pensil DQLab', 62500),
(2, 'prod-02', 'Flashdisk DQLab 64 GB', 55000),
(3, 'prod-03', 'Gift Voucher DQLab 100rb', 100000),
(4, 'prod-04', 'Flashdisk DQLab 32 GB', 40000),
(5, 'prod-05', 'Gift Voucher DQLab 250rb', 250000),
(6, 'prod-06', 'Pulpen Multifunction + Laser DQLab', 92500),
(7, 'prod-07', 'Tas Travel Organizer DQLab', 48000),
(8, 'prod-08', 'Gantungan Kunci DQLab', 15800),
(9, 'prod-09', 'Buku Planner Agenda DQLab', 92000),
(10, 'prod-10', 'Sticky Notes DQLab 500 sheets', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `tr_penjualan`
--

CREATE TABLE `tr_penjualan` (
  `kode_transaksi` varchar(50) NOT NULL,
  `kode_pelanggan` varchar(50) NOT NULL,
  `no_urut` int(2) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `qty` int(2) NOT NULL,
  `harga` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tr_penjualan`
--

INSERT INTO `tr_penjualan` (`kode_transaksi`, `kode_pelanggan`, `no_urut`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
('tr-001', 'dqlabcust01', 1, 'prod-01', 'Kotak Pensil DQLab', 5, 62500),
('tr-001', 'dqlabcust07', 2, 'prod-03', 'Flash disk DQLab 32 GB', 1, 100000),
('tr-001', 'dqlabcust07', 3, 'prod-09', 'Buku Planner Agenda DQLab', 3, 92000),
('tr-001', 'dqlabcust07', 4, 'prod-04', 'Flashdisk DQLab 32 GB', 3, 40000),
('tr-002', 'dqlabcust01', 1, 'prod-03', 'Gift Voucher DQLab 100rb', 2, 100000),
('tr-002', 'dqlabcust01', 2, 'prod-10', 'Sticky Notes DQLab 500 sheets', 4, 55000),
('tr-002', 'dqlabcust01', 3, 'prod-07', 'Tas Travel Organizer DQLab', 1, 48000),
('tr-003', 'dqlabcust03', 1, 'prod-02', 'Flashdisk DQLab 64 GB', 2, 55000),
('tr-004', 'dqlabcust03', 1, 'prod-10', 'Sticky Notes DQLab 500 sheets', 5, 55000),
('tr-004', 'dqlabcust03', 2, 'prod-04', 'Flashdisk DQLab 32 GB', 4, 40000),
('tr-005', 'dqlabcust05', 1, 'prod-09', 'Buku Planner Agenda DQLab', 3, 92000),
('tr-005', 'dqlabcust05', 2, 'prod-01', 'Kotak Pensil DQLab', 1, 62500),
('tr-005', 'dqlabcust05', 3, 'prod-04', 'Flashdisk DQLab 32 GB', 2, 40000),
('tr-006', 'dqlabcust02', 1, 'prod-05', 'Gift Voucher DQLab 250rb', 4, 250000),
('tr-006', 'dqlabcust02', 2, 'prod-08', 'Gantungan Kunci DQLab', 2, 15800);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
