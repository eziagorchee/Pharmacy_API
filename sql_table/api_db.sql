-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 07:49 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'over the counter', 'Category for anything related to OTC drugs.', '2014-06-01 00:35:07', '2014-05-30 16:34:33'),
(2, 'prescription medications', 'Drugs prescribed by doctors', '2014-06-01 00:35:07', '2014-05-30 16:34:33'),
(3, 'dietary supplements', 'multivitamins and other supplements', '2014-06-01 00:35:07', '2014-05-30 16:34:54'),
(4, 'vaccines', 'injections.', '0000-00-00 00:00:00', '2016-01-08 12:27:26'),
(5, 'drips', 'liquid medications in drip form.', '0000-00-00 00:00:00', '2016-01-08 12:27:47'),
(6, 'others', 'other drugs not in the listed categories', '2016-01-09 02:24:24', '2016-01-09 00:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'paraceetamol', 'The best drug for serious headaches.', '255', 2, '2014-06-01 01:12:26', '2014-05-31 16:12:26'),
(2, 'paraceetamol', 'The best drug for serious headaches.', '255', 2, '2014-06-01 01:12:26', '2014-05-31 16:12:26'),
(3, 'flagil', 'How about no?', '600', 3, '2014-06-01 01:12:26', '2014-05-31 16:12:26'),
(8, 'felvin Tab', 'Good tablet.', '259', 2, '2014-06-01 01:14:13', '2014-05-31 01:14:08'),
(9, 'chloroquine', 'My test.', '199', 1, '2014-06-01 01:18:36', '2014-05-31 01:18:31'),
(10, 'augmentin', 'The coolest drug!', '300', 2, '2014-06-06 17:10:01', '2014-06-05 17:09:51'),
(11, 'cipro tab', 'For testing purposes.', '100', 2, '2014-06-06 17:11:04', '2014-06-05 17:10:54'),
(12, 'amoxil', 'Perfect as gift!', '60', 1, '2014-06-06 17:12:21', '2014-06-05 17:12:11'),
(13, 'zelsin', 'Cool red drug!', '70', 1, '2014-06-06 17:12:59', '2014-06-05 17:12:49'),
(26, 'sarafin', 'Awesome product!', '555', 2, '2014-11-22 19:07:34', '2014-11-21 19:07:34'),
(28, 'plofin', 'You can absolutely use this one!', '799', 6, '2014-12-04 21:12:03', '2014-12-03 21:12:03'),
(31, 'csff', 'New awesome drug!', '333', 1, '2014-12-13 00:52:54', '2014-12-12 00:52:54'),
(42, 'fsfsgf', 'Nice drug', '12999', 3, '2015-12-12 06:47:08', '2015-12-12 04:47:08'),
(48, 'shshs', 'Awesome drug.', '999', 5, '2016-01-08 06:36:37', '2016-01-08 04:36:37'),
(60, 'ahgh', 'Luxury drug.', '25000', 1, '2016-01-11 15:46:02', '2016-01-11 13:46:02'),
(65, 'Amatem', 'The best drug to prevent malaria.', '199', 2, '2020-12-06 13:31:50', '2020-12-06 12:31:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
