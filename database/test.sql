-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 08:45 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `db_driver_cats`
--

CREATE TABLE `db_driver_cats` (
  `id` int(11) NOT NULL,
  `cat_id` int(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `driver_name` varchar(250) NOT NULL,
  `using_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_driver_cats`
--

INSERT INTO `db_driver_cats` (`id`, `cat_id`, `title`, `driver_name`, `using_status`) VALUES
(1, 1, 'Mysql - mariadb', 'mysql', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_database`
--

CREATE TABLE `main_database` (
  `id` int(11) NOT NULL,
  `host` varchar(500) NOT NULL DEFAULT 'localhost',
  `driver_cat_id` int(255) NOT NULL DEFAULT 1,
  `db_name` varchar(250) NOT NULL,
  `db_user` varchar(250) NOT NULL,
  `db_pass` varchar(250) DEFAULT NULL,
  `db_charset` varchar(150) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_database`
--

INSERT INTO `main_database` (`id`, `host`, `driver_cat_id`, `db_name`, `db_user`, `db_pass`, `db_charset`, `active_status`) VALUES
(1, 'localhost', 1, 'test_main', 'root', NULL, 'utf8', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_driver_cats`
--
ALTER TABLE `db_driver_cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_database`
--
ALTER TABLE `main_database`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_driver_cats`
--
ALTER TABLE `db_driver_cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_database`
--
ALTER TABLE `main_database`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
