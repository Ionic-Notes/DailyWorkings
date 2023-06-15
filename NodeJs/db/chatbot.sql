-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 08:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `timestamp`) VALUES
(2, 123, 890, 'hi', '0000-00-00 00:00:00'),
(3, 123, 890, 'hi zain', '0000-00-00 00:00:00'),
(4, 1, 2, 'dffdf', '2023-06-15 13:00:45'),
(5, 1, 2, 'why so serious', '2023-06-15 13:01:32'),
(6, 1, 2, 'dfs', '2023-06-15 13:02:26'),
(7, 1, 2, 'hy', '2023-06-15 13:03:46'),
(8, 2, 1, 'df', '2023-06-15 13:04:19'),
(9, 2, 1, 'sdsd', '2023-06-15 13:06:45'),
(10, 2, 1, 'sdsd', '2023-06-15 13:12:47'),
(11, 123, 890, 'hi zain', '0000-00-00 00:00:00'),
(12, 2, 1, 'sdasd', '2023-06-15 13:27:44'),
(13, 2, 1, 'sds', '2023-06-15 13:29:30'),
(14, 2, 1, 'dfdf', '2023-06-15 13:33:13'),
(15, 2, 1, 'sdsdss', '2023-06-15 13:38:21'),
(16, 2, 1, 'yuyyu', '2023-06-15 13:38:50'),
(17, 2, 1, 'sdsd', '2023-06-15 13:39:33'),
(18, 2, 1, 'sdsd', '2023-06-15 13:40:39'),
(19, 4, 1, 'sdsds', '2023-06-15 13:41:16'),
(20, 4, 1, 'xcx', '2023-06-15 13:41:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
