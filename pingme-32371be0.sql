-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: shareddb-g.hosting.stackcp.net
-- Generation Time: Dec 18, 2018 at 12:58 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pingme-32371be0`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(22, 2, 1, 'Hey', '2018-08-14 22:34:21', 0),
(23, 2, 1, 'Wassup', '2018-08-14 22:34:29', 0),
(24, 0, 1, '\n\n   ', '2018-08-15 12:37:18', 1),
(25, 0, 1, 'hey guys', '2018-08-15 12:38:44', 1),
(26, 0, 1, 'hey guys', '2018-08-15 12:39:32', 1),
(27, 0, 2, 'hello!', '2018-08-15 12:42:13', 1),
(28, 0, 2, 'hello', '2018-08-15 12:42:28', 1),
(29, 0, 3, 'Hello', '2018-08-15 12:42:39', 0),
(30, 0, 3, 'Hello', '2018-08-15 12:42:49', 0),
(31, 3, 2, 'hey wassup?', '2018-08-15 12:43:21', 0),
(32, 2, 1, 'hey bro', '2018-08-15 19:20:15', 0),
(33, 1, 2, 'Hello', '2018-08-15 21:18:54', 0),
(34, 1, 2, 'Wassup', '2018-08-15 21:20:00', 0),
(35, 1, 2, 'Rfgg', '2018-08-15 21:22:09', 0),
(36, 1, 2, 'Gghuu', '2018-08-15 21:23:01', 0),
(37, 3, 1, 'Hey', '2018-08-17 10:16:29', 0),
(38, 1, 3, '', '2018-08-17 10:17:01', 0),
(39, 1, 3, '', '2018-08-17 10:17:17', 0),
(40, 3, 1, 'Wassup', '2018-08-17 10:17:28', 0),
(41, 3, 1, 'Nothing', '2018-08-17 10:18:07', 0),
(42, 0, 3, 'Hello guys', '2018-08-17 10:18:53', 0),
(43, 0, 1, 'Hi guys', '2018-08-17 10:19:33', 1),
(44, 0, 1, 'Hello&nbsp;', '2018-08-17 10:19:46', 1),
(45, 1, 3, 'Hello', '2018-08-17 10:20:07', 0),
(46, 1, 3, 'Nothing', '2018-08-17 10:20:25', 0),
(47, 1, 162123, 'Het', '2018-08-26 14:57:35', 1),
(48, 0, 7, 'hey', '2018-08-26 19:07:24', 1),
(49, 1, 7, 'hey', '2018-08-26 19:07:52', 0),
(50, 0, 1, '\n\n   ', '2018-08-30 21:49:47', 1),
(51, 0, 1, 'Bdbbdbbrbbrbvr', '2018-08-30 21:49:59', 1),
(52, 0, 1, 'Vvwvevev', '2018-08-30 21:50:17', 1),
(53, 0, 1, 'Bbb', '2018-08-30 21:51:23', 1),
(54, 2, 1, 'Hdhfhhfh', '2018-08-30 22:03:21', 1),
(55, 2, 1, 'Hello', '2018-08-30 22:03:38', 1),
(56, 2, 1, '', '2018-08-30 22:03:44', 1),
(57, 2, 1, '', '2018-08-30 22:03:45', 1),
(58, 2, 1, '', '2018-08-30 22:05:23', 1),
(59, 2, 1, '', '2018-08-30 22:05:28', 1),
(60, 2, 1, 'Hello', '2018-08-30 22:05:35', 1),
(61, 2, 1, '', '2018-08-30 22:05:48', 1),
(62, 2, 1, '', '2018-08-30 22:12:13', 1),
(63, 2, 1, '', '2018-08-30 22:12:16', 1),
(64, 2, 1, 'Cvvhjjbvxx', '2018-08-30 22:12:25', 1),
(65, 2, 1, '', '2018-08-30 22:12:28', 1),
(66, 2, 1, '', '2018-08-30 22:12:31', 1),
(67, 2, 1, 'Cgh', '2018-08-30 22:13:53', 1),
(68, 2, 1, 'Vhjk', '2018-08-30 22:14:02', 1),
(69, 2, 1, 'Vrvvyxy', '2018-08-30 22:14:50', 1),
(70, 2, 1, 'G', '2018-08-30 22:15:02', 1),
(71, 2, 1, 'H', '2018-08-30 22:15:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'Vijeth Gowda', 'madelikeagun'),
(2, 'Shivshankar', 'tipturshivu'),
(3, 'Jithendra Jeetu', 'volleyballjeetu'),
(4, 'Tharun ', 'hornytharun'),
(5, 'Pramodh Pummy', 'shripriyamylove'),
(7, 'dummy', 'dummy');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(6, 1, '2018-08-14 22:34:42', 'no'),
(7, 2, '2018-08-15 01:16:02', 'no'),
(8, 1, '2018-08-15 12:41:32', 'no'),
(9, 2, '2018-08-15 12:39:39', 'no'),
(10, 3, '2018-08-15 19:12:49', 'no'),
(11, 2, '2018-08-15 12:46:58', 'no'),
(12, 2, '2018-08-15 19:17:06', 'no'),
(13, 2, '2018-08-15 21:19:28', 'no'),
(14, 1, '2018-08-15 21:51:00', 'no'),
(15, 2, '2018-08-15 23:02:57', 'no'),
(16, 2, '2018-08-17 10:13:09', 'no'),
(17, 1, '2018-08-17 10:20:31', 'no'),
(18, 3, '2018-08-17 10:20:59', 'no'),
(19, 1, '2018-08-23 15:45:09', 'no'),
(20, 7, '2018-08-26 17:44:58', 'no'),
(21, 7, '2018-08-26 19:08:03', 'no'),
(22, 1, '2018-08-28 20:45:30', 'no'),
(23, 1, '2018-08-30 21:54:39', 'no'),
(24, 1, '2018-08-30 22:02:00', 'no'),
(25, 1, '2018-08-30 22:10:37', 'no'),
(26, 1, '2018-08-30 22:14:31', 'no'),
(27, 1, '2018-08-30 22:24:43', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
