-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2020 at 03:43 PM
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
-- Database: `dqlab_sql_part_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(2) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ContactName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` int(7) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Fransiska Maria', 'Maria', 'Jl Sudirman', 'Jakarta', 14450, 'Indonesia'),
(2, 'Ana Helena', 'Ana Helena', 'Jl Madura', 'Surabaya', 5021, 'Indonesia'),
(3, 'Lily Subari', 'Lili', 'Jl Sumba', 'Makassar', 5023, 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `ms_item_kategori`
--

CREATE TABLE `ms_item_kategori` (
  `nama_item` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_item_kategori`
--

INSERT INTO `ms_item_kategori` (`nama_item`, `kategori`) VALUES
('bayam', 'sayuran'),
('belimbing', 'buah'),
('duku', 'buah'),
('durian', 'buah'),
('gandum', 'buah'),
('jamur', 'sayuran'),
('jambu air', 'buah'),
('jeruk', 'buah');

-- --------------------------------------------------------

--
-- Table structure for table `ms_item_warna`
--

CREATE TABLE `ms_item_warna` (
  `nama_barang` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_item_warna`
--

INSERT INTO `ms_item_warna` (`nama_barang`, `warna`) VALUES
('apel', 'merah'),
('bayam', 'hijau'),
('daun bawang', 'hijau'),
('duku', 'kuning pekat'),
('durian', 'kuning'),
('gandum', 'coklat'),
('jambu air', 'merah'),
('jeruk', 'oranye');

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
(1, 'dqlabcust01', 'Eva Novianti, S.H.', 'Vila Sempilan, ???67???-???Kota B'),
(2, 'dqlabcust02', 'Heidi Goh', 'Vila Sempilan, ???11???-???Kota B'),
(3, 'dqlabcust03', 'Unang Handoko', 'Vila Sempilan, ???1???-???Kota B'),
(4, 'dqlabcust04', 'Jokolono Sukarman', 'Vila Permata Intan Berkilau, Blok C5???7'),
(5, 'dqlabcust05', 'Tommy Sinaga', 'Vila Permata Intan Berkilau, Blok A1/2'),
(6, 'dqlabcust06', 'Irwan Setianto', 'Vila Gunung Seribu, Blok 01???-??????1'),
(7, 'dqlabcust07', 'Agus Cahyono', 'Vila Gunung Seribu, Blok F4???-??????8'),
(8, 'dqlabcust08', 'Maria Sirait', 'Vila Bukit Sagitarius, Gang. Sawit ???3'),
(9, 'dqlabcust09', 'Ir. Ita Nugraha', 'Vila Bukit Sagitarius, Gang Kelapa ???6'),
(10, 'dqlabcust10', 'Djoko Wardoyo, Drs.', 'Vila Bukit Sagitarius, Blok A1 ???1'),
(11, 'dqlabcust11', 'Unang Handoko', 'Vila Sempilan, ???1???-???Kota B'),
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
-- Table structure for table `ms_produk_1`
--

CREATE TABLE `ms_produk_1` (
  `kode_produk` varchar(7) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_produk_1`
--

INSERT INTO `ms_produk_1` (`kode_produk`, `nama_produk`, `harga`) VALUES
('prod-01', 'Kotak Pensil DQLab', 62500),
('prod-02', 'Flashdisk DQLab 64 GB', 55000),
('prod-03', 'Gift Voucher DQLab 100rb', 100000),
('prod-04', 'Flashdisk DQLab 32 GB', 40000),
('prod-05', 'Gift Voucher DQLab 250rb', 250000);

-- --------------------------------------------------------

--
-- Table structure for table `ms_produk_2`
--

CREATE TABLE `ms_produk_2` (
  `no_urut` int(2) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `kode_produk` varchar(7) NOT NULL,
  `harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ms_produk_2`
--

INSERT INTO `ms_produk_2` (`no_urut`, `nama_produk`, `kode_produk`, `harga`) VALUES
(6, 'Pulpen Multifunction + Laser DQLab', 'prod-06', 92500),
(7, 'Tas Travel Organizer DQLab', 'prod-07', 48000),
(8, 'Gantungan Kunci DQLab', 'prod-08', 15800),
(9, 'Buku Planner Agenda DQLab', 'prod-09', 92000),
(10, 'Sticky Notes DQLab 500 sheets', 'prod-10', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(2) NOT NULL,
  `ContactName` varchar(50) NOT NULL,
  `SupplierName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` int(7) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `ContactName`, `SupplierName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Yulius', 'Yulius Syrup', 'Jl Jayakarta', 'Jakarta', 14450, 'Indonesia'),
(2, 'Sherly Ani', 'Bandung Bakery', 'Jalan Asia Afrika', 'Bandung', 70117, 'Indonesia'),
(3, 'Regina Tara', 'Tara Pastry', 'Jalan Merpati', 'Semarang', 48104, 'Indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_a`
--

CREATE TABLE `tabel_a` (
  `kode_transaksi` varchar(50) NOT NULL,
  `kode_pelanggan` varchar(50) NOT NULL,
  `no_urut` int(2) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `qty` int(2) NOT NULL,
  `harga` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_a`
--

INSERT INTO `tabel_a` (`kode_transaksi`, `kode_pelanggan`, `no_urut`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
('tr-001', 'dqlabcust01', 1, 'prod-01', 'Kotak Pensil DQLab', 5, 62500),
('tr-001', 'dqlabcust07', 2, 'prod-03', 'Flash disk DQLab 32 GB', 1, 100000),
('tr-001', 'dqlabcust07', 3, 'prod-09', 'Buku Planner Agenda DQLab', 3, 92000),
('tr-001', 'dqlabcust07', 4, 'prod-04', 'Flashdisk DQLab 32 GB', 3, 40000),
('tr-002', 'dqlabcust01', 1, 'prod-03', 'Gift Voucher DQLab 100rb', 2, 100000),
('tr-002', 'dqlabcust01', 2, 'prod-10', 'Sticky Notes DQLab 500 sheets', 4, 55000),
('tr-002', 'dqlabcust01', 3, 'prod-07', 'Tas Travel Organizer DQLab', 1, 48000),
('tr-003', 'dqlabcust03', 1, 'prod-02', 'Flashdisk DQLab 64 GB', 2, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_b`
--

CREATE TABLE `tabel_b` (
  `kode_transaksi` varchar(50) NOT NULL,
  `kode_pelanggan` varchar(50) NOT NULL,
  `no_urut` int(2) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `qty` int(2) NOT NULL,
  `harga` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_b`
--

INSERT INTO `tabel_b` (`kode_transaksi`, `kode_pelanggan`, `no_urut`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
('tr-004', 'dqlabcust03', 1, 'prod-10', 'Sticky Notes DQLab 500 sheets', 5, 55000),
('tr-004', 'dqlabcust03', 2, 'prod-04', 'Flashdisk DQLab 32 GB', 4, 40000),
('tr-005', 'dqlabcust05', 1, 'prod-09', 'Buku Planner Agenda DQLab', 3, 92000),
('tr-005', 'dqlabcust05', 2, 'prod-01', 'Kotak Pensil DQLab', 1, 62500),
('tr-005', 'dqlabcust05', 3, 'prod-04', 'Flashdisk DQLab 32 GB', 2, 40000),
('tr-006', 'dqlabcust02', 1, 'prod-05', 'Gift Voucher DQLab 250rb', 4, 250000),
('tr-006', 'dqlabcust02', 2, 'prod-08', 'Gantungan Kunci DQLab', 2, 15800);

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
