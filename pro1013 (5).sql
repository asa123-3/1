-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2024 at 04:40 AM
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
-- Database: `pro1013`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `answer` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `baikiemtra`
--

CREATE TABLE `baikiemtra` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `day` date NOT NULL,
  `chitiet` text NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `ended_at` date NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `course_id`, `created_at`, `ended_at`, `teacher_id`) VALUES
(27, 'Lớp T001-2KN', 1, '2024-11-22', '2024-12-27', 9),
(28, 'Lớp I001-0-3', 2, '2023-11-26', '2024-12-25', 6),
(29, 'Lớp I001-3-5', 6, '2024-11-07', '2024-12-14', 6),
(36, 'Lớp I001-5-6', 8, '2024-11-06', '2024-12-06', 3),
(37, 'Lớp I001-6-7', 9, '2024-12-05', '2025-01-08', 1),
(38, 'Lớp T001-4KN', 10, '2024-12-03', '2025-03-19', 3),
(39, 'Lớp TACN-CNTT-1', 12, '2025-03-03', '2025-05-15', 2),
(40, 'Lớp TACN-YK-1', 13, '2024-12-05', '2025-04-08', 2),
(41, 'Lớp T002-4KN', 10, '2024-12-04', '2025-02-13', 2),
(42, 'Lớp T003-2KN', 1, '2024-12-01', '2025-04-08', 1),
(43, 'Lớp T004-2KN', 1, '2024-12-04', '2025-03-28', 1),
(44, 'T2KN-099', 1, '2024-12-01', '2024-12-31', 1),
(45, 'T2KN-01234', 1, '2024-12-01', '2024-12-31', 1),
(46, 'T2KN-1245', 1, '2024-12-01', '2024-12-31', 1),
(47, 'T2KN-0981', 1, '2024-12-02', '2024-12-31', 1),
(48, 'T456-2KN', 1, '2024-12-12', '2024-12-31', 1),
(49, 'Lớp TOEIC 2KN - 005', 1, '2024-12-04', '2025-01-04', 1),
(53, 'PTT-01', 11, '2024-12-01', '2024-12-31', 10),
(54, 'PTT-2', 11, '2024-12-04', '2024-12-31', 10),
(55, 'PTT-04', 11, '2024-12-02', '2024-12-31', 10),
(56, 'PTT05', 11, '2024-12-01', '2024-12-31', 10),
(57, 'PTT-09', 11, '2024-12-05', '2025-01-09', 10);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(225) NOT NULL,
  `tomtat` text NOT NULL,
  `soTiet` int(11) NOT NULL,
  `hocphi` int(11) NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `image`, `tomtat`, `soTiet`, `hocphi`, `des`) VALUES
(1, 'TOEIC 2 kỹ năng Listening Reading', 'img/TOEIC.png', '\"AMES cam kết đầu ra tối thiểu 450+ cho các bạn, và nếu như không đạt được, AMES sẽ hỗ trợ bạn học lại cho đến khi thi đạt được 450+ trở lên.\"', 40, 2000000, '<p>\r\n\r\n</p><h1></h1>\r\n\r\n<p></p>'),
(2, 'IELTS sơ sinh (0 - 3.0)', 'img/IELTS-2.png', '\"AMES cam kết đầu ra tối thiểu 3.0 cho các bạn, và nếu như không đạt được, AMES sẽ hỗ trợ bạn học lại cho đến khi thi đạt được 3.0 trở lên.\"', 40, 3000000, '<p>\"AMES cam kết đầu ra tối thiểu 3.0 cho các bạn, và nếu như không đạt được, AMES sẽ hỗ trợ bạn học lại cho đến khi thi đạt được 3.0 trở lên.\"<br></p>'),
(6, 'IELTS Pre (3.0-5.0)', 'img/675384e53c9bb.png', '\"AMES cam kết đầu ra tối thiểu 5.0 cho các bạn, và nếu như không đạt được, AMES sẽ hỗ trợ bạn học lại cho đến khi thi đạt được 5.0 trở lên.\"', 123, 13000000, '<p>\r\n\r\n</p>\"AMES cam kết đầu ra tối thiểu 5.0 cho các bạn, và nếu như không đạt được, AMES sẽ hỗ trợ bạn học lại cho đến khi thi đạt được 5.0 trở lên.\"<br><p></p>'),
(8, 'IELTS Chiến lược (5.0-6.0)', 'img/675385298aaca.png', 'IELTS Chiến lược (5.0-6.0) được AMES đưa vào nhằm mục tiêu hướng đến 6.0', 40, 30, '<p>IELTS Chiến lược (5.0-6.0) được AMES đưa vào nhằm mục tiêu hướng đến 6.0<br></p>'),
(9, 'IELTS Chuyên sâu(6.0-7.0)', 'img/67538564eea71.png', 'IELTS Chuyên sâu(6.0-7.0)', 60, 5000000, '<p>IELTS Chuyên sâu(6.0-7.0)<br></p>'),
(10, 'TOEIC 4 kỹ năng', 'img/675385824a1c6.png', 'TOEIC 4 kỹ năng', 70, 9000000, '<p>TOEIC 4 kỹ năng<br></p>'),
(11, 'Tiếng Anh Chuyên Ngành Hàng Hải', 'img/675385ac5f855.jpg', 'Tiếng Anh Chuyên Ngành Hàng Hải', 50, 6000000, '<p>Tiếng Anh Chuyên Ngành Hàng Hải<br></p>'),
(12, 'Tiếng Anh Chuyên Ngành Công Nghệ Thông Tin', 'img/675385e257c0a.jpg', 'Tiếng Anh Chuyên Ngành Công Nghệ Thông Tin', 50, 5000000, '<p>Tiếng Anh Chuyên Ngành Công Nghệ Thông Tin<br></p>'),
(13, 'Tiếng Anh Chuyên Ngành Y Khoa', 'img/675386407325c.png', 'Tiếng Anh Chuyên Ngành Y Khoa', 70, 7000000, '<p>Tiếng Anh Chuyên Ngành Y Khoa<br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE `dangky` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `diemdauvao` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id`, `student_id`, `course_id`, `class_id`, `created_at`, `diemdauvao`) VALUES
(33, 45, 1, 29, '2018-12-13', 8),
(35, 47, 1, 27, '2018-12-17', 8),
(36, 48, 2, 28, '2018-12-17', 8),
(37, 49, 2, 28, '2018-12-17', 8),
(38, 50, 1, 29, '2018-12-17', 8),
(39, 51, 1, 29, '2018-12-17', 8),
(40, 52, 1, 29, '2018-12-17', 8),
(41, 53, 1, 27, '2018-12-17', 8),
(231, 53, 1, 27, '2019-01-01', 8),
(232, 53, 1, 27, '2019-01-01', 8),
(233, 53, 1, 27, '2019-01-01', 8),
(234, 53, 1, 27, '2019-01-01', 8),
(235, 53, 1, 27, '2019-01-01', 8),
(236, 53, 1, 27, '2019-01-01', 8),
(237, 53, 1, 27, '2019-01-01', 8),
(252, 145, 2, 28, '2024-06-01', 8),
(253, 146, 1, 27, '2024-11-30', 8),
(254, 147, 1, 27, '2024-11-30', 8),
(255, 148, 1, 27, '2024-11-30', 8),
(256, 149, 1, 27, '2024-11-30', 8),
(257, 151, 1, 27, '2024-12-07', 8),
(258, 152, 1, 42, '2024-12-07', 8),
(259, 153, 1, 42, '2024-12-09', 8),
(261, 47, 1, 45, '2024-12-13', 8),
(262, 49, 1, 46, '2024-12-13', 8),
(263, 48, 1, 47, '2024-12-13', 8),
(264, 49, 1, 48, '2024-12-13', 8),
(265, 51, 1, 49, '2024-12-13', 8),
(269, 47, 11, 53, '2024-12-13', 8),
(270, 49, 11, 54, '2024-12-13', 8),
(271, 50, 11, 55, '2024-12-13', 8),
(272, 152, 11, 56, '2024-12-13', 8),
(273, 51, 11, 57, '2024-12-13', 8),
(274, 155, 1, 49, '2024-12-14', 9);

-- --------------------------------------------------------

--
-- Table structure for table `dientu`
--

CREATE TABLE `dientu` (
  `id` int(11) NOT NULL,
  `location` varchar(4000) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dientu`
--

INSERT INTO `dientu` (`id`, `location`, `answer`, `quiz_id`) VALUES
(8, '1', 'clear', 16),
(11, '2', 'shady', 16);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` text NOT NULL,
  `created_at` date NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `title`, `content`, `created_at`, `created_by`) VALUES
(3, 'Tin tức', '<p>Đánh giá hiệu quả học tập tại AMES!</p>', '2024-11-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

CREATE TABLE `feedback_details` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hocphi`
--

CREATE TABLE `hocphi` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hocphi`
--

INSERT INTO `hocphi` (`id`, `student_id`, `class_id`, `amount`, `created_at`, `status`) VALUES
(1, 52, 43, 2000000.00, '2024-12-07 00:33:17', 0),
(2, 153, 42, 2000000.00, '2024-12-08 17:00:00', 1),
(3, 155, 49, 2000000.00, '2024-12-13 17:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `chitiet` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 1,
  `content` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`id`, `name`, `chitiet`, `course_id`, `created_at`, `created_by`, `content`) VALUES
(5, 'Nguyễn Trí Diện12', 'img/pr1-converted.pdf', 1, '2018-12-14', 1, ''),
(6, 'Nguyễn Trí Diện', 'img/sample.pdf', 2, '2018-12-14', 1, ''),
(7, 'Học từ vựng', 'img/sample (1).pdf', 1, '2024-12-07', 1, 'Học từ vựng');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `video` text NOT NULL,
  `tomtat` text NOT NULL,
  `image` varchar(225) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `content`, `video`, `tomtat`, `image`, `user_id`) VALUES
(1, '<p></p>\n<h1><center>Trung tâm Tiếng Anh AMES</center></h1>\n<div><i><center>\"Catching your Future!\"</center></i></div>\n\n<p></p>\n<h3>1. Mục Tiêu</h3><p>Trung tâm Anh ngữ AMES được thành lập vào năm 2020 với mục tiêu giúp người học nâng cao khả năng tiếng Anh, từ giao tiếp cơ bản đến tiếng Anh chuyên ngành. Trung tâm cam kết mang đến môi trường học tập năng động, hiện đại và hiệu quả.</p><h3>2. Cơ sở vật chất</h3><p>Trung tâm AMES tự hào sở hữu cơ sở vật chất hiện đại với các phòng học trang bị đầy đủ thiết bị nghe nhìn, phòng lab thực hành, thư viện tài liệu phong phú và khu vực tự học thoải mái.</p><h3>3. Đội ngũ giảng viên</h3><p>Giảng viên tại Trung tâm Anh ngữ AMES đều có trình độ cao, giàu kinh nghiệm và đam mê giảng dạy. Nhiều giảng viên là người bản ngữ hoặc đã từng học tập, làm việc tại các nước nói tiếng Anh.</p><h3>4. Phương pháp giảng dạy</h3><p>Trung tâm áp dụng các phương pháp giảng dạy tiên tiến, kết hợp giữa lý thuyết và thực hành. Các buổi học luôn khuyến khích học viên tham gia thảo luận, làm việc nhóm và thực hành ngôn ngữ qua các hoạt động tương tác.</p>\n<p></p>\n<p><center><i>Copyright by AMES 2024</i></center></p>\n<p></p><p></p>', '<div class=\"embed-responsive embed-responsive-16by9\">                                         <iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BMAqrBHig5U\" frameborder=\"0\" allow=\"accelerometer; en', 'Chị Nguyễn Hồng Hạnh (Thuỷ Nguyên, HP) Tôi rất tin tưởng vào chất lượng dạy và học tại AMES. Các thầy cô có phương pháp giảng dạy tốt, đồ dùng dạy học rất phong phú. Hai cháu nhà tôi đã học tại đây 4 năm rồi, cứ đến thứ Bảy, Chủ Nhật là các cháu lại háo hức đến trung tâm để học với các thầy cô giáo nước ngoài. chị Nguyễn Hồng Hạnh (Thuỷ Nguyên, HP)  Tôi rất tin tưởng vào chất lượng dạy và học tại AMES. Các thầy cô có phương pháp giảng dạy tốt, đồ dùng dạy học rất phong phú. Hai cháu nhà tôi đã học tại đây 4 năm rồi, cứ đến thứ Bảy, Chủ Nhật là các cháu lại háo hức đến trung tâm để học với các thầy cô giáo nước ngoài.', 'img/welcome-1.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(225) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `A` varchar(225) NOT NULL,
  `B` varchar(225) NOT NULL,
  `C` varchar(225) NOT NULL,
  `D` varchar(225) NOT NULL,
  `isCorrect` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `quiz_id`, `A`, `B`, `C`, `D`, `isCorrect`) VALUES
(81, 'Who is Messi', 15, 'Footballer', 'Ronaldo', 'Lỏ', 'Pickleball', 'B'),
(82, 'Alo', 15, '1', '2', '3', '4', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `type` int(11) NOT NULL,
  `content` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`, `course_id`, `created_at`, `type`, `content`) VALUES
(15, 'Bài test đầu vào', 1, '2024-12-13', 1, ''),
(16, 'Điền từ 1', 2, '2024-12-13', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `code` int(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `icons` varchar(225) NOT NULL,
  `link` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `code`, `name`, `icons`, `link`) VALUES
(1, 0, 'Điểm danh', 'fa fa-check-square-o', 'lop'),
(2, 0, 'Bảng điểm', 'fa fa-pencil-square-o', 'hocvien'),
(3, 0, 'Thời khóa biểu', 'fa fa-table active', 'thoikhoabieu'),
(4, 0, 'Bài tập', 'fa fa-file-text', 'baitap'),
(5, 1, 'Lớp học', 'fa fa-university', 'lop'),
(7, 1, 'Thời khóa biểu', 'fa fa-table', 'thoikhoabieu'),
(8, 1, 'Bài tập', 'fa fa-file-text', 'baitap'),
(9, 500, 'Khóa học', 'fa fa-book', 'khoahoc'),
(10, 500, 'Lớp học', 'fa fa-university', 'lop'),
(11, 500, 'Giáo viên', 'fa fa-users', 'giaovien'),
(14, 500, 'Khách hàng', 'fa fa-user-circle-o', 'khachhang'),
(15, 500, 'Nhân viên', 'fa fa-users', 'nhanvien'),
(16, 500, 'Thời khóa biểu', 'fa fa-table', 'thoikhoabieu'),
(17, 500, 'Bài tập', 'fa fa-file-text', 'baitap'),
(18, 500, 'Học viên', 'fa fa-user-plus', 'hocvien'),
(19, 500, 'Slideshow', 'fa fa-file-image-o', 'anh'),
(20, 500, 'Feedback', 'fa fa-share', 'feedback'),
(21, 500, 'Cấu hình', 'fa fa-cog', 'cau-hinh'),
(22, 500, 'Phòng học', 'fa fa-home', 'phong'),
(23, 500, 'Quiz', 'fa-desktop', 'quiz'),
(24, 0, 'Quiz', 'fa-desktop', 'quiz'),
(25, 500, 'Học phí', 'fa fa-credit-card', 'hocphi');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `des` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `des`, `status`) VALUES
(1, 'P01', '', 1),
(2, 'P02', '', 1),
(4, 'P03', '', 1),
(5, 'P04', '', 1),
(6, 'P05', '', 1),
(7, 'P06', '', 1),
(8, 'P07', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `quiz_id`, `student_id`, `score`, `created_at`) VALUES
(2, 15, 47, 0, '2024-12-14 03:17:43'),
(3, 15, 47, 0, '2024-12-14 03:17:52'),
(4, 15, 47, 1, '2024-12-14 03:17:57'),
(5, 15, 47, 1, '2024-12-14 03:18:30'),
(6, 15, 47, 1, '2024-12-14 03:18:31'),
(7, 16, 47, 0, '2024-12-14 03:20:57'),
(8, 16, 47, 0, '2024-12-14 03:22:14'),
(9, 16, 47, 0, '2024-12-14 03:22:19'),
(10, 16, 47, 0, '2024-12-14 03:22:27'),
(11, 16, 47, 0, '2024-12-14 03:22:27'),
(12, 15, 47, 1, '2024-12-14 03:23:08');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `first_test` float DEFAULT NULL,
  `secord_test` float DEFAULT NULL,
  `final_test` float DEFAULT NULL,
  `diemTB` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `student_id`, `course_id`, `teacher_id`, `first_test`, `secord_test`, `final_test`, `diemTB`) VALUES
(263, 151, 1, NULL, NULL, NULL, NULL, 0),
(264, 152, 1, NULL, NULL, NULL, NULL, 0),
(265, 153, 1, NULL, NULL, NULL, NULL, 0),
(266, 155, 1, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `name`, `time`) VALUES
(1, 'Ca 1', '7h15p-9h15p'),
(2, 'Ca 2', '9h20p-11h20p'),
(3, 'Ca 3', '12h-2h'),
(4, 'Ca 4', '2h10p-4h10p'),
(5, 'Ca 5', '4h20p-6h20p');

-- --------------------------------------------------------

--
-- Table structure for table `slideshows`
--

CREATE TABLE `slideshows` (
  `id` int(11) NOT NULL,
  `image` varchar(225) NOT NULL,
  `des` varchar(225) DEFAULT NULL,
  `url` varchar(225) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `order_number` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `slideshows`
--

INSERT INTO `slideshows` (`id`, `image`, `des`, `url`, `status`, `order_number`, `created_by`) VALUES
(1, 'img/ames.jpg', '', 'https://www.youtube.com/watch?v=egffwuJ0xko', 1, 1, 5),
(2, 'img/banner-web-ie-k-kho-01.jpg', NULL, 'http://localhost/pro1013/admin/anh/edit.php?id=2', 1, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `avatar` varchar(200) DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `gender` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `role` int(225) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `email`, `password`, `fullname`, `avatar`, `gender`, `date`, `address`, `phone`, `status`, `role`) VALUES
(47, 'hocvien@fpt.edu.vn', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Nguyễn Trí Vinh', 'img/29541772703_6ed8b50c47_b.jpg', 0, '2001-06-20', '9 Hàng Buồm', '1698060479', 1, 0),
(48, 'dien@gmail.com', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Hoàng Ngọc Long', 'img/29541772703_6ed8b50c47_b.jpg', 1, '2000-11-22', '9 Hàng Buồm', '1698060479', 1, 0),
(49, 'phubui2702@gmail.com123123123123', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Bùi Hoàng Phú', 'img/29541772703_6ed8b50c47_b.jpg', 1, '2003-01-22', '9 Hàng Mã', '1698060479', 1, 0),
(50, 'dienntph06483111@fpt.edu.vn', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Trương Tuấn Tú', 'img/29541772703_6ed8b50c47_b.jpg', 1, '1999-01-22', '22 Hàng Kênh', '1698060479', 1, 0),
(51, 'thentph06484@fpt.edu.vn', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Nguyễn Trí Thiện', 'img/29541772703_6ed8b50c47_b.jpg', 1, '2001-04-22', '221 Hàng Kênh', '1698060479', 1, 0),
(52, 'dienntph06483@fpt.edu.vn1', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Nguyễn Hồng Vân', 'img/29541772703_6ed8b50c47_b.jpg', -1, '2004-04-22', '9 Hàng Chài', '1698060479', 1, 0),
(53, 'phubui2702@gmail.com12312312312311', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Bùi Sơn Phú', 'img/29541772703_6ed8b50c47_b.jpg', 1, '2005-05-20', '221 Hàng Kênh', '1698060479', 1, 0),
(145, 'aphrodite7755@gmail.com', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Quân', 'img/29541772703_6ed8b50c47_b.jpg', 1, '2024-11-07', '12 Lê Duẩn, HN', '0934303295', 1, 0),
(150, '2', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', '1', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, '4', '3', 0, 0),
(151, 'phamminhhiep0402@gmail.com', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Pham Minh Hiep', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0912345678', 1, 0),
(152, 'phamminhhiep0402@gmail.com', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Pham Minh Hiep', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0912345667', 1, 0),
(153, 'lvd@gmail.com', '$2a$12$WbgSz.gbX2XJC5MxyseblOmH9tcl3vPMwnfGlrVkRkIypw5lYioF.', 'Lê Văn Đức', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0912345677', 1, 0),
(154, 'pvh@gmail.com', '$2y$10$7ADdWZJGLL3qZCBMxbZz8uHPWJruwN35mBNXKKclNNziQzIb7qOPW', 'Phan Văn Hải', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0912312312', 0, 0),
(155, 'pvh@gmail.com', '$2y$10$.AofozM6z8liEw21TJJ62eciQDWwEnNUh0R1yAnq0uqw06q.ZiBkK', 'Phan Văn Hải', 'img/29541772703_6ed8b50c47_b.jpg', NULL, NULL, NULL, '0912345667', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_check`
--

CREATE TABLE `student_check` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `num_check` int(11) NOT NULL DEFAULT -1,
  `timetable_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_check`
--

INSERT INTO `student_check` (`id`, `student_id`, `teacher_id`, `status`, `num_check`, `timetable_id`) VALUES
(770, 152, 10, 1, 0, 1378),
(771, 152, 10, 0, 0, 1379),
(772, 152, 10, 0, 0, 1380),
(773, 152, 10, 0, 0, 1381),
(774, 152, 10, 0, 0, 1382),
(775, 152, 10, 0, 0, 1383),
(776, 152, 10, 0, 0, 1384),
(777, 152, 10, 0, 0, 1385),
(778, 152, 10, 0, 0, 1386),
(779, 152, 10, 0, 0, 1387),
(780, 152, 10, 0, 0, 1388),
(781, 152, 10, 0, 0, 1389),
(782, 152, 10, 0, 0, 1390),
(783, 152, 10, 0, 0, 1391),
(784, 152, 10, 0, 0, 1392),
(785, 152, 10, 0, 0, 1393),
(786, 152, 10, 0, 0, 1394),
(787, 152, 10, 0, 0, 1395),
(788, 152, 10, 0, 0, 1396),
(789, 152, 10, 0, 0, 1397),
(790, 152, 10, 0, 0, 1398),
(791, 152, 10, 0, 0, 1399),
(792, 152, 10, 0, 0, 1400),
(793, 152, 10, 0, 0, 1401),
(794, 152, 10, 0, 0, 1402),
(795, 152, 10, 0, 0, 1403),
(796, 152, 10, 0, 0, 1404),
(797, 152, 10, 0, 0, 1405),
(798, 152, 10, 0, 0, 1406),
(799, 152, 10, 0, 0, 1407),
(800, 152, 10, 0, 0, 1408),
(801, 152, 10, 0, 0, 1409),
(802, 152, 10, 0, 0, 1410),
(803, 152, 10, 0, 0, 1411),
(804, 152, 10, 0, 0, 1412),
(805, 152, 10, 0, 0, 1413),
(806, 152, 10, 0, 0, 1414),
(807, 152, 10, 0, 0, 1415),
(808, 152, 10, 0, 0, 1416),
(809, 152, 10, 0, 0, 1417),
(810, 152, 10, 0, 0, 1418),
(811, 152, 10, 0, 0, 1419),
(812, 152, 10, 0, 0, 1420),
(813, 152, 10, 0, 0, 1421),
(814, 152, 10, 0, 0, 1422),
(815, 152, 10, 0, 0, 1423),
(816, 152, 10, 0, 0, 1424),
(817, 152, 10, 0, 0, 1425),
(818, 152, 10, 0, 0, 1426),
(819, 152, 10, 0, 0, 1427),
(820, 152, 10, 0, 0, 1428),
(821, 152, 10, 0, 0, 1429),
(822, 152, 10, 0, 0, 1430),
(823, 51, 10, 0, 0, 1431),
(824, 51, 10, 1, 0, 1432),
(825, 51, 10, 0, 0, 1433),
(826, 51, 10, 0, 0, 1434),
(827, 51, 10, 0, 0, 1435),
(828, 51, 10, 0, 0, 1436),
(829, 51, 10, 0, 0, 1437),
(830, 51, 10, 0, 0, 1438),
(831, 51, 10, 0, 0, 1439),
(832, 51, 10, 0, 0, 1440),
(833, 51, 10, 0, 0, 1441),
(834, 51, 10, 0, 0, 1442),
(835, 51, 10, 0, 0, 1443),
(836, 51, 10, 0, 0, 1444),
(837, 51, 10, 0, 0, 1445),
(838, 51, 10, 0, 0, 1446),
(839, 51, 10, 0, 0, 1447),
(840, 51, 10, 0, 0, 1448),
(841, 51, 10, 0, 0, 1449),
(842, 51, 10, 0, 0, 1450),
(843, 51, 10, 0, 0, 1451),
(844, 51, 10, 0, 0, 1452),
(845, 51, 10, 0, 0, 1453),
(846, 51, 10, 0, 0, 1454),
(847, 51, 10, 0, 0, 1455),
(848, 51, 10, 0, 0, 1456),
(849, 51, 10, 0, 0, 1457),
(850, 51, 10, 0, 0, 1458),
(851, 51, 10, 0, 0, 1459),
(852, 51, 10, 0, 0, 1460),
(853, 51, 10, 0, 0, 1461),
(854, 51, 10, 0, 0, 1462),
(855, 51, 10, 0, 0, 1463),
(856, 51, 10, 0, 0, 1464),
(857, 51, 10, 0, 0, 1465),
(858, 51, 10, 0, 0, 1466),
(859, 51, 10, 0, 0, 1467),
(860, 51, 10, 0, 0, 1468),
(861, 51, 10, 0, 0, 1469),
(862, 51, 10, 0, 0, 1470),
(863, 51, 10, 0, 0, 1471),
(864, 51, 10, 0, 0, 1472),
(865, 51, 10, 0, 0, 1473),
(866, 51, 10, 0, 0, 1474),
(867, 51, 10, 0, 0, 1475),
(868, 51, 10, 0, 0, 1476),
(869, 51, 10, 0, 0, 1477),
(870, 51, 10, 0, 0, 1478),
(871, 51, 10, 0, 0, 1479),
(872, 51, 10, 0, 0, 1480),
(873, 51, 10, 0, 0, 1481),
(874, 51, 10, 0, 0, 1482),
(875, 51, 10, 0, 0, 1483),
(876, 51, 10, 0, 0, 1484),
(877, 51, 10, 0, 0, 1485),
(878, 51, 10, 0, 0, 1486),
(879, 51, 10, 0, 0, 1487),
(880, 51, 10, 0, 0, 1488),
(881, 51, 10, 0, 0, 1489),
(882, 51, 10, 0, 0, 1490),
(883, 51, 10, 0, 0, 1491),
(884, 51, 10, 0, 0, 1492),
(885, 51, 10, 0, 0, 1493),
(886, 51, 10, 0, 0, 1494);

-- --------------------------------------------------------

--
-- Table structure for table `student_mark`
--

CREATE TABLE `student_mark` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `point` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `student_mark`
--

INSERT INTO `student_mark` (`id`, `student_id`, `course_id`, `quiz_id`, `point`) VALUES
(109, 47, 1, 15, NULL),
(110, 53, 1, 15, NULL),
(111, 53, 1, 15, NULL),
(112, 53, 1, 15, NULL),
(113, 53, 1, 15, NULL),
(114, 53, 1, 15, NULL),
(115, 53, 1, 15, NULL),
(116, 53, 1, 15, NULL),
(117, 53, 1, 15, NULL),
(118, 151, 1, 15, NULL),
(119, 152, 1, 15, NULL),
(120, 153, 1, 15, NULL),
(121, 47, 1, 15, NULL),
(122, 49, 1, 15, NULL),
(123, 48, 1, 15, NULL),
(124, 49, 1, 15, NULL),
(125, 51, 1, 15, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `avatar` varchar(200) DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `status` int(11) DEFAULT 1,
  `role` int(225) NOT NULL DEFAULT 1,
  `cv_file` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `email`, `password`, `fullname`, `avatar`, `phone`, `address`, `gender`, `status`, `role`, `cv_file`, `specialization`) VALUES
(1, 'dienntph06483@vimaru.edu.vn', 'gv1', 'Xuân Khánh', 'img/Untitled9.jpg', '0912345678', '36 Lạch Tray', 1, 1, 1, 'cv_674a6211131ac.pdf', 'TOEIC 2 kỹ năng Listening Reading'),
(2, 'thentph06483@vimaru.edu.vn', '1', 'Tuấn Trần', 'img/Untitled5.png', '01698060479', '95 Quán Nam', 1, 1, 1, NULL, 'TOEIC 4 kỹ năng'),
(3, 'dien@vimaru.edu.vn', '1', 'Nguyễn Hữu Sáng', 'img/Untitled8.jpg', '0912345678', '66 Đình Đông', 1, 1, 1, NULL, 'IELTS'),
(6, 'linh85689@st.vimaru.edu.vn', '1', 'Đào Khánh Linh', 'img/441029181_1649859449087991_2529557871076841729_n.jpg', '01698060479', '70 Hàng Lược', 2, 1, 1, NULL, '	IELTS Pre (3.0-5.0)'),
(7, 'phuong10234@st.vimaru.edu.vn', '1', 'Lê Mai Anh', 'img/Untitled.jpg', '01698060479', '60 Hàng Buồm', 2, 1, 1, NULL, 'IELTS Chiến lược (5.0-6.0)'),
(8, 'ngoc85689@st.vimaru.edu.vn', '1', 'Hoàng Bảo Ngọc', 'img/Untitled2.jpg', '01698060479', '50 Hàng Khoai', 2, 1, 1, NULL, 'IELTS'),
(9, 'mainamhai3@vmu.edu.vn', 'gv5', 'Mai Nam Hải', 'img/Untitled3.jpg', '01698060479', '2225 Hàng Mã', 1, 1, 1, NULL, 'TOEIC'),
(10, 'trung0175@fpt.edu.vn', 'gv1', 'Phan Tấn Trung', 'img/Untitled7.jpg', '01698060479', '22 Lê Duẩn', 1, 1, 1, NULL, '	Tiếng Anh Chuyên Ngành Hàng Hải');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `day` date NOT NULL,
  `course_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `hoc_bu` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `day`, `course_id`, `class_id`, `room_id`, `teacher_id`, `session_id`, `hoc_bu`) VALUES
(1378, '2024-12-02', 11, 56, 1, 10, 1, '2024-12-13'),
(1379, '2024-12-04', 11, 56, 1, 10, 1, '2024-12-13'),
(1380, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1381, '2024-12-04', 11, 56, 1, 10, 1, '2024-12-13'),
(1382, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1383, '2024-12-04', 11, 56, 1, 10, 1, '2024-12-13'),
(1384, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1385, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1386, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1387, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1388, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1389, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1390, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1391, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1392, '2024-12-09', 11, 56, 1, 10, 1, '2024-12-13'),
(1393, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1394, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1395, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1396, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1397, '2024-12-11', 11, 56, 1, 10, 1, '2024-12-13'),
(1398, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1399, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1400, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1401, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1402, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1403, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1404, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1405, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1406, '2024-12-16', 11, 56, 1, 10, 1, '2024-12-13'),
(1407, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1408, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1409, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1410, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1411, '2024-12-18', 11, 56, 1, 10, 1, '2024-12-13'),
(1412, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1413, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1414, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1415, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1416, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1417, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1418, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1419, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1420, '2024-12-23', 11, 56, 1, 10, 1, '2024-12-13'),
(1421, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1422, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1423, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1424, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1425, '2024-12-25', 11, 56, 1, 10, 1, '2024-12-13'),
(1426, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1427, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1428, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1429, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1430, '2024-12-30', 11, 56, 1, 10, 1, '2024-12-13'),
(1431, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1432, '2024-12-07', 11, 57, 1, 10, 1, '2024-12-13'),
(1433, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1434, '2024-12-07', 11, 57, 1, 10, 1, '2024-12-13'),
(1435, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1436, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1437, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1438, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1439, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1440, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1441, '2024-12-11', 11, 57, 2, 10, 1, '2024-12-13'),
(1442, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1443, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1444, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1445, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1446, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1447, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1448, '2024-12-14', 11, 57, 1, 10, 1, '2024-12-13'),
(1449, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1450, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1451, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1452, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1453, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1454, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1455, '2024-12-18', 11, 57, 2, 10, 1, '2024-12-13'),
(1456, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1457, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1458, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1459, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1460, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1461, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1462, '2024-12-21', 11, 57, 1, 10, 1, '2024-12-13'),
(1463, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1464, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1465, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1466, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1467, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1468, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1469, '2024-12-25', 11, 57, 2, 10, 1, '2024-12-13'),
(1470, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1471, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1472, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1473, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1474, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1475, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1476, '2024-12-28', 11, 57, 1, 10, 1, '2024-12-13'),
(1477, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1478, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1479, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1480, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1481, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1482, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1483, '2025-01-01', 11, 57, 1, 10, 1, '2024-12-13'),
(1484, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1485, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1486, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1487, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1488, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1489, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1490, '2025-01-04', 11, 57, 1, 10, 1, '2024-12-13'),
(1491, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1492, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1493, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13'),
(1494, '2025-01-08', 11, 57, 1, 10, 1, '2024-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT 'img/29541772703_6ed8b50c47_b.jpg',
  `gender` int(11) NOT NULL,
  `phone_number` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `fullname`, `password`, `role`, `address`, `avatar`, `gender`, `phone_number`) VALUES
(5, 'admin@gmail.com', 'Admin', '$2a$12$btYQTxn8LBYFUprYbcN5ZeP3O7a811hdgFrq1RpGj4jX69nDfqOKK', 500, '221 Hàng Kênh', 'img/29541772703_6ed8b50c47_b.jpg', 1, '0934303256'),
(7, 'ltb@gmail.com', 'Lê Thị B', '$2a$12$btYQTxn8LBYFUprYbcN5ZeP3O7a811hdgFrq1RpGj4jX69nDfqOKK', 0, 'HN', 'img/29541772703_6ed8b50c47_b.jpg', 0, '09123');

-- --------------------------------------------------------

--
-- Table structure for table `web_settings`
--

CREATE TABLE `web_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `map` text NOT NULL,
  `email` varchar(225) NOT NULL,
  `fb` text NOT NULL,
  `hl` varchar(11) NOT NULL,
  `timework` varchar(225) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `web_settings`
--

INSERT INTO `web_settings` (`id`, `logo`, `map`, `email`, `fb`, `hl`, `timework`, `user_id`) VALUES
(1, 'logoames.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3726.8380982044087!2d106.67312997499769!3d20.91883239154557!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314a7b8d1d33fb59%3A0xc4a91b6e90231603!2sAMES%20ENGLISH%20Thuy%20Nguyen%20Hai%20Phong!5e0!3m2!1svi!2s!4v1731052527326!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'quan85689@st.vimaru.edu.vn', '<iframe src=\"https://www.facebook.com/plugins/page.php?href=https://www.facebook.com/profile.php?id=61559545077558\" width=\"100%\" height=\"250\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowTransparency=\"true\" allow=\"encrypted-media\"></iframe>', '0934303295', '8h - 18h&nbsp;&nbsp;', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ans_qe` (`question_id`),
  ADD KEY `fk_ans_stu` (`student_id`);

--
-- Indexes for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bkt_co` (`class_id`),
  ADD KEY `fk_bkt_te` (`teacher_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_classes_course` (`course_id`),
  ADD KEY `fk_teacher_cl` (`teacher_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dangky_co` (`course_id`);

--
-- Indexes for table `dientu`
--
ALTER TABLE `dientu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_details`
--
ALTER TABLE `feedback_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_detail_feed` (`feedback_id`),
  ADD KEY `fk_feedback_detail_stu` (`student_id`);

--
-- Indexes for table `hocphi`
--
ALTER TABLE `hocphi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lesson_course` (`course_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_page` (`user_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_qe_quiz` (`quiz_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_scores_te` (`teacher_id`),
  ADD KEY `fk_scores_stu` (`student_id`),
  ADD KEY `fk_scores_co` (`course_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sl_ce` (`created_by`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_check`
--
ALTER TABLE `student_check`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_check_stu` (`student_id`),
  ADD KEY `fk_timetable` (`timetable_id`);

--
-- Indexes for table `student_mark`
--
ALTER TABLE `student_mark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_m_s` (`student_id`),
  ADD KEY `fk_m_c` (`course_id`),
  ADD KEY `fk_m_q` (`quiz_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_timetable_course` (`course_id`),
  ADD KEY `fk_timetable_class` (`class_id`),
  ADD KEY `fk_timetable_room` (`room_id`),
  ADD KEY `fk_timetable_session` (`session_id`),
  ADD KEY `fk_timetable_teacher` (`teacher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_we` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `dientu`
--
ALTER TABLE `dientu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback_details`
--
ALTER TABLE `feedback_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hocphi`
--
ALTER TABLE `hocphi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slideshows`
--
ALTER TABLE `slideshows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `student_check`
--
ALTER TABLE `student_check`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT for table `student_mark`
--
ALTER TABLE `student_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1495;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `web_settings`
--
ALTER TABLE `web_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_ans_qe` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ans_stu` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `baikiemtra`
--
ALTER TABLE `baikiemtra`
  ADD CONSTRAINT `fk_bkt_cl` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bkt_co` FOREIGN KEY (`class_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_bkt_te` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_classes_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_teacher_cl` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `dangky`
--
ALTER TABLE `dangky`
  ADD CONSTRAINT `fk_dangky_co` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dientu`
--
ALTER TABLE `dientu`
  ADD CONSTRAINT `dientu_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_details`
--
ALTER TABLE `feedback_details`
  ADD CONSTRAINT `fk_feedback_detail_feed` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_feedback_detail_stu` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hocphi`
--
ALTER TABLE `hocphi`
  ADD CONSTRAINT `hocphi_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `hocphi_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `fk_lesson_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page`
--
ALTER TABLE `page`
  ADD CONSTRAINT `fk_user_page` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_qe_quiz` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `fk_scores_co` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_scores_stu` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_scores_te` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `slideshows`
--
ALTER TABLE `slideshows`
  ADD CONSTRAINT `fk_sl_ce` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_check`
--
ALTER TABLE `student_check`
  ADD CONSTRAINT `fk_check_stu` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_timetable` FOREIGN KEY (`timetable_id`) REFERENCES `timetable` (`id`);

--
-- Constraints for table `student_mark`
--
ALTER TABLE `student_mark`
  ADD CONSTRAINT `fk_m_c` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `fk_m_q` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `fk_m_s` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);

--
-- Constraints for table `timetable`
--
ALTER TABLE `timetable`
  ADD CONSTRAINT `fk_timetable_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_timetable_course` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_timetable_room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_timetable_session` FOREIGN KEY (`session_id`) REFERENCES `session` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_timetable_teacher` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `web_settings`
--
ALTER TABLE `web_settings`
  ADD CONSTRAINT `fk_user_we` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
