-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 21 Jun 2022 pada 14.41
-- Versi server: 10.3.32-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otnasussuga_jasaphoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2022-04-17 06:26:21', '17042022062621.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`, `id`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1, 0),
(3, 'Agus Susanto', 'otnasussuga.online@gmail.com', '083816567977', 'asas', '2022-06-21 06:24:53', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `id`) VALUES
(1, 'Jl. iya jadian kaga', 'ask@tukangfoto.com', '08585233222', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_galery` varchar(100) NOT NULL,
  `foto_galery` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id_galery`, `nama_galery`, `foto_galery`, `id`) VALUES
(1, 'Galery 1', '1.jpg', 1),
(2, 'Galery 2', '2.jpg', 2),
(3, 'Galery 3', '3.jpg', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(2, 'Aguss', 'otnasussuga.online@gmail.com', '6ad14ba9986e3615423dfca256d04e3f', '08782392932', 'Subang'),
(3, 's', 'sihhuhu@gmail.com', '03c7c0ace395d80182db07ae2c30f034', '22', 'd'),
(4, 'Agus susanto', 'otnasussuga.77@gmail.com', '01c3c766ce47082b1b130daedd347ffd', '083816567977', 'Blanakan, Subang, Jawa Barat, Indonesia'),
(5, 'Kuya', 'kuya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '08888888', 'Kuya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  `foto_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `ket_paket`, `foto_paket`) VALUES
(3, 'Jasa Fotografi Harian', 500000, 'Para fotografer kami telah lama berkecimpung dalam dunia fotografi dan mampu untuk menghasilkan foto yang sesuai dengan detail yang anda inginkan. Kami menyediakan jasa foto serta video yang ditujukan untuk keperluan bisnis, keluarga.  Dengan pengalaman lebih dari 5 tahun dalam bidang fotografi, team fotografi kami dapat memberikan hasil yang maksimal sesuai dengan detail yang anda inginkan sesuai dengan budget anda.  Seringkali, faktor biaya menjadi pertimbangan utama saat memilih jasa fotografi namun kami menyediakan jasa yang dapat disesuaikan dengan budget yang anda anggarkan.', '17042022062919y.jpg'),
(4, 'Jasa Fotografi Bisnis / Usaha', 2500000, 'Apabila anda ingin membuat media promosi untuk usaha anda, maka anda bisa menggunakan jasa fotografi harian kami. Kami siap memberikan layanan jasa berupa fotografi produk, company profile, iklan, foto interior, foto makanan, foto fashion, maupun dengan foto 3D.  Kami siap memberikan foto yang unik dan memberikan kesan yang mendalam pada calon pelanggan maupun klien bisnis anda sehingga usaha atau bisnis anda semakin maju. Foto 3D memberikan keuntungan hasil foto 360 derajat sehingga pembeli produk anda dapat mengetahui dengan detil produk yang anda jual.', '17042022063112s.jpg'),
(5, 'Jasa Foto Keluarga', 2000000, 'Mengabadikan moment bersama keluarga merupakan hal penting agar menjadi kenangan karena tidak setiap moment dapat terulang seperti perayaan kelulusan, perayaan ulang tahun, pertunangan, pernikahan, dan lain sebagainya. Bahkan meski hanya sekedar untuk foto bersama keluarga di rumah anda, tim kami siap untuk mendatangi rumah anda dengan peralatan yang diperlukan. Cukup berikan detail dan konsep foto yang anda inginkan dan fotografer kami akan mewujudkan impian fotografi keluarga anda.', '17042022063257n.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">This is Therms and Conditions</span></p><p align=\"justify\"><br></p>											'),
(5, 'Rekening', 'rekening', '																																	123456789 Bank BRI a/n IRFAN'),
(2, 'Privacy Policy', 'privacy', '											<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This is Privacy Policy</span>'),
(3, 'Tentang Kami', 'aboutus', '																																												<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kami Adalah Tim Fotografer Profesional Yang Benar-Benar Percaya Bahwa Kunci Kesuksesan Adalah Kesederhanaan Dan Efisiensi. Perjalanan Profesional Kami Dimulai Pada Tahun 2009 Hingga Saat Ini Dan Memiliki Pengalaman Lebih Dari 13 Tahun Di Semua Bidang Fotografi. Kami Memulai Fotografi Sebagai Hobi Dan Akhirnya Jatuh Cinta Pada Fotografi Orang. Tumbuh Bersama Klien Kami, Kami Belajar Banyak Tentang Cinta Keluarga, Suka Dan Duka, Karakter Dan Budaya.</span>'),
(11, 'FAQs', 'faqs', '																						<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara booking paket jasa fotografi disini?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.</span></div>																						');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `stt_trx` varchar(50) NOT NULL,
  `tgl_take` date NOT NULL,
  `jam_take` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `ubah_tgl` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `email`, `id_paket`, `tgl_trx`, `stt_trx`, `tgl_take`, `jam_take`, `catatan`, `tgl_bayar`, `bukti_bayar`, `ubah_tgl`) VALUES
('17062022031202', 'otnasussuga.77@gmail.com', 5, '2022-06-17', 'Menunggu Konfirmasi', '2022-06-22', '14:00', 'asas', '2022-06-17', '17062022102732google-page.png', 1233),
('17062022032656', 'otnasussuga.77@gmail.com', 4, '2022-06-17', 'Menunggu Konfirmasi', '2022-06-22', '17:00', 'asas', '2022-06-17', '17062022102817no-profile.jpeg', NULL),
('17062022041025', 'otnasussuga.77@gmail.com', 3, '2022-06-17', 'Menunggu Konfirmasi', '2022-06-22', '15:00', 'sasa', '2022-06-17', '17062022111043Thumbnail.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indeks untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indeks untuk tabel `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
