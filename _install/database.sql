-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 10:59 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Lean Manufacturing'),
(2, 'Software ');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_category` int(11) NOT NULL,
  `course_description` text NOT NULL,
  `course_image` varchar(255) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_title`, `course_category`, `course_description`, `course_image`, `date_create`, `date_update`) VALUES
(2, 'course 1', 1, 'fjroiwfjerofijeroifjeroferjferofjerio', 'src/uploads/torosequipo.jpg', '2022-02-15 19:57:38', '2022-02-15 19:57:37'),
(3, 'titulo2', 2, 'descrioweefiwejf', 'src/uploads/ccd38ece-61d7-4372-a051-817af5d31c12aero.PNG', '2022-02-15 23:25:15', '2022-02-15 23:25:15'),
(4, 'titulo33', 1, 'firejfioerfjeriof', 'src/uploads/b3276ba2-c92c-4564-8e0d-546359330521azul.PNG', '2022-02-15 23:50:53', '2022-02-15 23:50:53'),
(5, 'fidsjfodsi', 1, 'fifjofijwoeijwe', 'src/uploads/c1fada6c-5bbe-4bf9-b44c-da257013cf09azul.PNG', '2022-02-16 00:17:45', '2022-02-16 00:17:44'),
(6, 'dsadas', 1, 'fdsfesw', 'src/uploads/8116a4ef-6c0c-497e-bb9f-d0eae3b82b3aazul.PNG', '2022-02-16 00:20:01', '2022-02-16 00:20:01'),
(7, 'noexiste!', 1, 'ddsajkdosiaj', 'src/uploads/1ca7e063-3387-4d24-bcd4-6d345c31f473aero.PNG', '2022-02-16 00:20:46', '2022-02-16 00:20:46'),
(8, 'fsdf', 1, 'frifjerof', 'src/uploads/3637ce8b-b342-4d76-8f91-d3a98cd9eaaaazul.PNG', '2022-02-16 00:26:44', '2022-02-16 00:26:44'),
(9, 'dasdujasduih', 1, 'fdisjfoidsf', 'src/uploads/4fb490c2-25d5-47ad-9631-0e728a01106fazul.PNG', '2022-02-16 00:27:40', '2022-02-16 00:27:40'),
(10, 'daidoasjdo', 1, 'fdisjfsdoif', 'src/uploads/ee15a794-d126-48f6-aa74-878095bc4d4fazul.PNG', '2022-02-16 00:29:05', '2022-02-16 00:29:05'),
(11, 'fiifeoij', 2, 'fijdsiofjdsoifjdsojfosjisodjf', 'src/uploads/700db74a-60b2-406a-a402-e0f9fa81b574ROJO.PNG', '2022-02-16 06:23:58', '2022-02-16 06:23:58'),
(12, 'tutloijoiad', 2, 'jfidjsfosdjfojfccofojfojfdsofjsdf', 'src/uploads/b16a1215-63f6-4cbc-91e6-27fd1a683c0ctorosequipo.jpg', '2022-02-16 06:44:13', '2022-02-16 06:44:13'),
(13, 'disajdosidioasdjoa', 1, 'dijfdosifjdsofds', 'src/uploads/6320587e-422d-479f-8075-2c87728ef376azul.PNG', '2022-02-16 06:48:44', '2022-02-16 06:48:44'),
(14, 'dsadadsasdadsakijoijo', 1, 'idjsfoidjsoifjdsoifjdsoijfo', 'src/uploads/53d7e2d7-5893-4712-8985-b193f5ff221aDatos Transferencia Paser[637].jpg', '2022-02-16 06:51:18', '2022-02-16 06:51:18'),
(15, 'dadiadsiadsjsai8u98y9', 1, 'disjfoidsjfdso', 'src/uploads/22548065-9118-4f1a-9c83-24a6a8bb37d5Capture.PNG', '2022-02-16 06:52:12', '2022-02-16 06:52:11'),
(16, 'sdsa90dsa808990', 1, 'cijzoiczjz', 'src/uploads/6e366520-eed7-4072-9959-28a668e5aac2Datos Transferencia Paser[637].jpg', '2022-02-16 06:53:12', '2022-02-16 06:53:12'),
(17, 'dsadijsaodjso', 0, 'cczxcdfedfdfsfdsfds', 'src/uploads/a01b0397-c627-45de-8156-223ec0487c05aero.PNG', '2022-02-16 06:54:27', '2022-02-16 06:54:27'),
(18, 'dijdsaoidjsaoidjsaojdo', 1, 'cijdiodjodsifs', 'src/uploads/18c003be-d194-4368-a117-1f67063697f3Capture.PNG', '2022-02-16 06:55:10', '2022-02-16 06:55:09'),
(19, 'dsijdsaoijdsaoi', 1, 'disjoijsofs', 'src/uploads/0e1dd054-3e2b-4ad3-ba12-d1222b8dc604azul.PNG', '2022-02-16 06:56:25', '2022-02-16 06:56:24'),
(20, 'dadmomofemofiwe', 1, 'ijiojoijoi', 'src/uploads/22423235-98fc-475a-8b49-b4ad9c301d5aaero.PNG', '2022-02-16 07:01:27', '2022-02-16 07:01:27'),
(21, 'jdijfdsoijfo', 1, 'jijdsifjso', 'src/uploads/4d80669a-2014-4e3f-9e47-42660137a4b2azul.PNG', '2022-02-16 07:02:46', '2022-02-16 07:02:46'),
(22, 'dsadijsaoidosa', 1, 'dsfjdisfjosifjdsoijfdso', 'src/uploads/ae8b645d-66a6-41f8-b02f-39950d0071e0Capture.PNG', '2022-02-16 07:04:23', '2022-02-16 07:04:23'),
(23, 'dsdisadoisao', 1, 'dijfoidsjfoidsjfdsof', '', '2022-02-16 07:07:38', '2022-02-16 07:07:38'),
(24, 'Datos de transferencia', 1, 'fkisfjsoifjsoifjsoif', 'src/uploads/23ef35c3-d819-4a8d-b57f-ab59aa5c170cDatos Transferencia Paser[637].jpg', '2022-02-16 19:20:10', '2022-02-16 19:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `course_department`
--

CREATE TABLE `course_department` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_department`
--

INSERT INTO `course_department` (`id`, `course_id`, `department_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 13),
(4, 3, 1),
(5, 3, 2),
(6, 4, 1),
(7, 4, 3),
(8, 5, 1),
(9, 5, 2),
(10, 6, 1),
(11, 7, 1),
(12, 8, 1),
(13, 8, 2),
(14, 8, 13),
(15, 9, 1),
(16, 10, 1),
(17, 11, 1),
(18, 11, 2),
(19, 12, 2),
(20, 12, 3),
(21, 12, 6),
(22, 12, 13),
(23, 12, 20),
(24, 13, 1),
(25, 14, 1),
(26, 15, 1),
(27, 16, 1),
(28, 16, 2),
(29, 16, 3),
(30, 17, 1),
(31, 18, 1),
(32, 18, 2),
(33, 19, 5),
(34, 20, 1),
(35, 21, 1),
(36, 22, 1),
(37, 23, 1),
(38, 24, 1),
(39, 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `departamentos`
--

INSERT INTO `departamentos` (`id`, `name`) VALUES
(1, 'Continuous improvement'),
(2, 'I.T.'),
(3, 'Quality'),
(4, 'Human resources'),
(5, 'Production'),
(6, 'Management'),
(7, 'Project management'),
(8, 'Engineering'),
(9, 'Maintenance'),
(10, 'Warehouse'),
(11, 'Health and safety'),
(12, 'Customs'),
(13, 'Software development'),
(15, 'Supply Chain'),
(16, 'Purchasing'),
(17, 'Customer Service'),
(18, 'Finance and Administration'),
(19, 'Materials'),
(20, 'Quality Control'),
(21, 'Document Control');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `description` text NOT NULL,
  `test` int(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` int(1) NOT NULL DEFAULT 1,
  `user_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post_department`
--

CREATE TABLE `post_department` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_phone` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `date_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_number` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `isadmin` int(1) NOT NULL,
  `manager` int(1) NOT NULL DEFAULT 0 COMMENT 'normal 0, supervisor 1, manager 2, general 3, ceo 4,',
  `profile_pic` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='user data';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_phone`, `date_create`, `date_update`, `user_firstname`, `user_lastname`, `id_number`, `department_id`, `isadmin`, `manager`, `profile_pic`) VALUES
(45, 'jvargas', '$2y$10$mj.BXv8Musxb3lce0bob..jBW.sqUOigNJ0IllEc.UfGvIGtRQ8eO', 'jvargas@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-17 00:04:44', 'Javier', 'Vargas', '44799', 1, 1, 4, 'uploads/profiles/145586412Javier Vargas.png'),
(47, 'jgomez', '$2y$10$kJpeZeKAN59rQ4ArOMeo4O5id95WPq65IT/Oux1FkprS7Rjg7sBZm', 'jgomez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-15 21:40:17', 'Jose luis', 'Gomez Cecena', '43044', 1, 1, 4, 'uploads/profiles/8229unnamed (1).jpg'),
(51, 'rsoltero', '$2y$10$D6P.SaZJ4uB5WbGHXlX1huXGwHIzWI1QVB4zENZ50Xd9.j3wBa7Fy', 'rsoltero@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-20 03:47:46', 'Rita Gabriela', 'Soltero Loaiza', '41897', 4, 1, 3, 'uploads/profiles/1610800535rita06-15-2020.jpg'),
(52, 'dreal', '$2y$10$SlLafoLZAFv2BbU4ArToBuB4qxT5zBCSHxkP9Iv0INc1lYnosxZsG', 'dreal@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 17:49:04', 'Delma', 'Real Cardenas', '40425', 6, 1, 2, 'uploads/profiles/1415007698Lighthouse.jpg'),
(60, 'avalle', '$2y$10$GeIrSJ8FjlSoEx7IcUhuI.9CNUoQB6DIaDzugaV/lr8xjVEWn779u', 'avalle@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-27 18:32:53', 'Anabel', 'Valle', '1', 6, 1, 3, 'uploads/profiles/685686452Anabel Valle.png'),
(64, 'hplata', '$2y$10$72FBHXWatgQKfp1ECbqGRu63n.lf/j33jLnQT1VUIs9RlJyoXCOTW', 'hplata@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 22:46:23', 'Horacio', 'Plata Castaneda', '3', 3, 1, 2, 'uploads/profiles/2006380191Horacio Plata.png'),
(65, 'aduran', '$2y$10$cN9E6DxeKPSXkOVB2Pg5ruz5yNUKMO3YPuHHKYnKNYm1LxhZUa.xe', 'aduran@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 16:37:36', 'Ana Maria', 'Duran Saborit', '31250', 3, 1, 2, 'uploads/profiles/849080626Ana Maria Duran.png'),
(66, 'dsanchez', '$2y$10$o/k/UwvBJDmAIbVPExnSoOHHyjvxy.KhvYNvaMqIBYPjZZW.Qiy.W', 'dsanchez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-29 17:19:32', 'Daniel', 'Sanchez', '38039', 3, 0, 0, 'uploads/profiles/newuser.png'),
(67, 'AlanCuadras', '$2y$10$0N17qQQoICYvf7FXZOnRoexcl.cFcOyoSJof8DDBKwPMAxoRiqg2q', 'acuadras@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-30 22:15:58', 'Alan ', 'Cuadras', '42865', 3, 0, 0, 'uploads/profiles/newuser.png'),
(68, 'AMontano', '$2y$10$1YgztG54W9fL7/YTdl8ayOI3ito/mFAF7CKD9ZDeI9fM28rpYfAGu', 'AMontano@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-21 17:46:58', 'Alma', 'Montano', '40408', 3, 0, 0, 'uploads/profiles/newuser.png'),
(69, 'Rocio', '$2y$10$4LZrgWAN8XPt43UKX2MJxOV1etnGoFXRd1dKcRQVL.aOLeGMP21hi', 'RGonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-21 17:33:18', 'Rocio', 'Gonzalez', '17976', 3, 0, 0, 'uploads/profiles/newuser.png'),
(70, 'Cristina', '$2y$10$6ZCnfyLEeSZlxQ1r2YzJpeaXCy07bzOULByxgvvEQYH.EbNVVVwBa', 'caceves@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 17:51:45', 'Cristina', 'Aceves', '18381', 3, 0, 0, 'uploads/profiles/newuser.png'),
(71, 'fguzman', '$2y$10$26itrlJKLXTSKwkABkocluGfgNeeR.tNMQ2RDXUfozmDmIndks9n6', 'fguzman@martechMedical.com', '', '2022-02-16 21:58:45', '2020-06-17 00:07:22', 'Francisca', 'Guzman', '17225', 3, 0, 0, 'uploads/profiles/newuser.png'),
(72, 'DOLORES', '$2y$10$kDlbre/ol4q48A1qMPpD7egTKV9b1rcJrWJcn1IV.Z8SNprVgSz/e', 'DEslava@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-15 22:09:42', 'DOLORES', 'ESLAVA', '32672', 3, 0, 0, 'uploads/profiles/newuser.png'),
(73, 'ARamos', '$2y$10$JUkeHG9cpP.kYUAlqcFZ4e5PkV37Cxfaz7NMJ.vJGDeuILz5bSzje', 'aramos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-16 15:26:49', 'Alva', 'Ramos', '43917', 4, 0, 0, 'uploads/profiles/newuser.png'),
(74, 'Melquiades', '$2y$10$ee/F2Fp0.beAnZsYcDS2LOxBe0zq.XCjst3GCN0olcZTMxufY7IDS', 'MARMENTA@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-06-16 16:05:21', 'Melquiades', 'Armenta', '31481', 5, 0, 0, 'uploads/profiles/newuser.png'),
(75, 'mespericueta', '$2y$10$A9BNw202mDcI.HUsEhm6tOSLNrcFJrZUrPdTk20J7W4OmHj1TQJcC', 'mespericueta@martechmedical.com', '', '2022-02-16 21:58:45', '2020-12-01 00:19:45', 'Martin Mateo', 'Espericueta Gomez', '447799', 1, 0, 4, 'uploads/profiles/511379049Koala.jpg'),
(76, 'Jesquer', '$2y$10$HwngAvgGe3hSUcRfFlsXAOPA/yXtAY9VqMR7J0uCBGFA6tF1SZTS.', 'jesquer@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-16 23:53:11', 'Juan Carlos', 'Esquer', '44337', 1, 1, 0, 'uploads/profiles/newuser.png'),
(77, 'paul', '$2y$10$ynshGk6rZFVQZqaOGdCutOSqBb9tjDMFkvX7jSd8IePcWqrHZbSlW', 'paul.atondo16@gmail.com', '', '2022-02-16 21:58:45', '2020-06-18 21:03:07', 'paul', 'leyva', '34963', 10, 0, 0, 'uploads/profiles/newuser.png'),
(78, 'francisco', '$2y$10$9HYSx4hBohFRv/fSUo.8kuFg3YIEHt1TIwcp5mIEZlB2KKE62eNZu', 'franciscoantoniommm@gmail.com', '', '2022-02-16 21:58:45', '2020-06-19 14:22:14', 'francisco', 'moreno', '41281', 10, 0, 0, 'uploads/profiles/newuser.png'),
(79, 'jose', '$2y$10$wxKUTS.XrZt3bHqrLi5atOPUJcsfdkuGXKkDLi.QGsEDGcd/DhpK2', 'mura740228@hotmail.com', '', '2022-02-16 21:58:45', '2020-06-19 18:37:20', 'jose', 'mulgado', '42233', 10, 0, 0, 'uploads/profiles/newuser.png'),
(80, 'rodimiro', '$2y$10$.j4vKOnMYAi/4QIJN9CevOjUsJxFyaH.Zsx6c0VL9yQHS5JEbTUra', 'rodimiroservin08@gmail.com', '', '2022-02-16 21:58:45', '2020-06-19 20:58:48', 'rodimiro', 'servin', '40759', 10, 0, 0, 'uploads/profiles/newuser.png'),
(81, 'Alfonso', '$2y$10$u5eRFKtrXRojDDp5Dryoz.uDkKdwqJ2a949w3JU1JT7DRK1gnVk3e', 'averdugo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-22 15:29:26', 'Alfonso', 'Verdugo', '44739', 4, 0, 0, 'uploads/profiles/1118064553Foto Alfonso Verdugo.jpg'),
(82, 'JMorimoto', '$2y$10$6NcwZbW3oj0Q/MQFBPcE1eE3At5NjmCrGoojloDe4pQNcM5tdo4IW', 'jmorimoto@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 21:47:32', 'Francisco', 'Morimoto', '44312', 1, 0, 0, 'uploads/profiles/200849718IMG_6053.JPG'),
(83, 'ricardo', '$2y$10$alK1vuHJKY01OhETWI275.63Q/tljGh.0diicEOF72oPaUV2AzSb.', 'maciasr70@gmil.com', '', '2022-02-16 21:58:45', '2020-06-23 14:35:18', 'ricardo', 'macias', '40426', 10, 0, 0, 'uploads/profiles/newuser.png'),
(84, 'joseabraham', '$2y$10$DSR9APyjvZS1JqF2FrgR/eF5hAFqIsHkHIZUhc6A/rM9oAlIumQjK', 'joseabrahan101217@gmail.com', '', '2022-02-16 21:58:45', '2020-06-23 14:55:45', 'jose', 'tamayo', '42765', 10, 0, 0, 'uploads/profiles/newuser.png'),
(85, 'Gustavo', '$2y$10$H6ury6bbRb4l85Az04gQ5Ohxx48g1L8shyWYry9rReGiwAbGsUO1.', 'tavoderek184@gmail.com', '', '2022-02-16 21:58:45', '2020-06-23 16:03:22', 'Gustavo', 'medina', '36422', 10, 0, 0, 'uploads/profiles/newuser.png'),
(86, 'rodolfo', '$2y$10$EXX/JLBHxUIdIbwN4NkKs.9wLjJMKSZJ1t1CEiEtbp4Zwl46AHKUq', 'rodolfocortez420@gmail.com', '', '2022-02-16 21:58:45', '2020-06-24 16:06:37', 'rodolfo', 'cortez', '44778', 10, 0, 0, 'uploads/profiles/newuser.png'),
(87, 'Pfernandez', '$2y$10$wb1c9lFbtiXCzs814KkUPudBOxPSB3BOR/I.QwvJYgDTk5FN8Syzq', 'pfernandez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-24 20:25:16', 'Paloma', 'Fernandez', '44144', 4, 0, 0, 'uploads/profiles/newuser.png'),
(88, 'Sergio', '$2y$10$/e/yR2tOYQKnpgqOvDnqC.9tj8W03dxT.ciMCzwaIxcYUT7h8GENS', 'sgarcia01209@gmail.com', '', '2022-02-16 21:58:45', '2020-06-25 16:00:22', 'Sergio', 'Nuñez', '41113', 10, 0, 0, 'uploads/profiles/newuser.png'),
(89, 'Cristy', '$2y$10$rEBSVTVUvpFptFHvgi75petNiGrn06Jn0ACUDuoJ1LELLiJGx8zgK', 'CVarela@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-25 18:22:21', 'Cristina', 'Varela', '44145', 4, 0, 0, 'uploads/profiles/newuser.png'),
(90, 'mmayoral', '$2y$10$wb9Ukw/tWfeec.R39kBg/e9afTvXpKQmNHQcjtppeZbkNOxkIVHQG', 'mmayoral@martechmedical.com', '', '2022-02-16 21:58:45', '2020-06-25 23:08:31', 'MARITZA GRISSEL', 'MAYORAL MENDEZ', '44773', 4, 0, 0, 'uploads/profiles/newuser.png'),
(91, 'mercedes', '$2y$10$ml8OeXkycVPuWWslMSrYJuv83PNm1edMMPp6BMql4hPTs31HWtTyi', 'mercedesclv1602@hotmail.com', '', '2022-02-16 21:58:45', '2020-06-27 13:25:24', 'mercedes', 'CALVO', '34100', 10, 0, 0, 'uploads/profiles/newuser.png'),
(92, 'RicardoPerea', '$2y$10$h2by8aThIpTQBuy.d0R6NermsNa6YW/ofNnX0YHpUUFYvc5nlao/u', 'rperea@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-28 23:59:29', 'Ricardo', 'Perea', '45000', 4, 1, 0, 'uploads/profiles/newuser.png'),
(93, 'smeza', '$2y$10$kN4lFlVp93U7NYz9t2XQO.Wu3WCV4B4IZ8O75hgDfs6Gw1JZXOSsS', 'smeza@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-03 03:21:50', 'SERGIO GABRIEL', 'MEZA DURAN', '42148', 4, 0, 0, 'uploads/profiles/newuser.png'),
(94, 'OSCAR', '$2y$10$8lFYLrjkl9KsD6SBGpzuUu3xioKMoUhhVijh.HWNHGVijuhWiAODq', 'OGRACIA@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-07-08 19:01:42', 'OSCAR', 'GRACIA', '21682', 5, 0, 0, 'uploads/profiles/newuser.png'),
(95, 'saul', '$2y$10$dYXB2zPmTfXE7rN1VmNJq.jOLVUqk6oYAv8g4up4jZ/U6wzL1jP9C', 'sruiz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 18:07:17', 'Saul', 'Ruiz', '28885', 5, 1, 3, 'uploads/profiles/newuser.png'),
(96, 'aesquivias', '$2y$10$.WeyKA1LXHhUMuTKrhmaf..xZkx5NmMy19T0hNuGNiEGsQbB.Gq6q', 'aesquivias@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-09 19:10:56', 'Anahi', 'Esquivias', '40950', 3, 0, 0, 'uploads/profiles/newuser.png'),
(97, 'AOLVERA', '$2y$10$p.JK0LIXkaew1AUKNppmp.hkR5odqCZNx/3xD75uZEiaoHNbdPR1G', 'RECEPCION@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-07-09 21:09:16', 'ARMIDA', 'OLVERA', '44462', 6, 0, 0, 'uploads/profiles/878579022ARMIDA OLVERA RUIZ.JPG'),
(98, 'cobregon', '$2y$10$r6vy/awD3Fu7kgtU57Ig6OsvekCe6xei9zq2q5wq1KDAdByrw4QN.', 'cobregon@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-09 22:42:14', 'Carolina', 'Obregon', '42610', 6, 0, 0, 'uploads/profiles/1199366794Foto.2.jpg'),
(99, 'elizarraga', '$2y$10$RIUg22.96Ty1elqf8BTE1uWvLb62ZJZtdxLnMZwC1pImXgUHqXJtW', 'ELizarraga@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-10 16:25:51', 'Edna', 'Lizarraga', '44350', 3, 0, 0, 'uploads/profiles/newuser.png'),
(100, 'BRIANDA', '$2y$10$q53ZEA/lchv7mpY1WjoSAOWi5OsjgvjHt4ymyk1L6xRHngs06B6xS', 'BGonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-10 18:07:02', 'BRIANDA', 'GONZALEZ', '44494', 8, 0, 0, 'uploads/profiles/newuser.png'),
(101, 'Lmireles', '$2y$10$pAR7LlNNfgrwyTNx6jBIWuftLfngtWi0ehvO3cvVVt/IehEciuTou', 'Lmireles@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-10 20:48:14', 'Lahila ', 'Mireles', '40668', 3, 0, 0, 'uploads/profiles/newuser.png'),
(102, 'Martin', '$2y$10$CT3cV3Uw0kDLW8I2jvvyhO58EDW/fwB0FpOmb7KDATOJr53c95Zce', 'EHUARAQUI@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-11-13 19:16:08', 'Martin', 'Huaraqui', '40844', 5, 0, 0, 'uploads/profiles/newuser.png'),
(103, 'JovanyLozano', '$2y$10$rwbSiGJwhGVX8RAEtKK1reLFnlBTaReVfd17I7QdO4q1AegA604Ga', 'Clozano@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 18:14:02', 'Carlos', 'Lozano', '42237', 5, 0, 0, 'uploads/profiles/newuser.png'),
(104, 'DavidSoto', '$2y$10$d1U/Bsaztzz0htXwDBdv1eShso88qfsZscXbFQtrDsackzNajj8mO', 'davidadriansotogomez@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 18:25:34', 'David', 'Soto', '40636', 5, 0, 0, 'uploads/profiles/newuser.png'),
(105, 'VitelioFuentes', '$2y$10$rT2s0acoKNU3Cf4d/icSCO3fzpoc5fyesOvRk3bwRVKKyCtaYYXq.', 'vitefuh@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 18:34:24', 'Vitelio', 'Fuentes', '40473', 5, 0, 0, 'uploads/profiles/newuser.png'),
(106, 'AlanLiera', '$2y$10$CSiua4lKrMXqvjBunS1XU.qTUIWVVLTr2KwAYQG.uRqf8wefgiQOG', 'ar422107@gamail.com', '', '2022-02-16 21:58:45', '2020-07-14 18:42:59', 'Alan', 'Liera', '41593', 5, 0, 0, 'uploads/profiles/newuser.png'),
(107, 'SamuelHernandez', '$2y$10$gb8Suipz.d.U051Mq3RvqeNME1OYXVHXBePhPnJ3JC1UfMYuAAfue', 'samuelhernandezfrancisco@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 18:51:44', 'Samuel', 'Hernandez', '42545', 5, 0, 0, 'uploads/profiles/newuser.png'),
(108, 'JuanCruz', '$2y$10$eLQlbICQ1TsQ7vg3ulVVh.5J50JX/iGrKwTBeityXGeSTgpXWR8JK', 'pitacuaz85@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 19:03:03', 'Pablo', 'Cruz', '41301', 5, 0, 0, 'uploads/profiles/newuser.png'),
(109, 'JonathanQuezada', '$2y$10$zuDWwQc/fUDykqi1BlUuUeVnvWJ0AV70gDgQMRc5esD75TI4jm1R.', 'barryseal90@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 19:11:32', 'Jonathan', 'Quezada', '42525', 5, 0, 0, 'uploads/profiles/newuser.png'),
(110, 'JorgeSanchez', '$2y$10$XmtOr76n2uaHxPeIt9gQJuWWkgjLpcXZ6y2rJorJtmZODU0DDOTlC', 'jorgea-sanchez@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 19:26:49', 'Jorge', 'Sanchez', '33109', 5, 0, 0, 'uploads/profiles/newuser.png'),
(111, 'AlejandroGarcia', '$2y$10$3GCriKa21SGxKEU3SqVFi.RrZLmEG80tJCjqqW8P89beWiNFrNoGm', 'kronck420@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 19:35:39', 'Alejandro', 'Garcia', '41941', 5, 0, 0, 'uploads/profiles/newuser.png'),
(112, 'VictorGranados', '$2y$10$MzFTuU7IFwrFh2KEohMu0OYv/MNFzKETViYahXjOKudWZsGdIoUlC', 'viko.glez.vg@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 19:51:39', 'Victor', 'Granados', '43516', 5, 0, 0, 'uploads/profiles/newuser.png'),
(113, 'joseluis', '$2y$10$o61BOcCASVT1zV/xI/ysZO7ryA6PGmoqxl9hEkpCbPTLjxyv5dRO.', 'samisebas21425@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:02:35', 'Jose Luis', 'peña', '21425', 5, 0, 0, 'uploads/profiles/newuser.png'),
(114, 'maria', '$2y$10$6OJf9f7ehrOOBRhgb8dmwOEKnT2zDx3v1iLROHdYFxsR8JmQcWluC', 'seolpoe@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:05:55', 'Maria del Carmen', 'Villalobos', '36157', 5, 0, 0, 'uploads/profiles/newuser.png'),
(115, 'MarioAlberto', '$2y$10$nLgk8ygIa7wUXA9qGsyIMO2f49KM3R/GrLp8j7Nb.1aiOENKNOHkG', 'mpena.com@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:06:08', 'Mario', 'Peña', '44623', 5, 0, 0, 'uploads/profiles/newuser.png'),
(116, 'IsmaelSalado', '$2y$10$cUae7eA7CbmVzaeUeD.HwuKV581bihb.OM.jKmMK2SwzQpat7U.S6', 'catarinoisma97@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:15:28', 'Ismael ', 'Salado', '41097', 5, 0, 0, 'uploads/profiles/newuser.png'),
(117, 'Efrain', '$2y$10$PDZYFDlRtSe44110IHn46eN3p18ICgNSbbOFBGSA6wN/an0PvSVjG', 'efra85529@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:15:43', 'efrain', 'Martinez', '43039', 5, 0, 0, 'uploads/profiles/newuser.png'),
(118, 'aurelio', '$2y$10$C1P09pLGgUfYC/qNQ//FSusZ24BlpPcnKu.3Zq02Cx8iFnGMvHIDi', 'checo4@outlook.com', '', '2022-02-16 21:58:45', '2020-07-14 20:16:51', 'aurelio', 'pacheco', '39861', 5, 0, 0, 'uploads/profiles/newuser.png'),
(119, 'Eloi', '$2y$10$tB6nEoehGc2e8Djv0oNAqeSpOrAbhizhQPV3acWTdK5f5z/HOGmAa', 'castrocastroeloy2405@gamil.com', '', '2022-02-16 21:58:45', '2020-07-14 20:17:56', 'Eloi', 'Castro', '30382', 5, 0, 0, 'uploads/profiles/newuser.png'),
(120, 'Ivan', '$2y$10$Yk0nitGAoNHB2Dc5rpKwO.1B1cvur2akqlUFRag6LoCPvFvkIT6jm', 'ivanaco81@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:19:26', 'Ivan', 'Acosta', '32642', 5, 0, 0, 'uploads/profiles/newuser.png'),
(121, 'Angela', '$2y$10$gWqMpHsOKtvuGNlOqO6gI.UTmFy4Fdy6xgFPKKa833hPBvZy/LBBC', 'angela69roman@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:20:16', 'Angela ', 'Ramirez', '42771', 5, 0, 0, 'uploads/profiles/newuser.png'),
(122, 'JorgeArmando', '$2y$10$Dz3/m9yZlhLUZzoMnFGAEO3akTFUvpHB19rktXr/SOcyLfjtzGo.u', 'jorge_ruiz2@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 20:23:34', 'jorge armando ', 'Ulloa', '44113', 5, 0, 0, 'uploads/profiles/newuser.png'),
(123, 'oscararmando', '$2y$10$PDJcsqYQm8fb4DWPCjagN.gPjwjgyWrfpCoXq8NmsOiXpKy8QMU/.', 'delapapao@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:10:52', 'oscar', 'de la paz', '35767', 5, 0, 0, 'uploads/profiles/newuser.png'),
(124, 'aandrade', '$2y$10$PjkpsmT8C945aigN7XD7fu8i1pdaEPD.KQ1AHafyajMuCqJmSof5S', 'aandrade@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:11:52', 'Abril', 'Andrade', '44449', 8, 0, 0, 'uploads/profiles/newuser.png'),
(125, 'JaGonzalez', '$2y$10$Et5.sej7Um2x.meb5PNtKetSftaGVbbuIiU8NLIDs0NBBmEMmcC3u', 'JaGonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:11:53', 'Joel', 'Gonzalez', '42091', 8, 0, 0, 'uploads/profiles/newuser.png'),
(126, 'IvanLicea', '$2y$10$M5ak1jmGwfM9KpgF0XMbHOs99SVB9r0G9eDuaxq2lCbgi0ZUoQPNq', 'ilicea@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:12:06', 'Ivan', 'Licea', '42651', 8, 0, 0, 'uploads/profiles/newuser.png'),
(127, 'alma', '$2y$10$Emm/nyMqXFzikcMRX7AgOeZY0ip3Rbfcm/SpzfkMO6SU4Q.eevY2y', 'almaruiz201428@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:12:40', 'alma', 'ruiz', '38932', 5, 0, 0, 'uploads/profiles/newuser.png'),
(128, 'javier', '$2y$10$8jqqlgapzjtbyx/vLNNtMesKmDYmrI6hcOBcZOXTftWAW9GsIp5Ga', 'javierchico88@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:14:07', 'javier', 'sanchez', '18889', 5, 0, 0, 'uploads/profiles/newuser.png'),
(129, 'AlbertoDuran', '$2y$10$wIfKQl7vekrF7SpZt7J3mO5AJXR/jMOzYdSDv1IWj5NKgywRAdMfO', 'jduran@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:14:54', 'Jesus Alberto', 'Duran Acosta', '35315', 8, 0, 0, 'uploads/profiles/newuser.png'),
(130, 'juanmanuel', '$2y$10$cWSjPEYYya8xkIWKualpg.AXqbPZ7jD3y8Wva1t3cBR8tXEc.5k8a', 'manuelfigueroa1997@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:15:05', 'juan ', 'figueroa', '40877', 5, 0, 0, 'uploads/profiles/newuser.png'),
(131, 'melissa', '$2y$10$RaxH0ua2YfRXS/F7JqdQcupJrx8BH0yXzRH41mGCCyVMzRXUR.N5.', 'melissa_7308@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:17:18', 'melissa', 'negrete', '34302', 5, 0, 0, 'uploads/profiles/newuser.png'),
(132, 'angelgabriel', '$2y$10$oaRhUXdfJ2Lgfia/fpg3Gee7.0RrMwcwaBbUcojisTtrTumHy5Js6', 'agabocontreras@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:19:25', 'angel', 'contreras', '42037', 5, 0, 0, 'uploads/profiles/newuser.png'),
(133, 'ivanrodrigo', '$2y$10$K6uRsE9dzUVwYhuBsAA7d.d6C42G5Yx6hS5WyV6bmZ9crxvt9/Ymi', 'ramirerz.ivan.1amm@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:20:38', 'ivan', 'ramirez', '44056', 5, 0, 0, 'uploads/profiles/newuser.png'),
(134, 'franciscojavier', '$2y$10$K4BvkjsV16sW2AcHsePG8eXrlT21leMxy8AtlUDkAGgPThjyF7Ca2', 'mares.javier.1997@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:29:11', 'francisco', 'lopez', '45022', 5, 0, 0, 'uploads/profiles/newuser.png'),
(135, 'AugustoLara', '$2y$10$qA2tt3aLXNgWGr41Ml9Rwudh1Omb.UY9C/aqkyAxQSOmlL7ixx4eS', 'blara@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:33:21', 'Bernardo Augusto', 'Lara Fregoso', '35583', 8, 0, 0, 'uploads/profiles/384842652Bernardo Lara (002).jpg'),
(136, 'CPadilla', '$2y$10$uxACIy/VU9OET1hWGHddSud5M4EB6dD.rKSvcDHDL4d.N7HgmLry6', 'cpadilla@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 21:36:38', 'Carlos', 'Padilla', '40108', 8, 0, 0, 'uploads/profiles/newuser.png'),
(137, 'Luiscarlos', '$2y$10$fxqppKTwS7fCyb5vBIZSfOV7zwbCm8Joeksrk5foYTDXR4DPkIyTS', 'lopezcruzluiscarlos1@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:47:35', 'luis', 'lopez', '43094', 5, 0, 0, 'uploads/profiles/newuser.png'),
(138, 'Carlosarmando', '$2y$10$gGX7FMWmqrTzFAplYVD9qu2y.3DqiAPHf9N/S5aA75ywwxCVdKKDe', 'carlosquiroz18@homail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:52:20', 'carlos', 'quiroz', '18614', 5, 0, 0, 'uploads/profiles/newuser.png'),
(139, 'josemartin', '$2y$10$YbTaFgK/D23sapF3l4y9Tuo8/LhTZWzkKGpbUfKYqbSgCvOaWHPme', 'martin_castillo1478@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:53:28', 'jose', 'castillo', '21683', 5, 0, 0, 'uploads/profiles/newuser.png'),
(140, 'miguelangel', '$2y$10$w7aYu/8q.jGmxs5Xrhq5ouay7Uqb/PErtEJPo0Qmbcz6bl87xxULq', 'miguel_Chapagg@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 21:54:29', 'miguel', 'chaparro', '30201', 5, 0, 0, 'uploads/profiles/newuser.png'),
(141, 'ruben', '$2y$10$e/Lo/eLKIDIzlM27wNOUluli4FpXm5uPrfQn5XRWF1WD6fCdwNypK', 'ruben_rosales_mxl@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 22:14:24', 'ruben', 'rosales', '34103', 5, 0, 0, 'uploads/profiles/newuser.png'),
(142, 'DavidVazquez', '$2y$10$xMW.zyweormrz/GHRSSgpu5JqZZQQPAbWSnSfy9BsfA0tdfpD9qma', 'davidvazquezmunoz@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-14 22:29:04', 'David', 'Vazquez', '41645', 5, 0, 0, 'uploads/profiles/newuser.png'),
(143, 'RamonValenzuela', '$2y$10$Hv/QghEuSDZjSbCX9b1SHe1PacOAwWhImL7l95Oe6McNjag2uXu0i', 'elcachanilla16@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 22:35:31', 'Ramon', 'Valenzuela', '31618', 5, 0, 0, 'uploads/profiles/newuser.png'),
(144, 'OscarRuvalcaba', '$2y$10$clUXFUmnH/OlYIrRAcpwr.2uN2Oa9jt75ShDiXJcS4bJTRewSzZni', 'goyito0006207400@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 22:45:42', 'Oscar', 'Ruvalcaba', '30234', 5, 0, 0, 'uploads/profiles/newuser.png'),
(145, 'IsabelRodriguez', '$2y$10$qGLsbS/vnoPMa0mE9OWih.J76mwqwhz0gQRFaCtZQdzpKxyuwhsEG', 'IsabelR13@gmail.com', '', '2022-02-16 21:58:45', '2020-07-14 22:56:17', 'Isabel', 'Rodriguez', '21025', 5, 0, 0, 'uploads/profiles/newuser.png'),
(146, 'RicardoPons', '$2y$10$bvZH7PtAHxzfFYiFaMYQDeauR5AQ83Ea46ApCxwtat66gyrktoWKq', 'Ricardomx3@yahoo.com.mx', '', '2022-02-16 21:58:45', '2020-07-14 23:06:33', 'Ricardo', 'Pons', '43555', 5, 0, 0, 'uploads/profiles/newuser.png'),
(147, 'jurias', '$2y$10$SDmZlmwvWULjkMrLngByN.7JZ14TaJMSkpLyY3X7I1XmaXRZbMV6e', 'jurias@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 23:38:18', 'JOSE RAMON', 'URIAS SOTO', '41730', 8, 0, 0, 'uploads/profiles/1565404927Jose Ramon Urias.jpg'),
(148, 'fharispuru', '$2y$10$N6NjXH.vDiEHlLzSzFFoSOr4MkPsJvDEYJQsENsNyzhbhQGSNh0G.', 'fharispuru@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 23:38:36', 'Fernando', 'Gutiérrez', '43041', 8, 0, 0, 'uploads/profiles/newuser.png'),
(149, 'Grubio', '$2y$10$F2UlVj7iOhfRoIp0cd3lDOxKN0EEJ4kzHpkxwwd2Jf/xRDKgpuyHa', 'ggonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 17:02:31', 'Guillermo', 'Gonzï¿½lez Rubio', '42703', 8, 0, 0, 'uploads/profiles/813081132Guillermo Gonzalez.jpg'),
(150, 'AZamora', '$2y$10$MOnfopECgnNhrsupaHJ2FuzqXhnDHhN7cKtZEzoCxqn3RPxVPXudu', 'azamora@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-14 23:39:39', 'Adriana', 'Zamora', '32977', 8, 0, 0, 'uploads/profiles/newuser.png'),
(151, 'IsmaelCoria', '$2y$10$Q4HxGzc7316nKZ9wDKe7WO1q.iyrxx7qyKP9HlJeb0dH77FRJOcBe', 'abismal4@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 11:18:19', 'Ismael', 'Coria', '39466', 5, 0, 0, 'uploads/profiles/newuser.png'),
(152, 'CarlosRobledo', '$2y$10$c2wTTxAPnK1I.00YwX0wD.A3LgAfPpNvFDEbn6LMB4MkCsoGtFa0y', 'zamorarobledocarlos@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 11:27:34', 'Carlos', 'Robledo', '42939', 5, 0, 0, 'uploads/profiles/newuser.png'),
(153, 'AngelRosales', '$2y$10$Sl.xq69S2fczzqPHYfEfp.OCQh1nvGIC0iLKnvM9qbQfCPbU8pjVi', 'nephilim-rosae@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-15 11:30:13', 'Angel', 'Rosales', '40704', 5, 0, 0, 'uploads/profiles/newuser.png'),
(154, 'NestorCastillo', '$2y$10$vTlWEZcKi/ccVRkTXAMYz.FOYeP0iNQSZMA3OOk53lzsUmESjN.j2', 'pickoro14@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 11:36:14', 'Nestor', 'Castillo', '34533', 5, 0, 0, 'uploads/profiles/newuser.png'),
(155, 'FranciscoTorres', '$2y$10$O3XvpLHNOReZtX70Ub9/Beqe7uapt/8aQSj8q.CaU9kF6ITbyLUcK', 'fracktorres666@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 12:18:51', 'Francisco', 'Torres', '43931', 5, 0, 0, 'uploads/profiles/newuser.png'),
(156, 'FranciscoCastorena', '$2y$10$Kl5NnBzAG5Respc2tmgpCOhz3EOWfhDjn1yR6DwycaCgCBJgvi5BC', 'castorena_krosek@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-15 12:36:33', 'Francisco', 'Castorena', '42242', 5, 0, 0, 'uploads/profiles/newuser.png'),
(157, 'luishumberto', '$2y$10$YSH5gpVKf/xoOD4kDsTJaeNVenZO19RHM32Pk7dy8SRNtl3q81XSe', 'lushum1994@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 17:04:31', 'luis ', 'armenta', '39618', 5, 0, 0, 'uploads/profiles/newuser.png'),
(158, 'rubenl', '$2y$10$sxroAPosvecy6tz0ubs6S.KEXkPsxH2Z.en5/o0MDvlma7ppRH6AG', 'sangreksi@yahoo.com', '', '2022-02-16 21:58:45', '2020-07-15 17:05:59', 'ruben', 'De leon', '30181', 5, 0, 0, 'uploads/profiles/newuser.png'),
(159, 'Marlen', '$2y$10$ZLZzpw3z4a2D15x5vooSHun7iWIFo0AoGB9M9BjkHbmiiut.mhep6', 'marlen.lasirenita@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 17:07:12', 'Marlen', 'garcia', '36014', 5, 0, 0, 'uploads/profiles/newuser.png'),
(160, 'miguel', '$2y$10$m0USfkGRoiYZM5SDOai7WOwbFMueZTIE0wYG5.FoSPaAPfHzjJy9S', 'mach.34@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-15 17:08:40', 'miguel', 'chaparro', '30201', 5, 0, 0, 'uploads/profiles/newuser.png'),
(161, 'EHinojos', '$2y$10$bRyF4ptqPu2O3zdyLXqG9.HlaE69woL0xgX2G61GOdsuowVrudd/O', 'EHinojos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-15 17:10:50', 'Francisco Emilio', 'Hinojos Llamas', '42819', 8, 0, 0, 'uploads/profiles/newuser.png'),
(162, 'mluna', '$2y$10$XRwJNHWMR2Ylf01zoQhNEukwrGiFVApF97OrR1QUcRvxQlcMwr3/O', 'mluna@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-15 18:30:11', 'Manuel', 'Luna', '33673', 9, 0, 0, 'uploads/profiles/newuser.png'),
(163, 'Jibram', '$2y$10$znVDc9Nxc8e7JvSlOqPvf.4skMIMw.sZtIg4EFDl3wiVlZUyszBq6', 'jledezma@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-15 22:04:25', 'Jibram', 'Garcia', '43608', 3, 0, 0, 'uploads/profiles/newuser.png'),
(164, 'JulioFuentes', '$2y$10$wigQjSsGZHoRza7wjsO7/.pVP6wN1SaJGw01ACisTWrThHCSNA2hu', 'juliofuentes9007@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:17:17', 'Julio', 'Fuentes', '40945', 5, 0, 0, 'uploads/profiles/newuser.png'),
(165, 'MiguelOsorio', '$2y$10$T52dDTOn5KXxCvj.XhwDW.NkHaL6FK0daKTvWU9YxAHZxKM7qG3Fe', 'miguelangelmig_199030@outlook.com', '', '2022-02-16 21:58:45', '2020-07-15 22:21:55', 'miguel', 'Osorio', '40162', 5, 0, 0, 'uploads/profiles/newuser.png'),
(166, 'Daniel', '$2y$10$pym/ev6QWhJrPT/z1mDZIeJGJ.p7UP7jEQQtqZd7zuuYuMo9mt.By', 'daniel_garcia1548@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:23:21', 'daniel', 'garcia', '17549', 5, 0, 0, 'uploads/profiles/newuser.png'),
(167, 'Jorge', '$2y$10$RFMCJ3j6kmjVkzzSW1k1HuFK.E61Js52aTWw1Y6G2pxBT0TCMLVrq', 'jorge_Inf1254@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:25:06', 'jorge', 'Infante', '42922', 5, 0, 0, 'uploads/profiles/newuser.png'),
(168, 'Zeferino', '$2y$10$I/q1iTZBKQ5A.8mmkrbyqOls3tBHHaZfuZLU.O5sGyZc7CWhd.C9C', 'zeferino_fr1457@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:49:50', 'Zeferino F', 'Frutos', '41238', 4, 0, 0, 'uploads/profiles/newuser.png'),
(169, 'gabriel', '$2y$10$1/i3YB4nLx4rKiNQoVQ.pOsjuMMbszJ5VxtxfLf0EBAXtUubuL3zS', 'mendez_1472@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:51:08', 'gabriel', 'mendez', '43673', 5, 0, 0, 'uploads/profiles/newuser.png'),
(170, 'jonathan', '$2y$10$RaJ1B9sG6haao9Xvy46YE.pANkXzW4eVw5msqbIq10kqWQLmdsdtS', 'jonthan_correa3657@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 22:52:24', 'jonathan', 'Correa', '44201', 5, 0, 0, 'uploads/profiles/newuser.png'),
(171, 'Franciscoh', '$2y$10$K3oNTm0x21vHIO1VNz0gL.etsTQCABb3ZrHhXeGAjs5tv7Zu70gdS', 'francisco_78_hui@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-15 23:07:38', 'francisco', 'Huicho', '37100', 5, 0, 0, 'uploads/profiles/newuser.png'),
(172, 'josepedro', '$2y$10$6nPeZTW3cMGTEBjAWrQzye6np4yPWUC0adkjrgFheAfrX4zxa1hfC', 'jose_gonzalez_125@gmail.com', '', '2022-02-16 21:58:45', '2020-07-15 23:08:46', 'jose', 'gonzalez', '32651', 5, 0, 0, 'uploads/profiles/newuser.png'),
(173, 'Lourdes', '$2y$10$b0yKC4Oe0aaEV26I/JMcIelKJ4/A/GlyTXfbmEDoUXFTi0s2LhYfm', 'lmoreno@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-15 23:56:32', 'Juarez', 'Moreno', '16693', 3, 0, 0, 'uploads/profiles/newuser.png'),
(174, 'Ruisel', '$2y$10$DujAmCmmnyoUiKvDrVo5kulBjQv4bvGU.nD71XUG8K20.L60pAFP2', 'rlopez1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 14:25:27', 'Ruisel', 'Lopez', '44570', 8, 0, 0, 'uploads/profiles/newuser.png'),
(175, 'JCBermudez', '$2y$10$Zl9k0pnnL4Ect1k9dKaN3eCxyIWPG1y9/N4QpvdlRQGHb4AHkuAoa', 'jcbermudez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 15:45:18', 'Jesus', 'Campos', '42794', 3, 0, 0, 'uploads/profiles/983983020JCBermudez.jpg'),
(176, 'cnunez', '$2y$10$8U.lN/kLq/TTDD8ZB85jIOkQ2ONZ/74T.lzaUobjfIDr0LqtlRbs6', 'cnunez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 22:18:16', 'Cesar', 'Nuñez', '42792', 8, 0, 0, 'uploads/profiles/1468550521Cesar Alberto Nuñez Lopez.jpg'),
(177, 'mgastelum', '$2y$10$O6lrR7SSN/Wdqb55kJzGsecvwApsqNZxqDwW6qeNvuhUp5cCMETfS', 'mgastelum@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 20:16:11', 'Minerva', 'Cuadras', '39513', 8, 0, 0, 'uploads/profiles/1996500010mine 2020.jpg'),
(178, 'GVACA', '$2y$10$XRGiTJ2Zs1/aYQ/50PtziOo39/g7Hh0QOlOWhEcbLLerzU2vZjAZi', 'gvaca@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:01:57', 'Gerardo', 'Vaca', '90005', 8, 0, 0, 'uploads/profiles/1578163348Gerardo Vaca.jpg'),
(179, 'aaronsik', '$2y$10$H0JtYmEIsG.tN2hPZcFCeOBrsDusB5HcgxsIlj5qS0iWECMrmZ/L6', 'asiqueiros@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 23:10:12', 'Aarón', 'Siqueiros', '90011', 8, 0, 0, 'uploads/profiles/newuser.png'),
(180, 'lramirez', '$2y$10$Oz9RrJTssG63pDo2hppw.e5bqZyRlKJc6N0e2I.BvqkFUwvW7CuBS', 'lramirez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 23:18:05', 'Leslie', 'Ramirez', '90014', 8, 0, 0, 'uploads/profiles/newuser.png'),
(181, 'IvanM', '$2y$10$c5JOK6fsDnqImL92/lefD.GyWeKVX6BULTTFSPNXQgubWa1Zy1uC2', 'imorales@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-16 23:28:04', 'Ivan', 'Morales', '90015', 8, 0, 0, 'uploads/profiles/524454260Edgar Ivan Morales.jpg'),
(182, 'Raul', '$2y$10$UPppqyuiHfk8wNokMA59Re4QOMJoH0u72/b4gZUnkQarznasGOEPa', 'rvalencia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-17 15:41:06', 'Raul Ruben ', 'Valencia Garcia', '43450', 3, 0, 0, 'uploads/profiles/newuser.png'),
(183, 'Rgarcia', '$2y$10$NLWVw6gWOGa847U.4Vx8YuXeolCYFTiRi.iNjpksILlFPPG23W.Yu', 'Rgarcia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 17:42:37', 'Ricardo', 'Garcia Barajas', '41033', 8, 0, 0, 'uploads/profiles/newuser.png'),
(184, 'marthaalicia', '$2y$10$l734mmeHA2hZrWVH42qDiubnXB7.dshKcmOYGiJOK9G2t3xzlp7yW', 'marthaalicia1248@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 19:56:12', 'martha', 'juarez', '26271', 5, 0, 0, 'uploads/profiles/newuser.png'),
(185, 'Perlalizeth', '$2y$10$4kPJuZOY2AesBaAeBxISzuKYcQiZETjf1ZpjNeBEaG/ZcuL51khH.', 'perlalizeth_nava25@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 19:57:31', 'perla', 'navarrete', '30001', 5, 0, 0, 'uploads/profiles/newuser.png'),
(186, 'noreyda', '$2y$10$wYz55wJ9UfeK2pGrbFrET.tRq8nYlSe8iMprUDqccuXULcgOWOKw2', 'noreyda_rodri@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 19:58:21', 'noreyda', 'rodriguez', '31959', 5, 0, 0, 'uploads/profiles/newuser.png'),
(187, 'mariaR', '$2y$10$u/EdZCdqHMBwdsIEf4o/2ef3mrsgJDzilq/XyBo3Ltn./99G2cB/W', 'mariarSanti@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 19:59:39', 'maria', 'rodriguez', '32181', 5, 0, 0, 'uploads/profiles/newuser.png'),
(188, 'javierL', '$2y$10$l6uze6JEimvRsU2y2CMw0uFuH9Dpli9v7x8xDTuRoe6VcVqHSyCbm', 'javiergonzalez_1547@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-17 20:06:57', 'javier', 'gonzalez', '40938', 5, 0, 0, 'uploads/profiles/newuser.png'),
(189, 'elias', '$2y$10$JM0Pm34b4YyTAVA.J0Q6WemwXotjhu01udzyOC0jdMj3TJHk3ZQLS', 'elias_chavez8965@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 20:16:25', 'elias', 'chavez', '20765', 5, 0, 0, 'uploads/profiles/newuser.png'),
(190, 'carlosH', '$2y$10$8z6/OZzl1MhwRKzkzZD0q.ujiVXPAkrABZGzDsDZzcjgz34xoe3JG', 'carloshernandez_47@gmail.com', '', '2022-02-16 21:58:45', '2020-07-17 20:20:13', 'carlos', 'hernandez', '44358', 5, 0, 0, 'uploads/profiles/newuser.png'),
(191, 'jgutierrez', '$2y$10$mLuuhHsq0inY0Mj/q8LaUezB0DbP3Nw8sUNQo1BL8OgBjqRN4P0dS', 'jgutierrez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 14:02:52', 'fernando javier', 'gutierrez urias', '35883', 3, 0, 0, 'uploads/profiles/newuser.png'),
(192, 'Dinzunza', '$2y$10$TGS3OmDV82JHyI8WRrPjPuwB6YDsREEk0AXaUYVtYfc4wbNnnWtdi', 'dinzunza@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 15:04:40', 'David', 'Inzunza', '39620', 2, 0, 0, 'uploads/profiles/newuser.png'),
(193, 'APEREZ', '$2y$10$lNaghNd9RZE2sAjgE9DEwuWcapU157DHhG9Cm9CF0DhbBxxCmzhX2', 'aperez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 18:25:25', 'Armando', 'Pérez Torres', '31747', 15, 0, 0, 'uploads/profiles/newuser.png'),
(194, 'gsalas', '$2y$10$CZQ4v2gG3d7otJB425Duq.ndWr1mpc8J7GfzbcocxwF6lNwDJSlie', 'gsalas@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 18:31:40', 'Gabriela ', 'Salas Heraldez', '41520', 8, 0, 0, 'uploads/profiles/newuser.png'),
(195, 'CGastelum', '$2y$10$gFWOt3ED5qaiVC.c6Wv0Fu.2mvo86qMRUrBfzbonVxfp2mCVmab3.', 'cgastelum@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 19:38:15', 'Carlos Enrique', 'Gastelum Martinez', '36524', 15, 0, 0, 'uploads/profiles/1547351631.JPG'),
(196, 'lcanez', '$2y$10$3wFgWDYqvBlPPCuxonBT0u4Lx7xprpdt6xNyIcCY2J0eUI4qBGWa.', 'lcanez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 21:23:32', 'Luis ', 'Cañez', '41671', 3, 0, 0, 'uploads/profiles/newuser.png'),
(197, 'AVilla', '$2y$10$d1PdMjFqIUgMeOrvccklO.HixRZvzxkyz5CHEU5HQhnVVEZoDETuO', 'avilla@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 22:06:40', 'Ana Julia ', 'Villa Zavala', '40132', 8, 0, 0, 'uploads/profiles/newuser.png'),
(198, 'destarrona', '$2y$10$IP7WPV/JzjAtzD2rOjSUEO0.NBQ4Iwe3JSHa6MksILxttf2a/3FZy', 'Destarrona@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 22:15:51', 'Donaldo ', 'Estarrona', '43102', 8, 0, 0, 'uploads/profiles/newuser.png'),
(199, 'Rvasquez', '$2y$10$IozD3vGoT4QMX9nnKWE49OWaHSfJggxz8AfSKAARxIDDY0rbKWVpW', 'rvasquez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 22:49:50', 'Raúl ', 'Vasquez', '36125', 8, 0, 0, 'uploads/profiles/newuser.png'),
(200, 'EdgarCabrera', '$2y$10$qFY9NU9zfvQ5pgBPnIb6E.E9vE801F34XM3RoU3LTkcCKhn73WWmi', 'ECabrera@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 23:05:30', 'Edgar Leonel', 'Cabrera Salazar', '41770', 3, 0, 0, 'uploads/profiles/newuser.png'),
(201, 'EArce', '$2y$10$KbICMfXNwWIz7xsUVtrfF.duFdO7/h732CN9CjEU/V81PyxQXlZDC', 'earce@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-20 23:05:57', 'Eduardo', 'Arce', '42261', 8, 0, 0, 'uploads/profiles/newuser.png'),
(202, 'RITA2', '$2y$10$NCAC6q8w7qL6I6cOGxxeYu0iDh2lXJljdY/EAZYvyozmrmtUY2Lj.', 'risolo70@hotmail.com', '', '2022-02-16 21:58:45', '2020-07-20 23:10:58', 'RITA GABRIELA ', 'SOLTERO LOAIZA', '41897', 4, 0, 0, 'uploads/profiles/newuser.png'),
(203, 'SFAUSTO', '$2y$10$SOZIq0rYOZSpqIy6uN9VFeiF2BitiMeR6EBZQyejMjBZhj5jF7uAO', 'sfausto@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-21 18:49:06', 'Salvador', 'Fausto Martinez ', '43779', 15, 0, 0, 'uploads/profiles/newuser.png'),
(204, 'Aeslava', '$2y$10$Y0AHb/fMZ9q11A5PlqVqtO9Q9MCbyyt74dDx3YoYBeIuLz29zehcG', 'Aeslava@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-21 22:16:27', 'Aurora', 'Eslava Rosas ', '43130', 15, 0, 0, 'uploads/profiles/newuser.png'),
(205, 'MRamos', '$2y$10$1qr1a7Ch5hn40EhNPb60ruTn8LmcD9J3SM6GajFBjaVrCAXr8xsp6', 'mramos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-22 20:38:37', 'miguel ', 'ramos', '31479', 3, 0, 0, 'uploads/profiles/newuser.png'),
(206, 'J179620', '$2y$10$mBPWubheuiqPy8PbrXjkd.jkft5UijVIBpK4uRR21kI7DPWsGHjaS', 'jbajo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-23 14:51:17', 'Jenifer', 'Bajo', '39212', 7, 0, 0, 'uploads/profiles/1030487696IMG_20200719_003434_798.jpg'),
(207, 'Sarabenitez', '$2y$10$oWpUsmSTgUR09uiuL7fT5.HNmOecvaZIjHhmyscgmweOd9bziCjm.', 'sbenitez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-24 00:10:13', 'Sara Andrea', 'Benitez Pedraza', '43910', 3, 0, 0, 'uploads/profiles/newuser.png'),
(208, 'bmontoya', '$2y$10$Zvx3kHrqOkVBZsHIsHYT/.y.CLFO0KtQ6rXbDWIs8YOxK0yfRnVwW', 'bmontoya@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-24 15:09:53', 'Brenda ', 'Montoya', '29091', 3, 0, 0, 'uploads/profiles/newuser.png'),
(209, 'rsarabia', '$2y$10$O5mvixNiAQI2GpjnpOEHUO0PLrjNI309vjjicZQQkrldqSbEn/9WK', 'rsarabia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-24 23:32:18', 'Raul', 'Sarabia', '44820', 3, 0, 0, 'uploads/profiles/newuser.png'),
(210, 'PBELTRAN', '$2y$10$hniiVH78vCHRIfii7RGSFOAKZwQlm3v7iWBdphhMatl0tQZJEPP5q', 'pbeltran@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-28 21:01:32', 'Pamela', 'Beltrán', '42280', 17, 0, 0, 'uploads/profiles/1294660935Pamela Beltran-2.jpg'),
(211, 'Janet', '$2y$10$KYDvKRTKiPOkT3fhX59tt.oerxXQBavfg3wHo5bQncmhF2CK8ClAC', 'JHerrera@martechmedical.com', '', '2022-02-16 21:58:45', '2020-07-31 19:34:47', 'Janet', 'Herrera', '44891', 17, 0, 0, 'uploads/profiles/newuser.png'),
(212, 'Ramon', '$2y$10$Qc/SAbCytf3sVDgUzR3muepru7yJc30IZesGEy0uQEkia32kcCeNe', 'rvenegas@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-04 17:50:55', 'Venegas', 'Garcia', '42702', 11, 0, 0, 'uploads/profiles/newuser.png'),
(213, 'dmojarra', '$2y$10$QLzDlUzFWb0ypQ9Ohx8g4..6n1altlTnmgoFzodABNfWKA4SEq17m', 'dmojarra@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-06 18:05:46', 'Diana Lizbhet', 'Mojarra Argil', '31992', 8, 0, 0, 'uploads/profiles/newuser.png'),
(214, 'MESTRADA', '$2y$10$Z0dEUEdNEeyQGSQfNUk3Ku5q4SA4YVfp4aZ6kN9FNFOoSaHXE.XCi', 'mestrada@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-06 19:36:03', 'Miriam', 'Estrada', '32975', 8, 0, 0, 'uploads/profiles/newuser.png'),
(215, 'agaribay', '$2y$10$BPL/qreFdRvR8ofsoZKQdu5T7zNJyUX/fURn26/ZrN4qmFiofmPCG', 'agaribay@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-06 20:36:30', 'Angel', 'Garibay', '40082', 3, 0, 0, 'uploads/profiles/newuser.png'),
(216, 'Marcos111', '$2y$10$GVoPbmKeurkTEsD7fEVCAOFGmAJfXssVYNAupOe7Y/uCsVd0JwTxK', 'M.arriaga@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-06 20:38:27', 'Marcos ', 'Arriaga', '40575', 3, 0, 0, 'uploads/profiles/newuser.png'),
(217, 'DNavarro', '$2y$10$N6/O6SfS3vcoB2mHyB5lUu2nsfAjsLj96yxlboVORqtuoSbj7ppvy', 'dnavarro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-10 18:02:55', 'Diana', 'Navarro', '44641', 17, 0, 0, 'uploads/profiles/newuser.png'),
(218, 'Lortega', '$2y$10$ulXHl32LwNUY3ro5rvZrTOmXqvMoAd6/xUNzxbc1.QNtvN76WvIZC', 'LOrtega@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-10 22:36:02', 'Leonor ', 'Ortega', '41437', 9, 0, 0, 'uploads/profiles/newuser.png'),
(219, 'hcastro', '$2y$10$rAu.aWh5sC2hdB7i0WthD.ydyvnDh5rNhQWfpIYKFBC8eWrWA1MCG', 'hcastro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-11 14:33:18', 'Heriberto', 'Castro', '31591', 9, 0, 0, 'uploads/profiles/newuser.png'),
(220, 'SAntonio', '$2y$10$E.55bCwZS0DtRlxuiv7lEen5vkwT.I.KINbloZZ64vNdfsVt7s5bW', 'SFelix@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-12 13:14:54', 'Sergio ', 'Felix', '45171', 3, 0, 0, 'uploads/profiles/newuser.png'),
(221, 'tania', '$2y$10$rx1.MRN9I2.0BUVqLe0o8etURKaneVdft3lNzxnBhVBYjRul4.uIC', 'TSalado@martechmedical.com', '', '2022-02-16 21:58:45', '2020-08-12 13:20:00', 'tania', 'salado', '43805', 3, 0, 0, 'uploads/profiles/newuser.png'),
(222, 'Valeria', '$2y$10$ryhp1uM3.WumOB1OoGNROuPX2usgFPb2DdndqMu4PTVJ5wYxcs2Q2', 'vsoto@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-03 14:56:32', 'Valeria', 'Soto', '44468', 3, 0, 0, 'uploads/profiles/newuser.png'),
(223, 'Yunive', '$2y$10$9JDkTq3s1Wx.M5nSICpEg.cuoYTR4ouU725Bw6VXLE5bxSysKCDPe', 'kgarcia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-08 19:54:19', 'Karla', 'Garcia', '43750', 18, 0, 0, 'uploads/profiles/newuser.png'),
(224, 'jcovarrubias', '$2y$10$ksVAallzJ3TkhiqsRovlTOXv52iWsQKykRamYhz25GwB4oCSPaFh2', 'jcovarrubias@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 15:54:11', 'Jose Hiram', 'Covarrubias', '0', 9, 0, 0, 'uploads/profiles/1931046487Foto personal.JPG'),
(225, 'jruiz', '$2y$10$in6S2EaS2algTeNajSJPr.ub7z4nNsUo2aqMdY1TJfvDQz.Ei9giW', 'jruiz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-24 17:09:59', 'Jesus', 'Ruiz', '0', 9, 0, 2, ''),
(226, 'tmosqueda', '$2y$10$2hGi0ld4C3Xbl/dkhPUgCuofutHR6C4EVNVCInr98vBEPpKDTt4Yi', 'tanya@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 17:44:30', 'Tanya', 'Mosqueda', '0', 18, 0, 2, ''),
(227, 'ssolis', '$2y$10$u8f0olZMxCZ95OIplEkRAO/RP0T/8r9u/DXAXciNhSMbeoJkk0dr2', 'ssolis@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 15:44:36', 'Susana Guadalupe', 'Solis Vega', '0', 16, 0, 0, ''),
(228, 'ecadena', '$2y$10$Zl4fLVQyNqsvOawp2gbmZ.5pXWccY6/dIaWgHwKYQ0w5wPcuEZ7QC', 'ecadena@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 15:47:11', 'Edith', 'Cadena', '0', 16, 0, 0, ''),
(229, 'asandoval', '$2y$10$hQlo2IO15YANWlupf19jYOvetuKgXPJ4Q.XZt9NRmDCYrGg548zkm', 'ASandoval@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:43:58', 'Angela', 'Sandoval', '27698', 15, 0, 2, ''),
(230, 'fmerino', '$2y$10$Tn1HpMiqgryZXVJpeIBNpep3KpWX4sVaTrIVtM./wMuTRUahXw1IG', 'FMerino@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:24:53', 'Francisco', 'Merino', '0', 16, 0, 2, ''),
(231, 'ccoronado', '$2y$10$0X/8dIERSJFrrYKrspT69OOUM1nbXy2rBWHqZ0yrBHv72udpNO6x.', 'CCoronado@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 15:53:44', 'Clariza', 'Coronado', '0', 16, 0, 0, ''),
(232, 'lcastro', '$2y$10$wL5lYLur3MhRjKxMuPxgMOwZFximbUhiHwKxKiCGEL57RMJlKjaz6', 'LCastro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 15:54:23', 'Lenin Oliver', 'Castro Arambula', '0', 16, 0, 0, ''),
(233, 'mverduzco', '$2y$10$RkzkBNsQ4qlLI3o8dL00keV9g/bZAOuIuomkhOidgDzCqFmWna6fS', 'mverduzco@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 17:25:01', 'Miguel Alberto', 'Verduzco Acosta', '0', 7, 0, 0, ''),
(234, 'alagos', '$2y$10$S7m96VXepCUaoPc/c.WITee0UpQjpT5//sg64irZ5uET8w1AiVuVK', 'alagos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 17:43:03', 'Alvaro', 'Lagos', '0', 7, 0, 2, ''),
(235, 'tcervantes', '$2y$10$Qf0VOut.zx0/OlDuCxRsxu3y4xDL0rnT3lwZu.jo3MDBR9GtKjM4y', 'teresa@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-09 23:54:45', 'Teresa', 'Cervantes', '0', 5, 0, 2, ''),
(236, 'fnava', '$2y$10$ckNbwf2vE6JZe6srJI1fAeqY8OoklxWQt2rygJWwDYF3N./WtkW1S', 'fnava@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 18:56:46', 'Edmundo', 'Nava', '0', 5, 0, 2, ''),
(237, 'vlopez', '$2y$10$NccEyWf2Dm3XTVB8IEXsce2J9wCZ8Uj.PPu3og9YpARqe8v8Jh2Ym', 'vlopez1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 17:42:25', 'Victor Manuel', 'Lopez', '0', 9, 0, 1, ''),
(238, 'rgodoy', '$2y$10$vDZNqFi.C3Ct3A966i8p5O876x068b2lSsPHt73lAWDihQVbof2U.', 'ruben@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-29 18:28:07', 'Ruben', 'Godoy Celaya', '0', 19, 0, 2, ''),
(239, 'gmartinez', '$2y$10$l64XWc4esdcYN3iTGq41/enBDKSWUpd3OtkHzgGbok3bYSmYoh9gG', 'gmartinez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-09-30 14:20:30', 'Gerardo', 'Martinez Leyva', '32637', 19, 0, 0, ''),
(240, 'ljauregui', '$2y$10$vwOwqrito4u10pHHnY/1HuSPNZysN7s4x6dSlOTjhiYsHN4Ynm5CO', 'ljauregui@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 20:58:51', 'Leandro', 'Jauregui Herrera', '32831', 2, 0, 0, ''),
(241, 'carevalo', '$2y$10$HA8hdFdrkEC.3cVMjj7roOyNG8zSw.8YFvNfdwInqPfClLinR1dNy', 'CArevalo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 01:16:08', 'Christian', 'Arevalo', '0', 20, 0, 2, 'uploads/profiles/1588073881foto.png'),
(242, 'mmacias', '$2y$10$E69hbcXrUqfDRyltARIl0u3xzncYMxfQHm61Q8.GXz1PYjTdprgjq', 'MMacias@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-06 15:12:55', 'Monica', 'Rodriguez', '0', 21, 0, 0, ''),
(244, 'avaldez', '$2y$10$GZmfR7/rcYHF7gFArU3abeSrU6HUVw9BVEHEP5Kh4/JmOnmP7zORy', 'avaldez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-07 21:17:14', 'Alejandro', 'Lau Valdez', '0', 8, 0, 2, ''),
(245, 'sceballos', '$2y$10$UjxhHr09EAwT9GoHeZdDLuCyGf8wnct3fZlV.DHSkQUopPuQxCHfC', 'sceballos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-21 10:40:45', 'SANDRA KARINA', 'CEBALLOS HERRERA', '28528', 3, 0, 0, 'uploads/profiles/34247007749-490134_another-sk-initial-combination-full-hd-sk-logo.jpg'),
(246, 'gdominguez', '$2y$10$/o5SM3lbYbO355.GIHY/jeWzqfFyW2yuHrlh0eNY8sFF4QIhDErNi', 'gdominguez@matechmedical.com', '', '2022-02-16 21:58:45', '2020-10-08 12:11:39', 'gustavo', 'dominguez', '43890', 5, 0, 0, 'uploads/profiles/newuser.png'),
(247, 'Rgutierrez', '$2y$10$pIaakjpiJUVqaDqfetl.3u.rjWUjlJtukoxpzfj9A10aDNGIAqrTe', 'Rgutierrez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-10 12:43:55', 'Ramon', 'Gutierrez Vega', '10236', 5, 0, 0, 'uploads/profiles/505305299Screenshot_20200509_165732_com.google.android.apps.photos.jpg'),
(248, 'DBELLO', '$2y$10$YMevpOCPLIZ0c0Cnlz8sp.Ck5fPmzbr.Nr8nIN0UlPfOJQgBp4AAS', 'dbello@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-08 18:23:35', 'DIOSELIN', 'BELLO ATANACIO', '31276', 5, 0, 0, 'uploads/profiles/newuser.png'),
(249, 'MVALENZUELA', '$2y$10$3VJse6emo/PxZwu7FwU3UOSQr8iwm8WUtlMAMZKCqPSndVSKZpq82', 'mariaramirez2108@Hotmail.com', '', '2022-02-16 21:58:45', '2020-10-09 11:00:51', 'MARIA ANTONIA', 'VALENZUELA RAMIREZ', '25567', 3, 0, 0, 'uploads/profiles/newuser.png'),
(250, 'mmeza', '$2y$10$/5TxGvaPd19ZmsEVKIoghO.wPNxo0cAyD58zJnRgotmE/prteQzFC', 'mmeza@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-09 17:59:01', 'Martha Elena', 'Meza Burgos', '21519', 5, 0, 0, 'uploads/profiles/874343879Martha Meza.jpg'),
(251, 'pchaparro', '$2y$10$plwdW67cAUYW81QwcRA.DuJtgyOnHanNHi9yd1zByw525JiV6Geu6', 'p.chaparro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-14 00:14:28', 'PENELOPE', 'CHAPARRO GARCIA', '32148', 5, 0, 0, 'uploads/profiles/newuser.png'),
(252, 'CRECENCIATERAN', '$2y$10$CUzQSGhfUvi8cXLj1tTe1u4qocuguDYtRsXRl/aB.LNyh6FCOaUVS', 'crecenciateran@gmail.com', '', '2022-02-16 21:58:45', '2020-10-10 23:21:39', 'CRECENCIA', 'TERAN', '34456', 5, 0, 0, 'uploads/profiles/newuser.png'),
(253, 'PAULINAMATEO', '$2y$10$3oBnt59nAFEcARWw3teB3eD65mqq7mvC50GWgu9zQtDLgK9oLJtMS', 'paumateo120@gmail.com', '', '2022-02-16 21:58:45', '2020-10-10 23:54:09', 'PAULINA', 'MATEO', '43884', 5, 0, 0, 'uploads/profiles/newuser.png'),
(254, 'ELSACUAMEA', '$2y$10$GyOMYlNFKMlrigMOxw63huOIezwzLm6gSx5Jd84rkDi9BgYoFfdGq', 'cuameafloreselssamaria@gmail.com', '', '2022-02-16 21:58:45', '2020-10-11 00:26:58', 'ELSA', 'CUAMEAFLORES', '43793', 5, 0, 0, 'uploads/profiles/newuser.png'),
(255, 'ESTEFANIAOSORIO', '$2y$10$.0shh9NAyZbxw/qjsq1rn.ozAymcnwKDb8oJ9BH3Tc/q9vKwt3hT.', 'esteftty@gmail.com', '', '2022-02-16 21:58:45', '2020-10-11 02:18:05', 'ESTEFANIA', 'OSORIO', '44370', 5, 0, 0, 'uploads/profiles/newuser.png'),
(256, 'LUCEROMARTINEZ', '$2y$10$B0F2UZ42mmuGliRondzQc.02zUGqh59Pj.yYLoYvA.niKqyMIFuHm', 'martinezlucero844@gmail.com', '', '2022-02-16 21:58:45', '2020-10-11 02:30:22', 'LUCERO', 'MARTINEZ', '44027', 5, 0, 0, 'uploads/profiles/newuser.png'),
(257, 'ADRIANVARELA', '$2y$10$Af.3HszfcKMf0jXMpM2rSeHbxSTp6olZABwGqDwETxDRAo8v0m9Tm', 'varel@live.com.mx', '', '2022-02-16 21:58:45', '2020-10-11 03:02:29', 'ADRIAN', 'VARELALOPEZ', '43741', 5, 0, 0, 'uploads/profiles/newuser.png'),
(258, 'RAQUELROSALES', '$2y$10$1WzfN4t2Dvmin.1I0r6DLuC894lL48A.6MZJSMCgxzI4FAI6w6Hii', 'raquelrosalescast7@gmail.com', '', '2022-02-16 21:58:45', '2020-10-11 03:25:47', 'RAQUEL', 'ROSALESCASTAÑEDA', '31815', 5, 0, 0, 'uploads/profiles/newuser.png'),
(259, 'DGARCIA', '$2y$10$jI.Om0d2VE6sCU8NmQ1YQe3tZ5MVhn0Q8LffEWzD//hpGG3cRQ5Ia', 'dgarcia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-12 19:46:03', 'Diana Patricia', 'Garcia Martinez', '20601', 5, 0, 0, 'uploads/profiles/908795505Diana García.jpg'),
(260, 'ADRIANADUENES', '$2y$10$21c1nQygztrDP2rRr2lQXuWq/KzMW/eYrFJkRUqzX9Cb.RMKY18s2', 'adrianaabril@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 07:58:55', 'ADRIANA ABRIL', 'DUEÑES ORANTES', '26848', 5, 0, 0, 'uploads/profiles/newuser.png'),
(261, 'ALEJANDRALEON', '$2y$10$l/aJ0Rm77pymk/AUwpd6H.ph8rMLghK96xhHSgtlx10vb9y6lDW.2', 'alejandra12armenta@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 08:11:02', 'ALEJANDRA GUADALUPE', 'ARMENTA LEON', '40780', 5, 0, 0, 'uploads/profiles/newuser.png'),
(262, 'ROBERTOARREDONDO', '$2y$10$T59CMA/bRUegblLvqDQpNeGG5R7EsseAxBGy2NqGxYCRDdIqyrao6', 'katans24@outlook.com', '', '2022-02-16 21:58:45', '2020-10-13 08:17:59', 'JUAN ROBERTO', 'LOPEZ ARREDONDO ', '44743', 5, 0, 0, 'uploads/profiles/newuser.png'),
(263, 'MARCELAPEREZ', '$2y$10$hTsrdCtPMRp1Nd21TEwVhOWWThIpyRm8z9i.Dqa6rG6r/GlGQTrl2', 'marcelaperezcontreras491@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 08:40:23', 'MARCELA ', 'PEREZ CONTRERAS', '12037', 5, 0, 0, 'uploads/profiles/newuser.png'),
(264, 'MYRNACASTRO', '$2y$10$2jc99Ri9HBgn1rXljG10UupVUeb7T5NMIPBsx4VLQXOWyXH8U9f7y', 'Myna.123@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-13 08:49:51', 'MYRNA GUADALUPE', 'CHAVEZ CASTRO', '24584', 5, 0, 0, 'uploads/profiles/newuser.png'),
(265, 'ABRAHAMZATARAIN', '$2y$10$RDJlAPJaqf9oJt29mGB6eecsDAty8yJ5.mrQajPIBuEVdrtD2daBm', 'Abraham.vegeta7@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 08:56:01', 'ABRAHAM', 'RAMIREZ ZATARAIN ', '44555', 5, 0, 0, 'uploads/profiles/newuser.png'),
(266, 'LUZLACHICA', '$2y$10$Fyn0uOgbFLIhYztOdQPh8.ijZfNDsi9dCSBJdSQu0FrygM/MowE/.', 'gutierrez.vero573@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:06:51', 'LUZ VERONICA', 'GUTIERREZ LACHICA', '39745', 5, 0, 0, 'uploads/profiles/newuser.png'),
(267, 'OMARZUNO', '$2y$10$dUXav2BtZYZtmjd8Up2tKe.BSesiHemNXXDaNO2ousIGhPREYsB.a', 'omarlgns123@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:11:28', 'OMAR ', 'ZUNO OCHOA', '44729', 5, 0, 0, 'uploads/profiles/newuser.png'),
(268, 'VIRIDIANASINECIO', '$2y$10$dqD/cysaZW0u7IGv71LBwe6eni4Z2WSdvHMA.iHbadqhw4CIR9Z9m', 'sinecioviridiana0121@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:15:56', 'VIRIDIANA', 'SINECIO GONZALEZ', '42609', 5, 0, 0, 'uploads/profiles/newuser.png'),
(269, 'CARMENAQUINO', '$2y$10$j9pZkkJz.HFRC9ejAC.byerx4Sou0a61qF0tP89b5xt63UFMMNy2a', 'leonel_prez@outlook.com', '', '2022-02-16 21:58:45', '2020-10-13 09:21:52', 'MARIA DEL CARMEN', 'SANCHEZ AQUINO', '32719', 5, 0, 0, 'uploads/profiles/newuser.png'),
(270, 'MYRNACORRAL', '$2y$10$QibzVLum5zodqH5qqOj8/e/ZOlHcMg7JwjBXwACJtcvn3aDrJ3KSq', 'myrnacorral169@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:32:24', 'MYRNA ARACELY', 'CORRAL MARTINEZ', '18001', 5, 0, 0, 'uploads/profiles/newuser.png');
INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_phone`, `date_create`, `date_update`, `user_firstname`, `user_lastname`, `id_number`, `department_id`, `isadmin`, `manager`, `profile_pic`) VALUES
(271, 'DIANASALGADO', '$2y$10$1O7zTRkQn2BPYoBpVX0GxOjCiVuhFFhF5oO.8UeSQSCyenfWbJdGC', 'salgadoquintero1@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:37:14', 'DIANA FERNANDA', 'SALGADO QUINTERO', '43897', 5, 0, 0, 'uploads/profiles/newuser.png'),
(272, 'GABRIELGAMBOA', '$2y$10$ZdOqskMj.uZ0EQsYMz1sN.HjUBqvocdOx3MsjlZwAgrNEZbvOAGXC', 'm.gabriel645@gmail.com', '', '2022-02-16 21:58:45', '2020-10-13 09:40:40', 'GABRIEL ', 'VALDEZ GAMBOA', '44554', 5, 0, 0, 'uploads/profiles/newuser.png'),
(273, 'KARINAVARGAS', '$2y$10$a5hVfqh9cy2J8mUYTlN9xOYPmmvQhhmiJOdn..TU7q/cAFUqAzkiy', 'normaKarinavargasdelgado@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 09:01:54', 'NORMA KARINA', 'VARGAS DELGADO', '15673', 5, 0, 0, 'uploads/profiles/newuser.png'),
(274, 'LAURARIOS', '$2y$10$brfvw4bEIq7KzSS0yH7U4.TMVxZd.zoVsbxopNAgRMyPVtGAbUNau', 'laurarios240686@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 09:05:45', 'LAURA', 'RIOS LOPEZ', '39014', 5, 0, 0, 'uploads/profiles/newuser.png'),
(275, 'MARIAZAPIEN', '$2y$10$UUEwtalSg3O2RLQ6QwmvE.EijJSuO1DS79T5f1Zc5ovvQLP.lUn/q', 'Samuelmartinez9@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 09:20:53', 'MARIA FERNANADA', 'RODRIGUEZ ZAPIEN', '45023', 5, 0, 0, 'uploads/profiles/newuser.png'),
(276, 'MARIACABRAL', '$2y$10$2ARmI50Nmfpx32565wxkOOdijfCoyfkKwE1Ts/20Xt/7OWtX9F0Ji', 'mariadelaluzcabral655@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 09:28:36', 'MARIA DE LA LUZ ', 'CABRAL CISNEROS', '28540', 5, 0, 0, 'uploads/profiles/newuser.png'),
(277, 'LIZBETHIRIARTE', '$2y$10$0UvJHZAWv4wdhWyjWxENP.B2Wl/0qrTarUm3dc.EyIuG9ly.1JTX2', 'lizbeth.iriarte@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 09:49:40', 'LIZBETH', 'IRIARTE', '43653', 5, 0, 0, 'uploads/profiles/newuser.png'),
(278, 'erobles', '$2y$10$.ayIjMgpyv2peHNAyUs1veghDISsupT/61E/Arw2QQavYFJ9NlSN6', 'robleselsa@gmail.com', '', '2022-02-16 21:58:45', '2020-10-21 08:28:32', 'Elsa Candelaria ', 'Robles Madrigal ', '16456', 5, 0, 0, 'uploads/profiles/newuser.png'),
(279, 'mmontoya', '$2y$10$7zM3Dqq5JUvzs6SMS1Rgm.YKPVUAHzSUN7Eq7rOf8dl/0pseSJf6K', 'montoyam01@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:10:23', 'Maria Lourdes', 'Montoya Montoya', '26436', 5, 0, 0, 'uploads/profiles/newuser.png'),
(280, 'crodriguez', '$2y$10$9/C1fX5utVSSH53S1ARPiuWSvVJ8rXeNXudQAXUxL6keS0fB3DpfO', 'cecy_0318@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:12:48', 'Cecilia Alondra ', 'Rodriguez Pompa', '26580', 5, 0, 0, 'uploads/profiles/newuser.png'),
(281, 'avera', '$2y$10$HLKxfhJxBSwDZz95v6rsse18vcy6GOnHyFdydu9md/IpHHdCDhzhe', 'angelicavera1708@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:15:35', 'Angelica', 'Vera Cervantes ', '28897', 5, 0, 0, 'uploads/profiles/newuser.png'),
(282, 'ghuitzil', '$2y$10$ldpOma8xpIo6ok1g7XvBUeFMFM73IIKK7V4SMwTLsbLM8oEfZ3otC', '0073.lupita@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:22:26', 'Guadalupe', 'Huitzil Sandoval', '30145', 5, 0, 0, 'uploads/profiles/newuser.png'),
(283, 'nmariscal', '$2y$10$L9gH6XGQzZ1AyIxkB77dc.l/gLpUi1NZTsu3SgRo2OgHJjnhXCIBW', 'nidia.mariscal001@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:32:03', 'Nidia Berenice ', 'Mariscal Perez', '38852', 5, 0, 0, 'uploads/profiles/newuser.png'),
(284, 'mcampos', '$2y$10$STKaBtUFz/AL.5oEpdEORe34kS/HvXitwV0EGj1nnaYbdMY/Lm/Xa', 'yoselinfranco666@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:37:33', 'Samantha Yosselin ', 'Franco Aguilar ', '41541', 5, 0, 0, 'uploads/profiles/newuser.png'),
(285, 'arizo', '$2y$10$SwfxPNDSqFbjfmxO6cBX3OkUlcXRDopJT6L/YoBEwiM26c.Rg7pW2', 'rizortegana1998@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:41:17', 'Ana Laura', 'Rizo Ortega ', '41981', 5, 0, 0, 'uploads/profiles/newuser.png'),
(286, 'igaeta', '$2y$10$NW0Ikx8GQavYHkrZCvF5nOcAdXUPLt5u..qy9VXIytZ0iTpmE73Zm', 'igaeta45@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:45:55', 'Irene Bertha', 'Gaeta Carrillo', '42808', 5, 0, 0, 'uploads/profiles/newuser.png'),
(287, 'avazquez', '$2y$10$xQM02KLICe6zsFPQgTPJ7uRHFj1SPbcMafhxCQkIGbstsRhZSzFva', 'adrianaimelda15@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:48:00', 'Adriana Imelda', 'Vazquez Felix', '20532', 5, 0, 0, 'uploads/profiles/newuser.png'),
(288, 'ogarcia', '$2y$10$1TsuGu6zwxqg8PCGsIXvUusxAW2S4ERsaG9XpWcL2oN04SJWosleK', 'olga.garcia001@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:49:38', 'Olga Lidia ', 'Garcia Herrera ', '42989', 5, 0, 0, 'uploads/profiles/newuser.png'),
(289, 'FERNANDAZAPIEN', '$2y$10$uSH1.NFMqsYEOwveK.az.OSERJBNrI78B2vwTT7oeGakXjxTaqGhO', 'Samuelmartimez9@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 11:55:27', 'MARIA FERNANADA ', 'RODRIGUEZ ZAPIEN', '45023', 5, 0, 0, 'uploads/profiles/newuser.png'),
(290, 'fmontoya', '$2y$10$3CYKuaeE3m7SJPwXnQ/Tj.QF4nkJ4E60KZh3fBYb7SUPB6dmSM6Ti', 'araseli.montoya@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:33:18', 'Fca. Dolores ', 'Montoya Acosta ', '43339', 5, 0, 0, 'uploads/profiles/newuser.png'),
(291, 'ybustos', '$2y$10$/Mskk3IES/U9xm418GMIZeK/9VvXVYg9Skx/UrckMsAsMg.o4U7c6', 'yanethbustos782@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:36:04', 'Yaneth', 'Bustos Echeverria ', '43363', 5, 0, 0, 'uploads/profiles/newuser.png'),
(292, 'lpatino', '$2y$10$x8ygEVlnik9AT02KuDSDKOGiOwAuVAa.5ndnzef/u5Giy6M.Wsmju', '6863957435za@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:38:30', 'Maria Laura ', 'Patiño Vasquez', '41759', 5, 0, 0, 'uploads/profiles/newuser.png'),
(293, 'aalvarez', '$2y$10$vqWVJVU0O9eFGebmnLc5iu2l5KxnnHrUyqAiPMnGJF6ioOSVxWf/q', 'alvarezalan214@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:40:09', 'Alan Manuel ', 'Alvarez Ochoa', '44527', 5, 0, 0, 'uploads/profiles/newuser.png'),
(294, 'emorones', '$2y$10$eFtOWNm/QkKWSKt1wP/epOfoV2jakARG6kPid.10LRL.JDFvN/0fC', 'fernando_partida12@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:42:18', 'Ericka', 'Morones Viera ', '42337', 5, 0, 0, 'uploads/profiles/newuser.png'),
(295, 'aharo', '$2y$10$RxDl25OIVftGYSXB8CWBHuTyjtbyMcHdxBjuIzhnvFJxttMD.v5Iy', 'avidfull27@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:44:06', 'Abraham  Avid ', 'Haro Garcia ', '44582', 5, 0, 0, 'uploads/profiles/newuser.png'),
(296, 'pruelas', '$2y$10$kIraJEBb4PvOocJMfyraGOS2rGL/12fe8i1N.BluLpymwkGLCB6X.', 'patriciaruelas20@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:47:54', 'Patricia ', 'Ruelas Castañeda ', '44657', 5, 0, 0, 'uploads/profiles/newuser.png'),
(297, 'jarivera', '$2y$10$IZnmTWyvhaOMqn2KRtSyjugCX9k8NEcNClklAgf/sLdcTc4tA4ys2', '01606922@cobachbc.edu.mx', '', '2022-02-16 21:58:45', '2020-10-16 07:25:20', 'Jesus Armando', 'Rivera Valenzuela ', '44728', 5, 0, 0, 'uploads/profiles/newuser.png'),
(298, 'blopez', '$2y$10$V5fw3BwmPtm1R8wgpbe7IOVAhu5kjZX1LVPkz93rLBDOm2JTsMiaC', 'fabiolalopez2728@gmail.com', '', '2022-02-16 21:58:45', '2020-10-27 07:51:03', 'Beatriz Fabiola ', 'Lopez Angulo ', '44721', 5, 0, 0, 'uploads/profiles/newuser.png'),
(299, 'cromero', '$2y$10$Sbuhe1unEbtuqztkmizk.uQTaFlBNMnechkYLIR3KSBUfzawSJmFe', 'cromero0784@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:58:05', 'Claudia Margarita', 'Romero Vidaurry', '44976', 5, 0, 0, 'uploads/profiles/newuser.png'),
(300, 'elugo', '$2y$10$G294iuw4zL7Klasm.efDQu7bAJBkvJJ5V83vJZv0f7RCpBvDo3vDi', 'damialberto2404@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 12:59:37', 'Elsa Guadalupe', 'Lugo Mota ', '44818', 5, 0, 0, 'uploads/profiles/newuser.png'),
(301, 'mmorales', '$2y$10$0L6tht2rPc6wL5gprJZcBe.KzaqNcfZ3oZqotH/Gc502GixQzBVim', 'manuel.morales2501@gmail.com', '', '2022-02-16 21:58:45', '2020-10-14 13:01:22', 'Manuel', 'Morales Moroyaqui', '44733', 5, 0, 0, 'uploads/profiles/newuser.png'),
(302, 'CHAVERO', '$2y$10$coBwwGlznnLGAkxgZtIcMOYkP0/.h9iBLpuIsIyNgz0Ca1idN9Ibe', 'mami.chula_@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-15 07:02:04', 'JUANA', 'CHAVERO JUAREZ', '33089', 3, 0, 0, 'uploads/profiles/newuser.png'),
(303, 'MLOPEZ', '$2y$10$1miYHbuROxLTtQYzSMkyrOlvKxTF1l.fACuyGeynH2jkcYYJ90.i.', 'ISABELSOL320@GMAIL.COM', '', '2022-02-16 21:58:45', '2020-10-15 07:11:45', 'MARIA ISABEL', 'LOPEZ CARDENAS', '28882', 3, 0, 0, 'uploads/profiles/newuser.png'),
(304, 'PMEZA', '$2y$10$DmwvM6rwA2LMFGovqFim9.KkDenGy9JEmZ4bfTXdq1yUM9YG5Bux2', 'PERLAMEZA6471@GMAIL.COM', '', '2022-02-16 21:58:45', '2020-10-15 07:39:24', 'PERLA MARINA', 'MEZA PEREZ', '30219', 3, 0, 0, 'uploads/profiles/newuser.png'),
(305, 'cgarnica', '$2y$10$9JH4d58qAWJ2dQ06gnY1x.iP.Zny2vNN4lQIovPhNndd64ZcqtnS2', 'karitoyjuanperez@gmail.com', '', '2022-02-16 21:58:45', '2020-10-15 10:25:17', 'carolina matilde', 'garnica razo', '16226', 3, 0, 0, 'uploads/profiles/newuser.png'),
(306, 'CSOLORIO', '$2y$10$coTPZ7P7BiRP0nukf3NO/er8awq3uSXaNrAUBYSHF9ll/CkSVuY/W', 'RAMOSS_21@HOTMAIL.COM', '', '2022-02-16 21:58:45', '2020-10-16 02:22:04', 'CINTHYA BERENICE', 'SOLORIO AISPURO', '30164', 5, 0, 0, 'uploads/profiles/newuser.png'),
(307, 'KASSANDRAAVALOS', '$2y$10$JjOayB4UAYzj5A0B8I6L8.riaj1SuHoCGyV.9xx7LK68N000BZ/rK', 'KareenLazalde@gmail.com', '', '2022-02-16 21:58:45', '2020-10-16 11:23:05', 'KAREEN KASSANDRA', 'ANGUIANO AVALOS', '40145', 5, 0, 0, 'uploads/profiles/newuser.png'),
(308, 'EDUARDODANIELS', '$2y$10$l.zdrGyH0zGgfCXL7qiCn.SFFunH1ZmzrnCv3ceShvSsdJ0aSMAxW', 'astronauta_urbano@outlook.com', '', '2022-02-16 21:58:45', '2020-10-16 11:27:09', 'EDUARDO ', 'DANIELS LUJANO', '43896', 5, 0, 0, 'uploads/profiles/newuser.png'),
(309, 'ISABELSAINZ', '$2y$10$dVMtQfA7vxHz4dnmAUb2gOV5o1Tk68bqhRaYytFI6plrIqoEkdXYK', 'IsabelSainz26@gmail.com', '', '2022-02-16 21:58:45', '2020-10-16 11:31:13', 'ISABEL ', 'SAINZ SANCHEZ', '31213', 5, 0, 0, 'uploads/profiles/newuser.png'),
(310, 'MIRNABERNAL', '$2y$10$b9NapEgEVge9iGvjGOqGO.9a5sk4cFWJr8xcq7ya8bVxvAlAN4LYK', 'mirnabernalosuna@gmail.com', '', '2022-02-16 21:58:45', '2020-10-17 10:07:59', 'MIRNA DEL ROSARIO ', 'BERNAL OSUNA', '27686', 5, 0, 0, 'uploads/profiles/newuser.png'),
(311, 'DARIVERA', '$2y$10$L5a2zG2cSgCwqTX5Z4fSq.n36Lh2isd2yZbxzvVRh5dKJqQR4..u6', 'arriaga202@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-17 10:21:37', 'DANIEL', 'ARRIAGA RIVERA', '44873', 3, 0, 0, 'uploads/profiles/newuser.png'),
(312, 'guadalupegalindo', '$2y$10$8foAtCf7YdRnDswWsubh7.ZIrVPXnoGbG08DEIost6EE5SxrW5KMu', 'galindo2014@outlook.com', '', '2022-02-16 21:58:45', '2020-10-19 19:43:51', 'guadalupe', 'galindo', '18176', 5, 0, 0, 'uploads/profiles/newuser.png'),
(313, 'Raquel', '$2y$10$JH9BVCsQ53t2DQnS5Uz9Ze/fP5NboE1JNyd3yDj3cyMKq3Xxv5Dd6', 'rmarcial@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-22 05:22:25', 'Raquel', 'Marcial Rojas', '30141', 3, 0, 0, 'uploads/profiles/692014925Raquel Marcial.jpg'),
(314, 'Maguirre', '$2y$10$YEfkdaFjYLYt2brkhhgVROY.DKz3DBH7AuhCcj.wJmUV.5k9srS5C', 'Maguirre@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-21 08:04:27', 'MARA CELENE', 'AGUIRRE AGUIRRE', '9924', 5, 0, 0, 'uploads/profiles/newuser.png'),
(315, 'MGOMEZ', '$2y$10$kpuW2Hz.3BkWPx/SI2TmH.4vuIUCqEB6aI7peMyRH5HsDS33GnU8W', 'mgomez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-21 08:38:42', 'Mario', 'Gomez Araiza', '33305', 5, 0, 0, 'uploads/profiles/newuser.png'),
(316, 'sfranco', '$2y$10$sOlBeMHm5DenWlebJDjI1.qWpFScer4TCMcmE59VPd.wr0IHz/v2O', 'yoselinfranco0666@gmail.com', '', '2022-02-16 21:58:45', '2020-10-31 08:30:17', 'Samantha Yosselin ', 'Franco Aguilar ', '41541', 5, 0, 0, 'uploads/profiles/newuser.png'),
(317, 'VICTORIAQUEZADA', '$2y$10$dWPvqMSZBAkpubyklgv5JOndkWie3l15m1XSGXAoiEs4tbxvYgbLS', 'vickyqp09@gmail.com', '', '2022-02-16 21:58:45', '2020-10-22 12:02:20', 'VICTORIA ', 'QUEZADA PEREZ', '27535', 5, 0, 0, 'uploads/profiles/newuser.png'),
(318, 'Maricela', '$2y$10$NpLmrFIiEjhpa5xSfDOevur6P6MkwAOqx8398OdtHrT3p/O/kqCjG', 'mybabychikita@gmail.com', '', '2022-02-16 21:58:45', '2020-10-22 23:58:38', 'Maricela', 'Medina Ruiz', '14984', 3, 0, 0, 'uploads/profiles/newuser.png'),
(319, 'Georgina', '$2y$10$SWW4vTjO54CadawY5W3atuYNU6POjq4LxbFhwxsiWmdYa5PBNjlqi', 'geo_gina1@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-23 23:14:50', 'GEORGINA', 'ORTEGA', '17763', 3, 0, 0, 'uploads/profiles/newuser.png'),
(320, 'JAQUELINE', '$2y$10$t.KqyRoUJbFdoMdR7JFQuO3Uuqsi1.9S2745wkAKDQCjMcNFuRPLS', 'theprettywonderful@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-23 23:52:42', 'JAQUELINE', 'HERNANDEZ', '42312', 3, 0, 0, 'uploads/profiles/newuser.png'),
(321, 'MarcoAlan', '$2y$10$aCDJn1jvcfurd143Gw4wIODsJWgNNEU6U19BRzQFc9hquX.zj7.9u', 'martinezmarcoalan@gmail.com', '', '2022-02-16 21:58:45', '2020-10-24 00:23:59', ' MarcoAlan', 'Martinez Rosales', '44922', 3, 0, 0, 'uploads/profiles/newuser.png'),
(322, 'marthalaura', '$2y$10$Cr/tPr1zw94qRnmw2Wgl4OShn94zV6kEBFZCoI7tczMLWG.OnZcKm', 'martha.rmz.74@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-24 00:44:49', 'martha ', 'ramirez ochoa', '41421', 3, 0, 0, 'uploads/profiles/newuser.png'),
(323, 'MPERES', '$2y$10$3YB7616tRDX.BdMi3vJvEePXnrblQtZVwtkZUbQEqMIR1F6fFuh..', 'eliza_mary98@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-24 00:44:57', 'MARICELA ELIZABETH', 'PERES MENDEZ', '43571', 5, 0, 0, 'uploads/profiles/newuser.png'),
(324, 'Laisha', '$2y$10$U3N.jcfrBfytt9D/2rJmSemNBei36HhMhH6HuywhlSABOaP1MPOKy', 'ruizpatricia1717@gmail.com', '', '2022-02-16 21:58:45', '2020-10-24 01:11:21', 'Laisha', 'Ruiz', '44793', 3, 0, 0, 'uploads/profiles/newuser.png'),
(325, 'liliana', '$2y$10$oaddQmWqFEtVMbBQLngp0.OLb2ZrsT5e2SooCSmJ8KaIA3By7RVvy', 'ana_ely77@gmail.com', '', '2022-02-16 21:58:45', '2020-10-24 03:03:01', 'liliana', 'diaz', '32915', 3, 0, 0, 'uploads/profiles/newuser.png'),
(326, 'ROSAMARIA', '$2y$10$TpPjJw4H4cGIt/Wa98x6D..jJOmpNKlyFGPac6Ar/NfHlAbAS7alq', 'rosamariadelacerdasandoval@gmail.com', '', '2022-02-16 21:58:45', '2020-10-24 04:12:08', 'ROSAMARIA', 'DE LA CERDA', '24993', 3, 0, 0, 'uploads/profiles/newuser.png'),
(327, 'Gabriela', '$2y$10$jAEuaazzFIoRNXCo2OsRA.AK190FSGvjQRlsgvk4d3W0bY4hvesoC', 'kitmime@hotmail.com', '', '2022-02-16 21:58:45', '2020-10-24 04:49:18', 'Gabriela', 'Singh', '40135', 3, 0, 0, 'uploads/profiles/newuser.png'),
(328, 'joseapodaca', '$2y$10$S.la7Zl5I37B.ZIwlrxxj.z5CqYCYyFPDg8r90jonDKxVU/ieeHsa', 'japodaca@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-27 06:28:04', 'Jose Enrique', 'Apodaca', '40136', 3, 0, 0, 'uploads/profiles/newuser.png'),
(329, 'AMORENO', '$2y$10$gs2QcN67g.1raeDbZfIvaexuTD0rHTCFZQvaaVfZ5qBgUBJQoZTY6', 'AMoreno@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-27 06:20:51', 'Armando', 'Moreno', '40951', 5, 0, 0, 'uploads/profiles/361131169Armando Moreno.jpg'),
(330, 'GAMARILLAS', '$2y$10$PzmnNcmEjM8AR6SFh3MhQ.io4X7er.2hs951a3qal4wnYAQGpk5AW', 'griceldaamarillas14@gmail.com', '', '2022-02-16 21:58:45', '2020-10-27 11:51:04', 'GRICELDA ', 'AMARILLAS MURRIETA', '18704', 3, 0, 0, 'uploads/profiles/271710400g.jpg'),
(331, 'rmillan', '$2y$10$NL80CaFI3Q3mozY.Vtvk..Who5ZC2Tkw5oQqND3kpWuFHlCnL3Q/e', 'Rmillan@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-28 04:35:09', 'rosaura', 'millan', '15335', 5, 0, 0, 'uploads/profiles/newuser.png'),
(332, 'Araceli', '$2y$10$6tig6qnV8VlBAEZSVvrgw.1oQqvp1TxzYLdJTEktRrFto431Eqa12', 'msalazar@marterchmedical.com', '', '2022-02-16 21:58:45', '2020-11-25 01:08:45', 'Myrna Araceli', 'Salazar Contreras', '43865', 1, 1, 4, 'uploads/profiles/newuser.png'),
(333, 'Aluciano', '$2y$10$bHZHGQ4zRjiHVIXvx0xsxeYfSZEscXJpEn4CnLboXpR0w85ZPNkPu', 'aluciano@martechmedical.com', '', '2022-02-16 21:58:45', '2020-10-30 20:59:03', 'Anita ', 'Luciano', '16303', 5, 0, 0, 'uploads/profiles/newuser.png'),
(334, 'usuariorestore', '$2y$10$HHe0Tns2K3VXQBiPhD./CO.VLMMFH6zEgWEO2.E95F7km1gtajysq', 'resrore@me.com', '', '2022-02-16 21:58:45', '2020-11-02 19:29:19', 'restore', 'me', '0', 2, 0, 0, 'uploads/profiles/newuser.png'),
(335, 'Adrian', '$2y$10$i1ZVht3.7dEEn9OF1sziCe.oTdbzR5RH6ySDjk/fcx3.9ZH5xeALa', 'alopez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 19:05:51', 'Adrian ', 'Lopez', '28656', 3, 0, 0, 'uploads/profiles/newuser.png'),
(336, 'CarlosCelaya', '$2y$10$tKCZ0sZem2Vr/eJ0YutuVuhsdwsAKQaagpf/PYSTH8/ubPgr5IO6i', 'ccelaya@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 22:11:21', 'Carlos', 'Celaya', '41017', 8, 0, 0, 'uploads/profiles/newuser.png'),
(337, 'UOROZCO', '$2y$10$2r.s8Hms4ilDn4n7VWwxCe0n1lHw/78GiL0BzWIzlveyuqp6ZsYfK', 'uorozco@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 19:18:25', 'Ulises', 'Guadalupe', '34142', 15, 0, 0, 'uploads/profiles/newuser.png'),
(338, 'DLopez', '$2y$10$StWsJrUpEzRzNfn3I/uCQ.CN.WxxA3HZKMWlsQOSr/y6/BmBwshGu', 'dlopez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 19:18:47', 'Diana', 'Lopez', '26249', 15, 0, 0, 'uploads/profiles/newuser.png'),
(339, 'galcala', '$2y$10$Ava5XL1UktVEJPIyZrEFM.nF.Yh3zazez3modMMKKlli4rLrJIo96', 'galcala@martechmedicol.com', '', '2022-02-16 21:58:45', '2020-11-04 19:26:02', 'Gustavo', 'Alcalla', '41347', 3, 0, 0, 'uploads/profiles/newuser.png'),
(340, 'cesalabey', '$2y$10$dTb9k9T1.TjvnSYvMZhcgeAE2G9l1/zcybfepeYyZBxJqqprKspVy', 'JMorales@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 19:28:16', 'jaime', 'morales', '26647', 5, 0, 0, 'uploads/profiles/newuser.png'),
(341, 'Michelle', '$2y$10$WG4ru4xkpdx3v.9OItlSJemUgt4EvpdVxXCJnWc7oS8faS7GEp9Ca', 'mgarcia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 21:28:33', 'Michelle', 'Garcia', '27707', 8, 0, 0, 'uploads/profiles/newuser.png'),
(342, 'mariasilva', '$2y$10$TD.aN8kRWx8pKthBL.e1..3O9LspFH51YeqGsAZ/5FKguctQYFFTu', 'MSilva@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 21:30:00', 'María', 'Silva', '43291', 7, 0, 0, 'uploads/profiles/newuser.png'),
(343, 'cvillalobos', '$2y$10$rr7O9uemAjqx.QCu/Kz/u.g3hD3sYFqGWDHO99fEhhFdztQzxPybe', 'cvillalobos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 22:30:09', 'villalobos', 'de la cruz', '15027', 5, 0, 0, 'uploads/profiles/newuser.png'),
(344, 'Claudia15', '$2y$10$LZgYsBmhrwtNn6JAvTOXg.4nSTGiQGNACRSr87YrOukZqcszzJqym', 'CVargas@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 22:34:51', 'Claudia', 'Vargas', '28570', 3, 0, 0, 'uploads/profiles/newuser.png'),
(345, 'ialejandre', '$2y$10$ylPiw4mD7kVQsGWsX4rBWOZE1E/ETwJLss2QPwE8RwYWal.tmkj0y', 'ialejandre@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 22:38:56', 'Alejandre', 'Arreguin', '3868', 20, 0, 0, 'uploads/profiles/newuser.png'),
(346, 'Armando13', '$2y$10$e1coiCR1Ikv9Yy/NEgwGQeM57uAbeCprTBT56Ei3FJ1YkiS9A4JDq', 'aprieto@matechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 22:39:00', 'Prieto', 'Nevarez', '39318', 3, 0, 0, 'uploads/profiles/newuser.png'),
(347, 'GPerez1', '$2y$10$5Kw11wP7a6Pbkr9kYuAW5.psbqSd1R7yIQeBh2t8S7YfjLRFUBIXu', 'gperez1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-04 23:02:32', 'Gibran Gerardo', 'Perez Morales', '44585', 8, 0, 0, 'uploads/profiles/858376615fotogibran.PNG'),
(348, 'MTORRES', '$2y$10$1iLXdZbZu0EN3YMWhNmszuk6azKwfOcLDVnQDubpm4pz0Y/euq42S', 'mtorres@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 00:09:33', 'maria antonieta', 'torres', '32894', 7, 0, 0, 'uploads/profiles/newuser.png'),
(349, 'Igutierrez', '$2y$10$FihRWP3Rag127B9s8c4nlOXSc1OBrWKiKhF3CP73mIdCOurL4cKjm', 'igutierrez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 01:02:00', 'Ismael', 'Gutiérrez', '23208', 8, 0, 0, 'uploads/profiles/newuser.png'),
(350, 'MANUEL', '$2y$10$8ElNqpQiyS6MiTWBP.cAq.ThesdyygE1K5R83EtSgnwYQxthRJhLW', 'JPEREZ@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-11-05 12:39:33', 'JOSE MANUEL', 'PEREZ ARZAC', '34457', 5, 0, 0, 'uploads/profiles/newuser.png'),
(351, 'Sacosta', '$2y$10$.syvZqDVPEg7EMiRDF7M7OnSYEY23.Lm4aT20.8janKMd3MY.PQ5m', 'sacosta@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 15:44:20', 'Samanta', 'Acosta', '44409', 8, 0, 0, 'uploads/profiles/newuser.png'),
(352, 'jsalazar', '$2y$10$ZtZ.Fs.EP1q5f90uaDXuYOk38ext3aA9090HoMvFibri3Xl0eH66u', 'jsalazar@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 16:05:23', 'Joan', 'Salazar', '39665', 8, 0, 0, 'uploads/profiles/newuser.png'),
(353, 'SGALVAN', '$2y$10$yrsz9cNCLeFi3rVyaMcqOukEMQcJNyX30znyvuSb36H8xSZ5erF4S', 'sgalvan@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 16:55:30', 'Samuel', 'Galvan', '40747', 8, 0, 0, 'uploads/profiles/301721823IMG_4008_EDIT.jpg'),
(354, 'asilva', '$2y$10$u.4vYq.uJY2qxfoQ.qOhVOYaXaI3ccil7zwboiULNBCRHj1p0iTXa', 'asilva@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 17:40:36', 'Alex', 'Silva', '33024', 8, 0, 0, 'uploads/profiles/newuser.png'),
(355, 'jflores', '$2y$10$T298jzICQ/evg3j2RlTfLO/AtQ.cBfuf198ObWRttWInEXLyOKXte', 'jflores@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 18:01:12', 'Joel', 'Flores', '40593', 8, 0, 0, 'uploads/profiles/newuser.png'),
(356, 'Armando', '$2y$10$pMqXh1F979giiqFt.OEzJ.RuvoEH96U2AVrB5ZEmnLwxdu8YFj882', 'agongora@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 18:26:39', 'Armando', 'Godinez', '21521', 8, 0, 0, 'uploads/profiles/newuser.png'),
(357, 'GabyG', '$2y$10$LYwK57e2dR.dMvA/Cr3houXQGhhP7RBIaHFU1izOPu2d7kQvZwHHS', 'GGarcia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 19:35:12', 'Gabriela ', 'Garcia ', '40423', 3, 0, 0, 'uploads/profiles/newuser.png'),
(358, 'lauyon', '$2y$10$SU/RRT8VAAsezxZCjj42XuETsjA3Ex7nEilkEl/SsODAjXeAX4K4m', 'lauyon@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 23:31:31', 'Lucero ', 'Auyï¿½n', '41567', 3, 0, 0, 'uploads/profiles/newuser.png'),
(359, 'cchinchias', '$2y$10$.imTbBjvprbGOCly/dWmiu1.BnJzsYbP1PxFScskyIz.r1EQFyYTi', 'cchinchias@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 23:03:41', 'Celso', 'Chinchias', '44642', 8, 0, 0, 'uploads/profiles/1915888934CChinc.jpg'),
(360, 'JAguilar', '$2y$10$UmJX6yyzXscOSLjQFY9wqenELAmfHnDBMsE6hrzgbdVUV/ZCIJQsK', 'jaguilar@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-05 23:30:29', 'Jorge', 'Aguilar', '44783', 3, 0, 0, 'uploads/profiles/newuser.png'),
(361, 'PaulLS', '$2y$10$7RW9PnJ3wrHn/2jedxodqOZIHxIjf0KhUrTGQ/h3tg/95YzOLeyO6', 'plopez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 15:59:34', 'Paul ', 'López', '33429', 8, 0, 0, 'uploads/profiles/newuser.png'),
(362, 'rduenas', '$2y$10$FvZtSSOGeVGPTObViwMEE.smwRvJPOhL77OaOC0nRjyJIqb3xoKcG', 'rduenas@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 16:11:13', 'Ruben', 'Dueñas', '15009', 8, 0, 0, 'uploads/profiles/newuser.png'),
(363, 'GeorgeM8', '$2y$10$Ao3TWUgxBzg/9giOpsYoiur4Uo8x.oDat8HNP1GVCFUhc7.NU5sau', 'jhernandez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 16:15:22', 'Jorge', ' Marquez', '35422', 8, 0, 0, 'uploads/profiles/newuser.png'),
(364, 'Ecordova', '$2y$10$aHCNdp6ADQeXG1PPxcMScepb50UvRFTrJ/CKKwmsu1r1e9Vxy.GEi', 'ecordova@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 19:55:55', 'Enrique', 'Cordova', '15940', 8, 0, 0, 'uploads/profiles/newuser.png'),
(365, 'Jesus', '$2y$10$L77tsMLQwP/al0Aci.zRQOxjknQdDhJzWpNuXnm1GAX4runJzhY/m', 'jcruz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 22:13:26', 'JesÃºs', 'Cruz Rodriguez', '29329', 8, 0, 0, 'uploads/profiles/newuser.png'),
(366, 'klopez', '$2y$10$tZmXDJ3m5S8Urpa3J3KMEuhei/EXoRf9Q79fjgU6qMv73NfcUqzxG', 'klopez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 22:10:47', 'Korina', 'Lopez', '28538', 8, 0, 0, 'uploads/profiles/newuser.png'),
(367, 'Ana', '$2y$10$QrZyJN3ciM.JDFDxLT.IH.IZMJWgvjAAkzLIDuJ.toNDYSjnCcVxW', 'atellez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-06 22:39:08', 'Ana ', 'Hernandez ', '43514', 8, 0, 0, 'uploads/profiles/newuser.png'),
(368, 'JulioCesar', '$2y$10$0W45EOXg1/TVXFLmd1nbU.iD8hM1FX.ha1nbLCseO5EzwsVDHQRRK', 'JRuiz1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-07 01:34:03', 'Julio', 'Ruiz', '45402', 1, 0, 0, 'uploads/profiles/newuser.png'),
(369, 'rcibrian', '$2y$10$Ad4GmyMgaOKOooL.8zg6eeVaE/jznfoo0cHtCXdDwE2O9QKahg56K', 'rcibrian@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-10 21:49:20', 'Ricardo', 'Cibrian', '29565', 8, 0, 0, 'uploads/profiles/newuser.png'),
(370, 'Gonzalo', '$2y$10$EiEiix3MBh.EiOFqKQTupOEm3MIk/kM1HsD/1tJgcx4bjJruhcaeS', 'golopez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-10 21:56:50', 'Lopez', 'Moreno', '30268', 8, 0, 0, 'uploads/profiles/newuser.png'),
(371, 'jdiaz1', '$2y$10$OL0opEQF.6yiJuHdLBFFuOT.LN2C1vQOgUsQrQDVPe44PuyTkjn7S', 'JDiaz1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-10 22:08:07', 'Joaquin', 'Diaz', '30266', 8, 0, 0, 'uploads/profiles/newuser.png'),
(372, 'Pedro', '$2y$10$.HIk65.sX0HBOdek2pnL3.24J1NO1fgdOrtjRgyaIUf1Vr6WPL8hC', 'PMorales@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-10 23:57:13', 'Pedro Alonso', 'Morales Perez', '43820', 3, 0, 0, 'uploads/profiles/newuser.png'),
(373, 'dpaniagua', '$2y$10$Ruk.Uz.m0VATMdK5tEGizOludxl7EgH4F0MFuwOmgXgzXmpbnftXq', 'daniel@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:02:30', 'Daniel', 'Paniagua', '9039', 8, 0, 0, 'uploads/profiles/newuser.png'),
(374, 'Paola', '$2y$10$Fs61rdYRmqqxKgu0vjk5JOxRWmwlfClfue3tLkLKgWx2mb9w52x/a', 'payala@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:03:59', 'Paola', 'Ayala', '40303', 8, 0, 0, 'uploads/profiles/newuser.png'),
(375, 'Haguilar', '$2y$10$5Y0iYhYVgnPQ1N.MoM7a.eCuL5Kc5YpOInQYqPaXQpPj/jsXHkf4G', 'haguilar@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:08:52', 'Hector', 'Aguilar', '39849', 8, 0, 0, 'uploads/profiles/newuser.png'),
(376, 'pmoreno', '$2y$10$xRtoIghb6KLqhMGqTkHtROCmjp9HKAzwnv4vW7L5YdosbpGlCYqZ2', 'pmoreno@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:16:00', 'Pedro', 'Moreno', '43418', 11, 0, 0, 'uploads/profiles/627687035imgbin-fire-icon-gGhqhzeyL4JNz0YBYx2xP1rRv.jpg'),
(377, 'OVega', '$2y$10$ryzeZzbDfkEl98dnHqJibeKBUf4yu4.n0ONVHVRe72pVW1jLI4q9a', 'ovega@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:23:31', 'Oscar', 'Vega', '42650', 15, 0, 0, 'uploads/profiles/newuser.png'),
(378, 'VZHOU', '$2y$10$qlaQP3nUuAIYk43Jn6elQOnxZ9AMTWZLs99.G7BSCmUp9IL5TvY82', 'vzhou@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 00:50:30', 'Veronica', 'Zhou', '45377', 18, 0, 0, 'uploads/profiles/newuser.png'),
(379, 'GMALDONADO', '$2y$10$fNSEQqgemz06qTLjqvPTgujk2yd0i5DWTrMnB/4p.ZMpf78D.u/lm', 'GMALDONADO@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-11-11 00:57:19', 'GUILLERMO', 'MALDONADO', '44510', 18, 0, 0, 'uploads/profiles/newuser.png'),
(380, 'bangulo', '$2y$10$/iJrsNGGuj9.5bEo8z.IMOf0xCV1DimFdu0g4i8X9nXxEj03dq1Uq', 'BAngulo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 00:46:17', 'Bernabe', 'Angulo', '36547', 8, 0, 0, 'uploads/profiles/newuser.png'),
(381, 'gmiramontes', '$2y$10$EUaGLdFzWRTYhSsxR1f26.QPtlXReccPzzyhd7eRfC/S7dn7H7c.u', 'gmiramontes@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 03:00:41', 'Gustavo', 'Miramontes', '43200', 10, 0, 0, 'uploads/profiles/newuser.png'),
(382, 'MZUBIA', '$2y$10$DLerslPbmbIR7yrqzzGEWehPMIA909/pamVUVqYmFaqccgXg7beNG', 'myriamzubia@gmail.com', '', '2022-02-16 21:58:45', '2020-11-11 08:45:59', 'MYRIAM', 'ZUBIA', '40360', 3, 0, 0, 'uploads/profiles/269494482m.jpg'),
(383, 'DRUELAS', '$2y$10$OUQRuSzQLaUF5y0VYB8CKO6oF4XW5LtAt7ke8F7Gm.fiGXGl4Pboa', 'druelas70@gmail.com', '', '2022-02-16 21:58:45', '2020-11-11 09:09:12', 'DANIELA GUADALUPE', 'RUELAS CASTAÑEDA', '43356', 3, 0, 0, 'uploads/profiles/1533820541d_.jpg'),
(384, 'DSARMIENTO', '$2y$10$g4SfyxBqfOKR9iZ9jVtKA.uUwpgABPm7FL4cOIvb7OD.ILQvdcoW6', 'lizethsarmiento89@gmail.com', '', '2022-02-16 21:58:45', '2020-11-11 09:45:33', 'DIANA LIZETH', 'SARMIENTO PATIÑO', '35135', 3, 0, 0, 'uploads/profiles/1210878631ds.jpg'),
(385, 'BBOJORQUEZ', '$2y$10$tF.WrL6eWCtBKz/DKZciIux3lofG75BMfm77gMk2JFxLXJ2BErLim', 'blanca-bojorquez22@hotmail.com', '', '2022-02-16 21:58:45', '2020-11-11 10:12:53', 'BLANCA CECILIA', 'BOJORQUEZ BOJORQUEZ', '40159', 3, 0, 0, 'uploads/profiles/1235010290b.png'),
(386, 'AFLORES', '$2y$10$n/.l8t8VvRQ4/KbRSX8.PeO7OZ7clwQvgYnovtjBOjMvN3KmGC8na', 'flowerana26@hotmail.com', '', '2022-02-16 21:58:45', '2020-11-11 11:22:15', 'ANABEL', 'FLORES ESPINOZA', '15988', 3, 0, 0, 'uploads/profiles/1728132861af.jpg'),
(387, 'Nayar', '$2y$10$sGs0Ws8qbytme4knqoh9B.Ekb9FdSomlaXRfShsawAJX46eQdrOOm', 'nruiz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 16:13:55', 'Nayar Esteban', 'Ruiz Altamirano', '33394', 11, 0, 0, 'uploads/profiles/416917021Nayar Ruiz.png'),
(388, 'Rchew', '$2y$10$4KqllCbaEgmZA5ThcjSkYOAGwBXGF5z.J.0SoH.WZYx1FEFh8VTpq', 'rchew@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 16:25:07', 'Jose Roberto', 'Chew Arciniega', '41703', 0, 0, 0, 'uploads/profiles/newuser.png'),
(389, 'Leslie', '$2y$10$ATfCoaxuVCkf.3mWSg8uQuRKpk.PJX.aVDDLldYKqYsrek9JqF/sS', 'LVelazco@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 19:09:53', 'Leslie Gabriela', 'Velazco', '40667', 8, 0, 0, 'uploads/profiles/newuser.png'),
(390, 'ldelgado', '$2y$10$RoIyUMO3rWZ8yRSa0sYcRuoS8.suZ9vVqJr68LeczCjMFWjuca8gO', 'ldelgado@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 21:10:23', 'Leticia', 'Delgado', '30386', 3, 0, 0, 'uploads/profiles/newuser.png'),
(391, 'ALHELI', '$2y$10$La82s.oEE60eycWmKX6ZdeRN.0bK2fV9Nrdv/Uem8MlYueEbC005S', 'aavila@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 21:14:16', 'ALHELI', 'AVILA', '40149', 3, 0, 0, 'uploads/profiles/1928455668Foto Alheli.jpeg'),
(392, 'jmartinez', '$2y$10$.OFrvfuTSYA3snGjLJjoF.EkTKR.1tdB.iO/ceum5B4WmWOqCQekC', 'JMartinez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-11 22:25:07', 'Jessica', 'Martinez Peña', '40259', 8, 0, 0, 'uploads/profiles/newuser.png'),
(393, 'DANIELARTURO', '$2y$10$JkIaoae1p8BOZiGHFXDk1.885DP0mvJTjxxZtYz3Qo18FF4L635jy', 'DAlvarez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 09:52:22', 'Daniel ', 'alvarez', '30239', 19, 0, 0, 'uploads/profiles/newuser.png'),
(394, 'SLFIGUEROA', '$2y$10$6LUk.a4Yp1dtMayF2CZm0.QVz.5U5QqdMIJKCfqxpoMEiXJxJ5DtK', 'luzfigueroasandra@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 10:09:23', 'SANDRA LUZ', 'FIGUEROA CARRILLO', '30147', 3, 0, 0, 'uploads/profiles/1189090754sf.jpg'),
(395, 'Jorgeontiveros', '$2y$10$lvMGmv/7eXFR9i5iblY5q.iKO4m5oebJ1E1Djiu47SDRd4lbd5lIi', 'jorgery25@GMAIL.COM', '', '2022-02-16 21:58:45', '2020-11-12 10:28:53', 'Jorge', 'Ontiveros', '20534', 19, 0, 0, 'uploads/profiles/newuser.png'),
(396, 'EROMO', '$2y$10$8qW0ZzAUqXkn8W96Rrpar.SDikmSH05pTInylpumHvFPre.q6e0.W', 'diazfani61@hotmail.com', '', '2022-02-16 21:58:45', '2020-11-12 10:29:09', 'ESTEFANI', 'DIAZ ROMO', '40487', 3, 0, 0, 'uploads/profiles/newuser.png'),
(397, 'carlosalberto', '$2y$10$bgXpSPXdVQUKtfYVzAWFdeQZkCHZEvudAZT.7GXp7lYojARhu4q9y', 'franck.lucas37017@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 10:36:57', 'carlos', 'angulo', '43636', 19, 0, 0, 'uploads/profiles/newuser.png'),
(398, 'claudiagabriela', '$2y$10$9R5.QzPN4X9mVsKQh4OTIOyC4rd5frGl9.WovrvcwCVarr4qSjY7m', 'klaudia1587aguilar@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 11:21:38', 'claudia', 'aguilar', '43402', 19, 0, 0, 'uploads/profiles/newuser.png'),
(399, 'JESUSARRIETA', '$2y$10$5WQYiaXcQrTOo/MuZVO/A.lQxPNJFofRxBCKFfJys.2tnXfh4szFG', 'jesusarrita94@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 12:02:15', 'ARRIETA', 'GONZALEZ', '41302', 19, 0, 0, 'uploads/profiles/newuser.png'),
(400, 'mariaguadalupe', '$2y$10$9ZKRjLRQihd6ZO0jZMHeoOAE1BY/TmAfqu62ejoa591WZiJNCq176', 'mganlupita@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 12:07:31', 'maria', 'angulo', '33981', 19, 0, 0, 'uploads/profiles/newuser.png'),
(401, 'DarienFuentes', '$2y$10$N9vq2d9GHDTEBad9MLag2OMymu5L8v3fv7IdF6sqaswRFnAG8JLru', 'darienfuentesnares@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 12:44:32', 'Darien', 'Fuentes', '41708', 19, 0, 0, 'uploads/profiles/newuser.png'),
(402, 'JORGEALBERTO', '$2y$10$KZg84XaYHE/kHtaHJAQ9DePlG/eQFNvh2hUD8z3ymP9Q/411B.Sby', 'jorge.hdz151@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 13:19:59', 'hernandez', 'jauregui', '42086', 19, 0, 0, 'uploads/profiles/newuser.png'),
(403, 'emartinez', '$2y$10$i83iFC.RQohqCOblf4AVUe46gkCTsbqJzjidWYD1jxgV8.EOzWzgi', 'emartinez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 16:03:25', 'Edoardo Alonso', 'martinez', '39863', 4, 0, 0, 'uploads/profiles/newuser.png'),
(404, 'Alanis', '$2y$10$1XYnBZTK9z95BYEZhNaYaOaedcfPgqCXERm.G7UGhPwoKlxsStovq', 'josealanisvigueras@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 17:45:42', 'Jose', 'Alanis', '45194', 3, 0, 0, 'uploads/profiles/newuser.png'),
(405, 'gema', '$2y$10$uwB.QlGtlkx6PNTGGb9fC.wh7HiTogEhO7QYUn1IfnhllDCLcm/lS', 'gemagmacedo19@gmai.com', '', '2022-02-16 21:58:45', '2020-11-12 17:51:22', 'Gema', 'Macedo', '16784', 3, 0, 0, 'uploads/profiles/newuser.png'),
(406, 'CZCRUZ', '$2y$10$YcErQ3s63iBdDk.2niWadu14XBPUXFDIlVUGz0gYfkuR0YSdZuARy', 'ccruz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 17:58:46', 'Carolina', 'Zarate', '40953', 17, 0, 0, 'uploads/profiles/newuser.png'),
(407, 'GemaMacedo', '$2y$10$FsV4p866NvNDm/k.2wS..ePLnU/sfsQ8U0At9s03MxKzUWj7KNZ7q', 'gemagmacedo19@gmail.com', '', '2022-02-16 21:58:45', '2020-11-12 18:00:27', 'Gema', 'Macedo', '16784', 3, 0, 0, 'uploads/profiles/newuser.png'),
(408, 'cristian', '$2y$10$foI9eZ7xXo/m1NsZEALgnu1CdzFMsQkzPYKWlf/L5pD5PJ8kVdAse', 'ccano@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 18:25:44', 'cristian', 'cano', '42836', 10, 0, 0, 'uploads/profiles/newuser.png'),
(409, 'ALEJANDRO', '$2y$10$wswuSk2Qr4FE1bYrzY/yPeEdw21UHjbqTBDHo/aLjgwn1hEIsGA82', 'aharo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:26:18', 'ALEJANDRO', 'HARO', '44551', 8, 0, 0, 'uploads/profiles/newuser.png'),
(410, 'marquezjs', '$2y$10$MsElpK.jWGOftMpgdTAFre6hkZYMUowUjqT781q8bVZxbOVI/4pqa', 'jmarquez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:27:13', 'Jose', 'Marquez', '29081', 17, 0, 0, 'uploads/profiles/newuser.png'),
(411, 'mcastro24', '$2y$10$mmtFmOh4hwxIheOJj/3rQuK48IGqCQX9ZKqwPfMlmkmzeI2GhOoXe', 'mcastro@martechmedcal.com', '', '2022-02-16 21:58:45', '2020-11-12 19:31:13', 'Martha', 'Castro', '40113', 12, 0, 0, 'uploads/profiles/newuser.png'),
(412, 'vcorpus', '$2y$10$OJpIdUXerG8CbV52ANQ4LO7lVy161voyu78sY/x4lwUL9kteePldO', 'vcorpus@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:31:15', 'Viviana', 'Corpus', '40754', 17, 0, 0, 'uploads/profiles/newuser.png'),
(413, 'emorales', '$2y$10$Q7fdNnLnmDQtNhtUTWQ56OTFeA6Hr0IHzIgQSdbtIS.r6akulUwAy', 'emorales@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:37:11', 'Edgar', 'Morales Soto', '40152', 3, 0, 0, 'uploads/profiles/1508664297Foto.jpg'),
(414, 'Diana', '$2y$10$1dwSVtiYTkA9OeOPXtQ9o.GcTOizgQlVsv4YGfpoQmgn4aibL.z2.', 'DYanez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:47:14', 'Diana ', 'Yañez', '44622', 17, 0, 0, 'uploads/profiles/newuser.png'),
(415, 'lruiz', '$2y$10$c6IihDIps6OzA0TpW3haGeknKnnAuTjuiRqHG3jmcNAuOx0.nEV96', 'lruiz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 19:51:03', 'laura', 'ruiz', '31630', 15, 0, 0, 'uploads/profiles/newuser.png'),
(416, 'vlopez2', '$2y$10$DkN0LsZOvf0AmZlFMCRyy.Ntc27Si23LErlUdYggfF0DcQJTKUA4.', 'vlopez2@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 22:22:34', 'Victor ', 'Lopez', '43911', 8, 0, 0, 'uploads/profiles/newuser.png'),
(417, 'Marcos', '$2y$10$9oruSWGIzgHwXdm/J2VBWOBjYrgdips51.L1w/uxgkBqPs08Zh3sG', 'marriaga@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 22:32:56', 'Arriaga', 'Benitez', '40575', 3, 0, 0, 'uploads/profiles/newuser.png'),
(418, 'AMONTANEZ', '$2y$10$qdwqNlGKmy5wQ/jIpmNynuyo0VCpUCXiPPAwBP.0pD0Pmk1E7pWt2', 'amontanez@martechmedical.con', '', '2022-02-16 21:58:45', '2020-11-12 22:32:57', 'Adrian', 'Montanez', '44800', 3, 0, 0, 'uploads/profiles/newuser.png'),
(419, 'Ravalos', '$2y$10$.K48tgHu/XDRCTNCvpv8Le8zR4PRTlj0UI3/kwevMlKzD0vND3lP6', 'ravalos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-12 23:18:43', 'Rodrigo ', 'Avalos', '40907', 12, 0, 0, 'uploads/profiles/newuser.png'),
(420, 'jsandoval', '$2y$10$BiqFXPu3lvIYaygg9Ox1PuEdvlBf35FPBBJ8Wu0oTgCPSnWKj.p4y', 'jsandoval@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 00:36:38', 'Javier alonso', 'sandoval', '41519', 2, 0, 0, 'uploads/profiles/newuser.png'),
(421, 'Mayra', '$2y$10$/ckDbH2ijICQY3a0vpCh.e9Gj3cGb1kpVU6TSJwm5rGa4D7K3zQja', 'malcala@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 01:10:24', 'Alcala', 'Trujillo', '39141', 2, 0, 0, 'uploads/profiles/newuser.png'),
(422, 'Veronica', '$2y$10$fTiIruVFeYZCUjxAP/phPeYHRSD4I47wTGNd.LtzTqCCb.kX9UQcW', 'VContreras@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 02:04:02', 'Veronica', 'Contreras', '33655', 21, 0, 0, 'uploads/profiles/1662155347FB_IMG_1487239566654.jpg'),
(423, 'czepeda', '$2y$10$aXBkx9Aq1YxXZKO.XA6s7.5T5EbiF2v2etKZxVxtzMy0wi46.sFDW', 'czepeda@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 02:31:36', 'Carlos', 'Zepeda', '24771', 8, 0, 0, 'uploads/profiles/1249170237FB_IMG_1565013538725(1) - Copy.jpg'),
(424, 'Alba', '$2y$10$SoTX/tIosH.RcHfPJfNoD.ccqove4NJ51vItLaAZ7pD7cNF7tb3ym', 'ACastro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-28 04:33:43', 'Alba ', 'Castro', '41200', 5, 0, 0, 'uploads/profiles/newuser.png'),
(425, 'josegonzalez', '$2y$10$kjKN5KpcESr8bCQItd4isOqiPqY62DjG7kt9WcXtDvnAcO2zUKwsK', 'JGonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 07:27:50', 'jose ', 'gonzalez', '41262', 19, 0, 0, 'uploads/profiles/newuser.png'),
(426, 'EdgarIvan', '$2y$10$kSB2wvv707J5.PDUD8ak9.Od5hdbHqJrvbPAqHUEOrThKt3BLe4Ji', 'ivanqn18@gmail.com', '', '2022-02-16 21:58:45', '2020-11-13 08:18:03', 'Edgar', 'Villarreal', '40456', 19, 0, 0, 'uploads/profiles/newuser.png'),
(427, 'MNOLASCO', '$2y$10$Evay4RW/VIJP17VyIzdNFODcYPOXgj3KH8C90uHOsJbCXvzxiaFkS', 'angel_wane@hotmail.es', '', '2022-02-16 21:58:45', '2020-11-13 13:26:23', 'MIGUEL ANGEL', 'NOLASCO ORTEGA', '41366', 3, 0, 0, 'uploads/profiles/1048164627mn.jpg'),
(428, 'Carolina', '$2y$10$3Hs8spw459qxINZ5Ceyx6.INR0FO7HkyFrZ641XKvhWT.1WP1A1cC', 'CFlores@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 15:02:12', 'Flores', 'Aguayo', '30267', 21, 0, 0, 'uploads/profiles/newuser.png'),
(429, 'Isela04', '$2y$10$Cu0M5PCiS7YhSEM3BMLQeO31XsEtmP1NPFB6Z5jHs1t62UC.65a9W', 'rmejia@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 15:54:31', 'Isela', 'Ortiz', '24924', 20, 0, 0, 'uploads/profiles/newuser.png'),
(430, 'sgonzalez', '$2y$10$gV/1R2885KHblaLsEVO4VuPnLmYY1CcpJ0Jvmi0gTAHFCmSoewtNG', 'sgonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 15:39:49', 'Sara', 'Gonzalez Carmona', '25272', 7, 0, 0, 'uploads/profiles/newuser.png'),
(431, 'FMORALES22', '$2y$10$iU0W8VlkNmZVOfZCW2rGZ.kVKmD5uAeTzR0PcvndqH90bZ.luTfw6', 'mfierro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 15:48:12', 'MARTIN', 'IGNACIO', '32947', 8, 0, 0, 'uploads/profiles/newuser.png'),
(432, 'jmruiz', '$2y$10$6ew0g6dzFQeF5/bbNCD1TeUORekRFsonjKbcEPe2VSp8gxnxTi5P2', 'jmgonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 16:02:13', 'Jenny', 'Gonzalez', '43821', 3, 0, 0, 'uploads/profiles/newuser.png'),
(433, 'erimel16', '$2y$10$30bKXk2rq55gXewCGJ78xObd9XssM6ivViM0MsHVt4a2mrNO64e6W', 'emelendez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 16:05:23', 'Melendez', 'Erika', '41330', 8, 0, 0, 'uploads/profiles/newuser.png'),
(434, 'Nallely', '$2y$10$fnKA95RiIoIu0Mr5vvxGh.JNwPa5Zzq5/d9MneEPJ1Y4wZ9ghFmHO', 'ncruz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 16:17:06', 'Nallely', 'Cruz', '27907', 21, 0, 0, 'uploads/profiles/828104580Nallely Cruz.jpg'),
(435, 'MMANRIQUEZ', '$2y$10$LUIOHSYi7yCfo47JYoKrSe46Ahh1NUMYffA.ODg9vt2YFYOHxk8ee', 'MMANRIQUEZ@MARTECHMEDICAL.COM', '', '2022-02-16 21:58:45', '2020-11-13 16:19:18', 'MONICA', 'MANRIQUEZ', '39370', 16, 0, 0, 'uploads/profiles/newuser.png'),
(436, 'dcabrera', '$2y$10$69FS93O36lb9z9goFmn8JOqR8oxex7MzeUep5nyyZpHr3XLk.N9ki', 'dcabrera@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 16:27:06', 'David', 'Cabrera', '43757', 16, 0, 0, 'uploads/profiles/newuser.png'),
(437, 'CBurgos', '$2y$10$nanAiKaKSHMwP3dGagleje6dzXk5ZJAVNIVaG4mhFx8jaOUxeYKCu', 'CBurgos@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:02:15', 'Manuel', 'VerdÃ­n', '40118', 17, 0, 0, 'uploads/profiles/2048179583STAT-DBALL020a.jpg'),
(438, 'Asuncion116', '$2y$10$Ml558HwcJHlAUT0C7Gng7.FvbCCH6UiK6oOVAJ5N1pm3xYfJxmfsG', 'marodriguez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:23:14', 'Maria ', 'Rodriguez', '38810', 8, 0, 0, 'uploads/profiles/1039511096fhjmnuk.PNG'),
(439, 'aramirez', '$2y$10$JPF0jm4FM/FqfmNC0QNL1.R8Eddr7LY0qx6kX3n0bn4FcqN/39jdO', 'aramirez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 17:58:40', 'Alejandro', 'Ramirez', '90012', 8, 0, 0, 'uploads/profiles/newuser.png'),
(440, 'GGUTIERREZ', '$2y$10$fJc.e7DuaF6emdSrvNcd.urOr7vJp8sQyRvSuv38Sej58mAY/RPO.', 'ggutierrez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:00:05', 'GABRIELA', 'GUTIERREZ', '26571', 8, 0, 0, 'uploads/profiles/newuser.png'),
(441, 'JacquelineEscalante', '$2y$10$cjk9Sy5.7cAs9QgvNzuC3OgkfD4YQsjuxrOqfo1uvpRUB0m4jWMwm', 'JEscalante@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:00:46', 'Jacqueline', 'Escalante', '44690', 17, 0, 0, 'uploads/profiles/35697544020200904_084708.jpg'),
(442, 'cfabian1975', '$2y$10$HyzzaLxDa/9v3kZVYKXgf.77mKjMz4HNSSU03mJsLFzY7TKAQkxiG', 'cmeza@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:04:40', 'Carlos', 'Meza', '40147', 20, 0, 0, 'uploads/profiles/newuser.png'),
(443, 'mcastilo', '$2y$10$eJV3LUtPVlNAcUt14cwM4eNrcHHvQ3sBqyi44xhZSDN90hCmNm.s6', 'MCastilo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:08:44', 'mario', 'castillo', '41290', 10, 0, 0, 'uploads/profiles/newuser.png'),
(444, 'MRCazares', '$2y$10$o2WkA4Zi9Im0A6cbUSHvDOQeuqvkmUkN8N2fycvkDSM6NvNusiQeK', 'mrcazares@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:14:49', 'miguel', 'ramos', '40430', 21, 0, 0, 'uploads/profiles/1318408724IMG_20200928_140349558.jpg'),
(445, 'cecilia', '$2y$10$GQsN134lupjvHrJOSz7i6uxPUw9hlUHL1hLSJvrsJ48aVqzpLt/9G', 'cecy3716@gmail.com', '', '2022-02-16 21:58:45', '2020-11-13 18:18:42', 'Cecy', '', '15022', 5, 0, 0, 'uploads/profiles/newuser.png'),
(446, 'esantana', '$2y$10$Z.H1F/R1PSnAuNXlUBZ.mOPAkn43Y4Q//pYiz0e3rTo5bnDTVniZq', 'esantana@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:29:57', 'enrique', 'santana', '30594', 10, 0, 0, 'uploads/profiles/newuser.png'),
(447, 'gyhernandez', '$2y$10$4anIh3tFXEISOzcsX9R4eOjP7rkRejjQfZTNmZK9hxbRHV8g3LGUO', 'gyhernandez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 18:45:15', 'Gema ', 'Hernandez', '35655', 8, 0, 0, 'uploads/profiles/newuser.png'),
(448, 'ocastro', '$2y$10$ynlT.QT7SF/khQKxlnRrXOS89p2qum6oXI0o4G3dKBXjzIhs7fYP6', 'ocastro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 19:12:44', 'oscar ', 'castro', '26026', 3, 0, 0, 'uploads/profiles/newuser.png'),
(449, 'Cvazquez', '$2y$10$I.gfkjm8TsqNHyGfr/97EeGwUke8MSdW0V2FGv1YYfrLEqnR1bgtO', 'cvazquez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 19:17:22', 'Carlos', 'Vazquez', '34597', 8, 0, 0, 'uploads/profiles/1982507001Necaxa.png'),
(450, 'jroldan', '$2y$10$yiGiBC/JGZm9Z.tPgMFlE.z4BnHFzjLfsuNSb.JAraFiM4TebOO/m', 'jroldan@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 19:27:12', 'juan francisco', 'roldan guevara', '33023', 8, 0, 0, 'uploads/profiles/newuser.png'),
(451, 'MarcoAntonioArroyo', '$2y$10$691gueG94tbbSjJ5mvasEu8EUa9U1PR2UZSTS58Z3wbUNIP.y/cSG', 'MArroyo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 19:55:55', 'Marco Antonio', 'Arroyo', '44045', 20, 0, 0, 'uploads/profiles/newuser.png'),
(452, 'Alecs', '$2y$10$rgJt33XDpEIdJSeYoq1JgOo5kyKRnx5q3mOG8eIKxrJ7/qwbPRk6S', 'aarizaga@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 20:00:03', 'Alejandro', 'Arizaga', '26108', 8, 0, 0, 'uploads/profiles/newuser.png'),
(453, 'BCHACON', '$2y$10$uuGmhbRheYcwRnPjaOMxtOWbuCbGuDDVSA.w0U9r9o4fK9PDukTiS', 'bchacon@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 21:04:54', 'Benjamin', 'Chacon', '42649', 5, 0, 0, 'uploads/profiles/newuser.png'),
(454, 'iestrada', '$2y$10$SYrLMBLlgLRZy1F9geVFoubwm5QNNYXULITaM/8JE1uX0qfrrjmgu', 'iestrada@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 21:43:07', 'Iliana', 'Estrada', '39871', 12, 0, 0, 'uploads/profiles/newuser.png'),
(455, 'nfigueroa', '$2y$10$a.XDoe2dicSRx3cncouiHeC5uBKTMKF4qqBg8MXzHph0xss02ijhy', 'nfigueroa@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 23:09:37', 'Nely', 'Figueroa', '24458', 18, 0, 0, 'uploads/profiles/newuser.png'),
(456, 'EGonzalez', '$2y$10$0fvIOIULn6usVQ7bhZmcpOS3CBOcTHF82YDuekVUL2K8Uiw5mAvSa', 'egonzalez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-13 23:44:55', 'Elizabeth', 'Gonzalez', '37610', 15, 0, 0, 'uploads/profiles/newuser.png'),
(457, 'ravina', '$2y$10$mj8EI4OGrQnBvGjEJxEkMuAVXq8911ws3jQaQUULI8pDpbl9Gkcam', 'ravina@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-14 14:52:04', 'RAUL', 'AVIÑA', '42903', 8, 0, 0, 'uploads/profiles/newuser.png'),
(458, 'jnavarro', '$2y$10$QSYKnvbvqT1hJTf5AxNZLuzDeDq4LLK.ykiGsWHxnGQWrBvupdwdi', 'jnavarro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-14 19:26:04', 'jose', 'navarro', '32926', 10, 0, 0, 'uploads/profiles/newuser.png'),
(459, 'JesusGarcia', '$2y$10$iD357uYoo.HcTk6lcch2PexFU9TFvMcRorkacEBpXvCfgdiPvrsOa', 'jmoreno@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 18:36:42', 'Jesus', 'Garcia', '33798', 6, 0, 0, 'uploads/profiles/newuser.png'),
(460, 'Tania0790', '$2y$10$QWqaZsFbQGCbmX6cRNaIfOCnLfKLvHccL1zrJc.YPKrICMQ8NWvOi', 'tguerra@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 21:01:16', 'Tania', 'Guerra', '40600', 8, 0, 0, 'uploads/profiles/newuser.png'),
(461, 'LizMtz03', '$2y$10$E4NoZTIPyGYdzuIWZkVeCOQ.xRVUE6tG2bNUYZoKMZP/DPneVhb.m', 'lmartinez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 21:33:22', 'Lizeth', 'Martinez', '42282', 8, 0, 0, 'uploads/profiles/newuser.png'),
(462, 'PATRICIA', '$2y$10$dh56TEAsSfADbKxUZRJzC.alxTKJ.ifrdzIYKZgvpe6BFaVD4QJmS', 'pparedes@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 22:37:33', 'PAREDES', 'MOSQUEDA', '41348', 18, 0, 0, 'uploads/profiles/newuser.png'),
(463, 'Dperez', '$2y$10$xcVY0tRlDyVKrITsOP.z8usdOHNAbRc7vTA1jyjn6hqqVyG5Xt0Wa', 'dperez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 22:37:57', 'Damian', 'Perez', '41167', 18, 0, 0, 'uploads/profiles/newuser.png'),
(464, 'Niniguez', '$2y$10$0SgsNgdo.x8d2XZtldYbK.wa8tShGr6UoyjrFsNcswdlg55qihJXu', 'niniguez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 22:44:08', 'NANCY ', 'INIGUEZ ', '39972', 18, 0, 0, 'uploads/profiles/1035363245WhatsApp Image 2018-08-16 at 5.09.18 PM.jpeg'),
(465, 'RParra', '$2y$10$a3onvVaNpAGPaIaCre1wROzViXMka5EwyKH6VGY4zZwoogIRh/sle', 'RParra@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-17 23:19:43', 'Rubi ', 'Parra', '44195', 7, 0, 0, 'uploads/profiles/newuser.png'),
(466, 'gabriel721015', '$2y$10$JlKc1ars2aKxI.UBlVV3RugXD5TS3F2WtOYQ1h2I8vDzjCoovKmFO', 'gabriel@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-18 05:38:47', 'GABRIEL', 'PEREZ', '15715', 5, 0, 0, 'uploads/profiles/544595530Gabriel Perez.jpg'),
(467, 'SUSTAITA', '$2y$10$Jj88Jn3VY0xEXTxyGMd6w.HGbFYoOTgFZrUk9Vwb/54qgZ/MxVnkS', 'sustaitaaguilar@gmail.com', '', '2022-02-16 21:58:45', '2020-11-18 05:26:16', 'LAURA ESTHELA', 'AGUILAR', '15939', 20, 0, 0, 'uploads/profiles/1575455124Water lilies.jpg'),
(468, 'MARAMOS', '$2y$10$3jXwAfTMDZCdAeOVvKAW.uYrHUxsmxNEvshRFIToCDZxwbI7tp46.', 'molinaramos508@gmail.com', '', '2022-02-16 21:58:45', '2020-11-18 10:24:12', 'MIRIAM AGUSTINA ', 'RAMOS MOLINA', '30014', 3, 0, 0, 'uploads/profiles/newuser.png'),
(469, 'Edgar', '$2y$10$FtyOI.4OVlkl6wPfgFqT8eO4il/VehQ5z0iwBnz0O37RHtP4OApx.', 'evasquez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-18 14:28:30', 'Edgar', 'Vasquez', '39189', 5, 0, 0, 'uploads/profiles/216075881IMG-20191208-WA0004.jpg'),
(470, 'EGMorales', '$2y$10$79ZV2h35tPY3ZjPFV4QZqulMHCQJM4l2wFJOgZv6ay6ZaFC1cqBWy', 'EGMorales@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-18 18:55:14', 'Erika', 'Morales', '31779', 3, 0, 0, 'uploads/profiles/newuser.png'),
(471, 'jlopez1', '$2y$10$8zAWEgKXPs723KywPZmCu.Ix9Qw5TpWwP.HJH0KhvKriVnFGKCEdu', 'JLopez1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-18 19:18:41', 'JULIA', 'LOPEZ', '41808', 20, 0, 0, 'uploads/profiles/newuser.png'),
(472, 'EDEMARA', '$2y$10$4qp2sxOD27lUD8EWOgcM8OvdLZXXGzc7eiL2bh/FBm.mwfHlL/GZS', 'Edemara@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-18 22:35:09', 'ERIK', 'DEMARA', '40182', 12, 0, 0, 'uploads/profiles/newuser.png'),
(473, 'Patrickpinto', '$2y$10$JAsdULYdRtLqNvCo/LAsSOoDGcPt8NJZCYmFDuLfesQg6Eg0xtJQq', 'Pdiaz@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 15:20:31', 'Patrick', 'Pinto', '45201', 8, 0, 0, 'uploads/profiles/newuser.png'),
(474, 'jsanchez', '$2y$10$FdEpGCElFI9MB8tWG6s4fuH8Q3XLTxooGhXVGaOOmetvdv02TY7nS', 'jsanchez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 16:35:08', 'Javier', 'Sanchez Estrada', '41833', 12, 0, 0, 'uploads/profiles/newuser.png'),
(475, 'SalvadorMMW', '$2y$10$EE5Lx0t2twHarAi/LIZo7OfUWQYulLYcMI4U/aaVxunLFCN3XOrca', 'smagana@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 18:58:02', 'Salvador', 'Maganaña', '32717', 8, 0, 0, 'uploads/profiles/newuser.png'),
(476, 'vvalenzuela', '$2y$10$4fAP2/sq3vLVm0s9FbR8aeD/uUEIXX3Nx6EWS927/ShuCGN4fMua.', 'vvalenzuela@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 21:01:00', 'victor ', 'valenzuela', '16120', 10, 0, 0, 'uploads/profiles/newuser.png'),
(477, 'PaulAguilarNavarro', '$2y$10$fEugshGRxjCnfGp9R8l5b..s4FnMHZHk.xlmj2y0Dumskwz2ovP1i', 'paguilar@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-19 22:34:28', 'Paul', 'Aguilar', '0', 15, 0, 0, 'uploads/profiles/newuser.png'),
(478, 'BelemRguez92', '$2y$10$7WRongdTlgKcWmF84lLVz.uORLrKfC/wLNE1L0rLpYrMxlvr/Mjdm', 'brodriguez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 19:36:16', 'Belem', 'Rodriguez', '44495', 16, 0, 0, 'uploads/profiles/newuser.png');
INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_phone`, `date_create`, `date_update`, `user_firstname`, `user_lastname`, `id_number`, `department_id`, `isadmin`, `manager`, `profile_pic`) VALUES
(479, 'Gleal', '$2y$10$k0IrZcD/1IzR2pFQ5geaie0hMOO4.TC4WXaPCLVzvbU7WOrKzbIsG', 'gleal@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 23:10:31', 'Gabriela', 'Leal', '43668', 8, 0, 0, 'uploads/profiles/newuser.png'),
(480, 'BGuzman', '$2y$10$egthgWauI9SrdtXycuEbeOC0Ad./aG5.O07f2Pht15XF8UPCvkLLy', 'bguzman@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 23:16:56', 'Breanna', 'Guzman', '45192', 8, 0, 0, 'uploads/profiles/newuser.png'),
(481, 'Cesar', '$2y$10$9LEaCBTiVLwYXm82Rmk/hObYMGgrVw3rW9bvBqcIDogwFpuhSbnIS', 'ctoledo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-20 23:51:45', 'Cesar', 'Toledo', '43583', 8, 0, 0, 'uploads/profiles/newuser.png'),
(482, 'Claudia', '$2y$10$DiQhKh4KAoTFyWJzhrxr7ObCbzp0mt9AvNb8vCTishBy3aQHKDwYi', 'csalazar@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-21 00:04:26', 'Claudia', 'Salazar', '40062', 15, 0, 0, 'uploads/profiles/newuser.png'),
(483, 'mnunez', '$2y$10$xL7wKzEIpv3BN4ylLTPUOurRHPC93L.Ez0ilFPoCKze3NcSKGQ6G2', 'mnunez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-23 13:01:00', 'María Luisa', 'Núñez R. ', '32561', 17, 0, 0, 'uploads/profiles/newuser.png'),
(484, 'patriciamendez0428', '$2y$10$Hbd.tB6teamySKM6d3Tyfu2WVc.tLOq2UDP7UCQAaLE/K0w6TgxQm', 'pmendez@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-24 01:55:47', 'Patricia', 'Méndez', '17343', 3, 0, 0, 'uploads/profiles/newuser.png'),
(485, 'esepulveda', '$2y$10$KqBoiF3ukElUBXnE3Se5juqP7NKg3DWIztxF9Z6.bwKX9/BeO0y76', 'evergara@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-24 22:04:23', 'Eduardo ', 'Sepulveda', '15950', 5, 0, 0, 'uploads/profiles/newuser.png'),
(486, 'mcastro', '$2y$10$221hylD7UxhX0fVDCRNwW.YiNCEtX00di94DY0YIAq1ieYwuH84A2', 'mcastro@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-24 22:41:45', 'martha', 'castro', '40113', 12, 0, 0, 'uploads/profiles/newuser.png'),
(487, 'davidcayeros30144', '$2y$10$3x2hgfDJ5SXpb1SYtisIZ.atBEiEv/..Y5ARk7z0Aw6z92qUMVb52', 'dcayeros@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-27 18:20:05', 'david', 'cayeros', '30144', 20, 0, 0, 'uploads/profiles/newuser.png'),
(488, 'gmeza', '$2y$10$AnV/feO7EUTB04lcVXWjieTYQLHugFWIwdc2NmF4KGoqBWZ/L5UGS', 'gmeza@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-27 18:24:52', 'Guadalupe Graciela', 'Ponce Meza', '44023', 5, 0, 0, 'uploads/profiles/newuser.png'),
(489, 'Luis', '$2y$10$ylaMn18ScdUnFpHW6lbgS.x2HZcldTVYcLr6J6xFbslz56X1pvjea', 'ltrejo@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-27 21:13:42', 'Luis', 'Trejo', '33025', 8, 0, 0, 'uploads/profiles/1767094572Luis Fernando Trejo.jpg'),
(490, 'Lmartinez1', '$2y$10$4KXwwNvbnqqmKqklWHBQLu6XvGp9BZCQCW7dOfrs8ooI1aZJa26ku', 'lmartinez1@martechmedical.com', '', '2022-02-16 21:58:45', '2020-11-30 17:29:07', 'Luis Mario', 'Martinez Oropeza', '44624', 15, 0, 0, 'uploads/profiles/newuser.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `course_department`
--
ALTER TABLE `course_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_department`
--
ALTER TABLE `post_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_department`
--
ALTER TABLE `course_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_department`
--
ALTER TABLE `post_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=491;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
