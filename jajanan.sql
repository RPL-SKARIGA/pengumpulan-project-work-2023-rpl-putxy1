-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Nov 2023 pada 07.17
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jajanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alamat_user`
--

CREATE TABLE `alamat_user` (
  `id_alamat` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_telp` varchar(255) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_prov` varchar(255) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(255) NOT NULL,
  `kode_pos` varchar(255) DEFAULT NULL,
  `alamat_lengkap` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alamat_user`
--

INSERT INTO `alamat_user` (`id_alamat`, `id_user`, `no_telp`, `nama_penerima`, `id_provinsi`, `nama_prov`, `id_kota`, `nama_kota`, `kode_pos`, `alamat_lengkap`, `created_at`, `updated_at`) VALUES
(3, 2, '08117807970', 'Ari Dwiantoro', 33, 'Sumatera Selatan', 327, 'Palembang', '30151', 'jl. Suka bangun 2', '2022-11-07 18:32:21', '2022-11-07 18:32:21'),
(4, 3, '081218113193', 'tere', 32, 'Sumatera Barat', 318, 'Padang', '30151', 'jl. suka bangun', '2022-11-20 14:36:01', '2022-11-20 14:36:01'),
(5, 4, '65432', 'Aulia', 11, 'Jawa Timur', 255, 'Malang', '65144', 'Jl Tlogo suryo Gg.6 No.60C RT 05 RW02 Kelurahan tlogomas kecamatan lowokwaru kota malang', '2023-11-17 18:51:10', '2023-11-17 18:51:10'),
(6, 5, '08976543', 'Aulia', 11, 'Jawa Timur', 256, 'Malang', '65144', 'Jl Tlogo suryo Gg.6 No.60C RT 05 RW02 Kelurahan tlogomas kecamatan lowokwaru kota malang', '2023-11-19 08:18:27', '2023-11-19 08:18:27'),
(7, 7, '08976543', 'Aulia', 11, 'Jawa Timur', 255, 'Malang', '65144', 'Jl Tlogo suryo Gg.6 No.60C RT 05 RW02 Kelurahan tlogomas kecamatan lowokwaru kota malang', '2023-11-25 05:52:02', '2023-11-25 05:52:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id_pesan` bigint(20) UNSIGNED NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id_pesan`, `from_id`, `to_id`, `pesan`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'hai admin', 'on read', '2022-11-12 19:09:46', '2022-11-12 20:36:54'),
(2, 1, 2, 'iya ada apa', 'on read', '2022-11-12 19:09:46', '2022-11-12 20:41:16'),
(3, 2, 1, 'saya mau minta tolong', 'on read', '2022-11-12 19:13:57', '2022-11-12 20:36:54'),
(4, 3, 1, 'good night admin', 'on read', '2022-11-12 20:17:48', '2023-11-17 18:54:41'),
(5, 1, 2, 'boleh', 'off read', '2022-11-12 20:17:48', '2022-11-12 20:41:16'),
(6, 1, 3, 'good night to', 'off read', '2022-11-12 20:38:12', '2022-11-12 20:38:17'),
(7, 4, 1, 'permisi akka', 'on read', '2023-11-18 00:42:48', '2023-11-20 11:48:56'),
(8, 4, 1, 'permisi akka', 'on read', '2023-11-18 00:42:48', '2023-11-20 11:48:56'),
(9, 1, 4, 'iyaa halooo', 'on read', '2023-11-18 00:53:47', '2023-11-18 04:10:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `deskripsi_kategori` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deskripsi_kategori`, `created_at`, `updated_at`) VALUES
(7, 'Makanan', NULL, '2023-11-19 08:34:23', '2023-11-19 08:34:23'),
(8, 'Minuman', NULL, '2023-11-19 08:34:27', '2023-11-19 08:34:27'),
(9, 'Camilan', NULL, '2023-11-19 08:34:30', '2023-11-19 08:34:30'),
(10, 'Dessert', NULL, '2023-11-19 08:34:34', '2023-11-19 08:34:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_user`, `id_produk`, `quantity`, `created_at`, `updated_at`) VALUES
(17, 5, 8, 1, '2023-11-20 14:22:33', '2023-11-20 14:22:33'),
(19, 5, 7, 1, '2023-11-21 07:14:57', '2023-11-21 07:14:57'),
(22, 6, 8, 4, '2023-11-24 00:00:27', '2023-11-24 00:00:27'),
(23, 7, 8, 1, '2023-11-25 05:51:28', '2023-11-25 05:51:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `komentar_produk` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_user`, `id_produk`, `komentar_produk`, `created_at`, `updated_at`) VALUES
(2, 4, 5, 'Produk Memuaskan Sekali', '2023-11-17 18:53:46', '2023-11-17 18:53:46'),
(3, 5, 4, 'Produk Memuaskan Sekali', '2023-11-19 08:31:07', '2023-11-19 08:31:07'),
(4, 5, 9, 'apikkkk', '2023-11-20 14:22:02', '2023-11-20 14:22:02'),
(5, 5, 9, 'Produk Memuaskan Sekali', '2023-11-21 06:32:34', '2023-11-21 06:32:34'),
(6, 4, 6, 'Produk Memuaskan Sekali', '2023-11-21 07:36:09', '2023-11-21 07:36:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2022_11_05_235950_create_kategori_table', 2),
(16, '2022_11_06_104923_create_produk_table', 3),
(17, '2022_11_07_192142_create_keranjang_table', 4),
(18, '2022_11_07_225304_create_alamat_user_table', 5),
(19, '2022_11_08_024919_create_rekening_table', 6),
(21, '2022_11_12_044210_create_resi_table', 8),
(22, '2022_11_13_013057_create_chat_table', 9),
(24, '2022_11_08_162750_create_pesanan_table', 10),
(25, '2022_11_29_234224_create_komentar_table', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` bigint(20) UNSIGNED NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `harga_total_bayar` int(11) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `total_ongkir` int(11) NOT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `total_dp` bigint(20) DEFAULT NULL,
  `bukti_bayar_dp` text DEFAULT NULL,
  `bukti_bayar_dp_lunas` text DEFAULT NULL,
  `dp_status` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tipe_pembayaran` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_produk`, `id_user`, `quantity`, `harga_total_bayar`, `ongkir`, `total_ongkir`, `bukti_bayar`, `total_dp`, `bukti_bayar_dp`, `bukti_bayar_dp_lunas`, `dp_status`, `status`, `tipe_pembayaran`, `created_at`, `updated_at`) VALUES
(5, 5, 4, 1, 12000, 21000, 33000, '[ ✓ ] Patisserie Lady (TELAH DITERBITKAN).jpg', NULL, NULL, NULL, NULL, '4', 'lunas', '2023-11-17 18:51:45', '2023-11-17 18:53:46'),
(6, 4, 5, 1, 10000, 18000, 28000, 'Desain tanpa judul (16).png', NULL, NULL, NULL, NULL, '4', 'lunas', '2023-11-19 08:19:04', '2023-11-19 08:31:07'),
(7, 9, 5, 3, 150000, 18000, 168000, 'screencapture-127-0-0-1-8000-customer-checkout-15-2023-11-19-17_34_53.png', NULL, NULL, NULL, NULL, '4', 'lunas', '2023-11-19 10:35:06', '2023-11-20 14:22:02'),
(8, 9, 5, 9, 450000, 18000, 468000, NULL, 234000, 'screencapture-127-0-0-1-8000-admin-produk-2023-11-20-20_59_29.png', 'screencapture-127-0-0-1-8000-admin-produk-create-2023-11-20-18_46_34.png', 'upload_lunas', '4', 'dp', '2023-11-20 14:23:48', '2023-11-21 06:32:34'),
(9, 6, 4, 1, 10000, 21000, 31000, 'screencapture-110-232-91-180-ocscbt-2023-11-21-09_41_37.png', NULL, NULL, NULL, NULL, '4', 'lunas', '2023-11-21 07:35:06', '2023-11-21 07:36:09'),
(10, 6, 4, 1, 10000, 21000, 31000, 'screencapture-127-0-0-1-8000-admin-dashboard-2023-11-21-14_29_20 (1).png', NULL, NULL, NULL, NULL, '3', 'lunas', '2023-11-21 08:20:20', '2023-11-21 08:20:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` bigint(20) UNSIGNED NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `berat` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `id_kategori`, `berat`, `stok`, `harga_produk`, `deskripsi_produk`, `foto_produk`, `created_at`, `updated_at`) VALUES
(4, 'Bolu Lapis Pelangi', 4, '1000', 0, 10000, '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'WhatsApp Image 2022-10-16 at 20.07.49.jpeg', '2022-11-06 15:45:27', '2023-11-19 08:19:37'),
(5, 'Sateee', 2, '22', 21, 12000, '<p>nakkkkkk<strong>pollll</strong></p>', 'Indonesian Foods.png', '2023-11-17 18:49:06', '2023-11-17 18:52:26'),
(6, 'Es Pisang Ijo', 8, '12', 9, 10000, '<div><br>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci exercitationem culpa vel asperiores dolorem voluptatibus fugit, ducimus molestiae, omnis rerum temporibus saepe maxime? Reiciendis, labore iusto? Ex assumenda earum, dolores reprehenderit excepturi exercitationem repellendus quaerat, et rerum vitae ad similique voluptatum voluptate accusantium ea. Fuga veritatis quasi aperiam molestias rerum aut repellat, eveniet unde nam maiores aspernatur voluptates sint ex natus autem accusamus ipsam iusto perspiciatis et doloremque aliquid voluptas accusantium. Ipsum, eos a! Deserunt, eligendi aliquid? Consectetur, suscipit. Assumenda cupiditate blanditiis suscipit deleniti modi et, a quae quas eveniet vero harum alias deserunt veritatis maiores perspiciatis fuga id tenetur distinctio veniam adipisci repellat impedit ea? Non nobis sunt cupiditate sapiente? Architecto obcaecati labore cupiditate, beatae placeat fugit dolorem facilis odit in tempora corporis nobis commodi ab natus. Earum accusantium culpa rerum quae! Reiciendis harum consequuntur, quia nihil minus sint voluptates dignissimos vero. Facere, exercitationem facilis. Porro repudiandae, harum et officiis reprehenderit eaque impedit ad? Iste accusantium in velit molestiae neque delectus quaerat culpa architecto modi iure perferendis beatae doloremque repudiandae vero nobis repellat earum voluptas ut voluptatibus nam ipsam, omnis aliquam dolor expedita. Quidem suscipit, unde quibusdam et id praesentium excepturi vel omnis vitae, veritatis nulla doloremque. Modi, odit.</div>\r\n</div>', 'Es pisang ijo.jpg', '2023-11-19 08:36:35', '2023-11-21 08:20:40'),
(7, 'Bakso', 9, '11', 111, 20000, '<div><br>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci exercitationem culpa vel asperiores dolorem voluptatibus fugit, ducimus molestiae, omnis rerum temporibus saepe maxime? Reiciendis, labore iusto? Ex assumenda earum, dolores reprehenderit excepturi exercitationem repellendus quaerat, et rerum vitae ad similique voluptatum voluptate accusantium ea. Fuga veritatis quasi aperiam molestias rerum aut repellat, eveniet unde nam maiores aspernatur voluptates sint ex natus autem accusamus ipsam iusto perspiciatis et doloremque aliquid voluptas accusantium. Ipsum, eos a! Deserunt, eligendi aliquid? Consectetur, suscipit. Assumenda cupiditate blanditiis suscipit deleniti modi et, a quae quas eveniet vero harum alias deserunt veritatis maiores perspiciatis fuga id tenetur distinctio veniam adipisci repellat impedit ea? Non nobis sunt cupiditate sapiente? Architecto obcaecati labore cupiditate, beatae placeat fugit dolorem facilis odit in tempora corporis nobis commodi ab natus. Earum accusantium culpa rerum quae! Reiciendis harum consequuntur, quia nihil minus sint voluptates dignissimos vero. Facere, exercitationem facilis. Porro repudiandae, harum et officiis reprehenderit eaque impedit ad? Iste accusantium in velit molestiae neque delectus quaerat culpa architecto modi iure perferendis beatae doloremque repudiandae vero nobis repellat earum voluptas ut voluptatibus nam ipsam, omnis aliquam dolor expedita. Quidem suscipit, unde quibusdam et id praesentium excepturi vel omnis vitae, veritatis nulla doloremque. Modi, odit.</div>\r\n</div>', 'WhatsApp Image 2023-11-11 at 14.45.44 (16).jpeg', '2023-11-19 08:37:27', '2023-11-19 08:37:27'),
(8, 'Tusuk Tusuk', 9, '11', 12, 12000, '<div><br>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci exercitationem culpa vel asperiores dolorem voluptatibus fugit, ducimus molestiae, omnis rerum temporibus saepe maxime? Reiciendis, labore iusto? Ex assumenda earum, dolores reprehenderit excepturi exercitationem repellendus quaerat, et rerum vitae ad similique voluptatum voluptate accusantium ea. Fuga veritatis quasi aperiam molestias rerum aut repellat, eveniet unde nam maiores aspernatur voluptates sint ex natus autem accusamus ipsam iusto perspiciatis et doloremque aliquid voluptas accusantium. Ipsum, eos a! Deserunt, eligendi aliquid? Consectetur, suscipit. Assumenda cupiditate blanditiis suscipit deleniti modi et, a quae quas eveniet vero harum alias deserunt veritatis maiores perspiciatis fuga id tenetur distinctio veniam adipisci repellat impedit ea? Non nobis sunt cupiditate sapiente? Architecto obcaecati labore cupiditate, beatae placeat fugit dolorem facilis odit in tempora corporis nobis commodi ab natus. Earum accusantium culpa rerum quae! Reiciendis harum consequuntur, quia nihil minus sint voluptates dignissimos vero. Facere, exercitationem facilis. Porro repudiandae, harum et officiis reprehenderit eaque impedit ad? Iste accusantium in velit molestiae neque delectus quaerat culpa architecto modi iure perferendis beatae doloremque repudiandae vero nobis repellat earum voluptas ut voluptatibus nam ipsam, omnis aliquam dolor expedita. Quidem suscipit, unde quibusdam et id praesentium excepturi vel omnis vitae, veritatis nulla doloremque. Modi, odit.</div>\r\n</div>', 'WhatsApp Image 2023-11-11 at 14.45.44 (11).jpeg', '2023-11-19 08:38:18', '2023-11-19 08:38:18'),
(9, 'Terang Bulan', 10, '11', 0, 50000, '<div><br>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci exercitationem culpa vel asperiores dolorem voluptatibus fugit, ducimus molestiae, omnis rerum temporibus saepe maxime? Reiciendis, labore iusto? Ex assumenda earum, dolores reprehenderit excepturi exercitationem repellendus quaerat, et rerum vitae ad similique voluptatum voluptate accusantium ea. Fuga veritatis quasi aperiam molestias rerum aut repellat, eveniet unde nam maiores aspernatur voluptates sint ex natus autem accusamus ipsam iusto perspiciatis et doloremque aliquid voluptas accusantium. Ipsum, eos a! Deserunt, eligendi aliquid? Consectetur, suscipit. Assumenda cupiditate blanditiis suscipit deleniti modi et, a quae quas eveniet vero harum alias deserunt veritatis maiores perspiciatis fuga id tenetur distinctio veniam adipisci repellat impedit ea? Non nobis sunt cupiditate sapiente? Architecto obcaecati labore cupiditate, beatae placeat fugit dolorem facilis odit in tempora corporis nobis commodi ab natus. Earum accusantium culpa rerum quae! Reiciendis harum consequuntur, quia nihil minus sint voluptates dignissimos vero. Facere, exercitationem facilis. Porro repudiandae, harum et officiis reprehenderit eaque impedit ad? Iste accusantium in velit molestiae neque delectus quaerat culpa architecto modi iure perferendis beatae doloremque repudiandae vero nobis repellat earum voluptas ut voluptatibus nam ipsam, omnis aliquam dolor expedita. Quidem suscipit, unde quibusdam et id praesentium excepturi vel omnis vitae, veritatis nulla doloremque. Modi, odit.</div>\r\n</div>', 'WhatsApp Image 2023-11-11 at 14.45.44 (13).jpeg', '2023-11-19 08:39:03', '2023-11-20 14:24:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` bigint(20) UNSIGNED NOT NULL,
  `nama_rek` varchar(255) NOT NULL,
  `jenis_rekening` varchar(255) NOT NULL,
  `no_rek` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_rek`, `jenis_rekening`, `no_rek`, `created_at`, `updated_at`) VALUES
(1, 'rizki ratih 2', 'bni', '081877236012', '2022-11-07 20:48:11', '2022-11-07 21:13:35'),
(2, 'ari', 'bca', '90232839743', '2022-11-08 08:22:21', '2022-11-08 08:22:21'),
(3, 'mabok', 'bri', '2893938', '2022-11-08 08:22:34', '2022-11-08 08:22:34'),
(4, 'tata', 'mandiri', '232893841', '2022-11-08 08:22:52', '2022-11-08 08:22:52'),
(5, 'sina', 'bsi', '12828723', '2022-11-08 08:23:04', '2022-11-08 08:23:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resi`
--

CREATE TABLE `resi` (
  `id_resi` bigint(20) UNSIGNED NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `no_resi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `resi`
--

INSERT INTO `resi` (`id_resi`, `id_pesanan`, `no_resi`, `created_at`, `updated_at`) VALUES
(6, 5, 1111, '2023-11-17 18:52:34', '2023-11-17 18:52:34'),
(7, 6, 1234567890, '2023-11-19 08:27:42', '2023-11-19 08:27:42'),
(8, 7, 1111, '2023-11-20 11:41:27', '2023-11-20 11:41:27'),
(9, 8, 22, '2023-11-21 05:47:46', '2023-11-21 05:47:46'),
(10, 9, 12345, '2023-11-21 07:35:42', '2023-11-21 07:35:42'),
(11, 10, 876, '2023-11-21 08:20:49', '2023-11-21 08:20:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `foto_profile` text DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `type`, `foto_profile`, `hp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'puttriii', 'admin@admin.com', '2022-11-05 07:44:53', '$2y$10$aDJc9xYb11Udc98ri0GYuehzI8XrpiOV2lMgr3Je7/2d3xRSHoRpm', 'admin', 'WhatsApp Image 2023-10-26 at 17.38.17.jpeg', '081218113193', 'Gw1lMxZvOHDUE7TMCmzBfv5OO3yOGuZ21lnHOHvUnCpFQxFJDKe7xgUUAnk0', '2022-11-05 07:44:53', '2023-11-17 18:48:07'),
(2, 'ari dwiantoro', 'aridwiantoro09@gmail.com', NULL, '$2y$10$P5fnR9z1t000WTyB6hUfcufzLZ6cuyJi7XIhpAmIAPf/UyMgqakdm', 'customer', NULL, '08117807970', NULL, '2022-11-07 06:47:02', '2022-11-07 06:48:45'),
(3, 'tere', 'tere@tere.com', NULL, '$2y$10$Yv70.czYAJsd5F0in9J.fOKPOp9w6gRS1eGboiGqVnhJ5DxVvH1J6', 'customer', NULL, NULL, NULL, '2022-11-08 06:35:18', '2022-11-08 06:35:18'),
(4, 'pppp', 'putri1@gmail.com', NULL, '$2y$10$Tx/pUAOuZp8cGiwNWjLUT.x7Jlqt7NwnEhQCs.UoYBwjZ4mSMPAbK', 'customer', NULL, '08976543', NULL, '2023-11-17 18:50:22', '2023-11-18 00:42:36'),
(5, 'Aulia', 'putri3@gmail.com', NULL, '$2y$10$rHWdmpI1pCR03mceWzy4Q.SsclCfsOa9DRoEcqQ25XnNJHo8azezq', 'customer', NULL, '08976543', NULL, '2023-11-19 07:59:08', '2023-11-21 07:23:28'),
(6, 'putri elek', 'putrieleklagi@gmail.com', NULL, '$2y$10$zEYqzUa8vFZUkaAT3twFc.zSbMzxeCIYpk2pbq9J3Crs6jgwmMyAa', 'customer', NULL, NULL, NULL, '2023-11-23 23:59:15', '2023-11-23 23:59:15'),
(7, 'Devita Aulia', 'putri2@gmail.com', NULL, '$2y$10$2DxVsJSPjJQu3ED0voZzNOKPKgc6ON2jZLJM135KDXGU9Oi4GbS6S', 'customer', NULL, NULL, NULL, '2023-11-25 05:48:43', '2023-11-25 05:48:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alamat_user`
--
ALTER TABLE `alamat_user`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_pesan`);

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
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `resi`
--
ALTER TABLE `resi`
  ADD PRIMARY KEY (`id_resi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alamat_user`
--
ALTER TABLE `alamat_user`
  MODIFY `id_alamat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id_pesan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `resi`
--
ALTER TABLE `resi`
  MODIFY `id_resi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
