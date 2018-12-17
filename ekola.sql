-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17 Des 2018 pada 16.56
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekola`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_luaspanen`
--

CREATE TABLE `data_luaspanen` (
  `id_luaspanen` int(5) NOT NULL,
  `id_kabupaten` int(5) NOT NULL,
  `hektar` int(11) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `id_komoditas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_luaspanen`
--

INSERT INTO `data_luaspanen` (`id_luaspanen`, `id_kabupaten`, `hektar`, `tahun`, `id_komoditas`) VALUES
(1, 1, 8529, '2012', 10),
(2, 2, 9200, '2012', 10),
(3, 3, 8720, '2012', 10),
(4, 4, 8200, '2012', 10),
(5, 5, 8098, '2012', 10),
(6, 1, 9630, '2013', 10),
(7, 2, 10000, '2013', 10),
(8, 3, 9200, '2013', 10),
(9, 4, 9520, '2013', 10),
(10, 5, 9890, '2013', 10),
(11, 1, 9845, '2014', 10),
(12, 2, 10100, '2014', 10),
(13, 3, 9400, '2014', 10),
(14, 4, 9600, '2014', 10),
(15, 5, 9900, '2014', 10),
(16, 1, 9838, '2015', 10),
(17, 2, 10088, '2015', 10),
(18, 3, 9255, '2015', 10),
(19, 4, 9542, '2015', 10),
(20, 5, 9700, '2015', 10),
(21, 1, 8588, '2016', 10),
(22, 2, 9955, '2016', 10),
(23, 3, 8900, '2016', 10),
(24, 4, 8550, '2016', 10),
(25, 5, 9678, '2016', 10),
(26, 1, 8665, '2017', 10),
(27, 2, 9989, '2017', 10),
(28, 3, 8978, '2017', 10),
(29, 4, 8900, '2017', 10),
(30, 5, 9789, '2017', 10),
(31, 1, 9260, '2018', 10),
(32, 2, 10099, '2018', 10),
(33, 3, 9000, '2018', 10),
(34, 4, 8997, '2018', 10),
(35, 5, 9900, '2018', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_produksi`
--

CREATE TABLE `data_produksi` (
  `id_produksi` int(5) NOT NULL,
  `id_kabupaten` int(5) NOT NULL,
  `ton` int(11) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `id_komoditas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_produksi`
--

INSERT INTO `data_produksi` (`id_produksi`, `id_kabupaten`, `ton`, `tahun`, `id_komoditas`) VALUES
(1, 1, 33503, '2012', 10),
(2, 2, 34506, '2012', 10),
(3, 3, 32345, '2012', 10),
(4, 4, 39876, '2012', 10),
(5, 5, 33564, '2012', 10),
(6, 1, 38794, '2013', 10),
(7, 2, 39895, '2013', 10),
(8, 3, 37384, '2013', 10),
(9, 4, 41000, '2013', 10),
(10, 5, 38574, '2013', 10),
(11, 1, 41522, '2014', 10),
(12, 2, 41893, '2014', 10),
(13, 3, 30965, '2014', 10),
(14, 4, 42695, '2014', 10),
(15, 5, 40658, '2014', 10),
(16, 1, 39546, '2015', 10),
(17, 2, 29538, '2015', 10),
(18, 3, 32958, '2015', 10),
(19, 4, 39954, '2015', 10),
(20, 5, 38434, '2015', 10),
(21, 1, 38576, '2016', 10),
(22, 2, 29463, '2016', 10),
(23, 3, 32894, '2016', 10),
(24, 4, 39784, '2016', 10),
(25, 5, 37843, '2016', 10),
(26, 1, 38459, '2017', 10),
(27, 2, 34400, '2017', 10),
(28, 3, 32220, '2017', 10),
(29, 4, 39760, '2017', 10),
(30, 5, 33303, '2017', 10),
(31, 1, 39904, '2018', 10),
(32, 2, 35674, '2018', 10),
(33, 3, 33774, '2018', 10),
(34, 4, 39957, '2018', 10),
(35, 5, 35738, '2018', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_produtivitas`
--

CREATE TABLE `data_produtivitas` (
  `id_produktivitas` int(5) NOT NULL,
  `id_kabupaten` int(5) NOT NULL,
  `kuintal_hektar` int(11) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `id_komoditas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_produtivitas`
--

INSERT INTO `data_produtivitas` (`id_produktivitas`, `id_kabupaten`, `kuintal_hektar`, `tahun`, `id_komoditas`) VALUES
(1, 1, 70, '2012', 10),
(2, 2, 72, '2012', 10),
(3, 3, 78, '2012', 10),
(4, 4, 80, '2012', 10),
(5, 5, 84, '2012', 10),
(6, 1, 90, '2013', 10),
(7, 2, 87, '2013', 10),
(8, 3, 94, '2013', 10),
(9, 4, 80, '2013', 10),
(10, 5, 90, '2013', 10),
(11, 1, 85, '2014', 10),
(12, 2, 78, '2014', 10),
(13, 3, 77, '2014', 10),
(14, 4, 74, '2014', 10),
(15, 5, 76, '2014', 10),
(16, 1, 87, '2015', 10),
(17, 2, 88, '2015', 10),
(18, 3, 95, '2015', 10),
(19, 4, 79, '2015', 10),
(20, 5, 73, '2015', 10),
(21, 1, 72, '2016', 10),
(22, 2, 90, '2016', 10),
(23, 3, 70, '2016', 10),
(24, 4, 80, '2016', 10),
(25, 5, 89, '2016', 10),
(26, 1, 83, '2017', 10),
(27, 2, 93, '2017', 10),
(28, 3, 73, '2017', 10),
(29, 4, 94, '2017', 10),
(30, 5, 93, '2017', 10),
(31, 1, 90, '2018', 10),
(32, 2, 80, '2018', 10),
(33, 3, 95, '2018', 10),
(34, 4, 95, '2018', 10),
(35, 5, 98, '2018', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id_kabupaten` int(5) NOT NULL,
  `nm_kabupaten` varchar(50) NOT NULL,
  `nm_provinsi` enum('Lampung') NOT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`id_kabupaten`, `nm_kabupaten`, `nm_provinsi`, `maps`) VALUES
(1, 'Lampung Barat', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1016931.3120256248!2d103.55586781266281!3d-5.357630617881119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e47bb31c5f01741%3A0x3039d80b220ce70!2sKabupaten+Lampung+Barat%2C+Lampung!5e0!3m2!1sid!2sid!4v1530628263904'),
(2, 'Lampung Selatan', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1016396.9778683751!2d104.90809399248857!3d-5.669591415731538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40e9e87a761069%3A0x3039d80b220ce90!2sKabupaten+Lampung+Selatan%2C+Lampung!5e0!3m2!1sid!2sid!4v1530629433660'),
(3, 'Lampung Tengah', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1017700.237051726!2d104.621774625813!3d-4.873899446906989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3f57cb00036b59%3A0x3039d80b220cff0!2sKabupaten+Lampung+Tengah%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630262561'),
(4, 'Lampung Timur', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1017317.6711789587!2d105.18324371878083!3d-5.120272186466933!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40edbc6c11ef3d%3A0x3039d80b220cfe0!2sKabupaten+Lampung+Timur%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630294951'),
(5, 'Lampung Utara', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d508899.4400521988!2d104.5305831290469!3d-4.808331720288079!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e38a669d3006841%3A0x3039d80b220cfd0!2sKabupaten+Lampung+Utara%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630331214'),
(6, 'Mesuji', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509468.81036910776!2d105.12357806735741!3d-3.9740265797848253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3ec1d9cd1848b1%3A0xdbdf183c76b4797c!2sKabupaten+Mesuji%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630356283'),
(7, 'Pesawaran', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d508360.8995715015!2d104.85832958738841!3d-5.482060293465936!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40d68fe599456d%3A0x412af73debd1fa92!2sKabupaten+Pesawaran%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630386750'),
(8, 'Pesisir Barat', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1016971.2074741222!2d103.5162812529689!3d-5.333608697417124!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e47bb6aa7bbfb69%3A0xaadd3538afa3d0bb!2sPesisir+Bar.%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630413469'),
(9, 'Pringsewu', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d508393.2629389631!2d104.72212813388259!3d-5.443921791267032!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e4731e73de35367%3A0xe139f3219649ec86!2sKabupaten+Pringsewu%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630444608'),
(10, 'Tanggamus', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1016731.9153477768!2d104.1441608611114!3d-5.476117049163429!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e472731281a6227%3A0x3039d80b220d030!2sKabupaten+Tanggamus%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630471233'),
(11, 'Tulang Bawang', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509193.0598147636!2d105.2572401472352!3d-4.397857615564661!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3f1082ebdc2ead%3A0x1c791e5ea4df23d1!2sKabupaten+Tulangbawang%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630493619'),
(12, 'Tulang Bawang Barat', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509169.0322528072!2d104.81760054983855!3d-4.432872701809401!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e3f32468ab70807%3A0x5cda1c96a9227ac3!2sKabupaten+Tulangbawang+Barat%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630519111'),
(13, 'Way Kanan', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d509070.8001562893!2d104.39722846048147!3d-4.573243043923646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e38954d4270e953%3A0x3039d80b220d0b0!2sKabupaten+Way+Kanan%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630540762'),
(14, 'Metro', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63582.27379372831!2d105.27204702037167!3d-5.121083248529047!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40bbf7727ecf8d%3A0x3039d80b220cf40!2sMetro%2C+Kota+Metro%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630562279'),
(15, 'Bandar Lampung', 'Lampung', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d127101.55546063391!2d105.20069716618836!3d-5.428575518079793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e40da46f3aa6fbf%3A0x3039d80b220cc40!2sBandar+Lampung%2C+Kota+Bandar+Lampung%2C+Lampung!5e0!3m2!1sid!2sid!4v1530630584126');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komoditas`
--

CREATE TABLE `komoditas` (
  `id_komoditas` int(11) NOT NULL,
  `nm_komoditas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komoditas`
--

INSERT INTO `komoditas` (`id_komoditas`, `nm_komoditas`) VALUES
(10, 'Padi'),
(20, 'Jagung'),
(30, 'Kopi'),
(40, 'Lada'),
(50, 'Kelapa Sawit'),
(60, 'Pisang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_komoditas` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `detail` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `id_komoditas`, `title`, `deskripsi`, `detail`) VALUES
(1, 13, 10, 'Lampung Target Produksi Padi Lebih Tinggi', 'Kementerian Pertanian (Kementan) menyatakan produksi padi dan \r\njagung yang melebihi target, membuat Lampung telah mencapai \r\nswasembada padi dan jagung pada tahun 2017. Tahun depan, \r\nkementan menaikkan anggaran untuk Lampung di sektor pertanian.\r\nMenurut Inspektur Jenderal Kementan Justan Riduan, produksi \r\npadi Lampung surplus 1,2 juta ton sedangkan jagung mampu \r\nproduksi 2,4 juta dari target dua juta ton. \"Kami yakin \r\nsurplus pangan di Lampung berlanjut, karena kebijakan nol \r\nimpor jagung dan penambahan areal luas lahan sawah,\" kata \r\nJustan Riduan di Bandar Lampung, Rabu (22/11).', 'Kementerian Pertanian (Kementan) menyatakan produksi padi dan \r\njagung yang melebihi target, membuat Lampung telah mencapai \r\nswasembada padi dan jagung pada tahun 2017. Tahun depan, \r\nkementan menaikkan anggaran untuk Lampung di sektor pertanian.\r\nMenurut Inspektur Jenderal Kementan Justan Riduan, produksi \r\npadi Lampung surplus 1,2 juta ton sedangkan jagung mampu \r\nproduksi 2,4 juta dari target dua juta ton. \"Kami yakin \r\nsurplus pangan di Lampung berlanjut, karena kebijakan nol \r\nimpor jagung dan penambahan areal luas lahan sawah,\" kata \r\nJustan Riduan di Bandar Lampung, Rabu (22/11).');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nmuser` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lv_user` enum('user','admin','','') NOT NULL,
  `publish` enum('T','F','','') NOT NULL,
  `foto` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `username`, `nmuser`, `password`, `lv_user`, `publish`, `foto`) VALUES
(13, 'hawari@ekola.com', 'hawari123', 'Hawari Muhtarom', '11e0af74af05a830b647f38d183e4f6e', 'admin', 'T', 'default.jpg'),
(14, 'karin@ekola.com', 'karin123', 'Karin Fitriliyana', '87c2bb2e46e63ecc018b7bb6eb2f5057', 'admin', 'T', '153055771851994117648260051_8233045.jpg'),
(16, 'dodi@gmail.com', 'dodi123', 'Dodi', 'bcfeb3c97660cbaabb9fc3a345465f3f', 'user', 'T', '153056165865245503333309200_8233045.jpg'),
(17, 'cindi@gmail.com', 'cindi123', 'cindi', '6ea31ff746dacf297e333900384cd19e', 'user', 'T', 'default.jpg'),
(18, 'anga@gmail.com', 'angga123', 'angga', '1fd5cd9766249f170035b7251e2c6b61', 'user', 'T', '1530683296olinela.png'),
(19, 'hasfi@gmail.com', 'hasfi123', 'hasfi', '2c880268ef268ff0a3523bf50e7fce61', 'user', 'T', 'default.jpg'),
(21, 'dedi@gmail.com', 'dedi123', 'dedi', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'T', 'default.jpg'),
(22, 'bella@gmail.com', 'bella123', 'bella', '8a5c81d64eadf256b052d9aa9146fd6c', 'user', 'T', 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_luaspanen`
--
ALTER TABLE `data_luaspanen`
  ADD PRIMARY KEY (`id_luaspanen`),
  ADD KEY `id_kabupaten` (`id_kabupaten`),
  ADD KEY `id_komoditas` (`id_komoditas`);

--
-- Indexes for table `data_produksi`
--
ALTER TABLE `data_produksi`
  ADD PRIMARY KEY (`id_produksi`),
  ADD KEY `id_kabupaten` (`id_kabupaten`),
  ADD KEY `id_komoditas` (`id_komoditas`);

--
-- Indexes for table `data_produtivitas`
--
ALTER TABLE `data_produtivitas`
  ADD PRIMARY KEY (`id_produktivitas`),
  ADD KEY `id_komoditas` (`id_komoditas`),
  ADD KEY `id_kabupaten` (`id_kabupaten`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id_kabupaten`);

--
-- Indexes for table `komoditas`
--
ALTER TABLE `komoditas`
  ADD PRIMARY KEY (`id_komoditas`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_komoditas` (`id_komoditas`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_luaspanen`
--
ALTER TABLE `data_luaspanen`
  MODIFY `id_luaspanen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `data_produksi`
--
ALTER TABLE `data_produksi`
  MODIFY `id_produksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `data_produtivitas`
--
ALTER TABLE `data_produtivitas`
  MODIFY `id_produktivitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id_kabupaten` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `komoditas`
--
ALTER TABLE `komoditas`
  MODIFY `id_komoditas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_luaspanen`
--
ALTER TABLE `data_luaspanen`
  ADD CONSTRAINT `data_luaspanen_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`),
  ADD CONSTRAINT `data_luaspanen_ibfk_2` FOREIGN KEY (`id_komoditas`) REFERENCES `komoditas` (`id_komoditas`);

--
-- Ketidakleluasaan untuk tabel `data_produksi`
--
ALTER TABLE `data_produksi`
  ADD CONSTRAINT `data_produksi_ibfk_1` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`),
  ADD CONSTRAINT `data_produksi_ibfk_2` FOREIGN KEY (`id_komoditas`) REFERENCES `komoditas` (`id_komoditas`);

--
-- Ketidakleluasaan untuk tabel `data_produtivitas`
--
ALTER TABLE `data_produtivitas`
  ADD CONSTRAINT `data_produtivitas_ibfk_2` FOREIGN KEY (`id_komoditas`) REFERENCES `komoditas` (`id_komoditas`),
  ADD CONSTRAINT `data_produtivitas_ibfk_3` FOREIGN KEY (`id_kabupaten`) REFERENCES `kabupaten` (`id_kabupaten`);

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_komoditas`) REFERENCES `komoditas` (`id_komoditas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
