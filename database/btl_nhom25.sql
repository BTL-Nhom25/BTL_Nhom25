-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 25, 2021 lúc 11:55 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_nhom25`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bus_route`
--

CREATE TABLE `bus_route` (
  `id` int(11) NOT NULL,
  `routeName` varchar(255) NOT NULL,
  `totalBus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bus_route`
--

INSERT INTO `bus_route` (`id`, `routeName`, `totalBus`) VALUES
(1, 'Nam Định <-> Hà Nội', 3),
(3, 'Hải Phòng đến Hưng Yên', 2),
(6, 'Hà Nội - Hà Nam', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `idBus` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `seat` varchar(255) NOT NULL,
  `ngay` date NOT NULL,
  `gio` time NOT NULL,
  `diem_don` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `idBus`, `userName`, `sdt`, `seat`, `ngay`, `gio`, `diem_don`) VALUES
(12, 20, 'tùng', 337882657, '30', '2021-08-19', '22:49:00', 'bx.Nam Định'),
(14, 17, 'tùng', 337882657, '34', '2021-08-19', '11:37:00', 'bx.Nam Định'),
(15, 17, 'tùng', 337882657, '50', '2021-08-19', '11:37:00', 'bx.Nam Định');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ten_khach` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ten_khach`, `mat_khau`, `sdt`, `dia_chi`, `level`) VALUES
(6, 'Nguyễn Thanh Tùng', '', 377882655, 'Nam Định', 0),
(8, 'Vyng', 'b59c67bf196a4758191e42f76670ceba', 352697847, 'Ha Nam', 1),
(25, 'tùng', '202cb962ac59075b964b07152d234b70', 337882657, 'a', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

CREATE TABLE `xe` (
  `id` int(11) NOT NULL,
  `idRoute` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `totalSeat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`id`, `idRoute`, `date`, `time`, `totalSeat`) VALUES
(17, 1, '2021-08-19', '11:37:00', 300),
(20, 6, '2021-08-19', '22:49:00', 30);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bus_route`
--
ALTER TABLE `bus_route`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bus_route`
--
ALTER TABLE `bus_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `xe`
--
ALTER TABLE `xe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
