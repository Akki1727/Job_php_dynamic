-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 31, 2022 at 04:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynmc_php_jobapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_info`
--

CREATE TABLE `basic_info` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `bdate` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `rstatus` varchar(255) DEFAULT NULL,
  `c_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `basic_info`
--

INSERT INTO `basic_info` (`id`, `fname`, `lname`, `designation`, `address1`, `address2`, `city`, `state`, `zipcode`, `email`, `number`, `bdate`, `gender`, `rstatus`, `c_time`, `update_time`) VALUES
(1, 'Akshay', 'Patel', 'Student', 'KAthalal', 'Kheda', 'Kathalal', 'gujarat', '789456', 'akshay@gmail.com', '7894561230', '1998-03-27', 'male', 'sinlge', '2022-03-31 08:25:02', '2022-03-31 08:25:02'),
(3, 'Bharat', 'Patel', 'HR', 'Bhaner', 'Kathalal', 'Kathlal', 'gujarat', '789456', 'bharat@gmail.com', '9574222457', '1972-12-20', 'male', 'merried', '2022-03-31 09:00:51', '2022-03-31 09:00:51'),
(6, 'Heena', 'Harsoda', 'Dev3', 'Surat', 'Ahmedabad', 'Surat', 'gujarat', '456789', 'heena@gmail.com', '4561237890', '2022-03-03', 'female', 'merried', '2022-03-31 09:35:39', '2022-03-31 09:35:39'),
(7, 'Heena', 'Harsoda', 'Dev3', 'Surat', 'Ahmedabad', 'Surat', 'gujarat', '456789', 'heena@gmail.com', '4561237890', '2022-03-03', 'female', 'sinlge', '2022-03-31 09:36:09', '2022-03-31 13:40:52'),
(8, 'Akki', 'Patel', 'Student', 'asjcbsifg', 'asdbfnjkfh', 'dfkwljedroigjh', 'Rajasthan', '465789', 'akki@gmail.com', '7894561230', '1995-12-25', 'male', 'merried', '2022-03-31 10:04:45', '2022-03-31 10:04:45'),
(9, 'Akki', 'Patel', 'Student', 'asjcbsifg', 'asdbfnjkfh', 'dfkwljedroigjh', 'Rajasthan', '465789', 'akki@gmail.com', '7894561230', '1995-12-25', 'male', 'merried', '2022-03-31 10:05:34', '2022-03-31 10:05:34'),
(11, 'Akki', 'Patel', 'Student', 'asjcbsifg', 'asdbfnjkfh', 'dfkwljedroigjh', 'Rajasthan', '465789', 'akki@gmail.com', '7894561230', '1995-12-25', 'male', 'merried', '2022-03-31 10:06:50', '2022-03-31 10:06:50'),
(12, 'Akki', 'Patel', 'Student', 'asjcbsifg', 'asdbfnjkfh', 'dfkwljedroigjh', 'Rajasthan', '465789', 'akki@gmail.com', '7894561230', '1995-12-25', 'male', 'merried', '2022-03-31 10:08:02', '2022-03-31 10:08:02'),
(13, 'Akki', 'Patel', 'Student', 'asjcbsifg', 'asdbfnjkfh', 'dfkwljedroigjh', 'Rajasthan', '465789', 'akki@gmail.com', '7894561230', '1995-12-25', 'male', 'merried', '2022-03-31 10:08:31', '2022-03-31 10:08:31'),
(15, 'sfdgrfthg', 'werfht', 'erygtt', 'dffeg', 'bkjhj', 'afnjsdhf', 'gujarat', '258963', 'erger@gmail.com', '9876543210', '1452-05-04', 'female', 'merried', '2022-03-31 10:13:25', '2022-03-31 10:13:25'),
(16, 'sfdgrfthg', 'werfht', 'erygtt', 'dffeg', 'bkjhj', 'afnjsdhf', 'gujarat', '258963', 'erger@gmail.com', '9876543210', '1452-05-04', 'female', 'merried', '2022-03-31 10:15:27', '2022-03-31 10:15:27'),
(17, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:17:04', '2022-03-31 10:17:04'),
(18, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:17:46', '2022-03-31 10:17:46'),
(19, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(20, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(21, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(22, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:24:28', '2022-03-31 10:24:28'),
(23, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(24, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(25, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(26, 'Dikshit', 'Patel', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:26:37', '2022-03-31 13:56:04'),
(27, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(28, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(29, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:52:51', '2022-03-31 10:52:51'),
(30, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(31, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(32, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(33, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(34, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(35, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:03:14', '2022-03-31 11:03:14'),
(36, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:04:24', '2022-03-31 11:04:24'),
(37, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(38, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(39, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:07:19', '2022-03-31 11:07:19'),
(40, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:07:48', '2022-03-31 11:07:48'),
(41, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:09:00', '2022-03-31 11:09:00'),
(42, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(43, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(44, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(45, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(46, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(47, 'bdfmbk', 'snvdkv', 'dnklsdn', 'nvldsnvl', 'dnfdkfn', 'dfdnfl', 'gujarat', 'dgks', 'nlfsdnf', 'dfldsnf', '5745-06-04', 'male', 'sinlge', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(48, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:48:58', '2022-03-31 11:48:58'),
(49, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:49:37', '2022-03-31 11:49:37'),
(50, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:49:47', '2022-03-31 11:49:47'),
(51, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:50:27', '2022-03-31 11:50:27'),
(52, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:50:55', '2022-03-31 11:50:55'),
(53, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:51:23', '2022-03-31 11:51:23'),
(54, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:52:13', '2022-03-31 11:52:13'),
(55, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:53:30', '2022-03-31 11:53:30'),
(56, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:54:02', '2022-03-31 11:54:02'),
(57, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(58, 'sfsgfh', 'sdgfhg', 'sdfhgf', 'dfghd', 'sdfgdgh', 'sdfhg', 'gujarat', 'sfdhgjk', 'sfdgh', 'dfhg', '2022-03-02', 'male', 'sinlge', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(59, 'sdfghh', 'fggdnl', 'sdfgj', 'ajfklsdjf', 'klsdjfklsdfj', 'ksdjsdljgf', 'gujarat', 'klsdjklsjf', 'sdlgjgf', 'skldjgflgfj', '0154-04-12', 'male', 'sinlge', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(60, 'sdfghh', 'fggdnl', 'sdfgj', 'ajfklsdjf', 'klsdjfklsdfj', 'ksdjsdljgf', 'gujarat', 'klsdjklsjf', 'sdlgjgf', 'skldjgflgfj', '0154-04-12', 'male', 'sinlge', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(61, 'sdfgdghj', 'Patel', 'Student', 'dgfhjk', 'gfjhkl', 'Kathalal', 'UP', '789456', 'prankdemo2@gmail.com', '7894561230', '4242-02-24', 'female', 'merried', '2022-03-31 13:28:00', '2022-03-31 13:28:00');

-- --------------------------------------------------------

--
-- Table structure for table `edu_details`
--

CREATE TABLE `edu_details` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `school_university` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `cgpa_perc` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edu_details`
--

INSERT INTO `edu_details` (`id`, `s_id`, `coursename`, `school_university`, `year`, `cgpa_perc`, `c_date`, `u_date`) VALUES
(4, 4, 'SSC', 'A', '2011', '45%', '2022-03-31 09:34:28', '0000-00-00 00:00:00'),
(5, 4, 'HSC', 'B', '2013', '75%', '2022-03-31 09:34:28', '0000-00-00 00:00:00'),
(6, 5, 'SSC', 'A', '2011', '45%', '2022-03-31 09:35:13', '0000-00-00 00:00:00'),
(7, 5, 'HSC', 'B', '2013', '75%', '2022-03-31 09:35:13', '0000-00-00 00:00:00'),
(8, 6, 'SSC', 'A', '2011', '45%', '2022-03-31 09:35:39', '0000-00-00 00:00:00'),
(9, 6, 'HSC', 'B', '2013', '75%', '2022-03-31 09:35:39', '0000-00-00 00:00:00'),
(12, 8, 'SSC', 'A', '2001', '52%', '2022-03-31 10:04:45', '0000-00-00 00:00:00'),
(13, 9, 'SSC', 'A', '2001', '52%', '2022-03-31 10:05:34', '0000-00-00 00:00:00'),
(14, 10, 'SSC', 'A', '2001', '52%', '2022-03-31 10:05:53', '0000-00-00 00:00:00'),
(15, 11, 'SSC', 'A', '2001', '52%', '2022-03-31 10:06:50', '0000-00-00 00:00:00'),
(16, 12, 'SSC', 'A', '2001', '52%', '2022-03-31 10:08:02', '0000-00-00 00:00:00'),
(17, 13, 'SSC', 'A', '2001', '52%', '2022-03-31 10:08:31', '0000-00-00 00:00:00'),
(18, 14, 'SSC', 'A', '2001', '52%', '2022-03-31 10:08:40', '0000-00-00 00:00:00'),
(19, 15, 'SSC', 'csdcscd', '1234', '23', '2022-03-31 10:13:25', '0000-00-00 00:00:00'),
(20, 16, 'SSC', 'csdcscd', '1234', '23', '2022-03-31 10:15:27', '0000-00-00 00:00:00'),
(21, 17, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:17:04', '0000-00-00 00:00:00'),
(22, 18, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:17:46', '0000-00-00 00:00:00'),
(23, 19, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:21:11', '0000-00-00 00:00:00'),
(24, 20, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:21:55', '0000-00-00 00:00:00'),
(25, 21, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:23:09', '0000-00-00 00:00:00'),
(26, 22, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:24:28', '0000-00-00 00:00:00'),
(27, 23, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:24:34', '0000-00-00 00:00:00'),
(28, 24, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:24:59', '0000-00-00 00:00:00'),
(29, 25, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:25:22', '0000-00-00 00:00:00'),
(31, 27, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:27:00', '0000-00-00 00:00:00'),
(32, 28, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:50:49', '0000-00-00 00:00:00'),
(33, 29, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:52:52', '0000-00-00 00:00:00'),
(34, 30, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:53:06', '0000-00-00 00:00:00'),
(35, 31, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:54:03', '0000-00-00 00:00:00'),
(36, 32, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:56:57', '0000-00-00 00:00:00'),
(37, 33, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:57:12', '0000-00-00 00:00:00'),
(38, 34, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 10:57:17', '0000-00-00 00:00:00'),
(39, 35, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:03:14', '0000-00-00 00:00:00'),
(40, 36, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:04:24', '0000-00-00 00:00:00'),
(41, 37, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:04:47', '0000-00-00 00:00:00'),
(42, 38, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:05:14', '0000-00-00 00:00:00'),
(43, 39, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:07:19', '0000-00-00 00:00:00'),
(44, 40, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:07:48', '0000-00-00 00:00:00'),
(45, 41, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:09:00', '0000-00-00 00:00:00'),
(46, 42, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:09:28', '0000-00-00 00:00:00'),
(47, 43, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:36:50', '0000-00-00 00:00:00'),
(48, 44, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:37:34', '0000-00-00 00:00:00'),
(49, 45, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:40:33', '0000-00-00 00:00:00'),
(50, 46, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:40:57', '0000-00-00 00:00:00'),
(51, 47, 'SSC', 'dkjfgkjf', '2589', '75', '2022-03-31 11:43:19', '0000-00-00 00:00:00'),
(52, 0, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:44:44', '0000-00-00 00:00:00'),
(53, 0, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:45:13', '0000-00-00 00:00:00'),
(54, 0, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:45:33', '0000-00-00 00:00:00'),
(55, 0, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:48:32', '0000-00-00 00:00:00'),
(56, 48, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:48:58', '0000-00-00 00:00:00'),
(57, 49, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:49:37', '0000-00-00 00:00:00'),
(58, 50, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:49:47', '0000-00-00 00:00:00'),
(59, 51, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:50:27', '0000-00-00 00:00:00'),
(60, 52, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:50:55', '0000-00-00 00:00:00'),
(61, 53, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:51:23', '0000-00-00 00:00:00'),
(62, 54, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:52:13', '0000-00-00 00:00:00'),
(63, 55, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:53:30', '0000-00-00 00:00:00'),
(64, 56, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:54:02', '0000-00-00 00:00:00'),
(65, 57, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:57:52', '0000-00-00 00:00:00'),
(66, 58, 'SSC', 'fdghjkl', 'jhk', 'ghfjg', '2022-03-31 11:58:17', '0000-00-00 00:00:00'),
(67, 59, 'SSC', 'ksdjfh', 'klsdngflg', 'lvnsfdlh', '2022-03-31 13:25:24', '0000-00-00 00:00:00'),
(68, 60, 'SSC', 'ksdjfh', 'klsdngflg', 'lvnsfdlh', '2022-03-31 13:26:56', '0000-00-00 00:00:00'),
(69, 61, 'SSC', 'A', '2001', '52%', '2022-03-31 13:28:00', '0000-00-00 00:00:00'),
(75, 7, 'SSC', 'scfdasf', 'fsdfghdhgh', 'fhgdjg', '2022-03-31 13:48:06', '0000-00-00 00:00:00'),
(81, 26, 'SSC', 'dcfhg', '2001', '52%', '2022-03-31 13:56:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pref_details`
--

CREATE TABLE `pref_details` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `notice_period` varchar(255) NOT NULL,
  `expected_ctc` varchar(255) NOT NULL,
  `current_ctc` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pref_details`
--

INSERT INTO `pref_details` (`id`, `s_id`, `location`, `notice_period`, `expected_ctc`, `current_ctc`, `department`, `c_date`, `u_date`) VALUES
(1, 61, 'ahmedabad,gandhinagar', '1 week', '20000', '15000', 'networking', '2022-03-31 13:28:00', '0000-00-00 00:00:00'),
(7, 7, 'ahmedabad,gandhinagar', '2 week', '20000', '15000', 'design', '2022-03-31 13:48:06', '0000-00-00 00:00:00'),
(13, 26, 'surat', '2 week', '20000', '10000', 'marketing', '2022-03-31 13:56:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ref_details`
--

CREATE TABLE `ref_details` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref_details`
--

INSERT INTO `ref_details` (`id`, `s_id`, `name`, `contact_number`, `relation`, `c_date`, `u_date`) VALUES
(3, 18, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:17:46', '2022-03-31 10:17:46'),
(4, 19, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(5, 20, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(6, 21, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(7, 23, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(8, 24, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(9, 25, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(11, 27, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(12, 28, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(13, 29, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:52:52', '2022-03-31 10:52:52'),
(14, 30, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(15, 31, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(16, 32, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(17, 33, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(18, 34, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(19, 37, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(20, 38, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(21, 41, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:09:00', '2022-03-31 11:09:00'),
(22, 42, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(23, 43, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(24, 44, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(25, 45, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(26, 46, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(27, 47, 'sfdgefg', '4567891233', 'Friend', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(28, 0, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:45:33', '2022-03-31 11:45:33'),
(29, 0, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:48:32', '2022-03-31 11:48:32'),
(30, 48, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:48:58', '2022-03-31 11:48:58'),
(31, 49, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:49:37', '2022-03-31 11:49:37'),
(32, 50, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:49:47', '2022-03-31 11:49:47'),
(33, 51, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:50:27', '2022-03-31 11:50:27'),
(34, 52, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:50:55', '2022-03-31 11:50:55'),
(35, 53, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:51:23', '2022-03-31 11:51:23'),
(36, 54, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:52:13', '2022-03-31 11:52:13'),
(37, 55, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:53:30', '2022-03-31 11:53:30'),
(38, 56, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:54:02', '2022-03-31 11:54:02'),
(39, 57, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(40, 58, 'Akshay', '4567891233', 'Friend', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(41, 59, 'sfdsghj', 'gjhkl', 'lk;\'l', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(42, 60, 'sfdsghj', 'gjhkl', 'lk;\'l', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(43, 61, 'Akshay', '7412589630', 'Friend', '2022-03-31 13:28:00', '2022-03-31 13:28:00'),
(49, 7, 'fgd', '4567891233', 'ghfjkljl', '2022-03-31 13:48:06', '2022-03-31 13:48:06'),
(55, 26, 'Akshay', '4567891233', 'Friend', '2022-03-31 13:56:04', '2022-03-31 13:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `skill_details`
--

CREATE TABLE `skill_details` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `language` varchar(255) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill_details`
--

INSERT INTO `skill_details` (`id`, `s_id`, `language`, `skill`, `c_date`, `u_date`) VALUES
(1, 18, 'hindi', 'r', '2022-03-31 10:19:43', '2022-03-31 10:19:43'),
(2, 18, 'english', 'k', '2022-03-31 10:17:46', '0000-00-00 00:00:00'),
(3, 18, 'gujarati', 'i', '2022-03-31 10:17:46', '0000-00-00 00:00:00'),
(4, 19, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(5, 19, 'english', 'Skill Details Added.....', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(6, 19, 'gujarati', 'Skill Details Added.....', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(7, 20, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(8, 20, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(9, 20, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(10, 21, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(11, 21, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(12, 21, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(13, 23, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(14, 23, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(15, 23, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(16, 24, 'hindi', 'r', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(17, 24, 'english', 'e', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(18, 24, 'gujarati', 'a', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(19, 25, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(20, 25, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(21, 25, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(25, 27, 'hindi', 'r', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(26, 27, 'english', 'e', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(27, 27, 'gujarati', 'a', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(28, 28, 'hindi', 'read', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(29, 28, 'english', 'write', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(30, 28, 'gujarati', 'speak', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(31, 29, 'hindi', 'r', '2022-03-31 10:52:52', '2022-03-31 10:52:52'),
(32, 29, 'english', 'e', '2022-03-31 10:52:52', '2022-03-31 10:52:52'),
(33, 29, 'gujarati', 'a', '2022-03-31 10:52:52', '2022-03-31 10:52:52'),
(34, 30, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(35, 30, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(36, 30, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(37, 31, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(38, 31, 'english', 'read,write,speak,read,write,read', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(39, 31, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(40, 32, 'hindi', 'r', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(41, 32, 'english', 'r', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(42, 32, 'gujarati', 'r', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(43, 33, 'hindi', 'r', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(44, 33, 'english', 'r', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(45, 33, 'gujarati', 'r', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(46, 34, 'hindi', 'r', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(47, 34, 'english', 'e', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(48, 34, 'gujarati', 'a', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(49, 37, 'hindi', 'r', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(50, 37, 'english', 'e', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(51, 37, 'gujarati', 'a', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(52, 38, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(53, 38, 'english', 'read,write,speak,read,write,read', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(54, 38, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(55, 41, 'Array', 'read,write,speak,read,write,read', '2022-03-31 11:09:00', '2022-03-31 11:09:00'),
(56, 42, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(57, 42, 'english', 'read,write,speak,read,write,read', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(58, 42, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(59, 43, 'hindi', 'read,write,speak,read,write,read', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(60, 43, 'english', 'read,write,speak,read,write,read', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(61, 43, 'gujarati', 'read,write,speak,read,write,read', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(62, 44, 'hindi', 'r', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(63, 44, 'english', 'e', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(64, 44, 'gujarati', 'a', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(65, 45, 'hindi', 'Array', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(66, 45, 'english', 'Array', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(67, 45, 'gujarati', 'Array', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(68, 46, 'hindi', 'Array', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(69, 46, 'english', 'Array', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(70, 46, 'gujarati', 'Array', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(71, 47, 'hindi', 'Array', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(72, 47, 'english', 'Array', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(73, 47, 'gujarati', 'Array', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(74, 0, 'hindi', 'Array', '2022-03-31 11:45:33', '2022-03-31 11:45:33'),
(75, 0, 'english', 'Array', '2022-03-31 11:45:33', '2022-03-31 11:45:33'),
(76, 0, 'hindi', 'Array,Array', '2022-03-31 11:48:32', '2022-03-31 11:48:32'),
(77, 0, 'english', 'Array,Array', '2022-03-31 11:48:32', '2022-03-31 11:48:32'),
(78, 48, 'hindi', 'Array,Array', '2022-03-31 11:48:58', '2022-03-31 11:48:58'),
(79, 48, 'hindi', 'Array,Array', '2022-03-31 11:48:58', '2022-03-31 11:48:58'),
(80, 49, 'hindi', 'Array,Array', '2022-03-31 11:49:37', '2022-03-31 11:49:37'),
(81, 49, 'hindi', 'Array,Array', '2022-03-31 11:49:37', '2022-03-31 11:49:37'),
(82, 50, 'hindi', 'Array,Array', '2022-03-31 11:49:47', '2022-03-31 11:49:47'),
(83, 50, 'hindi', 'Array,Array', '2022-03-31 11:49:47', '2022-03-31 11:49:47'),
(84, 51, 'hindi', 'Array,Array', '2022-03-31 11:50:27', '2022-03-31 11:50:27'),
(85, 51, 'hindi', 'Array,Array', '2022-03-31 11:50:27', '2022-03-31 11:50:27'),
(86, 52, 'hindi', 'Array,Array', '2022-03-31 11:50:55', '2022-03-31 11:50:55'),
(87, 52, 'hindi', 'Array,Array', '2022-03-31 11:50:55', '2022-03-31 11:50:55'),
(88, 53, 'hindi', 'Array', '2022-03-31 11:51:23', '2022-03-31 11:51:23'),
(89, 53, 'hindi', 'Array', '2022-03-31 11:51:23', '2022-03-31 11:51:23'),
(90, 54, 'hindi', 'Array', '2022-03-31 11:52:13', '2022-03-31 11:52:13'),
(91, 54, 'hindi', 'Array', '2022-03-31 11:52:13', '2022-03-31 11:52:13'),
(92, 55, 'hindi', 'read,write', '2022-03-31 11:53:30', '2022-03-31 11:53:30'),
(93, 55, 'hindi', 'read,write,speak', '2022-03-31 11:53:30', '2022-03-31 11:53:30'),
(94, 56, 'hindi', 'read,write,speak', '2022-03-31 11:54:02', '2022-03-31 11:54:02'),
(95, 56, 'english', 'read,write', '2022-03-31 11:54:02', '2022-03-31 11:54:02'),
(96, 57, 'hindi', 'read,write,speak', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(97, 57, 'hindi', 'read,write', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(98, 57, 'hindi', 'read', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(99, 58, 'hindi', 'read', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(100, 58, 'english', 'read,write', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(101, 58, 'gujarati', 'read,write,speak', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(102, 59, 'hindi', 'read,write', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(103, 59, 'english', 'read', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(104, 59, 'gujarati', 'read', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(105, 60, 'hindi', 'read,write', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(106, 60, 'english', 'read', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(107, 60, 'gujarati', 'read', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(108, 61, 'hindi', 'read,write,speak', '2022-03-31 13:28:00', '2022-03-31 13:28:00'),
(114, 7, 'hindi', 'read,write,speak', '2022-03-31 13:48:06', '2022-03-31 13:48:06'),
(130, 26, 'hindi', 'write', '2022-03-31 13:56:04', '2022-03-31 13:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `tech_details`
--

CREATE TABLE `tech_details` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `php` varchar(255) NOT NULL,
  `mysql` varchar(255) NOT NULL,
  `laravel` varchar(255) NOT NULL,
  `oracle` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tech_details`
--

INSERT INTO `tech_details` (`id`, `s_id`, `php`, `mysql`, `laravel`, `oracle`, `c_date`, `u_date`) VALUES
(1, 59, 'beginner', 'beginner', 'mideator', 'export', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(2, 60, 'beginner', 'beginner', 'mideator', 'export', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(3, 61, 'beginner', 'mideator', 'export', 'beginner', '2022-03-31 13:28:00', '2022-03-31 13:28:00'),
(9, 7, 'beginner', 'mideator', 'export', 'beginner', '2022-03-31 13:48:06', '2022-03-31 13:48:06'),
(15, 26, 'mideator', 'mideator', 'mideator', 'mideator', '2022-03-31 13:56:04', '2022-03-31 13:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `work_exp`
--

CREATE TABLE `work_exp` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `work_designation` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `u_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work_exp`
--

INSERT INTO `work_exp` (`id`, `s_id`, `companyname`, `work_designation`, `from_date`, `to_date`, `c_date`, `u_date`) VALUES
(1, 1, 'BEC', 'WEB1', '2022-01-01', '2022-02-01', '2022-03-31 08:25:02', '2022-03-31 08:25:02'),
(2, 2, 'QWE', 'HR', '2021-12-01', '2021-12-31', '2022-03-31 08:27:08', '2022-03-31 08:27:08'),
(3, 2, 'ABC', 'DEV1', '2022-02-01', '2022-02-28', '2022-03-31 08:27:08', '2022-03-31 08:27:08'),
(4, 3, 'Espark Biz', 'Dev1', '2021-12-01', '2021-12-31', '2022-03-31 09:00:51', '2022-03-31 09:00:51'),
(5, 3, 'ABC', 'Dev2', '2022-02-01', '2022-02-28', '2022-03-31 09:00:51', '2022-03-31 09:00:51'),
(6, 4, 'QWERT', 'Marketing', '2022-03-01', '2022-03-12', '2022-03-31 09:34:28', '2022-03-31 09:34:28'),
(7, 4, 'ZXCVBN', 'Networking', '2022-03-13', '2022-03-28', '2022-03-31 09:34:28', '2022-03-31 09:34:28'),
(8, 5, 'QWERT', 'Marketing', '2022-03-01', '2022-03-12', '2022-03-31 09:35:13', '2022-03-31 09:35:13'),
(9, 5, 'ZXCVBN', 'Networking', '2022-03-13', '2022-03-28', '2022-03-31 09:35:13', '2022-03-31 09:35:13'),
(10, 6, 'QWERT', 'Marketing', '2022-03-01', '2022-03-12', '2022-03-31 09:35:39', '2022-03-31 09:35:39'),
(11, 6, 'ZXCVBN', 'Networking', '2022-03-13', '2022-03-28', '2022-03-31 09:35:39', '2022-03-31 09:35:39'),
(14, 8, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:04:45', '2022-03-31 10:04:45'),
(15, 9, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:05:34', '2022-03-31 10:05:34'),
(16, 10, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:05:53', '2022-03-31 10:05:53'),
(17, 11, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:06:50', '2022-03-31 10:06:50'),
(18, 12, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:08:02', '2022-03-31 10:08:02'),
(19, 13, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:08:31', '2022-03-31 10:08:31'),
(20, 14, 'ABC', 'DEV1', '2022-03-01', '2022-03-04', '2022-03-31 10:08:40', '2022-03-31 10:08:40'),
(21, 15, 'gtfhgfh', 'HR', '2022-03-01', '2022-03-09', '2022-03-31 10:13:25', '2022-03-31 10:13:25'),
(22, 16, 'gtfhgfh', 'HR', '2022-03-01', '2022-03-09', '2022-03-31 10:15:27', '2022-03-31 10:15:27'),
(23, 17, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:17:04', '2022-03-31 10:17:04'),
(24, 18, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:17:46', '2022-03-31 10:17:46'),
(25, 19, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:21:11', '2022-03-31 10:21:11'),
(26, 20, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:21:55', '2022-03-31 10:21:55'),
(27, 21, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:23:09', '2022-03-31 10:23:09'),
(28, 22, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:24:28', '2022-03-31 10:24:28'),
(29, 23, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:24:34', '2022-03-31 10:24:34'),
(30, 24, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:24:59', '2022-03-31 10:24:59'),
(31, 25, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:25:22', '2022-03-31 10:25:22'),
(33, 27, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:27:00', '2022-03-31 10:27:00'),
(34, 28, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:50:49', '2022-03-31 10:50:49'),
(35, 29, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:52:52', '2022-03-31 10:52:52'),
(36, 30, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:53:06', '2022-03-31 10:53:06'),
(37, 31, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:54:03', '2022-03-31 10:54:03'),
(38, 32, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:56:57', '2022-03-31 10:56:57'),
(39, 33, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:57:12', '2022-03-31 10:57:12'),
(40, 34, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 10:57:17', '2022-03-31 10:57:17'),
(41, 35, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:03:14', '2022-03-31 11:03:14'),
(42, 36, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:04:24', '2022-03-31 11:04:24'),
(43, 37, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:04:47', '2022-03-31 11:04:47'),
(44, 38, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:05:14', '2022-03-31 11:05:14'),
(45, 39, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:07:19', '2022-03-31 11:07:19'),
(46, 40, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:07:48', '2022-03-31 11:07:48'),
(47, 41, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:09:00', '2022-03-31 11:09:00'),
(48, 42, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:09:28', '2022-03-31 11:09:28'),
(49, 43, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:36:50', '2022-03-31 11:36:50'),
(50, 44, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:37:34', '2022-03-31 11:37:34'),
(51, 45, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:40:33', '2022-03-31 11:40:33'),
(52, 46, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:40:57', '2022-03-31 11:40:57'),
(53, 47, 'dngkl;jf', 's.dgksjdf', '2011-04-21', '2012-03-21', '2022-03-31 11:43:19', '2022-03-31 11:43:19'),
(54, 0, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:45:33', '2022-03-31 11:45:33'),
(55, 0, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:48:32', '2022-03-31 11:48:32'),
(56, 48, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:48:58', '2022-03-31 11:48:58'),
(57, 49, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:49:37', '2022-03-31 11:49:37'),
(58, 50, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:49:47', '2022-03-31 11:49:47'),
(59, 51, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:50:27', '2022-03-31 11:50:27'),
(60, 52, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:50:55', '2022-03-31 11:50:55'),
(61, 53, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:51:23', '2022-03-31 11:51:23'),
(62, 54, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:52:13', '2022-03-31 11:52:13'),
(63, 55, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:53:30', '2022-03-31 11:53:30'),
(64, 56, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:54:02', '2022-03-31 11:54:02'),
(65, 57, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:57:52', '2022-03-31 11:57:52'),
(66, 58, 'ghjg', 'jhgfkh', '2022-03-01', '2022-03-03', '2022-03-31 11:58:17', '2022-03-31 11:58:17'),
(67, 59, 'hnfjlsdh', 'fsdnfjl', '2241-05-24', '5104-04-12', '2022-03-31 13:25:24', '2022-03-31 13:25:24'),
(68, 60, 'hnfjlsdh', 'fsdnfjl', '2241-05-24', '5104-04-12', '2022-03-31 13:26:56', '2022-03-31 13:26:56'),
(69, 61, 'ABC', 'HR', '2022-03-17', '2022-03-25', '2022-03-31 13:28:00', '2022-03-31 13:28:00'),
(75, 7, 'hgfjk', 'jhkghl', '2022-03-02', '2022-03-04', '2022-03-31 13:48:06', '2022-03-31 13:48:06'),
(81, 26, 'ABC', 'DEV1', '2022-03-02', '2022-03-11', '2022-03-31 13:56:04', '2022-03-31 13:56:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_info`
--
ALTER TABLE `basic_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edu_details`
--
ALTER TABLE `edu_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pref_details`
--
ALTER TABLE `pref_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_details`
--
ALTER TABLE `ref_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_details`
--
ALTER TABLE `skill_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tech_details`
--
ALTER TABLE `tech_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_exp`
--
ALTER TABLE `work_exp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_info`
--
ALTER TABLE `basic_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `edu_details`
--
ALTER TABLE `edu_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `pref_details`
--
ALTER TABLE `pref_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ref_details`
--
ALTER TABLE `ref_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `skill_details`
--
ALTER TABLE `skill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `tech_details`
--
ALTER TABLE `tech_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `work_exp`
--
ALTER TABLE `work_exp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
