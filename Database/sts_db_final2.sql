-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2018 at 06:09 AM
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
CREATE DATABASE IF NOT EXISTS `sts_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sts_db`;

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
(6, 'Clothes(S)', 10, 2, 1),
(7, 'Clothes(S)', 10, 1, 2),
(8, 'Clothes(L)', 5, 2, 2),
(9, 'Utensils', 2, 2, 2),
(10, 'Stationeries', 50, 1, 2),
(11, 'Blankets', 10, 2, 2),
(12, 'Others', 20, 1, 2),
(13, 'Clothes(S)', 10, 1, 3),
(14, 'Stationeries', 10, 1, 3),
(15, 'Blankets', 10, 2, 3),
(16, 'Others', 10, 1, 3),
(17, 'Clothes(S)', 5, 2, 4),
(18, 'Stationeries', 5, 1, 4),
(19, 'Others', 2, 1, 4),
(20, 'Blankets', 5, 2, 5),
(21, 'Clothes(S)', 100, 2, 6),
(22, 'Clothes(S)', 10, 2, 7),
(23, 'Clothes(S)', 12, 2, 8),
(24, 'Utensils', 20, 2, 8),
(25, 'Clothes(S)', 15, 2, 9),
(26, 'Clothes(L)', 1, 2, 9),
(27, 'Utensils', 12, 2, 9),
(28, 'Clothes(L)', 50, 1, 12),
(29, 'Clothes(L)', 50, 2, 12),
(30, 'Utensils', 16, 1, 12),
(31, 'Utensils', 34, 2, 12),
(32, 'Clothes(S)', 11, 1, 13),
(33, 'Clothes(S)', 100, 1, 14),
(34, 'Clothes(S)', 100, 1, 14),
(35, 'Clothes(S)', 100, 1, 15),
(36, 'Clothes(S)', 100, 1, 15),
(37, 'Clothes(S)', 200, 1, 16),
(38, 'Stationeries', 1, 2, 17);

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` int(11) NOT NULL,
  `sanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` (`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`) VALUES
(1, 'rohit@gmail.com', 'Rohit Kumar', 7044308628, '1996-02-02', '123456', 1, 'dog'),
(2, 'rishabh@gmail.com', 'Rishabh Agarwal', 9883312200, '1995-06-13', '123456', 2, 'pikachu'),
(3, 'sachin@gmail.com', 'Sachin Jha', 9631024587, '1994-01-29', '123456', 3, 'pepsi'),
(4, 'sachida@gmail.com', 'Sachidanand Jha', 9875641231, '1995-03-14', '123456', 4, 'Patna'),
(5, 'kmlshkmr1071@gmail.com', 'Rajesh ', 8697032905, '1994-05-10', 'rajesh', 1, 'cat'),
(6, 'sshb@hshs', 'grafxa', 6752222222, '2010-12-14', '1111111', 2, 'ssgs'),
(7, 'pradeep.pradeep@gmail.com', 'pradeep ', 0, '1995-02-05', '123456', 2, 'chotabhim'),
(8, 'gurukumar@gmail.com', 'Gurucharan Kumar', 8877530919, '2010-12-15', '123123', 1, 'lion'),
(9, 'ronakjain@gmail.com', 'ronak jain', 8584855507, '2010-12-17', 'apple123', 1, 'doggi'),
(10, 'rammoham@baba.com', 'ram mohan', 9431113739, '1995-02-15', '123456', 1, 'doggi'),
(11, 'apple@123.com', 'ram mohan', 6549464946, '1995-02-15', '123456789', 1, 'dog');

-- --------------------------------------------------------

--
-- Table structure for table `ngos`
--

CREATE TABLE `ngos` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` bigint(10) NOT NULL,
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
(1, 'warehouse@sts.com', 'Warehouse', 9876543210, 'North 24 Parganas', '123456', 1, 'cat', 'D-31, BC-126, Vaishno Devi Abasan, Samarpally'),
(2, 'cry@gmail.com', 'CRY', 1800020660, 'Kolkata', '123456', 1, 'Rabbit', '152, New No. 82nd Street, Gitanjali Park, Kolkata-700099'),
(3, 'helpage@gmail.com', 'HelpAge', 1800020333, 'kolkata', '123456', 1, 'Panda', 'MB-409 NEAR BHARTI SANGH CLUB, MAHISBATHAN, SALTLALE, SEC-5,KOLKATA-700102');

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
(1, 5, 4, '2018-05-08', 'YES', 'YES'),
(2, 8, NULL, '2018-05-10', 'NO', 'NO'),
(3, 1, NULL, '2018-05-10', 'NO', 'NO'),
(4, 11, 6, '2018-05-10', 'YES', 'Y'),
(5, 11, 6, '2018-05-10', 'YES', 'Y'),
(6, 1, 1, '2018-05-10', 'YES', 'Y'),
(7, 1, 1, '2018-05-10', 'YES', 'YES'),
(8, 1, 1, '2018-05-10', 'YES', 'NO'),
(9, 1, 1, '2018-05-10', 'YES', 'YES'),
(10, 1, NULL, '2018-05-10', 'NO', 'NO'),
(11, 1, NULL, '2018-05-10', 'NO', 'NO'),
(12, 1, 2, '2018-05-10', 'YES', 'YES'),
(13, 1, NULL, '2018-05-11', 'NO', 'NO'),
(14, 1, NULL, '2018-05-11', 'NO', 'NO'),
(15, 1, NULL, '2018-05-11', 'NO', 'NO'),
(16, 1, 1, '2018-05-11', 'YES', 'YES'),
(17, 0, NULL, '2018-05-11', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
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
(1, 'Prem Prakash', 9771085481, 700102, 'D-31', 'AH-42', '2018-05-10', '7 AM - 9 AM'),
(2, 'Gurucharan Kumar', 8877530919, 814133, 'mb-102', 'techno polis', '2018-05-12', '7 PM - 9 PM'),
(3, 'Prem Prakash', 9771085481, 700102, 'd-31', 'AH-42', '2018-05-12', '7 AM - 9 AM'),
(4, 'sohan kumar', 8584855507, 700054, '3rd floor,cit scheme VIMS', 'phoolbagan', '2018-05-12', '7 AM - 9 AM'),
(5, 'Rajesh ', 8554555555, 700102, 'mb', 'mb 123', '2018-05-17', '7 AM - 9 AM'),
(6, 'Rahul Kumar', 1234567890, 726262, 'BC-127', 'Patna', '2018-05-15', '7 AM - 9 AM'),
(7, 'Pravin Gupta', 9866325544, 700102, 'BC-127', 'Patna', '2018-05-15', '7 AM - 9 AM'),
(8, 'Sandeep Kumar', 9874642562, 700102, 'BC-111', 'Salt Lake', '2018-05-12', '7 AM - 9 AM'),
(9, 'Prem Prakash', 9771085481, 700102, 'BC-112', 'AH-42', '2018-05-15', '7 AM - 9 AM'),
(12, 'Mohan Kumar', 9876543210, 700102, 'BC-099', 'Salt Lake', '2018-05-20', '7 AM - 9 AM'),
(13, 'DEBMALYA ROY', 9866532114, 700102, 'D-55', 'MILAN BAZAAR', '2018-05-13', '7 AM - 9 AM'),
(14, 'DEBMALYA ROY', 9866577413, 700122, 'D-87', 'MILAN BAZAAR', '2018-05-13', '7 AM - 9 AM'),
(15, 'MALYA ROY', 9886555332, 700102, 'D-81', 'Rabindrapally', '2018-05-14', '7 AM - 9 AM'),
(16, 'Dhanraj Kumar', 9886574459, 700102, 'G-99', 'MILAN BAZAAR', '2018-05-14', '7 AM - 9 AM'),
(17, 'Warehouse', 9876543210, 700102, 'D-31, Vaishno Devi Abasan', 'Samarpally', '2018-05-12', '7 AM - 9 AM');

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
(1, 'Warehouse', 100, 150, 116, 99, 100, '2018-05-01'),
(2, 'CRY', 0, 0, 0, 1, 2, '2018-05-10'),
(3, 'HelpAge', 0, 0, 0, 0, 0, '2018-05-08');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(2) NOT NULL,
  `question` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `security_question`
--

INSERT INTO `security_question` (`id`, `question`) VALUES
(1, 'Favorite Animal'),
(2, 'Favorite Cartoon character'),
(3, 'Nickname'),
(4, 'Birth City');

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
('amit@yahoo.com', 'readyness', 'volunteer'),
('apple@123.com', '123456789', 'contributor'),
('cry@gmail.com', '123456', 'ngo'),
('dhanraj@gmail.com', '123456', 'volunteer'),
('guru123@gmail.com', '123123', 'volunteer'),
('guru@yahoo.com', '111111', 'volunteer'),
('gurucharan@sts.com', '123456', 'admin'),
('gurukumar@gmail.com', 'abc123', 'contributor'),
('helpage@gmail.com', '123456', 'ngo'),
('kmlshkmr1071@gmail.com', 'rajesh', 'contributor'),
('kunal@gmail.com', '123456', 'volunteer'),
('mohan@gmail.com', '123456', 'volunteer'),
('pradeep.pradeep@gmail.com', '123456', 'contributor'),
('pravingupta@sts.com', '123456', 'admin'),
('praweenkumar@sts.com', '123456', 'admin'),
('rahulkumar@sts.com', '123456', 'admin'),
('rammoham@baba.com', '1234567', 'contributor'),
('rishabh@gmail.com', '123456', 'contributor'),
('rishabhjain@sts.com', '123456', 'admin'),
('rohit@gmail.com', '123456', 'contributor'),
('ronakjain@gmail.com', 'apple123', 'contributor'),
('sachida@gmail.com', '123456', 'contributor'),
('sachin@gmail.com', '123456', 'contributor'),
('sandeepkumar@sts.com', '123456', 'admin'),
('sshb@hshs', '1111111', 'contributor');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` bigint(10) NOT NULL,
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
(1, 'mohan@gmail.com', 'Mohan Kumar', 9088513746, '1994-06-15', '123456', 1, 'parrot', 0x6d795f70686f746f5f736d616c6c2e6a7067, 'BC-126 Samarpally Krishnapur, Kolkata-700102\r\n'),
(2, 'kunal@gmail.com', 'Kunal Kumar', 8909776655, '1995-03-14', '123456', 2, 'doraemon', 0x6d795f70686f746f5f736d616c6c2e6a7067, 'AG-214, Jotish Villa, Milan Bazar, Kolkata-700102'),
(3, 'dhanraj@gmail.com', 'Dhanraj Kumar', 8240608888, '1994-12-31', '123456', 4, 'Dhanno', 0x6d795f70686f746f5f736d616c6c2e6a7067, 'RB-16, Mahisbathan, Kolkata-700120'),
(4, 'amit@yahoo.com', 'Amit Das', 9999999999, '2000-09-09', 'readyness', 1, 'dog', 0x6d795f70686f746f5f736d616c6c2e6a7067, 'irioi999((9)(*&*(&*^&*^&'),
(5, 'guru@yahoo.com', 'guru', 9771085481, '1999-12-02', '111111', 1, 'cat', 0x4578616d5f466f726d2e706466, 'techno polis kolkata'),
(6, 'guru123@gmail.com', 'guru kumar', 8877530919, '1995-10-10', '123123', 1, 'dog', 0x63762e706466, 'techno polish kolkata');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contributors`
--
ALTER TABLE `contributors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ngos`
--
ALTER TABLE `ngos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pickup`
--
ALTER TABLE `pickup`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
