-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2024 pada 02.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketkai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(64) NOT NULL,
  `notelp` double NOT NULL,
  `nik` double NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id`, `nama`, `alamat`, `notelp`, `nik`, `username`, `password`) VALUES
(1, 'ivana', 'padalarang', 85871220480, 123456789, 'ivanac50', 'iblis'),
(2, 'Ucok Pahlevi', 'PADALARANG', 89278669898, 289176571, 'ucok', 'ucok'),
(3, 'RAWR', 'padalarang', 85871220480, 658685, 'rawr', '12345'),
(4, 'hiro ganteng', 'jl.ciburuy', 876545678, 235423675343, 'hiro', 'hiro123'),
(5, 'mena', 'jl.ciburuy', 89643215543, 987654, 'hendra', 'angkot123'),
(6, 'dio', 'langit', 9877, 123456789, 'dio', '123'),
(7, 'pa tedi', 'jl.padalarang', 99483209745, 13426542, 'rio', 'rahmad'),
(8, 'Syifa salsabilaa', 'jl.padalarang', 89765453453, 897658762, 'fafa', '12345'),
(9, 'dama', 'jl.padalarang', 13123412341, 123456754321, 'raiganteng1234', 'raigantneg12345'),
(12, 'ucok', 'jl bandung', 8630864, 85378, 'aan', 'toreto'),
(13, 'cepi bonteng', 'alam barjah', 864426949, 4986329462598, 'cepi', 'bonteng'),
(14, 'lintang', 'jl kertajaya', 843927, 4723848143, 'lintang', 'lintang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun_admin`
--

CREATE TABLE `akun_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun_admin`
--

INSERT INTO `akun_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'ivana');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `asal` varchar(64) NOT NULL,
  `tujuan` varchar(64) NOT NULL,
  `kd` time NOT NULL,
  `kb` time NOT NULL,
  `tiba` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `asal`, `tujuan`, `kd`, `kb`, `tiba`) VALUES
(1, 'ST Padalarang', 'ST Cicalengka', '07:00:00', '07:20:00', '09:00:00'),
(2, 'ST Padalarang', 'ST Cicalengka', '08:00:00', '08:20:00', '10:00:00'),
(3, 'ST Padalarang', 'ST Cicalengka', '09:00:00', '09:20:00', '11:00:00'),
(4, 'ST Padalarang', 'ST Cicalengka', '10:00:00', '10:20:00', '12:00:00'),
(6, 'ST Padalarang', 'ST Cicalengka', '11:00:00', '11:20:00', '13:00:00'),
(8, 'ST Padalarang', 'ST Cicalengka', '12:00:00', '12:20:00', '14:00:00'),
(9, 'ST Padalarang', 'ST Cicalengka', '13:00:00', '13:20:00', '15:00:00'),
(10, 'ST Padalarang', 'ST Cicalengka', '14:00:00', '14:20:00', '16:00:00'),
(11, 'ST Padalarang', 'ST Cicalengka', '15:00:00', '15:20:00', '17:00:00'),
(12, 'ST Padalarang', 'ST Cicalengka', '16:00:00', '16:20:00', '18:00:00'),
(13, 'ST Padalarang', 'ST Cicalengka', '17:00:00', '17:20:00', '19:00:00'),
(14, 'ST Padalarang', 'ST Cicalengka', '18:00:00', '18:20:00', '20:00:00'),
(30, 'ST PADALARANG', 'ST CICALENGKA', '22:00:00', '22:20:00', '23:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `pesan` longtext NOT NULL,
  `username` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id`, `nama`, `email`, `pesan`, `username`) VALUES
(15, 'ridho', 'ridho@gmail.com', 'kurang nya layanan', 'admin'),
(16, 'nama saya herman', 'herman@gmail.com', 'saya suka playanan krd', 'ivanac50'),
(17, 'aan', 'aan@gmail.com', 'layanan yang kurang menarik', 'aan'),
(18, 'cepi', 'bonteng@gmail.com', 'tiket kemahalan', 'cepi'),
(19, 'lintang', 'lintang@gmail.com', 'fasilitas rusak', 'lintang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesan`
--

CREATE TABLE `pemesan` (
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` int(50) NOT NULL,
  `nik` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penumpang`
--

CREATE TABLE `penumpang` (
  `nik` int(15) NOT NULL,
  `nama_pembeli` varchar(60) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `usia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penumpang`
--

INSERT INTO `penumpang` (`nik`, `nama_pembeli`, `jenis_kelamin`, `usia`) VALUES
(2, 'agus', 'laki laki', 12),
(3, 'toha manysur', 'laki laki', 17),
(10, 'aan', 'pria', 21);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `sdata`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `sdata` (
`nama` varchar(64)
,`alamat` varchar(64)
,`status` varchar(64)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `sstatus`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `sstatus` (
`nama` varchar(64)
,`nik` double
,`alamat` varchar(64)
,`status` varchar(64)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_resi`
--

CREATE TABLE `tb_resi` (
  `id` int(11) NOT NULL,
  `number` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_resi`
--

INSERT INTO `tb_resi` (`id`, `number`) VALUES
(1, '447112197'),
(2, '716017840'),
(3, '861874501'),
(4, '503337561'),
(5, '646076637'),
(6, '685914725'),
(7, '922039110'),
(8, '149701770'),
(9, '660070001'),
(10, '991483231'),
(11, '979212734'),
(12, '119395556'),
(13, '401953268'),
(14, '930843677'),
(15, '688501159'),
(16, '747305773'),
(17, '203105861'),
(18, '330110924'),
(19, '836088376'),
(20, '338339861'),
(21, '907458131'),
(22, '851770213'),
(23, '310048103'),
(24, '535555525'),
(25, '163603598'),
(26, '993244357'),
(27, '907003207'),
(28, '412457910'),
(29, '528833274'),
(30, '939309113'),
(31, '716135164'),
(32, '390085973'),
(33, '780446213'),
(34, '898138339'),
(35, '696155856'),
(36, '85943075964'),
(37, '23044388342'),
(38, '24669164875'),
(39, '69031537757'),
(40, '30458736433');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket`
--

CREATE TABLE `tb_tiket` (
  `id` int(11) NOT NULL,
  `sesi` time NOT NULL,
  `tanggal` date NOT NULL,
  `dewasa` int(11) NOT NULL,
  `bayi` int(11) NOT NULL,
  `id_user` varchar(64) NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_tiket`
--

INSERT INTO `tb_tiket` (`id`, `sesi`, `tanggal`, `dewasa`, `bayi`, `id_user`, `status`) VALUES
(21, '07:00:00', '2023-08-30', 1, 1, '6', 'SUDAH DIBAYAR'),
(22, '16:00:00', '2023-08-31', 1, 0, '5', 'SUDAH DIBAYAR'),
(23, '14:00:00', '2023-08-31', 1, 0, '3', 'SUDAH DIBAYAR'),
(24, '07:20:00', '2023-09-03', 1, 1, '2', 'SUDAH DIBAYAR'),
(25, '07:20:00', '2023-09-03', 1, 1, '1', 'SUDAH DIBAYAR'),
(26, '11:20:00', '2023-09-14', 10, 10, '4', 'SUDAH DIBAYAR'),
(27, '15:20:00', '2023-09-05', 1, 2, '1', 'SUDAH DIBAYAR'),
(28, '09:20:00', '2023-09-07', 5, 1, 'ivanac50', 'SUDAH DIBAYAR'),
(29, '11:20:00', '2023-09-15', 1, 1, 'ivanac50', 'SUDAH DIBAYAR'),
(30, '12:20:00', '2023-09-15', 1, 1, 'admin', 'GAGAL / DIBATALKAN'),
(31, '10:20:00', '2023-09-20', 1, 1, 'ivanac50', ''),
(32, '20:20:00', '2023-09-17', 1, 0, 'aan', 'GAGAL / DIBATALKAN'),
(33, '08:20:00', '2023-09-22', 10, 2, 'ivanac50', 'SUDAH DIBAYAR'),
(34, '00:00:00', '2023-09-27', 1, 1, 'admin', ''),
(35, '00:00:00', '2023-09-20', 1, 10, 'admin', ''),
(36, '07:20:00', '2023-09-22', 2, 2, 'admin', 'SUDAH DIBAYAR'),
(37, '18:20:00', '2023-09-14', 1, 1, 'ivanac50', 'SUDAH DIBAYAR'),
(38, '11:20:00', '2023-09-27', 1, 0, 'hiro', ''),
(39, '13:20:00', '2023-09-27', 1, 0, 'hiro', 'SUDAH DIBAYAR'),
(40, '08:20:00', '2023-09-26', 1, 0, 'hiro', 'SUDAH DIBAYAR'),
(41, '11:20:00', '2023-09-26', 1, 0, 'cepi', 'SUDAH DIBAYAR'),
(42, '07:20:00', '2023-09-26', 1, 0, 'lintang', 'SUDAH DIBAYAR');

-- --------------------------------------------------------

--
-- Struktur untuk view `sdata`
--
DROP TABLE IF EXISTS `sdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sdata`  AS SELECT `akun`.`nama` AS `nama`, `akun`.`alamat` AS `alamat`, `tb_tiket`.`status` AS `status` FROM (`akun` join `tb_tiket` on(`akun`.`id` = `tb_tiket`.`id_user`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `sstatus`
--
DROP TABLE IF EXISTS `sstatus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sstatus`  AS SELECT `akun`.`nama` AS `nama`, `akun`.`nik` AS `nik`, `akun`.`alamat` AS `alamat`, `tb_tiket`.`status` AS `status` FROM (`akun` join `tb_tiket` on(`akun`.`id` = `tb_tiket`.`id_user`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tb_resi`
--
ALTER TABLE `tb_resi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_tiket`
--
ALTER TABLE `tb_tiket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `akun_admin`
--
ALTER TABLE `akun_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `nik` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134144;

--
-- AUTO_INCREMENT untuk tabel `tb_resi`
--
ALTER TABLE `tb_resi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tb_tiket`
--
ALTER TABLE `tb_tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
