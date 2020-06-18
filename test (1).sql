-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 02:16 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_one`, `user_two`) VALUES
(7, 17, 25),
(8, 17, 26),
(9, 17, 18),
(10, 17, 19),
(11, 17, 20),
(12, 21, 22),
(13, 21, 20),
(15, 21, 17),
(16, 21, 23),
(17, 21, 26),
(18, 17, 18);

-- --------------------------------------------------------

--
-- Table structure for table `friend_request`
--

CREATE TABLE `friend_request` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `receiver` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friend_request`
--

INSERT INTO `friend_request` (`id`, `sender`, `receiver`) VALUES
(5, 17, 25),
(6, 17, 26),
(10, 17, 19),
(11, 17, 20),
(13, 21, 24),
(21, 21, 28),
(22, 21, 29),
(23, 21, 25);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_temp`
--

CREATE TABLE `password_reset_temp` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personality`
--

CREATE TABLE `personality` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personality`
--

INSERT INTO `personality` (`id`, `title`) VALUES
(1, 'Bold'),
(9, 'friendly'),
(10, 'good looking'),
(8, 'intelligent'),
(3, 'open mind'),
(4, 'short temper'),
(7, 'smart'),
(2, 'Work in office'),
(5, 'work in team');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `dob` date NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `status` enum('Active','Block','Pending','') NOT NULL,
  `dated` date NOT NULL,
  `email_verify` enum('Yes','No') NOT NULL DEFAULT 'No',
  `img` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `gender`, `dob`, `state`, `city`, `status`, `dated`, `email_verify`, `img`) VALUES
(17, 'khawars shehzad', 'khawar@gmail.com', '1122', '', 'Male', '1995-01-02', 'punjab', 'Okara', 'Active', '2020-03-07', 'No', '1591542315.jpg'),
(18, 'Hasan Aslam', 'Hasan@gmail.com', '1122', '', 'Male', '1997-01-08', 'punjab', 'Okara', 'Active', '2020-03-07', 'No', 'images.jpg'),
(19, 'Ali sam', 'Ali0@gmail.com', '1122', '', 'Male', '1997-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591542537.png'),
(20, 'Husnain Aslam', 'husnain@gmail.com', '1122', '', 'Male', '1998-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591542611.jpg'),
(21, 'sam ali', 'sam@gmail.com', '1122', '', 'Male', '1994-01-02', 'punjab', 'Faisalabad', 'Active', '2020-03-07', 'No', '1591534140.png'),
(22, 'alex costa', 'alex@gmail.com', '1122', '', 'Male', '1999-02-03', 'punjab', 'Faisalabad', 'Active', '2020-03-07', 'No', '1591542694.jpg'),
(23, 'king younas', 'king@gmail.com', '1122', '', 'Male', '1998-01-02', 'punjab', 'Sahiwal', 'Active', '2020-03-07', 'No', '1591481925.png'),
(24, 'kiran shehzadi', 'kiran@gmail.com', '1122', '', 'Female', '1992-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591542956.jpg'),
(25, 'ayesha ali', 'ayesha@gmail.com', '1122', '', 'Female', '1991-01-01', 'punjab', 'Okara', 'Active', '2020-03-07', 'No', '1591543050.jpg'),
(26, 'fatima ali', 'fatima@gmail.com', '1122', '', 'Female', '1993-01-02', 'punjab', 'Okara', 'Active', '2020-03-07', 'No', '1591543118.jpg'),
(27, 'mobeen ali', 'mobeen@gmail.com', '1122', '', 'Female', '1996-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591543167.jpg'),
(28, 'fahad akram', 'abdullahmazhar454@gmail.com', '1133', '', 'Male', '2000-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591543319.png'),
(29, 'faizan ali', 'faizan@gmail.com', '1122', '', 'Male', '2002-01-02', 'punjab', 'Lahore', 'Active', '2020-03-07', 'No', '1591543546.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_pesonalities`
--

CREATE TABLE `users_pesonalities` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL DEFAULT 0,
  `perso_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_pesonalities`
--

INSERT INTO `users_pesonalities` (`id`, `user_id`, `perso_id`) VALUES
(3, 17, 1),
(6, 17, 2),
(7, 17, 3),
(9, 17, 5),
(13, 17, 8),
(16, 18, 1),
(15, 18, 2),
(19, 18, 4),
(17, 18, 5),
(18, 18, 9),
(20, 21, 1),
(44, 21, 2),
(21, 21, 3),
(45, 21, 4),
(41, 21, 7),
(38, 22, 2),
(39, 22, 5),
(40, 22, 9),
(25, 24, 3),
(26, 24, 4),
(29, 24, 5),
(27, 24, 8),
(28, 24, 10),
(30, 28, 1),
(31, 28, 2),
(32, 28, 3),
(34, 28, 5),
(33, 28, 7),
(35, 28, 8),
(36, 28, 9),
(37, 28, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_one` (`user_one`),
  ADD KEY `user_two` (`user_two`);

--
-- Indexes for table `friend_request`
--
ALTER TABLE `friend_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender` (`sender`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `password_reset_temp`
--
ALTER TABLE `password_reset_temp`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personality`
--
ALTER TABLE `personality`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ptext` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_pesonalities`
--
ALTER TABLE `users_pesonalities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`perso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `friend_request`
--
ALTER TABLE `friend_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personality`
--
ALTER TABLE `personality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users_pesonalities`
--
ALTER TABLE `users_pesonalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_one`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`user_two`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friend_request`
--
ALTER TABLE `friend_request`
  ADD CONSTRAINT `friend_request_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friend_request_ibfk_2` FOREIGN KEY (`receiver`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
