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
-- Database: `test_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `witcher_roles`
--

CREATE TABLE `witcher_roles` (
  `id` int(11) NOT NULL,
  `role_rank` int(255) NOT NULL,
  `role_name` varchar(5000) NOT NULL,
  `children_roles` varchar(5000) NOT NULL,
  `using_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `witcher_roles`
--

INSERT INTO `witcher_roles` (`id`, `role_rank`, `role_name`, `children_roles`, `using_status`) VALUES
(1, 0, 'Normal', 'none', 1),
(2, -1, 'deActive', 'none', 1),
(3, 1, 'Administrator', '*', 1),
(4, 2, 'Co-Admin', '0,-1,-2 ', 1),
(5, -2, 'Guest', 'none', 1);

-- --------------------------------------------------------

--
-- Table structure for table `witcher_users`
--

CREATE TABLE `witcher_users` (
  `id` int(11) NOT NULL,
  `Username` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(150) DEFAULT NULL,
  `Full_Name` varchar(250) DEFAULT NULL,
  `Session_Id` varchar(5000) DEFAULT NULL,
  `Key_verify` int(255) NOT NULL DEFAULT 0,
  `Key_Try` int(255) DEFAULT 0,
  `Verify_Code` varchar(5000) DEFAULT NULL,
  `Last_Login` varchar(600) NOT NULL,
  `Last_Ip` varchar(15) NOT NULL,
  `Last_Browser` varchar(400) DEFAULT NULL,
  `Profile_Image` varchar(20) DEFAULT '0',
  `Log` int(11) NOT NULL DEFAULT 0,
  `user_second_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `witcher_users`
--

INSERT INTO `witcher_users` (`id`, `Username`, `Email`, `Password`, `First_Name`, `Last_Name`, `Full_Name`, `Session_Id`, `Key_verify`, `Key_Try`, `Verify_Code`, `Last_Login`, `Last_Ip`, `Last_Browser`, `Profile_Image`, `Log`, `user_second_id`) VALUES
(4, 'user1', 'test@test.com', 'd721003a44dc2b0b3eb89dae817813b9', '', '', 'redbder', NULL, 0, 0, '', '2021/09/24 10:14:34pm', '127.0.0.1', 'unknown', '0', 0, 'fklsjdfoiweu89u489u982ijrfo');

-- --------------------------------------------------------

--
-- Table structure for table `witcher_user_permissions`
--

CREATE TABLE `witcher_user_permissions` (
  `id` int(11) NOT NULL,
  `user_Id` int(11) NOT NULL DEFAULT 0,
  `Role_Id` int(255) NOT NULL DEFAULT -1,
  `Login` int(11) NOT NULL DEFAULT 1,
  `Read_Invoices` int(11) NOT NULL DEFAULT 0,
  `Write_Invoices` int(11) NOT NULL DEFAULT 0,
  `Read_Gateway` int(11) NOT NULL DEFAULT 0,
  `Write_Gateway` int(11) NOT NULL DEFAULT 0,
  `Read_Gateway_Types` int(11) NOT NULL DEFAULT 0,
  `Write_Gateway_Types` int(11) NOT NULL DEFAULT 0,
  `Read_Bridge` int(11) NOT NULL DEFAULT 0,
  `Write_Bridge` int(11) NOT NULL DEFAULT 0,
  `Read_user_tbl` int(11) NOT NULL DEFAULT 0,
  `Write_user_tbl` int(11) NOT NULL DEFAULT 0,
  `Read_Witcher_routes` int(11) NOT NULL DEFAULT 0,
  `Write_Witcher_routes` int(11) NOT NULL DEFAULT 0,
  `Read_main_database` int(11) NOT NULL DEFAULT 0,
  `Write_main_database` int(11) NOT NULL DEFAULT 0,
  `Read_witcher_bank` int(11) NOT NULL DEFAULT 0,
  `Write_witcher_bank` int(11) NOT NULL DEFAULT 0,
  `Ban_Estimated_Time` int(255) NOT NULL DEFAULT 300,
  `parts` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `witcher_user_permissions`
--

INSERT INTO `witcher_user_permissions` (`id`, `user_Id`, `Role_Id`, `Login`, `Read_Invoices`, `Write_Invoices`, `Read_Gateway`, `Write_Gateway`, `Read_Gateway_Types`, `Write_Gateway_Types`, `Read_Bridge`, `Write_Bridge`, `Read_user_tbl`, `Write_user_tbl`, `Read_Witcher_routes`, `Write_Witcher_routes`, `Read_main_database`, `Write_main_database`, `Read_witcher_bank`, `Write_witcher_bank`, `Ban_Estimated_Time`, `parts`) VALUES
(4, 4, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 300, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `witcher_roles`
--
ALTER TABLE `witcher_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `witcher_users`
--
ALTER TABLE `witcher_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `witcher_user_permissions`
--
ALTER TABLE `witcher_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `witcher_roles`
--
ALTER TABLE `witcher_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `witcher_users`
--
ALTER TABLE `witcher_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `witcher_user_permissions`
--
ALTER TABLE `witcher_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `witcher_user_permissions`
--
ALTER TABLE `witcher_user_permissions`
  ADD CONSTRAINT `witcher_user_permissions_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `witcher_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
