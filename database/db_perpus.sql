-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2024 at 05:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(2) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(3, 'admin', 'admin', 'Admin Perpustakaan BOOK-KU', 'gambar_admin/foto.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id` int(4) NOT NULL,
  `no_induk` varchar(100) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `ttl` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `foto` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_anggota`
--

INSERT INTO `data_anggota` (`id`, `no_induk`, `nama`, `username`, `password`, `jk`, `kelas`, `ttl`, `alamat`, `foto`) VALUES
(2, 'anggota@gmail.com', 'anggota', 'anggota', 'anggota', 'P', '10', 'Konawe, 12 09 1999', 'Semarang', 'gambar_anggota/foto.jpg'),
(20, 'user@gmail.com', 'user', 'user', 'user', 'L', '39', 'Mandonga, 28 03 1887', 'Mandonga', 'gambar_anggota/ssamson.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pengarang` varchar(250) NOT NULL,
  `th_terbit` varchar(4) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `jumlah_buku` int(2) NOT NULL,
  `asal` varchar(50) NOT NULL,
  `tgl_input` varchar(75) NOT NULL,
  `gambar` text NOT NULL,
  `link_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`id`, `judul`, `pengarang`, `th_terbit`, `penerbit`, `isbn`, `kategori`, `jumlah_buku`, `asal`, `tgl_input`, `gambar`, `link_buku`) VALUES
(1, 'Pemrograman Web Hosting', 'Mihra Wardana', '2019', '-', '-', 'Laporan', 61, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/ssamson.jpg', 'https://drive.google.com/file/d/1F7IttU4rMNuCvuQlhAGGAGFDQ76LAvLg/view?usp=sharing'),
(8, 'Menjadi Perempuan Terdidik dan Feminisme', 'Dr. Wiyatmi, M.hum', '2013', 'UNY Press', '978-602-7981-02-7', 'Novel', 325, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/18ea2ec6-87a6-4af2-ac1f-be6d89dac9c1.jpg', 'https://inlis.kemenpppa.go.id/opac/detail-opac?id=2043'),
(9, 'Perempuan Di Titik Nol', 'Nawal el - Saadawi', '1989', 'Yayasan Pustaka Obor Indonesi', '978-979-461-867-7', 'Novel', 201, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/54b21d38-348b-4a8a-890f-7eb267d692be.jpg', 'https://inlis.kemenpppa.go.id/opac/detail-opac?id=1158'),
(10, 'Matinya Socrates', 'Plato', '2015', 'Narasi', '(10)979-16844-8 / (13) 97', 'Kisah', 307, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/c7001ce9-e0dc-4e86-8581-3a814bd91c23.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=945245'),
(11, 'Filsafat Perselingkuhan ', 'Reza A.A Wattimena', '2010', 'PT Evolireta', '978-602-8861-76-2', 'Filsafat', 160, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/641d9600-0a0f-43ab-8d74-fee32cbe5dd3.jpg', 'https://rumahfilsafat.com/2019/09/23/perselingkuhan/'),
(12, 'Perempuan Berbicara Kretek', 'Abmi Handayani, dkk', '2012', 'Indonesia Berdikari', '978-602-99292-1-8', 'Novel', 334, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/a3ccaab6-0a24-4c92-bfc0-0c7e4eaf82ac.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=814577'),
(13, 'Perempuan Yang Dihapus Namanya', 'Avianti Armand', '2017', 'PT Gramedia Pustaka Utama', '978-602-0337-135', 'Puisi', 90, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/ed7d3a96-54af-4cc4-8bb3-af2aa8877b9c.jpg', 'https://www.goodreads.com/book/show/33847253-perempuan-yang-dihapus-namanya'),
(14, 'Filsafat Islam Masa Awal', 'Drs.H. Ibrahim, M.Pd', '2016', 'PKBM Rumah Buku Carabaca Makassar', '978-602-1175-14-9', 'Filsafat', 159, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/89e4850b-99b0-42bb-bc54-9014ad7cb2e6.jpg', 'http://repositori.uin-alauddin.ac.id/5954/'),
(15, 'Teologi dan Falsafah Hijab', 'Murtadha Muthahhari', '2011', 'Rausyanfikr Institute', '978-602-1602-08-9', 'Filsafat', 192, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/9820c58c-e249-4c99-a762-502559f74b46.jpg', 'https://books.google.co.id/books/about/Teologi_Dan_Falsafah_Hijab.html?id=uGV-DwAAQBAJ&redir_esc=y'),
(16, 'Agama Jawa', 'Abangan, Santri, Priyayi', '2014', 'Komunitas Bambu', '978-602-9402-12-4', 'Filsafat', 640, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/14e9999b-4cff-4b9a-a570-58f4e85c7942.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=861246'),
(17, 'Pulang', 'Leila S. Chudori', '2012', 'PT Gramedia Jakarta', '978-979-91-0515-8', 'Novel', 476, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/fea0ab63-c12a-4ed1-9223-0022aedde99b.jpg', 'https://www.goodreads.com/en/book/show/16174176'),
(18, 'Teknologi Informasi', 'Abdul Qadil & Terra Ch. Triwahyuni', '2013', 'CV. Andi Offset', '-', 'Komputer', 26, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/6c7016ba-fa2a-4c39-b553-72b6079f5810.jpg', 'https://www.lazada.co.id/products/buku-ori-pengantar-teknologi-informasi-edisi-revisi-abdul-kadir-terra-i5113930187.html'),
(19, 'Petani dan Penguasa', 'Noer Fauzi', '1999', 'INSIST, KPA, bekerja sama dengan Pustaka Pelajar', '979-9289-04-1', 'Novel', 330, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/88fa64d4-7641-4f42-a103-9f7286fe42f8.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=1036408'),
(20, 'Perempuan Yang Mengantarkan surga', 'Haris Priyatna & Lisdy Rahayu', '2014', 'PT Mizan Pustaka', '978-602-1337-32-5', 'Novel', 278, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/e6462ec0-ad5b-48c0-82f8-1998daee4e57.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=1030449'),
(21, 'Desain dan Pemrograman Multimedia Pembelajaran Interaktif', 'Wandah Wibawanto, S.Sn., M.Ds', '2017', 'Penerbit cerdas Ulet Kreatif', '978-602-7534-26-1', 'Komputer', 195, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/37acf42b-2b3b-4fdb-a8cf-3a6c608c4d98.jpg', 'https://www.researchgate.net/publication/313161626_Desain_dan_Pemrograman_Multimedia_Pembelajaran_Interaktif'),
(22, 'Kebenaran Yang Hilang', 'Farag Fouda', '2007', 'Balai peneltian dan pengembangan agama jakarta', '-', 'Politik', 216, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/9beecc09-6d1e-4ed0-b3bb-ff66d34377b5.jpg', 'https://opac.perpusnas.go.id/DetailOpac.aspx?id=106722'),
(23, 'Covid 19 & Disrupsi', 'Syafarudi, Erna Rochana, Erizal barnawi, Bagus Wardianto', '-', 'Pusaka Media', '978-623-6569-62-7', 'Umum', 0, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/92fd4697-bbf3-48e0-93dd-181aa1986f88.jpg', 'https://mediapijar.com/2020/03/covid-19-dan-disrupsi-model-pembelajaran-di-usu/'),
(24, 'Buku Pertama Belajar Pemrograman JAVA', 'Abdul Kadir', '2013', 'Mediakom', '(10) 979-877-368-3 / (13)', 'Komputer', 444, 'Koleksi Perpustakaan BOOK-KU', '2022/07/17', 'gambar_buku/IMG_20210201_210025.jpg', 'https://www.researchgate.net/publication/264422101_Buku_Pertama_Belajar_Pemrograman_Java_untuk_Pemula');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(8) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jk` varchar(2) NOT NULL,
  `kelas` varchar(17) NOT NULL,
  `perlu1` varchar(15) NOT NULL,
  `cari` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `tgl_kunjung` date NOT NULL,
  `jam_kunjung` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `jk`, `kelas`, `perlu1`, `cari`, `saran`, `tgl_kunjung`, `jam_kunjung`) VALUES
(12, 'Samid', 'L', '21', 'Membaca', 'Buku', 'Banyakin buku', '2022-07-19', '21:04:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_buku`
--
ALTER TABLE `data_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
