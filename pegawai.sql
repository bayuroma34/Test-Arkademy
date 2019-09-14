-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2019 at 04:43 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(2) NOT NULL,
  `salary` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `salary`) VALUES
(1, 10000000),
(2, 12000000);

-- --------------------------------------------------------

--
-- Table structure for table `name`
--

CREATE TABLE `name` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_work` int(11) NOT NULL,
  `id_salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `name`
--

INSERT INTO `name` (`id`, `name`, `id_work`, `id_salary`) VALUES
(5, 'Rebecca', 1, 1),
(6, 'Vita', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_salary` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `name`, `id_salary`) VALUES
(1, 'Frontend Dev', 1),
(2, 'Backend Dev', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_id_work` (`id_work`),
  ADD KEY `FK_id_salary` (`id_salary`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `name`
--
ALTER TABLE `name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `FK_id_salary` FOREIGN KEY (`id_salary`) REFERENCES `kategori` (`id`),
  ADD CONSTRAINT `FK_id_work` FOREIGN KEY (`id_work`) REFERENCES `work` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
