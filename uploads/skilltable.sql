-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 08:39 AM
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
-- Database: `skillsharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `skilltable`
--

CREATE TABLE `skilltable` (
  `id` int(11) NOT NULL,
  `faculty_id` int(50) DEFAULT NULL,
  `User_name` varchar(100) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Specialization` varchar(200) DEFAULT NULL,
  `Qualification` varchar(150) DEFAULT NULL,
  `Rating` int(10) DEFAULT NULL,
  `Documents` varchar(200) DEFAULT NULL,
  `Link` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skilltable`
--

INSERT INTO `skilltable` (`id`, `faculty_id`, `User_name`, `Language`, `Specialization`, `Qualification`, `Rating`, `Documents`, `Link`, `email`) VALUES
(1, 11111111, 'smith', 'english,tamil', 'ML,fullstack,AI', 'B.Tech(IT)', 4, 'hi', 'www.', 'smith@gmail.com'),
(2, 22222222, 'raj', 'english,tamil', 'java', 'B.E(CSE)', 5, 'gghgkh', 'bhjhjhj', 'kumar@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `skilltable`
--
ALTER TABLE `skilltable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skilltable`
--
ALTER TABLE `skilltable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
