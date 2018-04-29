-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 08:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sts_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `consignments`
--

CREATE TABLE `consignments` (
  `id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ngo_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignments`
--

INSERT INTO `consignments` (`id`, `item`, `quantity`, `ngo_id`, `order_id`) VALUES
(1, 'Clothes(S)', 5, 2, 1),
(2, 'Clothes(L)', 6, 1, 1),
(3, 'Utensils', 1, 3, 1),
(4, 'Stationeries', 8, 0, 1),
(5, 'Clothes(S)', 1, 2, 2),
(6, 'Clothes(L)', 25, 2, 2),
(7, 'Clothes(S)', 10, 3, 3),
(8, 'Clothes(L)', 10, 2, 3),
(9, 'Clothes(S)', 10, 2, 4),
(10, 'Clothes(S)', 10, 1, 5),
(11, 'Clothes(S)', 10, 1, 6),
(12, 'Clothes(S)', 10, 1, 7),
(13, 'Clothes(S)', 10, 2, 8),
(14, 'Clothes(S)', 10, 2, 9),
(15, 'Clothes(S)', 10, 0, 10),
(16, 'Clothes(S)', 10, 1, 11),
(17, 'Clothes(L)', 10, 1, 11),
(18, 'Clothes(S)', 10, 1, 12),
(19, 'Clothes(S)', 4, 1, 13),
(20, 'Clothes(L)', 10, 2, 13),
(21, 'Utensils', 3, 0, 13),
(22, 'Clothes(S)', 10, 1, 14),
(23, 'Clothes(S)', 10, 1, 15),
(24, 'Clothes(S)', 10, 4, 16),
(25, 'Clothes(S)', 10, 8, 17),
(26, 'Clothes(L)', 10, 8, 17),
(27, 'Utensils', 10, 8, 17),
(28, 'Stationeries', 15, 1, 17),
(29, 'Blankets', 15, 8, 17),
(30, 'Clothes(S)', 1, 8, 18),
(31, 'Clothes(L)', 12, 5, 18),
(32, 'Clothes(S)', 1, 8, 19),
(33, 'Clothes(L)', 12, 5, 19),
(34, 'Clothes(S)', 1, 8, 20),
(35, 'Clothes(L)', 12, 5, 20),
(36, 'Clothes(S)', 1, 8, 21),
(37, 'Clothes(L)', 12, 5, 21),
(38, 'Clothes(S)', 1, 8, 22),
(39, 'Clothes(L)', 12, 5, 22),
(40, 'Clothes(S)', 1, 8, 23),
(41, 'Clothes(L)', 12, 5, 23),
(42, 'Clothes(S)', 1, 8, 24),
(43, 'Clothes(L)', 12, 5, 24),
(44, 'Clothes(S)', 10, 8, 25),
(45, 'Clothes(L)', 10, 5, 25),
(46, 'Clothes(S)', 10, 0, 26),
(47, 'Clothes(L)', 10, 0, 26),
(48, 'Utensils', 10, 0, 26),
(49, 'Stationeries', 10, 0, 26),
(50, 'Blankets', 10, 0, 26),
(51, 'Others', 10, 0, 26),
(52, 'Clothes(S)', 1, 5, 27),
(53, 'Clothes(L)', 10, 6, 27),
(54, 'Utensils', 10, 100, 27),
(55, 'Stationeries', 10, 2, 27),
(56, 'Blankets', 10, 8, 27),
(57, 'Others', 10, 1, 27),
(58, 'Clothes(S)', 12, 100, 30),
(59, 'Clothes(L)', 10, 5, 30),
(60, 'Utensils', 11, 5, 30),
(61, 'Blankets', 20, 8, 30),
(62, 'Clothes(S)', 12, 100, 31),
(63, 'Clothes(L)', 10, 5, 31),
(64, 'Utensils', 11, 5, 31),
(65, 'Blankets', 20, 8, 31),
(66, 'Clothes(S)', 12, 100, 32),
(67, 'Clothes(L)', 10, 5, 32),
(68, 'Utensils', 11, 5, 32),
(69, 'Blankets', 20, 8, 32),
(70, 'Clothes(S)', 12, 100, 33),
(71, 'Clothes(L)', 10, 5, 33),
(72, 'Utensils', 11, 5, 33),
(73, 'Blankets', 20, 8, 33),
(74, 'Clothes(S)', 12, 100, 34),
(75, 'Clothes(L)', 10, 5, 34),
(76, 'Utensils', 11, 5, 34),
(77, 'Blankets', 20, 8, 34);

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` int(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` int(11) NOT NULL,
  `sanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` (`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`) VALUES
(1, 'sandy@gmail.com', 'Sandeep Kumar', 2147483647, '2010-12-01', '123456', 1, '1234'),
(2, 'pravingupta11@gmail.com', 'Pravin Gupta', 2147483647, '2010-12-31', '123456', 1, 'hjgh'),
(3, 'sandyji@gmail.com', 'Sandeep Kumar', 2147483647, '2010-12-06', '123456', 1, 'cat'),
(4, 'sandy12@gmail.com', 'Sandeep Kumar', 2147483647, '2010-11-28', '123456', 1, '123');

-- --------------------------------------------------------

--
-- Table structure for table `ngos`
--

CREATE TABLE `ngos` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` int(10) NOT NULL,
  `district` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` int(10) NOT NULL,
  `sanswer` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngos`
--

INSERT INTO `ngos` (`id`, `username`, `name`, `mobile`, `district`, `password`, `squestion`, `sanswer`, `address`) VALUES
(1, 'contact@cry.org', 'CRY', 2147483647, '24 Parganas', '123456', 1, 'pika', 'Kolkata'),
(2, 'xyz@abc.com', 'XYZ', 2147483647, 'Darj', '123456', 1, '123', '123'),
(3, 'abcd@gmail.com', 'ABC', 2147483647, '24 Parganas', '123456', 1, '123', '123'),
(4, 'abcde@gmail.com', 'DEF', 2147483647, '24 Parganas', '123456', 1, '123456', '123456'),
(5, 'cod@g.com', 'CRY', 2147483647, '24 Parganas', '123456', 1, '123', '123'),
(6, 'dry@gmail.com', 'DRY', 2147483647, 'Dj', '123456', 1, '123', 'cloud'),
(7, 'fry@gmail.com', 'FRY', 2147483647, 'kolkata', '123456', 1, 'Tommy', 'Indrapuri Sipara,Behind Bapudham Motihari,Landmark-Tilaiya,Post-Rimbick,Paakur'),
(8, 'mohan@cheatfund.com', 'MOHAN_CHEATFUND', 2147483647, 'Kolkata', '123456', 1, 'Tommy', 'Salt lake');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `isPicked` varchar(4) NOT NULL,
  `isDelivered` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `contributor_id`, `volunteer_id`, `order_date`, `isPicked`, `isDelivered`) VALUES
(1, 2, NULL, '2018-04-23', '', ''),
(2, 3, NULL, '2018-04-23', '', ''),
(3, 1, 1, '2018-04-24', '', ''),
(4, 1, NULL, '2018-04-24', '', ''),
(5, 1, NULL, '2018-04-24', '', ''),
(6, 1, NULL, '2018-04-24', '', ''),
(7, 1, NULL, '2018-04-24', '', ''),
(8, 1, NULL, '2018-04-24', '', ''),
(9, 1, NULL, '2018-04-24', '', ''),
(10, 1, NULL, '2018-04-24', '', ''),
(11, 1, NULL, '2018-04-24', '', ''),
(12, 1, NULL, '2018-04-24', '', ''),
(13, 1, NULL, '2018-04-24', '', ''),
(14, 1, NULL, '2018-04-24', '', ''),
(15, 1, NULL, '2018-04-24', '', ''),
(16, 0, NULL, '2018-04-25', '', ''),
(17, 1, NULL, '2018-04-26', 'NO', 'NO'),
(18, 1, NULL, '2018-04-26', 'NO', 'NO'),
(19, 1, NULL, '2018-04-26', 'NO', 'NO'),
(20, 1, NULL, '2018-04-26', 'NO', 'NO'),
(21, 1, NULL, '2018-04-26', 'NO', 'NO'),
(22, 1, NULL, '2018-04-26', 'NO', 'NO'),
(23, 1, NULL, '2018-04-26', 'NO', 'NO'),
(24, 1, NULL, '2018-04-26', 'NO', 'NO'),
(25, 1, NULL, '2018-04-26', 'NO', 'NO'),
(26, 1, NULL, '2018-04-26', 'NO', 'NO'),
(27, 1, NULL, '2018-04-26', 'NO', 'NO'),
(28, 1, NULL, '2018-04-26', 'NO', 'NO'),
(29, 1, NULL, '2018-04-26', 'NO', 'NO'),
(30, 1, NULL, '2018-04-26', 'NO', 'NO'),
(31, 1, NULL, '2018-04-26', 'NO', 'NO'),
(32, 1, NULL, '2018-04-26', 'NO', 'NO'),
(33, 1, NULL, '2018-04-26', 'NO', 'NO'),
(34, 1, NULL, '2018-04-26', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`order_id`, `name`, `phone`, `pincode`, `flat`, `street`, `pickup_date`, `pickup_time`) VALUES
(1, 'Pravin Gupta', 2147483647, 700102, 'BC-127', 'Samarpally krishnapur', '2018-04-12', '1 PM - 3 PM'),
(7, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-25', '7 AM - 9 AM'),
(8, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-10', '7 AM - 9 AM'),
(9, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-10', '7 AM - 9 AM'),
(10, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-18', '7 AM - 9 AM'),
(11, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-17', '7 AM - 9 AM'),
(12, 'Rahul', 2147483647, 700091, 'D-31', 'Samarpally', '2018-04-25', '7 AM - 9 AM'),
(13, 'Prem Prakash', 2147483647, 700102, '555555555555555555555555555555555555555555555555', 'AH-42', '1995-12-05', '3 PM - 5 PM'),
(14, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-25', '7 AM - 9 AM'),
(15, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-24', '7 AM - 9 AM'),
(17, 'Mohan Kumar', 2147483647, 700102, 'gjsdgjsdgd', 'Jotish Villa, AG-214, Near Cheap Market', '2018-05-24', '9 AM - 11 AM'),
(18, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(19, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(20, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(21, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(22, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(23, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(24, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(25, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-30', '7 AM - 9 AM'),
(26, 'jhjkesh', 2147483647, 700102, 'D-31', 'Jotish Villa, AG-214, Near Cheap Market', '2018-05-01', '7 AM - 9 AM'),
(27, 'Pravin', 2147483647, 700102, 'D-31', 'gh', '2018-05-01', '7 AM - 9 AM'),
(28, 'Prem Prakash', 2147483647, 700102, 'h', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(29, 'Prem Prakash', 2147483647, 700102, 'h', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(30, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(31, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(32, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(33, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(34, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `ngo_id` int(11) NOT NULL,
  `ngo_name` varchar(100) NOT NULL,
  `s_clothes` int(11) NOT NULL,
  `l_clothes` int(11) NOT NULL,
  `utensils` int(11) NOT NULL,
  `stationeries` int(11) NOT NULL,
  `blankets` int(11) NOT NULL,
  `req_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`ngo_id`, `ngo_name`, `s_clothes`, `l_clothes`, `utensils`, `stationeries`, `blankets`, `req_date`) VALUES
(1, 'NGO1', 10, 10, 10, 0, 0, '2018-04-25'),
(2, 'NGO2', 10, 0, 0, 20, 0, '2018-04-25'),
(5, 'NGO3', 60, 51, 25, 20, 0, '2018-04-25'),
(6, 'NGO4', 83, 43, 43, 37, 0, '2018-04-26'),
(8, 'MOHAN_CHEATFUND', 23, 25, 66, 0, 20, '2018-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(2) NOT NULL,
  `question` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`) VALUES
('abc@gmail.com', 'pppooo', 'contributor'),
('abcd@gmail.com', '123456', 'ngo'),
('abcde@gmail.com', '123456', 'ngo'),
('cod@g.com', '123456', 'ngo'),
('contact@cry.org', '123456', 'ngo'),
('d@g.com', '123456', 'ngo'),
('dhanraj@gmail.com', '123456', 'contributor'),
('dry@gmail.com', '123456', 'ngo'),
('fry@gmail.com', '123456', 'ngo'),
('io@h.com', '123456', 'volunteer'),
('mohan@cheatfund.com', '123456', 'ngo'),
('o@gg.com', '123456', 'volunteer'),
('op@qw.com', '123456', 'volunteer'),
('praving@gmail.com', '123456', 'volunteer'),
('pravingupta1071@gmail.com', 'pravin@123', 'admin'),
('pravingupta11@gmail.com', '123456', 'contributor'),
('praween.pro@gmail.com', 'praween@123', 'admin'),
('r@df.com', '123456', 'volunteer'),
('r@gb.com', '123456', 'volunteer'),
('rahufffl@gmail.com', '123456', 'volunteer'),
('rahul@gmail.com', '123456', 'volunteer'),
('rahularya@gmail.com', '123456', 'volunteer'),
('rahularyan@gmail.com', '123456', 'volunteer'),
('sa@g.com', '123456', 'contributor'),
('sandy12@gmail.com', '123456', 'contributor'),
('sandy@gmail.com', '123456', 'contributor'),
('sandyji@gmail.com', '123456', 'contributor'),
('xyz@abc.com', '123456', 'ngo');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` int(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(120) NOT NULL,
  `squestion` int(10) NOT NULL,
  `sanswer` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  `address` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`, `image`, `address`) VALUES
(1, 'rahularya@gmail.com', 'Rahul', 2147483647, '2010-12-06', '123456', 2, 'Tom', 0x4578616d5f466f726d2e706466, 'Patna'),
(2, 'praving@gmail.com', 'Pravin', 2147483647, '2010-12-09', '123456', 2, 'pika', 0x4578616d5f466f726d2e706466, 'Kolkata'),
(3, 'rahularyan@gmail.com', 'Rahul', 2147483647, '2010-12-14', '123456', 1, '123456', 0x53637265656e73686f74202832292e706e67, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consignments`
--
ALTER TABLE `consignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contributors`
--
ALTER TABLE `contributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngos`
--
ALTER TABLE `ngos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`ngo_id`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contributors`
--
ALTER TABLE `contributors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngos`
--
ALTER TABLE `ngos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pickup`
--
ALTER TABLE `pickup`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
