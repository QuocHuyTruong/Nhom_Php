-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2022 at 05:19 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `AuthorID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AuthorName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`AuthorID`, `AuthorName`, `PhoneNumber`, `Url`) VALUES
('AU-001', 'J.K Rowling', '', 'jk-rowling'),
('AU-002', 'La Quán Trung', '', 'laquantrung'),
('AU-003', 'Thị Nại Am', '', 'thinaiam'),
('AU-004', 'Ngô Thừa Ân', '', 'ngothuaan'),
('AU-005', 'Tào Huyết Cần', '', 'taohuyetcan'),
('AU-006', 'Kim Dung', '', 'kimdung'),
('AU-007', 'Trần Thanh Phong', '', 'tran-thanh-phong'),
('AU-008', 'Roger E. A. Farmer', '', 'roger-e-a-farmer'),
('AU-009', 'Quỳnh Chi', '', 'quynh-chi'),
('AU-010', 'Christine Hà', '', 'christine-ha'),
('AU-011', 'Bill Henderson', '', 'bill-henderson'),
('AU-012', 'Guillem Balague', '', 'Guillem-Balague'),
('AU-013', 'Paul Giran', '', 'paul-giran'),
('AU-014', 'Arnold J Toynbee', '', 'arnold-j-oynbee'),
('AU-015', 'Vladimir Nabokov', '', 'vladimir-nabokov'),
('AU-016', 'Nguyễn Nhật Ánh', '', 'nguyen-nhat-anh'),
('AU-017', 'Herbert P.Bix', '', 'herbert-p-bix'),
('AU-018', 'Nguyễn Khuê', '', 'nguyen-khue'),
('AU-019', 'Paul Knoepfler', '', 'paul-knoepfler'),
('AU-020', 'Michael Talbot', '', 'michael-talbot'),
('AU-021', 'Victor E. Frankl', '', 'victor e. frankl'),
('AU-022', 'Jim Rohn', '', 'jim-rohn'),
('AU-023', 'Nguyễn Hữu Vũ', '', 'nguyen-huu-vu'),
('AU-024', 'Nguyễn Thị Cúc', '', 'nguyen-thi-cuc');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(11) NOT NULL,
  `DiscountPercent` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalSell` int(11) NOT NULL,
  `Avatar` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreateByDate` date DEFAULT NULL,
  `Url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Publisher` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PublicByDate` date DEFAULT NULL,
  `BookCover` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Pages` int(11) DEFAULT NULL,
  `BookDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthorID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProducerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookID`, `BookName`, `Price`, `DiscountPercent`, `Quantity`, `TotalSell`, `Avatar`, `CreateByDate`, `Url`, `Publisher`, `PublicByDate`, `BookCover`, `Pages`, `BookDescription`, `AuthorID`, `ProducerID`) VALUES
('BK-00001', 'Harry Potter và Hòn đá Phù thuỷ', 11000, 10, 0, 20, 'BK-00001.jpg', '2022-10-29', 'harry-potter-va-ham-chua-bi-mat', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00002', 'Harry Potter và Hầm chứa bí mật', 10000, 10, 0, 10, 'BK-00002.jpg', '2022-10-27', 'harry-potter-va-ham-chua-bi-mat', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00003', 'Harry Potter và Tù nhân Azkaban', 10000, 10, 0, 0, 'BK-00003.jpg', '2022-10-30', 'harry-potter-va-tu-nhan-azkaban', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00004', 'Harry Potter và Chiếc cốc lửa', 10000, 10, 8, 22, 'BK-00004.jpg', '2022-10-27', 'harry-potter-va-chiec-coc-lua', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00005', 'Harry Potter và Mệnh lệnh Phượng hoàng', 10000, 10, 10, 0, 'BK-00005.jpg', '2022-10-27', 'harry-potter-va-menh-lenh-phuong-hoang', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00006', 'Harry Potter và Hoàng tử lai', 10000, 10, 10, 0, 'BK-00006.jpg', '2022-10-27', 'harry-potter-va-hoang-tu-lai', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00007', 'Harry Potter và Bảo bối Tử thần', 10000, 10, 10, 0, 'BK-00007.jpg', '2022-10-27', 'harry-potter-va-bao-boi-tu-than', 'NXB Kim Đồng', '2010-05-12', 'Bìa cứng', 200, '', 'AU-001', 'PD-001'),
('BK-00008', 'Khởi Nghiệp Bán Lẻ', 10000, 10, 10000, 0, 'BK-00008.jpg', '2022-10-27', 'khoi-nghiep-ban-le', 'Nhà Xuất Bản Đà Nẵng', '2001-01-11', 'Bìa cứng', 200, 'Sách Khởi Nghiệp', 'AU-007', 'PD-001'),
('BK-00009', 'Cách Nền Kinh Tế Vận Hành', 300000, 10, 100, 0, 'BK-00009.jpg', '2022-10-27', 'cach-nen-kinh-te-van-hanh', 'Nhà Xuất Bản Tri Thức', '2010-05-12', 'Bìa cứng', 300, 'Sách Kinh Tế', 'AU-008', 'PD-001'),
('BK-00010', 'Thủy Hử', 10000, 10, 1000, 0, 'BK-00010.jpg', '2022-10-27', 'thuy-hu', 'Nhà Xuất Bản Văn Học', '2010-05-12', 'Bìa cứng', 200, '', 'AU-003', 'PD-001'),
('BK-00011', 'Tây Du Ký', 30000, 10, 1000, 0, 'BK-00011.jpg', '2022-10-27', 'tay-du-ky', 'NXB Trẻ', '2010-05-12', 'Bìa cứng', 200, '', 'AU-004', 'PD-001'),
('BK-00012', 'Nấu Ăn Gia Đình', 10000, 10, 10, 0, 'BK-00012.jpg', '2022-10-27', 'nau-an-gia-dinh', 'NXB Trẻ', '2010-05-12', 'Bìa cứng', 200, '', 'AU-009', 'PD-001'),
('BK-00013', 'Nấu Ăn Bằng Cả Trái Tim', 10000, 10, 10, 0, 'BK-00013.jpg', '2022-10-27', 'nau-an-bang-ca-trai-tim', 'NXB Hồng Đức', '2010-05-12', 'Bìa cứng', 200, '', 'AU-010', 'PD-001'),
('BK-00014', 'Thoát Khỏi Ung Thư', 10000, 10, 10, 0, 'BK-00014.jpg', '2022-10-27', 'thoat-khoi-ung-thu', 'NXB Văn Hóa', '2010-05-12', 'Bìa cứng', 200, '', 'AU-011', 'PD-001'),
('BK-00015', 'CR7 Hành Trình Lên Đỉnh Thể Giới', 10000, 10, 10, 0, 'BK-00015.jpg', '2022-10-27', 'cr7-hanh-trinh-len-dinh-the-gioi', 'NXB Thể Thao', '2010-05-12', 'Bìa cứng', 200, '', 'AU-012', 'PD-001'),
('BK-00016', 'Tâm Lý Người Dân An Nam', 10000, 10, 10, 0, 'BK-00016.jpg', '2022-10-27', 'tam-ly-nguoi-dan-an-nam', 'NXB Văn Hóa', '2010-05-12', 'Bìa cứng', 200, '', 'AU-013', 'PD-001'),
('BK-00017', 'Nghiên Cứu Lịch Sử Nhân Loại', 10000, 10, 10, 0, 'BK-00017.jpg', '2022-10-27', 'nghien-cu-lich-su-nhan-loai', 'NXB Lịch Sử', '2010-05-12', 'Bìa cứng', 200, '', 'AU-014', 'PD-001'),
('BK-00018', 'Lolita', 10000, 10, 10, 0, 'BK-00018.jpg', '2022-10-27', 'lo-li-ta', 'NXB Văn Hóa', '2010-05-12', 'Bìa cứng', 200, '', 'AU-015', 'PD-001'),
('BK-00019', 'Mắt Biếc', 10000, 10, 10, 0, 'BK-00019.jpg', '2022-10-27', 'mat-biec', 'NXB Văn Hóa', '2010-05-12', 'Bìa cứng', 200, '', 'AU-016', 'PD-001'),
('BK-00020', 'Những Cô Em Gái', 10000, 10, 10, 0, 'BK-00020.jpg', '2022-10-27', 'nhung-co-em-gai', 'NXB Văn Hóa', '2010-05-12', 'Bìa cứng', 200, '', 'AU-016', 'PD-001'),
('BK-00021', 'Tiểu Sử Nhật Hoàng Hirohito', 10000, 10, 10000, 0, 'BK-00021.jpg', '2022-10-27', 'tieu-su-nhat-hoang-hirohito', 'Nhà Xuất Bản Đà Nẵng', '2001-01-11', 'Bìa cứng', 200, 'Sách Khởi Nghiệp', 'AU-017', 'PD-001'),
('BK-00022', 'Biên Niên Tiểu Sử Hồ Chí Minh', 10000, 10, 10000, 0, 'BK-00022.jpg', '2022-10-27', 'tieu-su-ho-chi-minh', 'Nhà Xuất Bản Khoa Học', '2001-01-11', 'Bìa cứng', 200, '', 'AU-018', 'PD-001'),
('BK-00023', 'Tế bào Gốc', 10000, 10, 10000, 0, 'BK-00023.jpg', '2022-10-27', 'te-bao-goc', 'Nhà Xuất Bản Khoa Học', '2001-01-11', 'Bìa cứng', 200, 'Sách Khoa học', 'AU-019', 'PD-001'),
('BK-00024', 'Vũ Trụ Toàn Ảnh', 10000, 10, 10000, 0, 'BK-00024.jpg', '2022-10-27', 'vu-tru-toan-anh', 'Nhà Xuất Bản Khoa Học', '2001-01-11', 'Bìa cứng', 200, 'Sách Khoa học', 'AU-020', 'PD-001'),
('BK-00025', 'Đi Tìm Lẽ Sống', 10000, 10, 10000, 0, 'BK-00025.jpg', '2022-10-27', 'di-tim-le-song', 'Nhà Xuất Bản Đời Sống', '2001-01-11', 'Bìa cứng', 200, 'Sách Đời Sống', 'AU-021', 'PD-001'),
('BK-00026', 'Triết Lý Cuộc Đời', 10000, 10, 10000, 0, 'BK-00026.jpg', '2022-10-27', 'triet-ly-cuoc-doi', 'Nhà Xuất Bản Đời Sống', '2001-01-11', 'Bìa cứng', 200, 'Sách Đời Sống', 'AU-022', 'PD-001'),
('BK-00027', 'Pháp Lý Bất Động Sản', 10000, 10, 10000, 0, 'BK-00027.jpg', '2022-10-27', 'phap-ly-bat-dong-san', 'Nhà Xuất Bản Pháp Luât', '2001-01-11', 'Bìa cứng', 200, 'Sách Pháp Luật', 'AU-023', 'PD-001'),
('BK-00028', 'Đầu Tư Kinh Doanh Bất Động Sản', 10000, 10, 10000, 0, 'BK-00028.jpg', '2022-10-27', 'dau-tu-kinh-doanh-bat-dong-san', 'Nhà Xuất Bản Pháp Luât', '2001-01-11', 'Bìa cứng', 200, 'Sách Pháp Luật', 'AU-024', 'PD-001'),
('BK-00029', 'Tam Quốc Diễn Nghĩa', 10000, 10, 10000, 0, 'BK-00029.jpg', '2022-10-27', 'tam-quoc-dien-nghia', 'NXB Văn Học', '2001-01-11', 'Bìa cứng', 200, 'Sách Văn Học', 'AU-002', 'PD-001'),
('BK-00030', 'Hồng Lâu Mộng', 10000, 10, 10000, 0, 'BK-00030.jpg', '2022-10-27', 'hong-long-mong', 'NXB Văn Học', '2001-01-11', 'Bìa cứng', 200, 'Sách Văn Học', 'AU-005', 'PD-001');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `CategoryID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`CategoryID`, `BookID`) VALUES
('CT-001', 'BK-00008'),
('CT-001', 'BK-00009'),
('CT-002', 'BK-00010'),
('CT-002', 'BK-00011'),
('CT-002', 'BK-00029'),
('CT-002', 'BK-00030'),
('CT-003', 'BK-00012'),
('CT-003', 'BK-00013'),
('CT-004', 'BK-00014'),
('CT-004', 'BK-00015'),
('CT-005', 'BK-00016'),
('CT-005', 'BK-00017'),
('CT-006', 'BK-00001'),
('CT-006', 'BK-00002'),
('CT-006', 'BK-00003'),
('CT-006', 'BK-00004'),
('CT-006', 'BK-00005'),
('CT-006', 'BK-00006'),
('CT-006', 'BK-00007'),
('CT-006', 'BK-00018'),
('CT-006', 'BK-00019'),
('CT-006', 'BK-00020'),
('CT-010', 'BK-00021'),
('CT-010', 'BK-00022'),
('CT-011', 'BK-00023'),
('CT-011', 'BK-00024'),
('CT-012', 'BK-00025'),
('CT-012', 'BK-00026'),
('CT-014', 'BK-00027'),
('CT-014', 'BK-00028');

-- --------------------------------------------------------

--
-- Table structure for table `book_reader`
--
-- Error reading structure for table bookstore.book_reader: #1932 - Table &#039;bookstore.book_reader&#039; doesn&#039;t exist in engine
-- Error reading data for table bookstore.book_reader: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `bookstore`.`book_reader`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CategoryDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CateGroupID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`, `CategoryDescription`, `Url`, `CateGroupID`) VALUES
('CT-001', 'Kinh Tế', '', 'kinh-te', 'GC-001'),
('CT-002', 'Văn Học', '', 'van-hoc', 'GC-001'),
('CT-003', 'Nấu Ăn', '', 'nau-an', 'GC-001'),
('CT-004', 'Sức Khoẻ & Thể Thao', '', 'suc-khoe-the-thao', 'GC-001'),
('CT-005', 'Lịch Sử', '', 'lich-su', 'GC-001'),
('CT-006', 'Tiểu thuyết', '', 'tieu-thuyet', 'GC-002'),
('CT-007', 'Tôn Giáo', '', 'ton-giao', 'GC-002'),
('CT-008', 'Lãng Mạng', '', 'lang-mang', 'GC-002'),
('CT-009', 'Viễn Tưởng', '', 'vien-tuong', 'GC-002'),
('CT-010', 'Tiểu Sử', '', 'tieu-su', 'GC-002'),
('CT-011', 'Khoa Học', '', 'khoa-hoc', 'GC-003'),
('CT-012', 'Đời Sống', '', 'doi-song', 'GC-003'),
('CT-013', 'Hoàn Thiện Bản Thân', '', 'hoan-thien', 'GC-003'),
('CT-014', 'Bất Động Sản', '', 'bat-dong-san', 'GC-003'),
('CT-015', 'Danh Nhân', '', 'doanh-nhan', 'GC-003'),
('CT-016', 'Trinh Thám', '', 'trinh-tham', 'GC-003');

-- --------------------------------------------------------

--
-- Table structure for table `categorygroup`
--

CREATE TABLE `categorygroup` (
  `GroupID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GroupName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorygroup`
--

INSERT INTO `categorygroup` (`GroupID`, `GroupName`) VALUES
('GC-001', 'THỂ LOẠI'),
('GC-002', 'ĐƯỢC YÊU THÍCH NHẤT'),
('GC-003', 'TRỌN BỘ');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CustomerAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gender` bit(1) DEFAULT NULL,
  `Birth` date DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerAddress`, `CustomerName`, `Gender`, `Birth`, `PhoneNumber`, `Email`, `UserID`) VALUES
('CS-001', 'Nha Trang', 'Võ Thành Luân', b'1', '1999-12-23', '03925941345', 'minhhuytruong09@gmail.com', 'US-003'),
('CS-002', 'Nha Trang', 'Tô Phước Thái', b'1', '1991-03-12', '0392594134', 'tpthai@gmail.com', 'US-004'),
('CS-003', 'Nha Trang', 'Trương Hoàng Khoa', b'1', '1999-01-29', '0392594134', 'thkhoa@gmail.com', 'US-005');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `NewsName` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Content` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PostByDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsID`, `NewsName`, `Content`, `PostByDate`) VALUES
('NS-001', 'Bài viết số 1', 'Bài viết này chưa có gì cả', '2022-10-27'),
('NS-002', 'Bài viết số 2', 'Bài viết này chưa có gì cả', '2022-10-27'),
('NS-003', 'Bài viết số 3', 'Bài viết này chưa có gì cả', '2022-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `OrderID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`Quantity`, `Price`, `OrderID`, `BookID`) VALUES
(1, 10000, 'OD-000001', 'BK-00001'),
(1, 10000, 'OD-000001', 'BK-00002'),
(1, 9000, 'OD-000001', 'BK-00005'),
(1, 10000, 'OD-000002', 'BK-00003'),
(1, 10000, 'OD-000002', 'BK-00004'),
(1, 10000, 'OD-000002', 'BK-00015'),
(1, 9000, 'OD-000003', 'BK-00017'),
(1, 90000, 'OD-000004', 'BK-00009'),
(1, 11000, 'OD-000010', 'BK-00015'),
(1, 10000, 'OD-000010', 'BK-00016'),
(1, 10000, 'OD-000011', 'BK-00014'),
(2, 10000, 'OD-000011', 'BK-00019'),
(1, 9000, 'OD-000011', 'BK-00021'),
(4, 9000, 'OD-13', 'BK-00001'),
(4, 9900, 'OD-14', 'BK-00001'),
(3, 9000, 'OD-14', 'BK-00002'),
(4, 9900, 'OD-15', 'BK-00001'),
(3, 9000, 'OD-15', 'BK-00002'),
(4, 9900, 'OD-16', 'BK-00001'),
(3, 9000, 'OD-16', 'BK-00002'),
(4, 9900, 'OD-17', 'BK-00001'),
(3, 9000, 'OD-17', 'BK-00002'),
(2, 9900, 'OD-18', 'BK-00001'),
(2, 9900, 'OD-19', 'BK-00001'),
(5, 9000, 'OD-19', 'BK-00002'),
(2, 9900, 'OD-20', 'BK-00001'),
(5, 9000, 'OD-20', 'BK-00002'),
(3, 9900, 'OD-21', 'BK-00001'),
(5, 9000, 'OD-21', 'BK-00002'),
(1, 9000, 'OD-22', 'BK-00004'),
(1, 9000, 'OD-23', 'BK-00004');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `OrderByDate` date DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Total` int(11) NOT NULL,
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tenkh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `Address`, `OrderByDate`, `Status`, `Notes`, `Total`, `CustomerID`, `PaymentID`, `sdt`, `tenkh`) VALUES
('OD-000001', 'Nha Trang', '2020-06-24', 'Đã duyệt', '', 20000, 'CS-001', 'PM-001', NULL, NULL),
('OD-000002', 'Nha Trang', '2020-06-26', 'Đã duyệt', '', 20000, 'CS-001', 'PM-001', NULL, NULL),
('OD-000003', 'Nha Trang', '2020-06-25', 'Đã duyệt', '', 10000, 'CS-002', 'PM-001', NULL, NULL),
('OD-000004', 'Nha Trang', '2020-06-25', 'Đã duyệt', '', 9000, 'CS-003', 'PM-001', NULL, NULL),
('OD-000010', 'Nha Trang', '2020-06-25', 'Đã duyệt', '', 21000, 'CS-003', 'PM-001', NULL, NULL),
('OD-000011', 'Nha Trang', '2020-06-25', 'Đã hủy', '', 30000, 'CS-003', 'PM-001', NULL, NULL),
('OD-13', 'Nha Trang', '2022-11-27', 'Đã hủy', '', 36000, 'CS-001', 'PM-002', '0392594134', 'Võ Thành Luân'),
('OD-14', 'Nha Trang', '2022-11-30', 'Đã hủy', '', 66600, 'CS-001', 'PM-002', '', 'Võ Thành Luân'),
('OD-15', 'Nha Trang', '2022-11-30', 'Đã hủy', '', 66600, 'CS-001', 'PM-002', '', 'Võ Thành Luân'),
('OD-16', 'Nha Trang', '2022-11-30', 'Đã duyệt', '', 66600, 'CS-001', 'PM-002', '', 'Võ Thành Luân'),
('OD-17', 'Nha Trang', '2022-11-30', 'Đã hủy', '', 66600, 'CS-001', 'PM-002', '0392594134', 'Võ Thành Luân'),
('OD-18', 'Nha Trang', '2022-12-01', 'Đã duyệt', '', 19800, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân'),
('OD-19', 'Nha Trang', '2022-12-01', 'Đã hủy', '', 64800, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân'),
('OD-20', 'Nha Trang', '2022-12-01', 'Đã duyệt', '', 64800, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân'),
('OD-21', 'Nha Trang', '2022-12-01', 'Đã duyệt', '', 74700, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân'),
('OD-22', 'Nha Trang', '2022-12-02', 'Đã duyệt', '', 9000, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân'),
('OD-23', 'Nha Trang', '2022-12-03', 'Đã duyệt', '', 9000, 'CS-001', 'PM-002', '03925941345', 'Võ Thành Luân');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `PaymentName`) VALUES
('PM-001', 'Thanh toán tiền mặt'),
('PM-002', 'Thanh toán qua thẻ ngân hàng');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `ProducerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ProducerName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ProducerAddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FAX` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`ProducerID`, `ProducerName`, `ProducerAddress`, `PhoneNumber`, `FAX`, `Email`, `Website`, `Url`) VALUES
('PD-001', 'Tiki', '', '', '', '', 'tiki.vn', 'tiki');

-- --------------------------------------------------------

--
-- Table structure for table `reader`
--

CREATE TABLE `reader` (
  `ReaderID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ReaderName` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ReaderDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reader`
--

INSERT INTO `reader` (`ReaderID`, `ReaderName`, `ReaderDescription`, `Url`) VALUES
('RD-001', 'Trẻ Em', 'Sách dành cho trẻ em', 'tre-em'),
('RD-002', 'Người Lớn', 'Sách dành cho người lớn', 'nguoi-lon');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ReviewByDate` date DEFAULT NULL,
  `Content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BookID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `ReviewByDate`, `Content`, `BookID`, `CustomerID`) VALUES
('RV-0001', '2022-10-27', 'Sách này hay tuyệt', 'BK-00001', 'CS-001'),
('RV-0002', '2022-10-27', 'Cuốn Harry Potter này đọc hay kinh', 'BK-00001', 'CS-001'),
('RV-3', '2022-12-02', 'demo', 'BK-00001', 'CS-001');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `RoleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RoleName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`RoleID`, `RoleName`) VALUES
('RL-001', 'Quản trị'),
('RL-002', 'Nhân viên'),
('RL-003', 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserName` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedByDate` date DEFAULT NULL,
  `RoleID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `Password`, `CreatedByDate`, `RoleID`) VALUES
('US-001', 'admin', '123456', '2022-10-27', 'RL-001'),
('US-002', 'nv1', '123456', '2022-10-27', 'RL-002'),
('US-003', 'khachhang', '$2y$10$5wHsji4z.EmqjYdRmpWPmuOSY1uGQdhVMj4OoWkRxu/i9BssOI7re', '2020-06-24', 'RL-003'),
('US-004', 'kinothai', '$2y$10$PF1ICHdEvW.3x3fi9rHOUuoxqT5izL3P/Cer1RjtOWRvYNrZQuR5C', '2020-06-27', 'RL-003'),
('US-005', 'gun123456', '$2y$10$OWKHTr7QYVZR/Vig1HTzpu30ATOPvCF0gJpSMFDy/9pBR888kso3a', '2020-07-02', 'RL-003');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `CustomerID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BookID` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`CustomerID`, `BookID`) VALUES
('CS-001', 'BK-00001'),
('CS-001', 'BK-00002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`AuthorID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `ProducerID` (`ProducerID`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`CategoryID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `CateGroupID` (`CateGroupID`);

--
-- Indexes for table `categorygroup`
--
ALTER TABLE `categorygroup`
  ADD PRIMARY KEY (`GroupID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`ProducerID`);

--
-- Indexes for table `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`ReaderID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `BookID` (`BookID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`RoleID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`CustomerID`,`BookID`),
  ADD KEY `BookID` (`BookID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`ProducerID`) REFERENCES `producer` (`ProducerID`) ON DELETE CASCADE;

--
-- Constraints for table `book_category`
--
ALTER TABLE `book_category`
  ADD CONSTRAINT `book_category_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `book_category_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`CateGroupID`) REFERENCES `categorygroup` (`GroupID`) ON DELETE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`PaymentID`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `role` (`RoleID`) ON DELETE CASCADE;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
