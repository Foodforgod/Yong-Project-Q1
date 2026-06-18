-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2026 at 08:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(11) NOT NULL,
  `p_id` bigint(11) NOT NULL,
  `u_id` bigint(11) NOT NULL,
  `cart_id` bigint(11) DEFAULT NULL,
  `date_created` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `qty` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `p_id`, `u_id`, `cart_id`, `date_created`, `qty`) VALUES
(1, 15, 4, 10, '2026-03-27 06:32:39.098797', NULL),
(2, 15, 4, 11, '2026-03-27 06:32:48.322325', NULL),
(3, 15, 4, 11, '2026-03-27 06:32:48.368327', NULL),
(4, 15, 4, 12, '2026-03-30 01:08:43.504527', NULL),
(5, 15, 4, 13, '2026-03-30 02:41:48.753985', NULL),
(6, 15, 4, 14, '2026-03-30 02:49:55.543126', NULL),
(7, 15, 4, 15, '2026-03-30 02:52:06.179598', NULL),
(8, 15, 4, 16, '2026-03-30 03:31:03.076553', NULL),
(9, 15, 4, 17, '2026-03-30 03:31:51.567327', NULL),
(10, 15, 4, 18, '2026-03-30 03:31:51.626330', NULL),
(11, 16, 4, 18, '2026-03-30 03:31:51.632330', NULL),
(12, 16, 4, 18, '2026-03-30 03:31:51.642331', NULL),
(13, 15, 4, 19, '2026-03-30 03:41:09.785255', 1),
(14, 15, 4, 20, '2026-03-30 03:42:44.013644', 1),
(15, 15, 4, 21, '2026-03-30 03:42:44.048646', 1),
(16, 16, 4, 21, '2026-03-30 03:42:44.118650', 1),
(34, 15, 4, 39, '2026-03-31 05:52:23.620924', 1),
(35, 15, 4, 40, '2026-03-31 05:52:23.661074', 1),
(36, 16, 4, 40, '2026-03-31 05:52:23.704094', 1),
(37, 15, 4, 41, '2026-03-31 05:52:23.848823', 1),
(38, 16, 4, 41, '2026-03-31 05:52:23.893784', 1),
(39, 18, 4, 41, '2026-03-31 05:52:23.915347', 1),
(40, 15, 4, 42, '2026-03-31 05:52:23.971151', 1),
(41, 16, 4, 42, '2026-03-31 05:52:23.998727', 1),
(42, 18, 4, 42, '2026-03-31 05:52:24.037619', 1),
(43, 19, 4, 42, '2026-03-31 05:52:24.082103', 1),
(44, 15, 4, 43, '2026-04-01 01:24:12.915566', 1),
(45, 15, 4, 44, '2026-04-01 01:24:12.955600', 1),
(46, 20, 4, 44, '2026-04-01 01:24:12.976082', 2),
(47, 20, 4, 44, '2026-04-01 01:24:12.988069', 2),
(48, 15, 4, 45, '2026-04-01 01:24:13.021844', 1),
(49, 20, 4, 45, '2026-04-01 01:24:13.042748', 2),
(50, 20, 4, 45, '2026-04-01 01:24:13.087951', 2),
(51, 16, 4, 45, '2026-04-01 01:24:13.109456', 1),
(52, 15, 4, 46, '2026-04-01 01:24:13.154181', 1),
(53, 20, 4, 46, '2026-04-01 01:24:13.165839', 2),
(54, 20, 4, 46, '2026-04-01 01:24:13.198341', 2),
(55, 16, 4, 46, '2026-04-01 01:24:13.210304', 1),
(56, 18, 4, 46, '2026-04-01 01:24:13.231759', 1),
(57, 15, 4, 47, '2026-04-01 01:24:13.265333', 1),
(58, 20, 4, 47, '2026-04-01 01:24:13.277007', 2),
(59, 20, 4, 47, '2026-04-01 01:24:13.298428', 2),
(60, 16, 4, 47, '2026-04-01 01:24:13.310322', 1),
(61, 18, 4, 47, '2026-04-01 01:24:13.331791', 1),
(62, 19, 4, 47, '2026-04-01 01:24:13.343724', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_id`
--

CREATE TABLE `cart_id` (
  `id` bigint(11) NOT NULL,
  `cart_id` varchar(255) NOT NULL,
  `c_status` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart_id`
--

INSERT INTO `cart_id` (`id`, `cart_id`, `c_status`, `payment_type`, `amount`, `payment_date`) VALUES
(1, '0132456978', '', '', 0, '2026-04-01 03:01:07'),
(2, '9821653407', '', '', 0, '2026-04-01 03:01:07'),
(3, '8340612795', '', '', 0, '2026-04-01 03:01:07'),
(4, '3ab426c9f0', '', '', 0, '2026-04-01 03:01:07'),
(5, 'd1e07a3598', '', '', 0, '2026-04-01 03:01:07'),
(6, 'a03ce97186', '', '', 0, '2026-04-01 03:01:07'),
(7, 'c6feb02978', '', '', 0, '2026-04-01 03:01:07'),
(8, 'cf9837d5ab', '', '', 0, '2026-04-01 03:01:07'),
(9, 'd190ab283c', '', '', 0, '2026-04-01 03:01:07'),
(10, '650ba12ed4', '', '', 0, '2026-04-01 03:01:07'),
(11, 'f364198dea', '', '', 0, '2026-04-01 03:01:07'),
(12, '3bd09e7a45', '', '', 0, '2026-04-01 03:01:07'),
(13, 'cf3e469b08', '', '', 0, '2026-04-01 03:01:07'),
(14, '84be63102d', '', '', 0, '2026-04-01 03:01:07'),
(15, 'ab8c94612e', '', '', 0, '2026-04-01 03:01:07'),
(16, '29f0d4ec15', '', '', 0, '2026-04-01 03:01:07'),
(17, '8a4537def9', '', '', 0, '2026-04-01 03:01:07'),
(18, '2409d578bc', '', '', 0, '2026-04-01 03:01:07'),
(19, 'f0ac46159b', '', '', 0, '2026-04-01 03:01:07'),
(20, '4562b978fc', '', '', 0, '2026-04-01 03:01:07'),
(21, '60fa78c953', '', '', 0, '2026-04-01 03:01:07'),
(22, 'cdf25e90a8', '', '', 0, '2026-04-01 03:01:07'),
(23, '0761a9dbe8', '', '', 0, '2026-04-01 03:01:07'),
(24, 'f7a24d59ce', '', '', 0, '2026-04-01 03:01:07'),
(25, '3705bace94', '', '', 0, '2026-04-01 03:01:07'),
(26, 'd86013a297', '', '', 0, '2026-04-01 03:01:07'),
(27, 'ec905ab6d8', '', '', 0, '2026-04-01 03:01:07'),
(28, '6914fb780c', '', '', 0, '2026-04-01 03:01:07'),
(29, '8f6c51d3e4', '', '', 0, '2026-04-01 03:01:07'),
(30, 'd98247f3b6', '', '', 0, '2026-04-01 03:01:07'),
(31, '3a1f826745', '', '', 0, '2026-04-01 03:01:07'),
(32, 'd6834205ea', '', '', 0, '2026-04-01 03:01:07'),
(33, '84e750d9c2', '', '', 0, '2026-04-01 03:01:07'),
(34, '7d5f3410a9', '', '', 0, '2026-04-01 03:01:07'),
(35, 'ef532869c0', '', '', 0, '2026-04-01 03:01:07'),
(36, '915d7bf8ca', '', '', 0, '2026-04-01 03:01:07'),
(37, 'c7d583e264', '', '', 0, '2026-04-01 03:01:07'),
(38, '49e56dbcaf', '', '', 0, '2026-04-01 03:01:07'),
(39, '762de1594b', '', '', 0, '2026-04-01 03:01:07'),
(40, '54af76cb01', '', '', 0, '2026-04-01 03:01:07'),
(41, '578c1f0ed9', '', '', 0, '2026-04-01 03:01:07'),
(42, '561f47a980', '', '', 0, '2026-04-01 03:01:07'),
(43, 'a17f2cb385', '', '', 0, '2026-04-01 03:01:07'),
(44, '6f8032c5d9', '', '', 0, '2026-04-01 03:01:07'),
(45, 'b8fe295c37', '', '', 0, '2026-04-01 03:01:07'),
(46, '3c71f2b9ed', '', '', 0, '2026-04-01 03:01:07'),
(47, 'ca76829d0b', '', '', 0, '2026-04-01 03:01:07');

-- --------------------------------------------------------

--
-- Table structure for table `paymentlist`
--

CREATE TABLE `paymentlist` (
  `id` int(11) NOT NULL,
  `payer_name` text CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `amout` decimal(10,0) NOT NULL,
  `payment_date` datetime NOT NULL,
  `status` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `payment_type` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(11) NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `date_update` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `SKU`, `price`, `quantity`, `date_created`, `date_update`) VALUES
(15, 'leon stone', '12000', '1', '2026-03-19 03:09:46', '0000-00-00 00:00:00'),
(16, 'diamond', '1200', '30', '2026-03-19 03:10:35', '0000-00-00 00:00:00'),
(18, 'red stone', '270', '2000', '2026-03-19 03:11:38', '0000-00-00 00:00:00'),
(19, 'green diamond', '2300', '2', '2026-03-19 03:12:24', '0000-00-00 00:00:00'),
(20, 'stone', '15', '100', '2026-03-19 03:12:59', '0000-00-00 00:00:00'),
(21, 'longmoon battery', '1200', '1', '2026-03-19 03:13:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(450) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(450) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `date_create`, `name`, `phone`, `gender`, `email`, `address`) VALUES
(4, '1234genelol', '$2y$10$Mlt3m7ZcUQ798.NFRnnDV.epyjbg.QjHUmPV9Tv8QWUYuhKoTYP/a', '2026-03-12 02:38:03', 'gene', '01128623503', 'male', 'khorco1491@gmail.com', 'a96');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`u_id`),
  ADD KEY `product_id` (`p_id`),
  ADD KEY `cart_id` (`cart_id`);

--
-- Indexes for table `cart_id`
--
ALTER TABLE `cart_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentlist`
--
ALTER TABLE `paymentlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `cart_id`
--
ALTER TABLE `cart_id`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `paymentlist`
--
ALTER TABLE `paymentlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `cart_id` FOREIGN KEY (`cart_id`) REFERENCES `cart_id` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`p_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
