-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 12:38 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `email`, `password`) VALUES
(215, 'Habib al hasan', 'himel123', 'djstar.himel@gmail.com', '12345'),
(224, 'Sayma Rahman', 'sayma123', 'saymas@gmail.com', '12345'),
(225, 'Asiful Bijoy', 'asiful', 'asifulbijoy97@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `catagory_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `featured` varchar(10) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`catagory_id`, `title`, `image_name`, `featured`, `active`) VALUES
(117, 'Pizza', 'Food_Catagory484.jpg', 'No', 'Yes'),
(118, 'Biriyani', 'Food_Catagory200.jpg', 'Yes', 'Yes'),
(120, 'Burger', 'Food_Catagory49.jpg', 'No', 'Yes'),
(121, 'Drinks', 'Food_Category_615.jpg', 'Yes', 'Yes'),
(122, 'Dessert', 'Food_Category_939.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `contact_number` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `username`, `email`, `password`, `contact_number`) VALUES
(102, 'Nishat Tasnim', 'nishat', 'nishat@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '01849751286'),
(103, 'Habib Al Hasan', 'igenhimel', 'djstar.himel@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '01729955133'),
(104, 'Asiful Bijoy', 'asifulbijoy97', 'asifulbijoy87@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01849751286'),
(105, 'Israk Rafi', 'rafi1234', 'rafi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01729955133'),
(106, 'Israk', 'rafi1235', 'rafi@edu.com', '827ccb0eea8a706c4c34a16891f84e7b', NULL),
(107, 'Sanzida Sanin', 'sanzida', 'sanzida@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01729955133');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image_name` varchar(50) DEFAULT NULL,
  `catagory_id` int(11) DEFAULT NULL,
  `featured` varchar(10) DEFAULT NULL,
  `active` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `description`, `price`, `image_name`, `catagory_id`, `featured`, `active`) VALUES
(32, 'Kacchi Biriyani', '3:1 Kacchi Biriyani', '350.00', 'Food_Name_7774.jpg', 118, 'Yes', 'Yes'),
(33, 'Chicken Biriyani', 'Tasty Chicken Biriyani', '200.00', 'Food_Name_365.jpg', 118, 'Yes', 'Yes'),
(38, 'Lemonade', 'Fresh lemon juice', '60.00', 'Food_Name_5367.jpg', 121, 'No', 'Yes'),
(48, 'Beef Burger', 'Best Beef Burger', '600.00', 'Food_Name_3603.jpg', 120, 'Yes', 'Yes'),
(49, 'Hydrabadi Biriyani', 'Haydrabadi Tasty Biriyani', '400.00', 'Food_Name_6425.jpg', 118, 'Yes', 'Yes'),
(50, 'Coco-Cola', '500MLCocaCola', '30.00', 'Food_Name_5824.jpg', 121, 'No', 'Yes'),
(51, 'MilkShake', 'Cold Milkshake with Cream', '450.00', 'Food_Name_6390.png', 121, 'Yes', 'Yes'),
(52, 'Italian Pizza', 'Best Italian Pizza', '800.00', 'Food_Name_6809.jpg', 117, 'Yes', 'Yes'),
(53, 'Cheese Cake', '', '300.00', 'Food_Name_7436.jpg', 122, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `food_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `order_date` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `food_id`, `quantity`, `total_price`, `order_date`, `status`, `customer_id`, `address`) VALUES
(1, 38, 1, '60.00', '2021-01-12', 'On Delivery', 103, 'mirpur'),
(2, 33, 1, '200.00', '2021-01-12', 'Delivered', 103, 'bashindhara'),
(3, 38, 1, '60.00', '2021-01-12', 'Cancelled', 103, 'mirpur-1'),
(4, 38, 1, '60.00', '2021-01-12', 'Cancelled', 103, 'mirpur-11'),
(5, 32, 1, '350.00', '2021-01-12', 'On Delivery', 107, 'bashundhara'),
(6, 32, 1, '350.00', '2021-01-13', 'Cancelled', 103, 'mirpur'),
(7, 51, 1, '450.00', '2021-01-13', 'Cancelled', 103, 'bashundhara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`catagory_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`),
  ADD KEY `catagory_id` (`catagory_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `food_id` (`food_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `catagory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`catagory_id`) REFERENCES `catagory` (`catagory_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`food_id`) REFERENCES `food` (`food_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
