-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2020 at 04:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenchuyennganh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuyennganh`
--

INSERT INTO `chuyennganh` (`id`, `tenchuyennganh`, `mota`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hệ thống thông tin', 'Hệ thống thông tin', 'he-thong-thong-tin', '2020-04-28 01:49:11', '2020-04-28 01:49:11'),
(2, 'Truyền thông mạng máy tính', 'Truyền thông mạng máy tính', 'truyen-thong-mang-may-tinh', '2020-04-28 01:49:23', '2020-04-28 01:49:23'),
(3, 'Điện tử viễn thông', 'Điện tử viễn thông', 'dien-tu-vien-thong', '2020-04-28 01:49:37', '2020-04-28 01:49:37'),
(4, 'Cơ điện tử', 'Cơ điện tử', 'co-dien-tu', '2020-04-28 01:49:47', '2020-04-28 01:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `detai`
--

CREATE TABLE `detai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendetai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sinhvien_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detai`
--

INSERT INTO `detai` (`id`, `tendetai`, `mota`, `slug`, `user_id`, `chuyennganh_id`, `linhvuc_id`, `created_at`, `updated_at`, `sinhvien_id`) VALUES
(3, 'Xây dựng Website bán quần áo thời trang nữ cho cửa hàng Hana', '<p>- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh quản l&yacute; mua b&aacute;n &nbsp;của cửa h&agrave;ng Hana.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-website-ban-quan-ao-thoi-trang-nu-cho-cua-hang-hana-1590136243', 1, 2, 1, '2020-04-28 03:33:47', '2020-05-22 01:30:43', 13),
(11, 'Xây dựng Website Trường Đại học Công nghiệp Việt Trì a', '<p>X&acirc;y dựng Website Trường Đại học C&ocirc;ng nghiệp Việt Tr&igrave; a</p>', 'xay-dung-website-truong-dai-hoc-cong-nghiep-viet-tri-a-1589679253', 2, 4, 4, '2020-05-16 18:20:24', '2020-05-16 18:34:13', 9),
(13, 'Xây dựng Website bán cây cảnh cho cửa hàng Lâm Hoa', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh quản l&yacute; mua b&aacute;n hoa của cửa h&agrave;ng L&acirc;m Hoa.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-website-ban-cay-canh-cho-cua-hang-lam-hoa', 2, 1, 1, '2020-05-22 01:15:16', '2020-05-22 01:15:16', NULL),
(14, 'Xây dựng Website giới thiệu ngành nghề của đại học Công nghệ Giao thông Vận tải', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế c&aacute;c ng&agrave;nh nghề của đại học C&ocirc;ng nghệ Giao th&ocirc;ng Vận tải<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-website-gioi-thieu-nganh-nghe-cua-dai-hoc-cong-nghe-giao-thong-van-tai', 2, 1, 1, '2020-05-22 01:15:40', '2020-05-22 01:15:40', NULL),
(15, 'Xây dựng phần mềm quản lý khóa luận của Khoa Công nghệ thông tin - Đại học Công nghệ GTVT.', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh quản l&yacute; kh&oacute;a luận của Khoa C&ocirc;ng nghệ th&ocirc;ng tin - Đại học C&ocirc;ng nghệ GTVT.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-phan-mem-quan-ly-khoa-luan-cua-khoa-cong-nghe-thong-tin-dai-hoc-cong-nghe-gtvt', 2, 1, 1, '2020-05-22 01:16:06', '2020-05-22 01:16:06', NULL),
(16, 'Xây dựng thư viện sách trực tuyến cho sinh viên ngành công nghệ thông tin', '<p>&#39;- T&igrave;m hiểu, khảo s&aacute;t thực tế quy tr&igrave;nh t&igrave;m kiếm, đọc s&aacute;ch trực tuyến của sinh vi&ecirc;n.<br />\r\n- Ph&acirc;n t&iacute;ch thiết kế hệ thống th&ocirc;ng tin (chức năng, CSDL) đ&atilde; khảo s&aacute;t.<br />\r\n- Lựa chọn c&ocirc;ng cụ (Hệ quản trị CSDL, ng&ocirc;n ngữ lập tr&igrave;nh) v&agrave; triển khai x&acirc;y dựng hệ thống th&ocirc;ng tin đ&atilde; khảo s&aacute;t.<br />\r\n- B&aacute;o c&aacute;o khảo s&aacute;t v&agrave; thu thập dữ liệu.<br />\r\n- B&aacute;o c&aacute;o đồ &aacute;n theo quy định của Trường, t&oacute;m tắt th&ocirc;ng tin đồ &aacute;n, slide b&aacute;o c&aacute;o đồ &aacute;n.<br />\r\n- Sản phẩm phần mềm v&agrave; CSDL</p>', 'xay-dung-thu-vien-sach-truc-tuyen-cho-sinh-vien-nganh-cong-nghe-thong-tin', 2, 1, 1, '2020-05-22 01:16:19', '2020-05-22 01:16:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dexuatdetai`
--

CREATE TABLE `dexuatdetai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tendetai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `linhvuc`
--

CREATE TABLE `linhvuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenlinhvuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mota` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linhvuc`
--

INSERT INTO `linhvuc` (`id`, `tenlinhvuc`, `mota`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế web', 'Thiết kế web', 'thiet-ke-web', '2020-04-28 02:20:41', '2020-04-28 02:52:43'),
(2, 'Lập trình Android', 'Lập trình Android', 'lap-trinh-android', '2020-04-28 02:20:53', '2020-04-28 02:20:53'),
(4, 'Lập trình IOS', 'Lập trình IOS', 'lap-trinh-ios', '2020-04-28 02:53:06', '2020-04-28 02:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_28_074926_create_table_table', 1),
(5, '2020_04_28_083314_create_relationship_table', 1),
(6, '2020_05_15_162753_update_detai_table', 2),
(7, '2020_05_22_112258_create_update_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvong`
--

CREATE TABLE `nguyenvong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `detai_id` bigint(20) UNSIGNED DEFAULT NULL,
  `detaidexuat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `linhvuc_id` bigint(20) UNSIGNED NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0,
  `loainguyenvong` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguyenvong`
--

INSERT INTO `nguyenvong` (`id`, `user_id`, `detai_id`, `detaidexuat_id`, `linhvuc_id`, `trangthai`, `loainguyenvong`, `created_at`, `updated_at`) VALUES
(5, 2, 14, NULL, 1, 0, 1, '2020-05-22 01:18:36', '2020-05-22 01:18:36'),
(6, 9, 14, NULL, 1, 0, 1, '2020-05-22 01:19:33', '2020-05-22 01:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rolename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `rolename`, `created_at`, `updated_at`) VALUES
(1, 'Quản trị viên', '2020-05-07 03:10:17', NULL),
(2, 'Giáo viên', '2020-05-07 03:10:17', NULL),
(3, 'Sinh viên', '2020-05-07 03:10:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `thongtin`
--

CREATE TABLE `thongtin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` bigint(20) DEFAULT NULL,
  `gioitinh` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hocham` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thongtin`
--

INSERT INTO `thongtin` (`id`, `ngaysinh`, `sdt`, `gioitinh`, `avatar`, `hocham`, `lop`, `masv`, `ghichu`, `user_id`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, '2020-04-28 01:48:59', '2020-04-28 01:48:59'),
(2, '1998-07-25', 387588688, 'Nam', 'aa', 'Giáo sư', '67DCHT23', NULL, NULL, 2, '2020-04-30 19:13:10', '2020-04-30 19:13:10'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, '2020-04-30 19:25:24', '2020-04-30 19:25:24'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2020-05-05 02:31:30', '2020-05-05 02:31:30'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, '2020-05-16 20:09:23', '2020-05-16 20:09:23'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2020-05-17 01:50:48', '2020-05-17 01:50:48'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, '2020-05-17 01:53:45', '2020-05-17 01:53:45'),
(1205, NULL, NULL, NULL, NULL, NULL, NULL, '65DCHT20265', NULL, 1618, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1206, NULL, NULL, NULL, NULL, NULL, NULL, '66DCHT21331', NULL, 1619, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1207, NULL, NULL, NULL, NULL, NULL, NULL, '66DCHT21372', NULL, 1620, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1208, NULL, NULL, NULL, NULL, NULL, NULL, '66DCHT22131', NULL, 1621, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1209, NULL, NULL, NULL, NULL, NULL, NULL, '66DCHT21931', NULL, 1622, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1210, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20001', NULL, 1623, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1211, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20010', NULL, 1624, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1212, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20029', NULL, 1625, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1213, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20052', NULL, 1626, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1214, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20053', NULL, 1627, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1215, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20061', NULL, 1628, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1216, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20067', NULL, 1629, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1217, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20071', NULL, 1630, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1218, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20076', NULL, 1631, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1219, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20075', NULL, 1632, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1220, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20099', NULL, 1633, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1221, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20097', NULL, 1634, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1222, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20126', NULL, 1635, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1223, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20131', NULL, 1636, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1224, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20164', NULL, 1637, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1225, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20166', NULL, 1638, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1226, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20013', NULL, 1639, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1227, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20016', NULL, 1640, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1228, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20069', NULL, 1641, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1229, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20081', NULL, 1642, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1230, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20079', NULL, 1643, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1231, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20091', NULL, 1644, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1232, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20105', NULL, 1645, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1233, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20108', NULL, 1646, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1234, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20109', NULL, 1647, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1235, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20120', NULL, 1648, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1236, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20130', NULL, 1649, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1237, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20006', NULL, 1650, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1238, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20005', NULL, 1651, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1239, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20018', NULL, 1652, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1240, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20030', NULL, 1653, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1241, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20031', NULL, 1654, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1242, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20033', NULL, 1655, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1243, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20043', NULL, 1656, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1244, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20046', NULL, 1657, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1245, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20062', NULL, 1658, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1246, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20078', NULL, 1659, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1247, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20095', NULL, 1660, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1248, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20100', NULL, 1661, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1249, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20117', NULL, 1662, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1250, NULL, NULL, NULL, NULL, NULL, NULL, '67DCHT20121', NULL, 1663, '2020-05-25 08:03:05', '2020-05-25 08:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chuyennganh_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `tenbaiviet`, `noidung`, `slug`, `avatar`, `chuyennganh_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Đại học Công nghệ GTVT hỗ trợ học sinh lớp 12 ôn tập thi THPT Quốc gia năm 2020 trong mùa dịch Covid- 19', '<h2>Nhằm hỗ trợ học sinh phổ th&ocirc;ng chuẩn bị thi THPT Quốc gia năm 2020 trong khi diễn biến dịch Covid- 19 vẫn diễn biến phức tạp, học sinh kh&ocirc;ng đến trường học tập trung theo chương tr&igrave;nh học tập, Trường Đại học C&ocirc;ng nghệ GTVT đ&atilde; triển khai chương tr&igrave;nh&nbsp;&quot;Đồng h&agrave;nh c&ugrave;ng học sinh lớp 12 &ocirc;n tập thi THPT Quốc gia năm 2020 trong m&ugrave;a dịch Covid- 19&quot;</h2>\r\n\r\n<p>Theo đ&oacute;, Chương tr&igrave;nh được tổ chức trong 4 th&aacute;ng, bắt đầu từ th&aacute;ng 4 đến hết th&aacute;ng 7/2020. Mỗi tuần sẽ c&oacute; 4 m&ocirc;n To&aacute;n, L&yacute;, H&oacute;a, Tiếng Anh được hướng dẫn &ocirc;n tập theo chủ đề v&agrave; được ph&aacute;t trực tiếp v&agrave;o 21h h&agrave;ng ng&agrave;y tr&ecirc;n Fanpage&nbsp;utt.vn&nbsp;v&agrave; k&ecirc;nh Youtube uttchannel của Trường.</p>\r\n\r\n<p>Song song đ&oacute;, để gi&uacute;p cho học sinh vừa &ocirc;n luyện củng cố kiến thức vừa l&agrave;m quen v&agrave; c&oacute;&nbsp;kỹ năng để giải c&aacute;c đề thi minh họa theo cấu tr&uacute;c đề thi THPT Quốc gia năm 2020 của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo, Nh&agrave; trường cũng tổ chức cuộc thi &quot;Giải thử đề- B&ecirc; qu&agrave; thật&quot; với nhiều giải thưởng c&oacute; gi&aacute; trị l&ecirc;n đến h&agrave;ng chục triệu đồng, mỗi tuần học sinh sẽ giải thử một đề thi v&agrave; sẽ được c&aacute;c thầy c&ocirc; hướng dẫn, trao giải v&agrave;o tuần kế tiếp.</p>', 'dai-hoc-cong-nghe-gtvt-ho-tro-hoc-sinh-lop-12-on-tap-thi-thpt-quoc-gia-nam-2020-trong-mua-dich-covid-19-1589359204', '10669296_845408362170566_4708406917128685675_o_1589359204.jpg', 1, 9, '2020-05-01 06:36:29', '2020-05-13 01:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT 3,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lai Nguyễn Đức', 'kenchivas1998@gmail.com', NULL, '$2y$10$YiIs1u/hZd0TKm2EsYuF0uWFXPUWmnxFPMJFg4ABZ.YN3uG1drRTm', 1, NULL, '2020-04-28 01:48:59', '2020-05-03 21:28:27'),
(2, 'Lai Nguyễn Đức', 'nguyenduclai.utt@gmail.com', NULL, '$2y$10$bAlPE42qpVUtNqHdfsuTI.HC5Da2pQUCx17pkal1ci7lcZVPQR8aC', 3, NULL, '2020-04-30 19:13:10', '2020-04-30 19:13:10'),
(9, 'Lai', 'williamlongworth@my.smccd.edu', NULL, '$2y$10$Osq/QgkLkuD/Ke07H9ikgOaSdHEcNir.ggO/8EhhP1G4dvR1Rctky', 3, NULL, '2020-04-30 19:25:24', '2020-04-30 19:25:24'),
(10, 'test', 'kenchivas1998@gmail.comtest', NULL, '$2y$10$u3dHDw6ucIWgL5iL68XGsecXNr./JBFbVV89mGzSoXMxkMtmSKPXy', 2, NULL, '2020-05-05 02:31:30', '2020-05-05 02:31:30'),
(12, 'nguyenduclai', 'nguyenduclai.utt1@gmail.com', NULL, '$2y$10$Ngo0s5mOo6ES7FU2A8GUtuwoHUj58CTe6uu8/Qcoxa/T4K5w0d34C', 3, NULL, '2020-05-16 20:09:23', '2020-05-16 20:09:23'),
(13, 'tester', 'tester.utt@gmail.com', NULL, '$2y$10$15Jbv5CGKE4/HkUDXdRDtOKEZJeqQkHV1mmVMGT1bimELp.kDR2OG', 3, NULL, '2020-05-17 01:50:48', '2020-05-17 01:50:48'),
(14, 'Giao vien 1', 'giaovien1@gmail.com', NULL, '$2y$10$O/N6GWRxDhXUqPuJo00xs.oFtbyYYdm2/vwl/F41/je5cAVUOiYpq', 2, NULL, '2020-05-17 01:53:45', '2020-05-17 01:53:45'),
(1618, 'PHAN KHÁNH LINH', NULL, NULL, '$2y$10$MYZb1fHsSGMHp.KVpYdijOU.tVZz.TikHeB2WTgoZ/YN2XmV3xYcC', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1619, 'CAO NGỌC TUẤN ANH', NULL, NULL, '$2y$10$.l2unxq82O6ZwnACvwCuiuqzIBOlwqeIbkXpaOInLly4GfsNA8C8O', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1620, 'NGUYỄN HUY HOÀNG', NULL, NULL, '$2y$10$A.ZXjXotzOIjEjrZvFPf7uVsWmkkEysi3znKYc3I00M2eItHhJG6u', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1621, 'NGUYỄN ĐĂNG HUẾ', NULL, NULL, '$2y$10$1WIsuNLfYKeZ5zQ55eN91udRGjR0Fu2T0cDMWeRU21iLnp0k6NxgC', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1622, 'ĐỖ QUANG NAM', NULL, NULL, '$2y$10$m0t8G3PrSbHbYRUYYoyOgu.xtvvqW2ptGIjCmkzOsRDElvgeJogU2', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1623, 'ĐINH THÀNH AN', NULL, NULL, '$2y$10$iTPrjE1KQK7kdt6CRUEfneagPVt6cnjmsAt76yI/NZJo4yDX0C0K6', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1624, 'TRỊNH VIỆT ANH', NULL, NULL, '$2y$10$F32MnqqbLIuJGQDmyhffGuh.FoUmbKZdqvWNl4FSJ2GzmcN1.SxNK', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1625, 'VŨ XUÂN DUY', NULL, NULL, '$2y$10$0RzZZQ89Qs3gcobgzLVtP./tOAUjjln9f1a7zxoB7uy5a7J92IgO.', 3, NULL, '2020-05-25 08:03:01', '2020-05-25 08:03:01'),
(1626, 'HÀ TRỌNG HOÀNG', NULL, NULL, '$2y$10$p3XocoXEhV.JBIZ2QvKkeu72n9dyMahY0pM2/wpPJSzVxMdgIEJuy', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1627, 'LÃ VĂN HOÀNG', NULL, NULL, '$2y$10$ZEJK4xywDqc7Rdc29w2Fl.gv0w1mfpDrTukPuqtBthw3Cf5fT5bTC', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1628, 'ĐỖ MINH HÙNG', NULL, NULL, '$2y$10$iG9qCLhG9Rtz1OTu0qI8RuXhSIRRPpup6q2cfBD.d5W.KxikxuBgG', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1629, 'NGUYỄN QUANG HUY', NULL, NULL, '$2y$10$1syzjqPka92YAI7tsDJLWusVMftyunxRqHHH00Ty2conneoqon3OC', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1630, 'NGUYỄN QUANG HUY', NULL, NULL, '$2y$10$v.c/QB1HrE0RSd4Mix7jseD4tCf/921UpqkUH0FrxRkoYxtGtTrW6', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1631, 'ĐẶNG NGỌC KHÁNH', NULL, NULL, '$2y$10$srHNpI9GJaXi2ek9FfmExO2gYLASO/nNDdl0ozjAeW6GKTmconmSC', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1632, 'TRƯƠNG QUANG KHÁNH', NULL, NULL, '$2y$10$QW0dU0XgxIAKzP/S/G2m8OksXy3k0gOMUN28H0zXDHf27xScLe9lG', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1633, 'NGUYỄN THẾ NAM', NULL, NULL, '$2y$10$ey0SDusDVu2tRzMiCBv99O7y3yCrQs2shHaoSHMXMNSyRXAs9iQu.', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1634, 'PHẠM VĂN NAM', NULL, NULL, '$2y$10$nw7MMjug/p2W6ElfuzyCbupTroYQ7XkgySw0IlE9snx4mWcG5Q54i', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1635, 'LÊ NGUYỄN NGỌC SƠN', NULL, NULL, '$2y$10$2MVuufJXDBFqk7qVxH9jJ.9P57XaU8naTbVVcGB0cPj8.nA7gAiY6', 3, NULL, '2020-05-25 08:03:02', '2020-05-25 08:03:02'),
(1636, 'ĐỖ TRUNG TẤN', NULL, NULL, '$2y$10$o7RuNAqCOAV/ebWu1Uc6TeuxPJTOTl0MMRcn5oCTTFpol.2axEFiG', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1637, 'ĐẶNG THỊ VÂN', NULL, NULL, '$2y$10$QdWjEJ9OTjY/511IXSMdRe44jil7LWjoUT39jqPCDzKo0pXmPD7bW', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1638, 'NGUYỄN ĐÌNH  VŨ', NULL, NULL, '$2y$10$PrdSY3AhjasskqJA1doX9OtCLUXA1/qIlYXH4/bMFpnOuftLSHS/u', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1639, 'BÙI THỊ BÍCH', NULL, NULL, '$2y$10$84NE1br2BBdiyQSGKlWfs.29HgFCkAgBAXShb6bfAvwvmLbiielxW', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1640, 'TRỊNH THẾ CHIỀU', NULL, NULL, '$2y$10$20.R8mCFbxQDUeW82j/HQ.7uK1LibQZr3XrPqzzojD10V5eDjKm0u', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1641, 'NGUYỄN MẠNH HUY', NULL, NULL, '$2y$10$8yIIYJs3fo0wcJxN6je3FOL83fmqY089kwlZTuy.BLf7PGOIb4EmS', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1642, 'HOÀNG VĂN LÃM', NULL, NULL, '$2y$10$/2Jq9/IxakWHjtPW.bAMXuXrgXQLzr4No1jQYETJAjjNw0PCa6qN.', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1643, 'TRẦN VĂN LÂM', NULL, NULL, '$2y$10$bfrxrFPrXEv9k.1zqOwg7u8NiweSbXXQ/Hz7YXIumFwGefy124hGO', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1644, 'HÀ TIẾN MẠNH', NULL, NULL, '$2y$10$ED9TsE00uRnv.VDkAe.LEuJi2.WTNnFR8Np73oif9dMBhhxGLPN0G', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1645, 'VŨ CÔNG NGỌC', NULL, NULL, '$2y$10$mkeDE6wvu5/0Jnk3c/UFae7R10AS5YH0lcxufMs.kZtnJA9Jst62.', 3, NULL, '2020-05-25 08:03:03', '2020-05-25 08:03:03'),
(1646, 'NGUYỄN VĂN NINH', NULL, NULL, '$2y$10$KKoI9O8l9vryVVs81BNhf.nTjfusxkstoFUVyWkeccRE/FnqCniF.', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1647, 'LÊ HỒNG PHONG', NULL, NULL, '$2y$10$I9AhJZGMHjfWBX0QyWrJned3CjONVxNzZnS.g5ODp.INyl9fUiV0y', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1648, 'VŨ MINH QUANG', NULL, NULL, '$2y$10$5zhfGy1sJvMxtfHZJtxhxezIil57IpQrkL8Q86bEfYkxWZhTPCkY2', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1649, 'NGUYỄN VĂN TẤN', NULL, NULL, '$2y$10$C44Pn6ISVd64OSO8Fb/bH.WmTUsZHfFk5S7bpxPgpYirDBie9/u5G', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1650, 'NGUYỄN VIỆT ANH', NULL, NULL, '$2y$10$4HK.rA6a4MqgQNT2P8KmcOevF/VwFH1TVQthixJ5qek3u5BZp/Sxm', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1651, 'PHAN VIỆT ANH', NULL, NULL, '$2y$10$U42prBfBJItmLTQ5Ii6vb.Em9NlCYaOQEP0u/QMNvOynRWtwKZHl.', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1652, 'DƯƠNG MINH CÔNG', NULL, NULL, '$2y$10$tCLcvDgnWPD8BjvqdXIqbuEcpeRvvSZUyK11CtAateFcXwo3hjUcS', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1653, 'NGUYỄN THỌ ĐẶNG', NULL, NULL, '$2y$10$mcUTYoPvlFG361PkoYhRMuCXLVZbMdAZ3kSOiGwn5VK9T3yKkel7W', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1654, 'NGUYỄN TIẾN ĐẠT', NULL, NULL, '$2y$10$vz77zY/oAkhm1xfiwUT.wusVIAhefIuEF0mV5G8gLN0YVX5VoIHly', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1655, 'TẠ THÀNH ĐẠT', NULL, NULL, '$2y$10$koR4yybclNnmIaLw3QjA/.7VDw4/7ZPvm2ZrM.vdF2OrAaHuJX5xK', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1656, 'ĐÀM CÔNG HIẾN', NULL, NULL, '$2y$10$zr7RZUVKU8oSWpkG4LPDVOvcrT72Zm5GsGpFm1savJbcT.UBWJAfS', 3, NULL, '2020-05-25 08:03:04', '2020-05-25 08:03:04'),
(1657, 'NGÔ TRUNG HIẾU', NULL, NULL, '$2y$10$YKjRlSE3iVMiMpNkEkWYceSvWAPtJuu45yZV0pFU4VezF/prGze2u', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1658, 'NGUYỄN TRUNG HÙNG', NULL, NULL, '$2y$10$xaSGqvO1qTud5dhVYEQVGe3MdPRRbk6vFB/3CJMVy3Bz31y99ii9a', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1659, 'NGUYỄN ĐỨC LAI', NULL, NULL, '$2y$10$FJLJUJPqJ9rJyxt9JtOJE.V.vYRC5v/cIMQRP4KEBDEARv2x5FAAy', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1660, 'NGUYỄN PHƯƠNG NAM', NULL, NULL, '$2y$10$H5gEf7mg/wmN6q3G1.zn4O14lntBxwh8pGxm9JrAI123sW96Utzhy', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1661, 'NGUYỄN THỊ NGA', NULL, NULL, '$2y$10$GFNzT8j/9V8VWLnegChnvuP5XkJPhW8wMJiGzZdHN0KEkp8AxovMW', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1662, 'TRẦN HỮU QUÂN', NULL, NULL, '$2y$10$5HhzunX23JBPXdrTdpvAwu/pZCvslkM3cHgNuCvZnKe6YnJjWQKZS', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05'),
(1663, 'NGUYỄN PHÚ QUÝ', NULL, NULL, '$2y$10$UAU92T020Z.ZbwDmui2TvOmu8SnZ27P6E.j0jAZJR38eR.FLKqkWy', 3, NULL, '2020-05-25 08:03:05', '2020-05-25 08:03:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detai`
--
ALTER TABLE `detai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detai_chuyennganh_id_foreign` (`chuyennganh_id`),
  ADD KEY `detai_linhvuc_id_foreign` (`linhvuc_id`),
  ADD KEY `detai_user_id_foreign` (`user_id`),
  ADD KEY `detai_sinhvien_id_foreign` (`sinhvien_id`);

--
-- Indexes for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dexuatdetai_chuyennganh_id_foreign` (`chuyennganh_id`),
  ADD KEY `dexuatdetai_linhvuc_id_foreign` (`linhvuc_id`),
  ADD KEY `dexuatdetai_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `linhvuc`
--
ALTER TABLE `linhvuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguyenvong1_user_id_foreign` (`user_id`),
  ADD KEY `nguyenvong1_detai_id_foreign` (`detai_id`),
  ADD KEY `nguyenvong1_detaidexuat_id_foreign` (`detaidexuat_id`),
  ADD KEY `nguyenvong1_linhvuc_id_foreign` (`linhvuc_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `masv` (`masv`),
  ADD KEY `thongtin_user_id_foreign` (`user_id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_user_id_foreign` (`user_id`),
  ADD KEY `tintuc_chuyennganh_id_foreign` (`chuyennganh_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `detai`
--
ALTER TABLE `detai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `linhvuc`
--
ALTER TABLE `linhvuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thongtin`
--
ALTER TABLE `thongtin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1252;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detai`
--
ALTER TABLE `detai`
  ADD CONSTRAINT `detai_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `detai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dexuatdetai`
--
ALTER TABLE `dexuatdetai`
  ADD CONSTRAINT `dexuatdetai_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dexuatdetai_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dexuatdetai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nguyenvong`
--
ALTER TABLE `nguyenvong`
  ADD CONSTRAINT `nguyenvong1_detai_id_foreign` FOREIGN KEY (`detai_id`) REFERENCES `detai` (`id`),
  ADD CONSTRAINT `nguyenvong1_detaidexuat_id_foreign` FOREIGN KEY (`detaidexuat_id`) REFERENCES `dexuatdetai` (`id`),
  ADD CONSTRAINT `nguyenvong1_linhvuc_id_foreign` FOREIGN KEY (`linhvuc_id`) REFERENCES `linhvuc` (`id`),
  ADD CONSTRAINT `nguyenvong1_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `thongtin`
--
ALTER TABLE `thongtin`
  ADD CONSTRAINT `thongtin_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_chuyennganh_id_foreign` FOREIGN KEY (`chuyennganh_id`) REFERENCES `chuyennganh` (`id`),
  ADD CONSTRAINT `tintuc_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
