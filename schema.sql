-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2024 at 10:31 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`) VALUES
(1, 'Electronics', 'Devices and gadgets'),
(2, 'Furniture', 'Office and home furniture'),
(3, 'Office Supplies', 'Essential office items'),
(4, 'Software', 'Computer software and licenses'),
(5, 'Hardware', 'Computer hardware components');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `state`, `zip_code`, `country`, `created_at`) VALUES
(1, 'Ahmed', 'Al-Salem', 'ahmed.alsalem@example.com', '967-1-1000001', '12 Market Street', 'Aden', 'Adan', '62501', 'Yemen', '2024-10-05 15:31:50'),
(2, 'Sara', 'Mohammed', 'sara.mohammed@example.com', '967-1-1000002', '34 Commerce Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', '2024-10-05 15:31:50'),
(3, 'Khaled', 'Yousef', 'khaled.yousef@example.com', '967-2-1000003', '56 Trade Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', '2024-10-05 15:31:50'),
(4, 'Laila', 'Hassan', 'laila.hassan@example.com', '967-3-1000004', '78 Business Blvd', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', '2024-10-05 15:31:50'),
(5, 'Omar', 'Abdullah', 'omar.abdullah@example.com', '967-1-1000005', '90 Industrial Way', 'Zinjibar', 'Abyan', '61512', 'Yemen', '2024-10-05 15:31:50'),
(6, 'Nadia', 'Fahim', 'nadia.fahim@example.com', '967-2-1000006', '21 Commerce Street', 'Ibb', 'Ibb', '11416', 'Yemen', '2024-10-05 15:31:50'),
(7, 'Faisal', 'Karim', 'faisal.karim@example.com', '967-3-1000007', '43 Market Ave', 'Dhamar', 'Dhamar', '11617', 'Yemen', '2024-10-05 15:31:50'),
(8, 'Rania', 'Saleh', 'rania.saleh@example.com', '967-1-1000008', '65 Trade Blvd', 'Al Mukalla', 'Hadramaut', '12345', 'Yemen', '2024-10-05 15:31:50'),
(9, 'Hassan', 'Ali', 'hassan.ali@example.com', '967-2-1000009', '87 Industrial Road', 'Amran', 'Amran', '11518', 'Yemen', '2024-10-05 15:31:50'),
(10, 'Mariam', 'Khaled', 'mariam.khaled@example.com', '967-3-1000010', '109 Commerce Ave', 'Qishn', 'Al Mahrah', '12719', 'Yemen', '2024-10-05 15:31:50'),
(11, 'Bilal', 'Ibrahim', 'bilal.ibrahim@example.com', '967-1-1000011', '131 Market Street', 'Lahij', 'Lahij', '11820', 'Yemen', '2024-10-05 15:31:50'),
(12, 'Zainab', 'Youssef', 'zainab.youssef@example.com', '967-2-1000012', '153 Trade Way', 'Ataq', 'Shabwah', '12921', 'Yemen', '2024-10-05 15:31:50'),
(13, 'Tariq', 'Mustafa', 'tariq.mustafa@example.com', '967-3-1000013', '175 Commerce Blvd', 'Al Hazm', 'Al Jawf', '13022', 'Yemen', '2024-10-05 15:31:50'),
(14, 'Noor', 'Saleh', 'noor.saleh@example.com', '967-1-1000014', '197 Industrial Ave', 'Rada', 'Raymah', '13123', 'Yemen', '2024-10-05 15:31:50'),
(15, 'Fahad', 'Omar', 'fahad.omar@example.com', '967-2-1000015', '219 Market Road', 'Hadibu', 'Socotra', '13224', 'Yemen', '2024-10-05 15:31:50'),
(16, 'Lina', 'Mustafa', 'lina.mustafa@example.com', '967-3-1000016', '241 Trade Street', 'Ma\'rib', 'Ma\'rib', '13325', 'Yemen', '2024-10-05 15:31:50'),
(17, 'Yara', 'Khaled', 'yara.khaled@example.com', '967-1-1000017', '263 Commerce Blvd', 'Hajjah', 'Hajjah', '13426', 'Yemen', '2024-10-05 15:31:50'),
(18, 'Samir', 'Ahmed', 'samir.ahmed@example.com', '967-2-1000018', '285 Industrial Way', 'Al Mahwit', 'Al Mahwit', '13527', 'Yemen', '2024-10-05 15:31:50'),
(19, 'Huda', 'Ali', 'huda.ali@example.com', '967-3-1000019', '307 Market Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', '2024-10-05 15:31:50'),
(20, 'Fahima', 'Hassan', 'fahima.hassan@example.com', '967-1-1000020', '329 Trade Road', 'Al Mukalla', 'Hadramaut', '12345', 'Yemen', '2024-10-05 15:31:50'),
(21, 'Rashid', 'Suleiman', 'rashid.suleiman@example.com', '967-2-1000021', '351 Commerce Street', 'Amran', 'Amran', '11518', 'Yemen', '2024-10-05 15:31:50'),
(22, 'Layla', 'Nasser', 'layla.nasser@example.com', '967-3-1000022', '373 Industrial Blvd', 'Dhamar', 'Dhamar', '11617', 'Yemen', '2024-10-05 15:31:50'),
(23, 'Kareem', 'Hassan', 'kareem.hassan@example.com', '967-1-1000023', '395 Market Way', 'Ibb', 'Ibb', '11416', 'Yemen', '2024-10-05 15:31:50'),
(24, 'Nada', 'Ibrahim', 'nada.ibrahim@example.com', '967-2-1000024', '417 Trade Avenue', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', '2024-10-05 15:31:50'),
(25, 'Youssef', 'Salem', 'youssef.salem@example.com', '967-3-1000025', '439 Commerce Road', 'Lahij', 'Lahij', '11820', 'Yemen', '2024-10-05 15:31:50'),
(26, 'Hassan', 'Saeed', 'hassan.saeed@example.com', '967-1-1000026', '461 Market Street', 'Aden', 'Adan', '62501', 'Yemen', '2024-10-05 15:31:50'),
(27, 'Fatima', 'Nasser', 'fatima.nasser@example.com', '967-2-1000027', '483 Commerce Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', '2024-10-05 15:31:50'),
(28, 'Omar', 'Hassan', 'omar.hassan@example.com', '967-3-1000028', '505 Trade Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', '2024-10-05 15:31:50'),
(29, 'Aisha', 'Ali', 'aisha.ali@example.com', '967-1-1000029', '527 Business Blvd', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', '2024-10-05 15:31:50'),
(30, 'Yusuf', 'Khalid', 'yusuf.khalid@example.com', '967-2-1000030', '549 Industrial Way', 'Zinjibar', 'Abyan', '61512', 'Yemen', '2024-10-05 15:31:50'),
(31, 'Noura', 'Suleiman', 'noura.suleiman@example.com', '967-3-1000031', '571 Commerce Street', 'Ibb', 'Ibb', '11416', 'Yemen', '2024-10-05 15:31:50'),
(32, 'Faisal', 'Mansour', 'faisal.mansour@example.com', '967-1-1000032', '593 Market Ave', 'Dhamar', 'Dhamar', '11617', 'Yemen', '2024-10-05 15:31:50'),
(33, 'Rania', 'Omar', 'rania.omar@example.com', '967-2-1000033', '615 Trade Blvd', 'Al Mukalla', 'Hadramaut', '12345', 'Yemen', '2024-10-05 15:31:50'),
(34, 'Hassan', 'Saleh', 'hassan.saleh@example.com', '967-3-1000034', '637 Industrial Road', 'Amran', 'Amran', '11518', 'Yemen', '2024-10-05 15:31:50'),
(35, 'Mariam', 'Karim', 'mariam.karim@example.com', '967-1-1000035', '659 Commerce Ave', 'Qishn', 'Al Mahrah', '12719', 'Yemen', '2024-10-05 15:31:50'),
(36, 'Bilal', 'Hussein', 'bilal.hussein@example.com', '967-2-1000036', '681 Market Street', 'Lahij', 'Lahij', '11820', 'Yemen', '2024-10-05 15:31:50'),
(37, 'Zainab', 'Mustafa', 'zainab.mustafa@example.com', '967-3-1000037', '703 Trade Way', 'Ataq', 'Shabwah', '12921', 'Yemen', '2024-10-05 15:31:50'),
(38, 'Tariq', 'Nasser', 'tariq.nasser@example.com', '967-1-1000038', '725 Commerce Blvd', 'Al Hazm', 'Al Jawf', '13022', 'Yemen', '2024-10-05 15:31:50'),
(39, 'Noor', 'Kareem', 'noor.kareem@example.com', '967-2-1000039', '747 Industrial Ave', 'Rada', 'Raymah', '13123', 'Yemen', '2024-10-05 15:31:50'),
(40, 'Fahad', 'Rashid', 'fahad.rashid@example.com', '967-3-1000040', '769 Market Road', 'Hadibu', 'Socotra', '13224', 'Yemen', '2024-10-05 15:31:50'),
(41, 'Lina', 'Hassan', 'lina.hassan@example.com', '967-1-1000041', '791 Trade Street', 'Ma\'rib', 'Ma\'rib', '13325', 'Yemen', '2024-10-05 15:31:50'),
(42, 'Yara', 'Ahmed', 'yara.ahmed@example.com', '967-2-1000042', '813 Commerce Blvd', 'Hajjah', 'Hajjah', '13426', 'Yemen', '2024-10-05 15:31:50'),
(43, 'Samir', 'Fahim', 'samir.fahim@example.com', '967-3-1000043', '835 Industrial Way', 'Al Mahwit', 'Al Mahwit', '13527', 'Yemen', '2024-10-05 15:31:50'),
(44, 'Huda', 'Khalid', 'huda.khalid@example.com', '967-1-1000044', '857 Market Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', '2024-10-05 15:31:50'),
(45, 'Fahima', 'Ali', 'fahima.ali@example.com', '967-2-1000045', '879 Trade Road', 'Al Mukalla', 'Hadramaut', '12345', 'Yemen', '2024-10-05 15:31:50'),
(46, 'Rashid', 'Hassan', 'rashid.hassan@example.com', '967-3-1000046', '901 Commerce Street', 'Amran', 'Amran', '11518', 'Yemen', '2024-10-05 15:31:50'),
(47, 'Layla', 'Omar', 'layla.omar@example.com', '967-1-1000047', '923 Industrial Blvd', 'Dhamar', 'Dhamar', '11617', 'Yemen', '2024-10-05 15:31:50'),
(48, 'Kareem', 'Nasser', 'kareem.nasser@example.com', '967-2-1000048', '945 Market Way', 'Ibb', 'Ibb', '11416', 'Yemen', '2024-10-05 15:31:50'),
(49, 'Nada', 'Suleiman', 'nada.suleiman@example.com', '967-3-1000049', '967 Trade Avenue', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', '2024-10-05 15:31:50'),
(50, 'Youssef', 'Faisal', 'youssef.faisal@example.com', '967-1-1000050', '989 Commerce Road', 'Lahij', 'Lahij', '11820', 'Yemen', '2024-10-05 15:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `ship_address` varchar(255) DEFAULT NULL,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state` varchar(50) DEFAULT NULL,
  `ship_zip_code` varchar(10) DEFAULT NULL,
  `ship_country` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `ship_date`, `ship_address`, `ship_city`, `ship_state`, `ship_zip_code`, `ship_country`, `status`, `total_amount`) VALUES
(1, 1, '2024-01-05', '2024-01-07', '12 Market Street', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1550.00),
(2, 2, '2024-01-06', '2024-01-08', '34 Commerce Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(3, 3, '2024-01-07', '2024-01-09', '56 Trade Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 1200.00),
(4, 4, '2024-01-08', '2024-01-10', '78 Business Blvd', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 500.00),
(5, 5, '2024-01-09', '2024-01-11', '90 Industrial Way', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(6, 6, '2024-01-10', '2024-01-12', '102 Residential St', 'Ibb', 'Ibb', '61612', 'Yemen', 'Shipped', 1300.00),
(7, 7, '2024-01-11', '2024-01-13', '114 Business Park', 'Dhamar', 'Dhamar', '61712', 'Yemen', 'Shipped', 950.00),
(8, 8, '2024-01-12', '2024-01-14', '126 Technology Blvd', 'Mukalla', 'Hadramout', '62113', 'Yemen', 'Shipped', 1250.00),
(9, 9, '2024-01-13', '2024-01-15', '138 Corporate Ave', 'Shibam', 'Hadramout', '62123', 'Yemen', 'Shipped', 675.00),
(10, 10, '2024-01-14', '2024-01-16', '150 Government Blvd', 'Hajjah', 'Hajjah', '61914', 'Yemen', 'Shipped', 800.00),
(11, 11, '2024-01-15', '2024-01-17', '162 Business Circle', 'Al Mahwit', 'Al Mahwit', '62015', 'Yemen', 'Shipped', 1050.00),
(12, 12, '2024-01-16', '2024-01-18', '174 Trade Park', 'Al Bayda', 'Al Bayda', '62216', 'Yemen', 'Shipped', 950.00),
(13, 13, '2024-01-17', '2024-01-19', '186 Residential Ave', 'Al Jawf', 'Al Jawf', '62217', 'Yemen', 'Shipped', 1200.00),
(14, 14, '2024-01-18', '2024-01-20', '198 Business Lane', 'Amran', 'Amran', '62318', 'Yemen', 'Shipped', 1100.00),
(15, 15, '2024-01-19', '2024-01-21', '210 Commercial Way', 'Sa\'ada', 'Sa\'ada', '62419', 'Yemen', 'Shipped', 1350.00),
(16, 16, '2024-01-20', '2024-01-22', '222 Marketplace Blvd', 'Marib', 'Marib', '62620', 'Yemen', 'Shipped', 650.00),
(17, 17, '2024-01-21', '2024-01-23', '234 Industry Ave', 'Al Dhale\'', 'Al Dhale\'', '62721', 'Yemen', 'Shipped', 750.00),
(18, 18, '2024-01-22', '2024-01-24', '246 Commerce Ave', 'Raymah', 'Raymah', '62822', 'Yemen', 'Shipped', 1350.00),
(19, 19, '2024-01-23', '2024-01-25', '258 Retail Street', 'Lahij', 'Lahij', '62923', 'Yemen', 'Shipped', 600.00),
(20, 20, '2024-01-24', '2024-01-26', '270 Market Road', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 900.00),
(21, 21, '2024-01-25', '2024-01-27', '282 Commerce Blvd', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 750.00),
(22, 22, '2024-01-26', '2024-01-28', '294 Residential Ave', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 500.00),
(23, 23, '2024-01-27', '2024-01-29', '306 Industry Blvd', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 1400.00),
(24, 24, '2024-01-28', '2024-01-30', '318 Trade Park', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 1250.00),
(25, 25, '2024-01-29', '2024-01-31', '330 Corporate Blvd', 'Ibb', 'Ibb', '61612', 'Yemen', 'Shipped', 1600.00),
(26, 26, '2024-01-30', '2024-02-01', '342 Technology Park', 'Dhamar', 'Dhamar', '61712', 'Yemen', 'Shipped', 1100.00),
(27, 27, '2024-01-31', '2024-02-02', '354 Residential Street', 'Mukalla', 'Hadramout', '62113', 'Yemen', 'Shipped', 1550.00),
(28, 28, '2024-02-01', '2024-02-03', '366 Commerce Ave', 'Shibam', 'Hadramout', '62123', 'Yemen', 'Shipped', 750.00),
(29, 29, '2024-02-02', '2024-02-04', '378 Retail Road', 'Hajjah', 'Hajjah', '61914', 'Yemen', 'Shipped', 950.00),
(30, 30, '2024-02-03', '2024-02-05', '390 Business Blvd', 'Al Mahwit', 'Al Mahwit', '62015', 'Yemen', 'Shipped', 650.00),
(31, 31, '2024-02-04', '2024-02-06', '402 Commercial Way', 'Al Bayda', 'Al Bayda', '62216', 'Yemen', 'Shipped', 1250.00),
(32, 32, '2024-02-05', '2024-02-07', '414 Industrial Blvd', 'Al Jawf', 'Al Jawf', '62217', 'Yemen', 'Shipped', 1050.00),
(33, 33, '2024-02-06', '2024-02-08', '426 Trade Road', 'Amran', 'Amran', '62318', 'Yemen', 'Shipped', 1150.00),
(34, 34, '2024-02-07', '2024-02-09', '438 Corporate Street', 'Sa\'ada', 'Sa\'ada', '62419', 'Yemen', 'Shipped', 950.00),
(35, 35, '2024-02-08', '2024-02-10', '450 Residential Blvd', 'Marib', 'Marib', '62620', 'Yemen', 'Shipped', 850.00),
(36, 36, '2024-02-09', '2024-02-11', '462 Technology Way', 'Al Dhale\'', 'Al Dhale\'', '62721', 'Yemen', 'Shipped', 700.00),
(37, 37, '2024-02-10', '2024-02-12', '474 Business Ave', 'Raymah', 'Raymah', '62822', 'Yemen', 'Shipped', 950.00),
(38, 38, '2024-02-11', '2024-02-13', '486 Retail Park', 'Lahij', 'Lahij', '62923', 'Yemen', 'Shipped', 1250.00),
(39, 39, '2024-02-12', '2024-02-14', '498 Marketplace Blvd', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 900.00),
(40, 40, '2024-02-13', '2024-02-15', '510 Commerce Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 750.00),
(41, 41, '2024-02-14', '2024-02-16', '522 Residential Lane', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 850.00),
(42, 42, '2024-02-15', '2024-02-17', '534 Business Circle', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 1500.00),
(43, 43, '2024-02-16', '2024-02-18', '546 Industrial Park', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 700.00),
(44, 44, '2024-02-17', '2024-02-19', '558 Commerce Blvd', 'Ibb', 'Ibb', '61612', 'Yemen', 'Shipped', 1300.00),
(45, 45, '2024-02-18', '2024-02-20', '570 Business Blvd', 'Dhamar', 'Dhamar', '61712', 'Yemen', 'Shipped', 1000.00),
(46, 46, '2024-02-19', '2024-02-21', '582 Residential Ave', 'Mukalla', 'Hadramout', '62113', 'Yemen', 'Shipped', 1200.00),
(47, 47, '2024-02-20', '2024-02-22', '594 Retail Lane', 'Shibam', 'Hadramout', '62123', 'Yemen', 'Shipped', 850.00),
(48, 48, '2024-02-21', '2024-02-23', '606 Technology Blvd', 'Hajjah', 'Hajjah', '61914', 'Yemen', 'Shipped', 1400.00),
(49, 49, '2024-02-22', '2024-02-24', '618 Market St', 'Al Mahwit', 'Al Mahwit', '62015', 'Yemen', 'Shipped', 1000.00),
(50, 50, '2024-02-23', '2024-02-25', '630 Retail Road', 'Al Bayda', 'Al Bayda', '62216', 'Yemen', 'Shipped', 1300.00),
(51, 1, '2024-01-05', '2024-01-10', '12 Market Street', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1550.00),
(52, 2, '2024-01-07', '2024-01-12', '34 Commerce Ave', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(53, 3, '2024-01-10', '2024-01-15', '56 Trade Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 1200.00),
(54, 4, '2024-01-15', '2024-01-20', '78 Business Blvd', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 500.00),
(55, 5, '2024-01-18', '2024-01-23', '90 Industrial Way', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(56, 6, '2024-02-01', '2024-02-06', '25 Green Avenue', 'Ibb', 'Ibb', '62456', 'Yemen', 'Shipped', 920.00),
(57, 7, '2024-02-07', '2024-02-12', '41 Ocean Blvd', 'Dhamar', 'Dhamar', '62345', 'Yemen', 'Shipped', 1300.00),
(58, 8, '2024-02-15', '2024-02-20', '17 Central Plaza', 'Al Bayda', 'Al Bayda', '62045', 'Yemen', 'Shipped', 620.00),
(59, 9, '2024-02-18', '2024-02-23', '8 Hilltop Road', 'Marib', 'Marib', '61876', 'Yemen', 'Shipped', 450.00),
(60, 10, '2024-03-01', '2024-03-06', '6 Palm Street', 'Al Mahwit', 'Al Mahwit', '62789', 'Yemen', 'Shipped', 1100.00),
(61, 11, '2024-03-07', '2024-03-12', '3 Lakeside Drive', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1200.00),
(62, 12, '2024-03-12', '2024-03-17', '29 Willow Avenue', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(63, 13, '2024-03-15', '2024-03-20', '22 Pine Street', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 500.00),
(64, 14, '2024-03-20', '2024-03-25', '18 Oak Lane', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 1500.00),
(65, 15, '2024-03-25', '2024-03-30', '40 Aspen Road', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(66, 16, '2024-04-01', '2024-04-06', '45 River Road', 'Ibb', 'Ibb', '62456', 'Yemen', 'Shipped', 920.00),
(67, 17, '2024-04-05', '2024-04-10', '9 Forest Way', 'Dhamar', 'Dhamar', '62345', 'Yemen', 'Shipped', 1300.00),
(68, 18, '2024-04-10', '2024-04-15', '33 Orchard Ave', 'Al Bayda', 'Al Bayda', '62045', 'Yemen', 'Shipped', 620.00),
(69, 19, '2024-04-15', '2024-04-20', '12 Ocean Drive', 'Marib', 'Marib', '61876', 'Yemen', 'Shipped', 450.00),
(70, 20, '2024-04-20', '2024-04-25', '4 Meadow Street', 'Al Mahwit', 'Al Mahwit', '62789', 'Yemen', 'Shipped', 1100.00),
(71, 21, '2024-05-01', '2024-05-06', '20 Sunset Blvd', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1550.00),
(72, 22, '2024-05-05', '2024-05-10', '37 Elm Street', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(73, 23, '2024-05-10', '2024-05-15', '11 Birch Ave', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 1200.00),
(74, 24, '2024-05-15', '2024-05-20', '14 Maple Drive', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 500.00),
(75, 25, '2024-05-20', '2024-05-25', '55 Spruce Road', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(76, 26, '2024-06-01', '2024-06-06', '36 Lake View Road', 'Ibb', 'Ibb', '62456', 'Yemen', 'Shipped', 920.00),
(77, 27, '2024-06-07', '2024-06-12', '28 Garden Lane', 'Dhamar', 'Dhamar', '62345', 'Yemen', 'Shipped', 1300.00),
(78, 28, '2024-06-12', '2024-06-17', '47 Cedar Lane', 'Al Bayda', 'Al Bayda', '62045', 'Yemen', 'Shipped', 620.00),
(79, 29, '2024-06-15', '2024-06-20', '38 Horizon Blvd', 'Marib', 'Marib', '61876', 'Yemen', 'Shipped', 450.00),
(80, 30, '2024-06-18', '2024-06-23', '13 Village Ave', 'Al Mahwit', 'Al Mahwit', '62789', 'Yemen', 'Shipped', 1100.00),
(81, 31, '2024-07-01', '2024-07-06', '24 Crescent Blvd', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1550.00),
(82, 32, '2024-07-05', '2024-07-10', '32 River Road', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(83, 33, '2024-07-10', '2024-07-15', '52 Highland Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 1200.00),
(84, 34, '2024-07-15', '2024-07-20', '59 Sunset Avenue', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 500.00),
(85, 35, '2024-07-20', '2024-07-25', '21 Seaview Street', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(86, 36, '2024-08-01', '2024-08-06', '15 Village Way', 'Ibb', 'Ibb', '62456', 'Yemen', 'Shipped', 920.00),
(87, 37, '2024-08-05', '2024-08-10', '30 Palm Road', 'Dhamar', 'Dhamar', '62345', 'Yemen', 'Shipped', 1300.00),
(88, 38, '2024-08-10', '2024-08-15', '62 Ocean Drive', 'Al Bayda', 'Al Bayda', '62045', 'Yemen', 'Shipped', 620.00),
(89, 39, '2024-08-15', '2024-08-20', '75 Pine Lane', 'Marib', 'Marib', '61876', 'Yemen', 'Shipped', 450.00),
(90, 40, '2024-08-20', '2024-08-25', '47 Main Street', 'Al Mahwit', 'Al Mahwit', '62789', 'Yemen', 'Shipped', 1100.00),
(91, 41, '2024-09-01', '2024-09-06', '13 Lakeside Drive', 'Aden', 'Adan', '62501', 'Yemen', 'Shipped', 1550.00),
(92, 42, '2024-09-05', '2024-09-10', '48 West Road', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', 'Shipped', 800.00),
(93, 43, '2024-09-10', '2024-09-15', '55 North Ave', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', 'Shipped', 1200.00),
(94, 44, '2024-09-15', '2024-09-20', '61 East Street', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', 'Shipped', 500.00),
(95, 45, '2024-09-20', '2024-09-25', '34 South Boulevard', 'Zinjibar', 'Abyan', '61512', 'Yemen', 'Shipped', 750.00),
(96, 46, '2024-09-25', '2024-09-30', '19 Maple Drive', 'Ibb', 'Ibb', '62456', 'Yemen', 'Shipped', 920.00),
(97, 47, '2024-09-28', '2024-10-03', '28 Beach Road', 'Dhamar', 'Dhamar', '62345', 'Yemen', 'Shipped', 1300.00),
(98, 48, '2024-09-29', '2024-10-04', '36 Garden Avenue', 'Al Bayda', 'Al Bayda', '62045', 'Yemen', 'Shipped', 620.00),
(99, 49, '2024-09-30', '2024-10-05', '50 Ocean Lane', 'Marib', 'Marib', '61876', 'Yemen', 'Shipped', 450.00),
(100, 50, '2024-09-30', '2024-10-05', '41 Hillside Avenue', 'Al Mahwit', 'Al Mahwit', '62789', 'Yemen', 'Shipped', 1100.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `discount` decimal(4,2) DEFAULT 0.00,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `discount`, `total_price`) VALUES
(199, 1, 1, 1, 1500.00, 0.00, 1500.00),
(200, 1, 2, 2, 800.00, 0.00, 1600.00),
(201, 2, 3, 1, 250.00, 0.00, 250.00),
(202, 2, 4, 3, 60.00, 0.00, 180.00),
(203, 3, 5, 2, 45.00, 0.00, 90.00),
(204, 3, 6, 1, 200.00, 0.00, 200.00),
(205, 4, 7, 1, 300.00, 0.00, 300.00),
(206, 4, 8, 2, 500.00, 0.00, 1000.00),
(207, 5, 9, 3, 50.00, 0.00, 150.00),
(208, 5, 10, 2, 120.00, 0.00, 240.00),
(209, 6, 11, 1, 150.00, 0.00, 150.00),
(210, 6, 12, 5, 20.00, 0.00, 100.00),
(211, 7, 13, 10, 5.00, 0.00, 50.00),
(212, 7, 14, 4, 25.00, 0.00, 100.00),
(213, 8, 15, 1, 1200.00, 0.00, 1200.00),
(214, 8, 16, 2, 600.00, 0.00, 1200.00),
(215, 9, 17, 3, 30.00, 0.00, 90.00),
(216, 9, 18, 1, 70.00, 0.00, 70.00),
(217, 10, 19, 2, 35.00, 0.00, 70.00),
(218, 10, 20, 1, 40.00, 0.00, 40.00),
(219, 11, 21, 1, 250.00, 0.00, 250.00),
(220, 11, 22, 2, 80.00, 0.00, 160.00),
(221, 12, 23, 3, 55.00, 0.00, 165.00),
(222, 12, 24, 2, 180.00, 0.00, 360.00),
(223, 13, 25, 1, 150.00, 0.00, 150.00),
(224, 13, 26, 2, 65.00, 0.00, 130.00),
(225, 14, 1, 1, 1500.00, 0.00, 1500.00),
(226, 14, 3, 2, 250.00, 0.00, 500.00),
(227, 15, 5, 3, 45.00, 0.00, 135.00),
(228, 15, 7, 1, 300.00, 0.00, 300.00),
(229, 16, 8, 2, 500.00, 0.00, 1000.00),
(230, 16, 10, 3, 120.00, 0.00, 360.00),
(231, 17, 12, 5, 20.00, 0.00, 100.00),
(232, 17, 14, 10, 5.00, 0.00, 50.00),
(233, 18, 16, 1, 600.00, 0.00, 600.00),
(234, 18, 18, 2, 70.00, 0.00, 140.00),
(235, 19, 19, 3, 35.00, 0.00, 105.00),
(236, 19, 20, 1, 40.00, 0.00, 40.00),
(237, 20, 21, 1, 250.00, 0.00, 250.00),
(238, 20, 22, 2, 80.00, 0.00, 160.00),
(239, 21, 23, 3, 55.00, 0.00, 165.00),
(240, 21, 24, 1, 180.00, 0.00, 180.00),
(241, 22, 25, 2, 150.00, 0.00, 300.00),
(242, 22, 26, 3, 65.00, 0.00, 195.00),
(243, 23, 1, 1, 1500.00, 0.00, 1500.00),
(244, 23, 2, 2, 800.00, 0.00, 1600.00),
(245, 24, 3, 2, 250.00, 0.00, 500.00),
(246, 24, 5, 3, 45.00, 0.00, 135.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity_per_unit` varchar(50) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `units_in_stock` int(11) DEFAULT NULL,
  `units_on_order` int(11) DEFAULT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `discontinued` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `supplier_id`, `category_id`, `quantity_per_unit`, `unit_price`, `units_in_stock`, `units_on_order`, `reorder_level`, `discontinued`, `created_at`) VALUES
(1, 'Laptop Model X', 1, 1, '1 unit', 1500.00, 30, 15, 5, 0, '2024-10-05 16:39:00'),
(2, 'Smartphone Y', 1, 1, '1 unit', 800.00, 50, 20, 10, 0, '2024-10-05 16:39:00'),
(3, 'Office Chair Deluxe', 4, 2, '1 unit', 250.00, 40, 10, 5, 0, '2024-10-05 16:39:00'),
(4, 'Desk Lamp Pro', 4, 2, '1 unit', 60.00, 100, 25, 20, 0, '2024-10-05 16:39:00'),
(5, 'Wireless Keyboard', 2, 3, '1 unit', 45.00, 80, 30, 15, 0, '2024-10-05 16:39:00'),
(6, 'LED Monitor 24\"', 3, 1, '1 unit', 200.00, 25, 10, 5, 0, '2024-10-05 16:39:00'),
(7, 'Printer HP LaserJet', 2, 3, '1 unit', 300.00, 20, 5, 2, 0, '2024-10-05 16:39:00'),
(8, 'Office Desk', 4, 2, '1 unit', 500.00, 15, 7, 3, 0, '2024-10-05 16:39:00'),
(9, 'Antivirus Software', 2, 4, '1 license', 50.00, 200, 50, 25, 0, '2024-10-05 16:39:00'),
(10, 'RAM 16GB DDR4', 3, 5, '2 units', 120.00, 60, 20, 10, 0, '2024-10-05 16:39:00'),
(11, 'Hard Drive 1TB SSD', 3, 5, '1 unit', 150.00, 40, 15, 5, 0, '2024-10-05 16:39:00'),
(12, 'Office Notebook', 2, 3, '10 units', 20.00, 500, 100, 50, 0, '2024-10-05 16:39:00'),
(13, 'Ballpoint Pens', 2, 3, '100 units', 5.00, 1000, 200, 100, 0, '2024-10-05 16:39:00'),
(14, 'Office Stapler', 2, 3, '1 unit', 25.00, 150, 50, 20, 0, '2024-10-05 16:39:00'),
(15, 'Conference Table', 4, 2, '1 unit', 1200.00, 10, 5, 2, 0, '2024-10-05 16:39:00'),
(16, 'Projector HD', 1, 1, '1 unit', 600.00, 20, 10, 5, 0, '2024-10-05 16:39:00'),
(17, 'Desk Organizer', 2, 3, '1 unit', 30.00, 200, 50, 25, 0, '2024-10-05 16:39:00'),
(18, 'Laptop Bag', 2, 3, '1 unit', 70.00, 100, 30, 10, 0, '2024-10-05 16:39:00'),
(19, 'Wireless Mouse', 2, 3, '1 unit', 35.00, 150, 40, 20, 0, '2024-10-05 16:39:00'),
(20, 'Surge Protector', 2, 3, '1 unit', 40.00, 120, 35, 15, 0, '2024-10-05 16:39:00'),
(21, 'Graphic Tablet', 3, 1, '1 unit', 250.00, 20, 10, 5, 0, '2024-10-05 16:39:00'),
(22, 'Bluetooth Speaker', 3, 1, '1 unit', 80.00, 60, 20, 10, 0, '2024-10-05 16:39:00'),
(23, 'USB-C Hub', 3, 5, '1 unit', 55.00, 90, 25, 15, 0, '2024-10-05 16:39:00'),
(24, 'External HDD 2TB', 3, 5, '1 unit', 180.00, 30, 10, 5, 0, '2024-10-05 16:39:00'),
(25, 'Office Whiteboard', 4, 2, '1 unit', 150.00, 25, 10, 5, 0, '2024-10-05 16:39:00'),
(26, 'Ergonomic Keyboard', 2, 3, '1 unit', 65.00, 70, 25, 10, 0, '2024-10-05 16:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `contact_name` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `company_name`, `contact_name`, `contact_email`, `phone`, `address`, `city`, `state`, `zip_code`, `country`, `created_at`) VALUES
(1, 'Yemen Tech Supplies', 'Ali Saleh', 'ali.saleh@yementech.com', '967-1-1234567', '123 Tech Street', 'Aden', 'Adan', '62501', 'Yemen', '2024-10-05 15:12:17'),
(2, 'Sana\'a Office Goods', 'Fatima Ahmed', 'fatima.ahmed@sanaaoffice.com', '967-1-2345678', '456 Office Blvd', 'Sana\'a', 'Sana\'a', '11411', 'Yemen', '2024-10-05 15:12:17'),
(3, 'Hudaydah Electronics', 'Mohammed Ali', 'mohammed.ali@hudaydadelectronics.com', '967-2-3456789', '789 Gadget Road', 'Al Hudaydah', 'Al Hudaydah', '11612', 'Yemen', '2024-10-05 15:12:17'),
(4, 'Ta\'izz Furniture Co.', 'Aisha Karim', 'aisha.karim@taizzfurniture.com', '967-3-4567890', '321 Furniture Ave', 'Ta\'izz', 'Ta\'izz', '11911', 'Yemen', '2024-10-05 15:12:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
