-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2021 at 07:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(64, 'ml module1', 'module 1 ndtes', 'pdf', 'zeeshan', '2021-01-30 05:24:24', 'Computer Science', '568816.pdf', 'approved'),
(60, 'python module 1', 'module 1 notes', 'docx', 'zeeshan', '2021-01-13 04:39:46', 'Computer Science', '453468.docx', 'approved'),
(59, 'Java Notes Module 1', 'Module 1 notes', 'pdf', 'user1', '2021-01-13 04:39:50', 'Computer Science', '112922.pdf', 'approved'),
(62, 'Java IA Question Bank', 'IA 1 Question Bank', 'docx', 'abdul', '2021-01-13 19:59:50', 'Computer Science', '598709.docx', 'approved'),
(61, 'Python notes', 'module 1 notes python', 'pdf', 'abdul', '2021-01-13 04:39:40', 'Computer Science', '894288.pdf', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(32, 'abdulghani', 'ABDUL GHANI', 'N/A', 'admin', 'abdulghani@gmail.com', '', 'Male', '$2y$10$jbtLeNN.owlZZBaZEuV5F.BB.uUhAoSSixP/P3nowzKx/YpBNpBX6', 'Computer Science', 'profile.jpg', 'January 13, 2021'),
(33, 'abdul', 'Abdul', 'N/A', 'teacher', 'abdul@gmail.com', '', 'Male', '$2y$10$RE6AZ70/BXmn76uIz37HzeCG41mz6ATJNH/ePqcHZuIJMCzFofRR2', 'Computer Science', 'profile.jpg', 'January 13, 2021'),
(31, 'zeeshan', 'Zeeshan', 'N/A', 'student', 'ghani@gmail.com', '', 'Male', '$2y$10$dYiZEFUR77V6S.5KBOFua.FqgzbLiXZ65PCmBj/purMMAQal8S5WK', 'Computer Science', 'profile.jpg', 'December 23, 2020'),
(34, 'ayesha', 'AYESHA FIRDOSE', 'N/A', 'teacher', 'ayeshafirdose@gmail.com', '', 'Female', '$2y$10$y412wwqAl12xVBZ2..ZlDebsiQT0zAts/MMIRpuoS5BXeuW86G8nu', 'Computer Science', 'profile.jpg', 'January 13, 2021'),
(35, 'teacher', 'Teacher', 'N/A', 'teacher', 'teacher@gmail.com', '', 'Male', '$2y$10$i4TpbsY54oIFghVBuIosyu.5kWIVFuf94YnA5nAsYJzwUO7YiZ8Bi', 'Computer Science', 'profile.jpg', 'January 30, 2021'),
(36, 'zeeshan', 'Zeeshan', 'N/A', 'student', 'zeeshan@gmail.com', '', 'Male', '$2y$10$74kbPSBBmHXn6vhgywrLau5vaiT83jbSvAZeRXDKPLxVKD3Ko0mRy', 'Computer Science', 'profile.jpg', 'February 14, 2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
