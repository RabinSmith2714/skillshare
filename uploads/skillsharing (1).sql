-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 07:28 AM
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
-- Table structure for table `complaints_detail`
--

CREATE TABLE `complaints_detail` (
  `id` int(11) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `department` varchar(10) NOT NULL,
  `faculty_contact` varchar(20) NOT NULL,
  `faculty_mail` varchar(50) NOT NULL,
  `block_venue` varchar(15) NOT NULL,
  `venue_name` varchar(30) NOT NULL,
  `type_of_problem` varchar(50) NOT NULL,
  `problem_description` varchar(400) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date_of_reg` date NOT NULL,
  `days_to_complete` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `feedback` varchar(250) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `task_completion` varchar(250) NOT NULL,
  `date_of_completion` date NOT NULL,
  `reassign_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints_detail`
--

INSERT INTO `complaints_detail` (`id`, `faculty_id`, `faculty_name`, `department`, `faculty_contact`, `faculty_mail`, `block_venue`, `venue_name`, `type_of_problem`, `problem_description`, `images`, `date_of_reg`, `days_to_complete`, `status`, `feedback`, `reason`, `task_completion`, `date_of_completion`, `reassign_date`) VALUES
(72, 11111111, 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in', 'APJ-106', 'class', 'IT Infra Work', '6 CPU Fault', '0000000020.jpg', '2024-10-01', '2024-10-18', '15', 'jhiu', '', 'Fully Completed', '2024-10-01', '2024-10-13'),
(75, 11111111, 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in', 'APJ-106', 'class', 'Plumbing Work', 'broken table', '0000000023.png', '2024-10-01', '2024-10-27', '5', 'no money\r\n', '', 'Fully Completed', '2024-10-01', '2024-10-13'),
(76, 11111111, 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in', 'RK-124', 'department', 'IT Infra Work', 'fan not working', '0000000024.png', '2024-10-01', '2024-10-18', '2', 'jhvjh', '', '', '0000-00-00', NULL),
(77, 11111111, 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in', 'APJ-106', 'class', 'IT Infra Work', '6 CPU Fault', '0000000025.png', '2024-10-01', '2024-10-25', '16', 'ydty', '', '', '0000-00-00', '2024-10-13'),
(78, 11111111, 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in', 'Apj', 'lab', 'Electrical Work', 'Add ac', '', '2024-10-16', '', '2', '', '', '', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(20) NOT NULL,
  `faculty_id` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `faculty_name` varchar(100) NOT NULL,
  `department` varchar(20) NOT NULL,
  `faculty_contact` varchar(20) NOT NULL,
  `faculty_mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `faculty_id`, `password`, `faculty_name`, `department`, `faculty_contact`, `faculty_mail`) VALUES
(1, '11111111', '1234', 'Ragul', 'IT', '9629613708', 'ragul@mkce.ac.in'),
(2, '22222222', '1234', 'Nalin', 'EEE', '9663852741', 'nalin@mkce.ac.in'),
(3, '33333333', '1234', 'Srihari', 'CSE', '963741852', 'sri@mkce.ac.in');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `User_id` int(50) NOT NULL,
  `User_name` varchar(100) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skilltable`
--

CREATE TABLE `skilltable` (
  `id` int(11) NOT NULL,
  `User_id` int(50) DEFAULT NULL,
  `User_name` varchar(100) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `Specialization` varchar(200) DEFAULT NULL,
  `Qualification` varchar(150) DEFAULT NULL,
  `Rating` int(10) DEFAULT NULL,
  `Documents` varchar(200) DEFAULT NULL,
  `Link` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Date/Time` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skilltable`
--

INSERT INTO `skilltable` (`id`, `User_id`, `User_name`, `Language`, `Specialization`, `Qualification`, `Rating`, `Documents`, `Link`, `email`, `Date/Time`) VALUES
(1, 123, 'smith', 'english,tamil', 'ML,fullstack,AI', 'B.Tech(IT)', 4, NULL, NULL, 'smith@gmail.com', NULL),
(2, 124, 'raj', 'english,tamil', 'ML,fullstack,AI', 'B.E(CSE)', 5, NULL, NULL, 'kumar@gmail.com', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints_detail`
--
ALTER TABLE `complaints_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skilltable`
--
ALTER TABLE `skilltable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints_detail`
--
ALTER TABLE `complaints_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skilltable`
--
ALTER TABLE `skilltable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
