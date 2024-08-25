-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 03:58 PM
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
-- Database:  ldims_accounts 
--

-- --------------------------------------------------------

--
-- Table structure for table  user_account 
--

CREATE TABLE  user_account  (
   ID  int(11) NOT NULL,
   USERNAME  varchar(255) NOT NULL,
   PASSWORD  varchar(255) NOT NULL,
   EMAIL  varchar(255) NOT NULL,
   FNAME  varchar(255) NOT NULL,
   MNAME  varchar(255) NOT NULL,
   LNAME  varchar(255) NOT NULL,
   EXT_NAME  varchar(255) NOT NULL,
   ACCESS  varchar(255) NOT NULL,
   IMAGE  varchar(255) NOT NULL,
   CONTACT  varchar(255) DEFAULT NULL,
   STATUS  int(11) NOT NULL DEFAULT 0 COMMENT '1 = ACTIVE\r\n0 = INACTIVE',
   LOCKED  int(11) NOT NULL,
   APPROVED_STATUS  int(11) NOT NULL DEFAULT 0 COMMENT '1-DISAPPROVED\r\n2-APPROVED\r\n',
   ADMIN_STATUS  varchar(255) DEFAULT 'DEFAULT',
   RESET_TOKEN  varchar(255) DEFAULT NULL,
   RESET_TIME  datetime DEFAULT NULL,
   DATE_CREATED  datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table  user_account 
--
ALTER TABLE  user_account 
  ADD PRIMARY KEY ( ID );

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table  user_account 
--
ALTER TABLE  user_account 
  MODIFY  ID  int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
