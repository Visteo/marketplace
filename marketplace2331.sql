-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jul 2024 pada 17.36
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `marketplace2331`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_admin`) VALUES
(1, 'admin@gmail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul_artikel` varchar(255) NOT NULL,
  `isi_artikel` text NOT NULL,
  `foto_artikel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul_artikel`, `isi_artikel`, `foto_artikel`) VALUES
(1, 'Jordan', '<p>RINCIAN</p>\r\n\r\n<p>Conscious</p>\r\n\r\n<p>Jordan<br />\r\nSepatu kets Air Jordan 1 Retro High OG &quot;Chicago&quot;</p>\r\n\r\n<p>Disediakan oleh pasar sepatu kets terkemuka yang menjual barang langka yang belum pernah dipakai, sudah habis terjual, dan diminati. Setiap produk diperiksa secara ketat oleh para ahli berpengalaman yang menjamin keasliannya. Mungkin sepatu kets paling ikonik sepanjang masa, warna asli &quot;Chicago&quot; ini adalah landasan bagi koleksi sepatu kets mana pun. Dipopulerkan pada tahun 1985 oleh Michael Jordan, sepatu ini telah teruji oleh waktu, menjadi warna Air Jordan 1 yang paling terkenal. Rilisan tahun 2015 ini memperlihatkan warna Chicago kembali ke konstruksinya yang paling akurat sejak retro pertama pada tahun 1994, lengkap dengan merek Nike Air di lidah sepatu.</p>\r\n\r\n<p>Komposisi<br />\r\nLuar: Kulit 100%</p>\r\n\r\n<p>Sol: Karet 100%</p>\r\n\r\n<p>Lapisan: Poliester 100%</p>\r\n\r\n<p>ID Produk<br />\r\nID FARFETCH: 13157697</p>\r\n\r\n<p>ID Gaya Merek: 555088101</p>\r\n', 'artikel11.jpg'),
(2, 'Nike Air Jordan 1 Mid SE Shoes', '<p>Spesifikasi barang<br />\r\nKondisi<br />\r\nBaru dengan kotak: Barang baru, tidak terpakai, dan tidak dipakai (termasuk barang buatan tangan) dalam ... Baca selengkapnya tentang kondisinya<br />\r\nPenutup<br />\r\nBertali<br />\r\nKesempatan<br />\r\nPakaian olahraga, Santai<br />\r\nTahun pembuatan<br />\r\n2023<br />\r\nVintage<br />\r\nTidak<br />\r\nDepartemen<br />\r\nPria<br />\r\nTahun rilis<br />\r\n2023<br />\r\nGaya<br />\r\nSepatu kets<br />\r\nBahan sol luar<br />\r\nKaret<br />\r\nFitur<br />\r\nNyaman, Empuk, Performa<br />\r\nMusim<br />\r\nMusim gugur, musim semi, musim panas, musim dingin<br />\r\nGaya poros sepatu<br />\r\nMid Top<br />\r\nUkuran sepatu Inggris<br />\r\nBervariasi<br />\r\nPola<br />\r\nSolid<br />\r\nKode gaya<br />\r\nDV0427-100<br />\r\nKarakter<br />\r\nAir Jordan<br />\r\nUkuran sepatu EU<br />\r\nBervariasi<br />\r\nBertanda tangan<br />\r\nTidak<br />\r\nBahan pelapis<br />\r\nKain<br />\r\nWarna<br />\r\nMultiwarna<br />\r\nJenis sepatu<br />\r\nKaret<br />\r\nMerek<br />\r\nNike<br />\r\nJenis<br />\r\nAtletik<br />\r\nDisesuaikan<br />\r\nTidak<br />\r\nModel<br />\r\nNike Air Jordan 1<br />\r\nTema<br />\r\nWarna-warni, Olahraga<br />\r\nLebar Sepatu<br />\r\nStandar<br />\r\nBahan Bagian Atas<br />\r\nSintetis<br />\r\nBahan Sol Dalam<br />\r\nBusa<br />\r\nNegara/Wilayah Pembuatan<br />\r\nVietnam</p>\r\n', 'jordan1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `foto_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `foto_kategori`) VALUES
(5, 'LifeStyle', 'style11.jpg'),
(6, 'Basketball', 'basket11.jpg'),
(7, 'Running', 'run1.jpg'),
(8, 'FootBall', 'football1.jpg'),
(9, 'Jordan', 'jordan1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `email_member` varchar(100) NOT NULL,
  `password_member` varchar(100) NOT NULL,
  `nama_member` varchar(100) NOT NULL,
  `alamat_member` text NOT NULL,
  `wa_member` varchar(50) NOT NULL,
  `kode_distrik_member` varchar(10) NOT NULL,
  `nama_distrik_member` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `email_member`, `password_member`, `nama_member`, `alamat_member`, `wa_member`, `kode_distrik_member`, `nama_distrik_member`) VALUES
(1, 'visteo@amikom.ac.id', 'eecf28e8f16ac8f71f178ea927cca01bc7b6447f', 'Visteo Linjua Arumdao', 'Purwomartani Kalasan Sleman ', '08990423789', '39', 'Kabupaten Bantul DI Yogyakarta'),
(2, 'lanesra@amikom.ac.id', 'a5375c7f48244c8f4876ee6f97bbda4d91fe1665', 'lanesra', 'Dusun I, Central Karang, Sragen, Sragen Regency', '081336952939', '427', 'Kabupaten Sragen Jawa Tengah'),
(3, 'leo@gmail.com', '1f0a51c36efaa0f44e4899c26d2028681997c8ea', 'leonardp', 'jl. magelang selokan mataram km 5 Yogyakarta', '0825693428', '427', 'Kabupaten Sragen Jawa Tengah'),
(4, 'visteolinjua@gmail.com', 'eecf28e8f16ac8f71f178ea927cca01bc7b6447f', 'Visteo Linjua', 'Jl. Magelang Selokan Mataram km 5', '081326857260', '419', 'Kabupaten Sleman DI Yogyakarta'),
(5, 'kevin@gmail,com', 'ffb4761cba839470133bee36aeb139f58d7dbaa9', 'Kevin Tum', 'Jl. Magelang Selokan Mataram Km 5', '082225710265', '419', 'Kabupaten Sleman DI Yogyakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_member` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto_produk` varchar(255) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `berat_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_member`, `id_kategori`, `nama_produk`, `harga_produk`, `foto_produk`, `deskripsi_produk`, `berat_produk`) VALUES
(17, 1, 5, 'Nike Dunk Low Two Tone Grey ', 1909000, 'style21.jpg', 'Apa pun gaya Anda, Anda selalu dapat mengandalkan gaya klasik. Terutama Dunks dengan rangkaian warna yang tak tertandingi untuk melengkapi setiap penampilan Anda. Versi ini memadukan bahan premium dan bantalan mewah untuk kenyamanan luar biasa yang tahan lama.\r\n\r\nWarna yang Ditampilkan: Medium Olive/Summit White/Sail/Hemp\r\nGaya: FQ8250-200', 1),
(18, 1, 5, 'Nike Lunar Roam', 2379000, 'style3.jpg', 'Tambahkan sedikit performa yang bersemangat pada gaya hidup Anda dengan Lunar Roam. Material yang ringan dan sejuk dipadukan dengan kabel Magwire yang suportif dan midsole yang sangat mewah untuk kenyamanan santai yang ingin Anda kenakan musim demi musim. Kenakan palet yang mudah ditata ini dan buat pernyataan yang berani dan bersemangat—di mana pun Anda berkeliaran.\r\n\r\nWarna yang Ditampilkan: Hitam/Midnight Navy/Putih/Reflect Silver\r\nGaya: HM0713-001', 1),
(19, 1, 6, 'Nike G.T. Cut 3', 3049000, 'basket_21.jpg', 'Bagaimana Anda dapat memisahkan permainan Anda saat waktunya menang? Mulailah dengan mengikat tali sepatu G.T. Cut 3. Dirancang dengan spesifikasi atlet juara, traksi multilapangan yang lengket membantu Anda berhenti dalam sekejap dan mengganti persneling sesuka hati. Dan saat Anda melakukan semua permainan yang mengubah permainan, busa ZoomX yang baru ditambahkan dan sangat responsif membantu Anda tetap segar selama empat kuarter. Dengan sol luar karet yang sangat tahan lama, versi ini memberi Anda traksi untuk lapangan luar ruangan.\r\n\r\nWarna yang Ditampilkan: Putih/Santan Kelapa/Kuning Gum/Biru Balap\r\nGaya: HJ8205-100', 1),
(20, 1, 6, 'Jordan Stay Loyal 3 ', 1859000, 'basket31.jpg', 'Anda harus tahu ke mana Anda pergi untuk mengetahui ke mana Anda akan pergi. Kami sangat memperhatikan hal itu saat menciptakan Stay Loyal 3, sepatu modern yang dibangun berdasarkan warisan Air Jordan. Dari dalam dan luar, sepatu ini dibuat untuk keserbagunaan, dengan tampilan minimalis, bantalan seperti awan, dan elemen desain yang mencerminkan AJ4. Dengan kata lain, gaya dengan daya tahan yang terbukti.\r\n\r\nWarna yang Ditampilkan: Putih/Hitam/Merah Olahraga\r\nGaya: FB1396-101', 1),
(21, 1, 7, 'Nike Alir Zoom Alphafly', 4089000, 'run21.jpg', 'Disempurnakan untuk kecepatan maraton, Zoom Alphafly membantu Anda melampaui apa yang Anda kira mungkin. Tiga teknologi inovatif mendukung lari Anda: dirancang sesuai spesifikasi atlet juara, unit Air Zoom dosis ganda membantu Anda melangkah ke langkah berikutnya; pelat serat karbon sepanjang penuh membantu mendorong Anda maju dengan mudah; dan sol tengah busa ZoomX dari tumit hingga ujung kaki membantu Anda tetap segar dari awal hingga 26,2. Saatnya meninggalkan catatan pribadi lama Anda di tengah debu.\r\n\r\nWarna yang Ditampilkan: Multi-Warna/Multi-Warna\r\nGaya: HF7357-900', 1),
(22, 1, 7, 'Nike Air Zoom Infinity Tour NEXT', 2450000, 'run3.jpg', 'Bantalan maksimal memberikan kenyamanan lebih untuk lari sehari-hari. Rasakan platform lembut berbentuk rocker yang dibuat dengan busa ReactX baru di bawah kaki, dan kerah serta lidah yang sangat nyaman untuk rasa nyaman. Ditambah lagi, membran kedap air ditambahkan ke versi ini untuk membantu Anda tetap kering.\r\n\r\nWarna yang Ditampilkan: Multi-Warna/Multi-Warna\r\nGaya: HJ6648-900', 1),
(23, 1, 8, 'Nike Mercurial Vapor 15 Pro', 2300000, 'foot4.png', 'Lapangan menjadi milik Anda saat Anda mengenakan Vapor 15 Pro FG. Sepatu ini dilengkapi dengan unit Zoom Air, sehingga Anda dapat mendominasi di menit-menit terakhir pertandingan—ketika itu sangat penting. Kecepatan ada di Udara.\r\n\r\nYang ditampilkan: Lemonade/Hitam\r\nGaya: DJ5603-700', 1),
(24, 1, 8, 'F50 LEAGUE MESSI FIRM/MULTI-GROUND BOOTS', 1400000, 'foot3.png', 'SEPATU BOOT F50 GAYA MESSI UNTUK BERBAGAI PERMUKAAN, DIBUAT SEBAGIAN DARI BAHAN DAUR ULANG.\r\nF50 speed, gaya Messi. Pada tahun 2024, rangkaian sepatu bola adidas Lionel Messi dibuat agar lebih sesuai dengan preferensinya. Bagian atas HybridTouch yang fleksibel pada sepatu F50 League ini dilengkapi lidah sintetis untuk kenyamanan yang ringan. Di bawahnya, sol luar Sprintplate 360 ​​menawarkan daya dorong di berbagai permukaan. Produk ini memiliki sedikitnya 20% bahan daur ulang. Dengan menggunakan kembali bahan yang telah dibuat, kami membantu mengurangi limbah dan ketergantungan kami pada sumber daya yang terbatas serta mengurangi jejak produk yang kami buat.\r\n\r\nSPESIFIKASI\r\nRegular fit\r\nBagian atas HybridTouch\r\nSol luar Sprintplate 360 ​​firm/multi-ground\r\nPenutup tali\r\nLidah sintetis yang ringan\r\nKode produk: IG9274', 1),
(25, 1, 9, 'Air Jordan 1 Mid GS \'Green Glow\'/ DQ8423-103', 2038000, 'jordan5-removebg-preview.png', 'Air Jordan 1 Mid menghadirkan gaya lapangan penuh dan kenyamanan premium pada tampilan yang ikonik. Unit Air-Sole-nya empuk saat digunakan di lapangan basket, sementara kerah yang empuk memberi Anda rasa dukungan.\r\n\r\nYang ditampilkan: Dusty Peach/Sail/White/Night Maroon\r\nGaya: BQ6472-200', 1),
(26, 1, 9, 'Air Jordan 1 Retro High OG \'University Blue\'', 9561000, 'jordan6.jpg', 'Sepatu Air Jordan 1 Retro High OG ‘University Blue’ menggunakan palet warna yang sudah dikenal yang mengingatkan kita pada almamater Michael Jordan di UNC. Bagian atas yang seluruhnya terbuat dari kulit memiliki dasar putih dengan lapisan biru muda dan logo Swoosh hitam. Aksen hitam yang serasi hadir di bagian kerah, tag lidah sepatu, dan logo Wings yang dicetak pada penutup kerah samping. Nuansa biru yang lebih cerah diaplikasikan pada sol luar AJ1 standar, yang memiliki daya tarik multi arah dan titik poros di bawah kaki depan.', 1),
(27, 1, 9, 'Air Jordan 1 Mid True Blue', 2550000, 'jordan6.png', 'Air Jordan 1 Mid True Blue memiliki perpaduan warna yang berbeda, dengan warna abu-abu semen, putih, dan biru muda sebagai warna dominan. Sepatu Mid Air Jordan 1 ini memiliki bagian atas berbahan kulit yang hadir dalam warna putih dengan beberapa lubang di bagian ujung sepatu.', 1),
(29, 5, 5, 'New Balance 530', 650000, 'nb1.jpg', 'The New Balance 530 White Silver Navy features a white mesh upper with metallic silver and white leather overlays. On the quarter panel, a grey New Balance logo outlined in navy adds contrast. From there, a white and grey ABZORB sole adds the finishing touch. \r\n\r\nThe New Balance 530 White Silver Navy released in February of 20\r\n\r\n\r\nProduct Details\r\n\r\n\r\n️ Model : NB 530\r\n️️ Code Art :  MR530SG\r\n️ Color : White Silver Navy\r\n️ Made in Vietnam\r\n\r\nAvailabel Size : \r\nEUR 36 / US 5 / 22 CM\r\nEUR 37 / US 5.5 / 22.5 CM\r\nEUR 38 / US 6 / 23.5 CM\r\nEUR 39 / US 7 / 24 CM\r\nEUR 40 / US 7.5 / 25.5 CM\r\nEUR 40.5 / US 8 / 26 CM\r\nEUR 41 / US 8.5 / 26.5 CM\r\nEUR 42 / US 9 / 27 CM', 550);

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL,
  `caption_slider` text NOT NULL,
  `foto_slider` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id_slider`, `caption_slider`, `foto_slider`) VALUES
(1, '<h2 style=\"font-style:italic;\"><strong>New Arrivals At Out Marketplace</strong></h2>\r\n', 'nik3_(1).jpg'),
(2, '<h2 style=\"font-style:italic;\"><strong>Nike Air Jordan 3 Retro Camo</strong></h2>\r\n', 'jordan2_(1).jpg'),
(3, '<h2 style=\"font-style:italic;\"><strong>Nike Air Force 1 white black</strong></h2>\r\n', 'airforce1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_member_beli` int(11) NOT NULL,
  `id_member_jual` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL DEFAULT current_timestamp(),
  `belanja_transaksi` int(11) NOT NULL,
  `status_transaksi` enum('pesan','lunas','batal','dikirim','selesai') NOT NULL DEFAULT 'pesan',
  `ongkir_transaksi` int(11) NOT NULL,
  `total_transaksi` int(11) NOT NULL,
  `bayar_transaksi` int(11) NOT NULL,
  `distrik_pengirim` varchar(255) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `wa_pengirim` varchar(50) NOT NULL,
  `alamat_pengirim` text NOT NULL,
  `distrik_penerima` varchar(255) NOT NULL,
  `nama_penerima` varchar(100) NOT NULL,
  `wa_penerima` varchar(50) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `nama_ekspedisi` varchar(100) NOT NULL,
  `layanan_ekspedisi` varchar(100) NOT NULL,
  `estimasi_ekspedisi` varchar(50) NOT NULL,
  `berat_ekspedisi` varchar(50) NOT NULL,
  `resi_ekspedisi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `kode_transaksi`, `id_member_beli`, `id_member_jual`, `tanggal_transaksi`, `belanja_transaksi`, `status_transaksi`, `ongkir_transaksi`, `total_transaksi`, `bayar_transaksi`, `distrik_pengirim`, `nama_pengirim`, `wa_pengirim`, `alamat_pengirim`, `distrik_penerima`, `nama_penerima`, `wa_penerima`, `alamat_penerima`, `nama_ekspedisi`, `layanan_ekspedisi`, `estimasi_ekspedisi`, `berat_ekspedisi`, `resi_ekspedisi`) VALUES
(49, '202407041706557370', 3, 1, '2024-07-04 17:06:55', 820000, 'lunas', 60000, 880000, 880000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '95', 'JN212001'),
(50, '202407041709106128', 3, 1, '2024-07-04 17:09:10', 550000, 'lunas', 60000, 610000, 610000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '110', 'JN212045'),
(51, '202407041724435055', 3, 1, '2024-07-04 17:24:43', 195000, 'lunas', 18000, 213000, 213000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '18000', '300', NULL),
(52, '202407041732235087', 3, 2, '2024-07-04 17:32:23', 135000, 'lunas', 6000, 141000, 141000, 'Kabupaten Sragen Jawa Tengah', 'lanesra', '081336952939', 'Dusun I, Central Karang, Sragen, Sragen Regency', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '6000', '300', NULL),
(53, '202407041745008005', 3, 1, '2024-07-04 17:45:00', 820000, 'lunas', 60000, 880000, 880000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '95', NULL),
(54, '202407041746513959', 3, 1, '2024-07-04 17:46:51', 130000, 'lunas', 15000, 145000, 145000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '15000', '200', NULL),
(55, '202407050538195805', 3, 1, '2024-07-05 05:38:19', 130000, 'lunas', 15000, 145000, 145000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'Layanan Reguler', '15000', '200', NULL),
(56, '202407051111524525', 3, 1, '2024-07-05 11:11:52', 24500000, 'lunas', 18000, 24518000, 24518000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'Yakin Esok Sampai', '18000', '10', NULL),
(58, '202407051120497873', 3, 1, '2024-07-05 11:20:49', 4758000, 'pesan', 60000, 4818000, 4818000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '2', NULL),
(59, '202407170602435737', 3, 1, '2024-07-17 06:02:43', 2550000, 'lunas', 60000, 2610000, 2610000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sragen Jawa Tengah', 'leonardp', '0825693428', 'jl. magelang selokan mataram km 5 Yogyakarta', 'Jalur Nugraha Ekakurir (JNE)', 'JNE Trucking', '60000', '1', 'JN6999952'),
(60, '202407171755268211', 4, 1, '2024-07-17 17:55:26', 2550000, 'lunas', 7000, 2557000, 2557000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sleman DI Yogyakarta', 'Visteo Linjua', '081326857260', 'Jl. Magelang Selokan Mataram km 5', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '7000', '1', 'JNE238596'),
(61, '202407171820495590', 5, 1, '2024-07-17 18:20:49', 2038000, 'lunas', 7000, 2045000, 2045000, 'Kabupaten Bantul DI Yogyakarta', 'Visteo Linjua Arumdao', '08990423789', 'Purwomartani Kalasan Sleman ', 'Kabupaten Sleman DI Yogyakarta', 'Kevin Tum', '082225710265', 'Jl. Magelang Selokan Mataram Km 5', 'Jalur Nugraha Ekakurir (JNE)', 'JNE City Courier', '7000', '1', 'JNE855923');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id_transaksi_detail` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_beli` varchar(255) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_rating` int(11) DEFAULT NULL,
  `ulasan_rating` text DEFAULT NULL,
  `waktu_rating` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id_transaksi_detail`, `id_transaksi`, `id_produk`, `nama_beli`, `harga_beli`, `jumlah_beli`, `jumlah_rating`, `ulasan_rating`, `waktu_rating`) VALUES
(46, 49, 2, 'Kursi Kantor Elkana', 820000, 1, 5, 'b', '2024-07-04 17:24:23'),
(47, 50, 6, 'kursi kantor', 550000, 1, 4, 'b', '2024-07-04 17:20:39'),
(48, 51, 3, 'BAJU BRAND LOKAL ', 65000, 3, 5, 'bagus sekali', '2024-07-04 17:43:02'),
(49, 52, 1, 'Baju Astronot', 45000, 3, 5, 'saya suka', '2024-07-04 17:42:28'),
(50, 53, 2, 'Kursi Kantor Elkana', 820000, 1, 4, 'bagus dan next co', '2024-07-04 17:45:54'),
(51, 54, 3, 'BAJU BRAND LOKAL ', 65000, 2, 5, 'kapan kapan saya beli lagi dehh, soalnya bahannya bagus banget ', '2024-07-04 17:47:23'),
(52, 55, 3, 'BAJU BRAND LOKAL ', 65000, 2, 5, 'cocok nih dibadanku', '2024-07-05 05:39:24'),
(53, 56, 22, 'Nike Air Zoom Infinity Tour NEXT% NRG \'U.S. Open - Brookline\' DM9024-146', 2450000, 10, 5, 'Barang sudah sesuai dengan yang dipesan', '2024-07-05 11:13:34'),
(54, 57, 18, 'Nike Lunar Roam', 2379000, 2, NULL, NULL, NULL),
(55, 58, 18, 'Nike Lunar Roam', 2379000, 2, NULL, NULL, NULL),
(56, 59, 27, 'Air Jordan 1 Mid True Blue', 2550000, 1, 5, 'bagus banget ni barangnya', '2024-07-17 06:03:26'),
(57, 60, 27, 'Air Jordan 1 Mid True Blue', 2550000, 1, 5, 'Barangnya sudah diterima dan kualitasny bagus', '2024-07-17 17:58:02'),
(58, 61, 25, 'Air Jordan 1 Mid GS \'Green Glow\'/ DQ8423-103', 2038000, 1, 5, 'barang sampai dengan selamat', '2024-07-17 18:23:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id_transaksi_detail`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id_transaksi_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
