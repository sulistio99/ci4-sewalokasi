-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2023 pada 17.04
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_togar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `nama_admin`, `email`, `foto`) VALUES
('1', 'adravin', '123', 'Adravin', 'togar@yahoo.com', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gambar`
--

CREATE TABLE `tb_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_hunian` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_gambar`
--

INSERT INTO `tb_gambar` (`id_gambar`, `id_hunian`, `ket`, `gambar`) VALUES
(1, 14, 'Album 1 Hunian 14', '1684559414_ea30a7b8d6d040e53a86.jpeg'),
(2, 14, 'Album 1 Hunian 14', '1684559590_f3d3e05b0330e1f7dc97.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hunian`
--

CREATE TABLE `tb_hunian` (
  `id_hunian` int(15) NOT NULL,
  `id_member` int(11) NOT NULL,
  `nama_hunian` varchar(100) NOT NULL,
  `nama_pemilik` varchar(100) NOT NULL,
  `id_kategori` int(100) NOT NULL,
  `deskripsi_hunian` text NOT NULL,
  `status_hunian` varchar(100) NOT NULL,
  `harga_hunian` int(15) NOT NULL,
  `alamat_hunian` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `luas_tanah` int(11) NOT NULL,
  `luas_bangunan` int(11) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_hunian`
--

INSERT INTO `tb_hunian` (`id_hunian`, `id_member`, `nama_hunian`, `nama_pemilik`, `id_kategori`, `deskripsi_hunian`, `status_hunian`, `harga_hunian`, `alamat_hunian`, `info`, `luas_tanah`, `luas_bangunan`, `gambar`) VALUES
(14, 15, 'Kontrakan coklat A01', 'Basyar', 2, '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu, tempat parkiran', 'kosong', 1000000, 'Jl. Keadilan Bau 2', 'Jalan Pas Pinggir Jalan Raya, Strategis dekat warung makan dll.', 20, 25, 'hunian1.jpg'),
(16, 14, 'Kontrakan coklat A02', 'Togar', 1, '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu, tempat parkiran, ', 'Sold out', 1000000, 'Jl. Keadilan Bau 1', 'Dekat Masjid', 45, 30, 'hunian2.jpg'),
(17, 14, 'Kontrakan abu-abu B01', 'Togar', 1, '2 Kamar tidur lengkap dengan kasur, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Sold Out', 1250000, 'Jl. Keadilan Bau 3', 'Dekat Warung Makan Sate Iga', 0, 0, 'hunian3.jpg'),
(18, 15, 'Kontrakan abu-abu B02', 'H.Abdullah Nurdin M', 2, '2 Kamar tidur  + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'kosong', 1500000, 'Kesehatan Makmur No.9', 'Halaman Depan Ada Pos', 68, 84, 'hunian4.jpg'),
(19, 14, 'Kontrakan abu-abu C01', 'Togar', 1, '2 Kamar tidur, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Sold Out', 1300000, 'Jl. Keadilan Bau 4', 'Tempat Parkiran Luas', 0, 0, 'hunian2.jpg'),
(20, 16, 'Kontrakan abu-abu C02', 'Hj.Aceng', 2, '2 Kamar tidur + AC, 1 dapur, 1 kamar mandi, 1 ruang tamu', 'Available', 1500000, 'Jl. Makmur Sejahtera No.1', 'Lahan Depan Luas', 108, 39, 'hunian3.jpg'),
(22, 14, 'Kos Pria Enteran', 'Togar', 1, 'Kamar Mandi Dalam, Kamar, AC', 'Available', 550000, 'Jalan Keadilan No.9 KM.2', 'Lokasi Aman', 80, 182, '1684604155_7e4fa00bd8df5fb09633.jpg'),
(23, 14, 'Kos Wanita Enteran', 'Togar', 1, 'WC Dalam, Ac, Dapur', 'Available', 750000, 'Jalan Daya No.2 KM.7', 'Lokasi Aman Dan Strategis', 36, 30, '1684604235_2916b7a21a32007f3a00.jpg'),
(24, 12, 'KOS Pria Elegan Luas', 'Abur Malik Anwar', 1, 'WC Dalam, Dapur, Parkiran, AC', 'Available', 670000, 'Jl. Bau bau selatan KM.4', 'Lahan Parkiran Luas Samping Kos', 38, 30, '1684651141_4cbe653ef9a62806c996.jpg'),
(25, 12, 'KOS Pria Elegan Luas', 'Abur Malik Anwar', 1, 'WC Dalam, Ac, Dapur', 'Available', 750000, 'Jl. Bau bau utara KM.4', 'Parkiran Luas Area Kos', 0, 0, '1684651205_f346c7ec476130f9be7b.jpg'),
(26, 11, 'Kontrakan Elit Luas', 'Agung Ginanjar', 2, 'Kamar 2, Wc Dalam, Dapur, Pos', 'Available', 3500000, 'Jl. Sosial Adil No.11, KM.2', 'Area Parkir Luas dan ada pos ronda', 40, 30, '1684651307_3344f74c3281fc275721.jpg'),
(27, 11, 'Kos Pria Ramah Jaya', 'Togar', 1, 'WC Dalam, Dapur', 'Available', 550000, 'Jl. Keadilan Bau 2', 'Parkiran Luas', 36, 39, '1684651391_cda59eacdce00b2426ba.jpg'),
(32, 11, 'Anwar Mart', 'Hj. Anwar Salim', 1, '', 'kosong', 450000, 'Jl. Buton 12', '', 30, 35, '1685665240_50be8bb0c95f9a9216bd.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'RUKO'),
(2, 'KONTRAKAN'),
(3, 'PERUMAHAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_komplain`
--

CREATE TABLE `tb_komplain` (
  `id_komplain` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `perihal` varchar(100) NOT NULL,
  `isi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_komplain`
--

INSERT INTO `tb_komplain` (`id_komplain`, `id_member`, `id_hunian`, `perihal`, `isi`) VALUES
(9, 11, 14, 'Lampu', 'Mati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member`
--

CREATE TABLE `tb_member` (
  `id_member` int(15) NOT NULL,
  `nama_member` varchar(200) NOT NULL,
  `pass_member` varchar(200) NOT NULL,
  `email_member` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `nohp` varchar(200) NOT NULL,
  `alamat_member` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_member`
--

INSERT INTO `tb_member` (`id_member`, `nama_member`, `pass_member`, `email_member`, `status`, `nohp`, `alamat_member`) VALUES
(11, 'Risya Listya Rizalni1', '12345', 'risya15ti@mahasiswa.pcr.ac.id', 'Mahasiswa', '081285639975', 'Pangkep'),
(12, 'Sri Indah Anggaraeny', '11111', 'sri15ti@mahasiswa.pcr.ac.id', 'Mahasiswa', '081219876654', 'Bukit Kerikil'),
(14, 'Sulistio', '123', 'sulistio@yahoo.com', 'Mahasiswa', '081285639975', 'Labakkang'),
(15, 'eko', '123', 'eko@yahoo.com', 'Sloter', '087611233311', 'Selayar'),
(16, 'tazim', '123', 'tazim@yahoo.com', 'mahasiswa', '081285639971', 'Btp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `id_member` int(15) NOT NULL,
  `tanggal_mulai` varchar(100) NOT NULL,
  `durasi` varchar(100) NOT NULL,
  `status_pesan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `id_hunian`, `id_member`, `tanggal_mulai`, `durasi`, `status_pesan`) VALUES
(17, 14, 12, '2017-11-19', '1 Bulan', 'LUNAS'),
(18, 20, 11, '2023-05-20', '6 Bulan', 'LUNAS'),
(20, 20, 14, '2023-05-20', '3 Bulan', 'LUNAS'),
(22, 17, 15, '2023-05-22', '3 Bulan', 'LUNAS'),
(23, 20, 16, '2023-05-29', '6 Bulan', 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sewa`
--

CREATE TABLE `tb_sewa` (
  `id_sewa` int(15) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `id_member` int(15) NOT NULL,
  `id_hunian` int(15) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `nominal` varchar(100) NOT NULL,
  `gambar_bukti` varchar(100) NOT NULL,
  `status_sewa` varchar(100) NOT NULL,
  `bulan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_sewa`
--

INSERT INTO `tb_sewa` (`id_sewa`, `id_pesan`, `id_member`, `id_hunian`, `tanggal`, `nominal`, `gambar_bukti`, `status_sewa`, `bulan`) VALUES
(1, 17, 12, 16, '2017-12-01', '1000000', '1511016383.jpg', 'LUNAS', 'Desember 2017'),
(3, 18, 11, 20, '2023-05-20', '500000', '1684594676_3f02cc0fb4e9659a2264.jpg', 'LUNAS', 'May 2023'),
(4, 20, 14, 20, '2023-05-19', '650000', '1684595293_0da3007a6be249980f24.jpg', 'LUNAS', 'Jan 1970'),
(5, 22, 15, 17, '2023-05-21', '450000', '1684599110_3becccb0cced9773e808.jpg', 'LUNAS', 'May 2023'),
(6, 23, 16, 20, '2023-05-29', '1800000', '1685292977_26bfd74b9d6434c92bb9.jpg', 'BELUM LUNAS', 'May 2023');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_gambar`
--
ALTER TABLE `tb_gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `tb_hunian`
--
ALTER TABLE `tb_hunian`
  ADD PRIMARY KEY (`id_hunian`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_komplain`
--
ALTER TABLE `tb_komplain`
  ADD PRIMARY KEY (`id_komplain`),
  ADD KEY `id_member` (`id_member`,`id_hunian`),
  ADD KEY `id_hunian` (`id_hunian`);

--
-- Indeks untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_hunian` (`id_hunian`),
  ADD KEY `id_member` (`id_member`),
  ADD KEY `id_hunian_2` (`id_hunian`,`id_member`);

--
-- Indeks untuk tabel `tb_sewa`
--
ALTER TABLE `tb_sewa`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `tb_sewa_ibfk_1` (`id_hunian`),
  ADD KEY `tb_sewa_ibfk_2` (`id_member`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_gambar`
--
ALTER TABLE `tb_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_hunian`
--
ALTER TABLE `tb_hunian`
  MODIFY `id_hunian` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_komplain`
--
ALTER TABLE `tb_komplain`
  MODIFY `id_komplain` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_member`
--
ALTER TABLE `tb_member`
  MODIFY `id_member` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tb_sewa`
--
ALTER TABLE `tb_sewa`
  MODIFY `id_sewa` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_komplain`
--
ALTER TABLE `tb_komplain`
  ADD CONSTRAINT `tb_komplain_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `tb_member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_komplain_ibfk_2` FOREIGN KEY (`id_hunian`) REFERENCES `tb_hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD CONSTRAINT `tb_pesan_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `tb_hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pesan_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tb_member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_sewa`
--
ALTER TABLE `tb_sewa`
  ADD CONSTRAINT `tb_sewa_ibfk_1` FOREIGN KEY (`id_hunian`) REFERENCES `tb_hunian` (`id_hunian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sewa_ibfk_2` FOREIGN KEY (`id_member`) REFERENCES `tb_member` (`id_member`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
