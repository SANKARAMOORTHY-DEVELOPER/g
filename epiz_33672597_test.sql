-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql313.byetcluster.com
-- Generation Time: Apr 02, 2023 at 07:56 AM
-- Server version: 10.4.17-MariaDB
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
-- Database: `epiz_33672597_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 32, 'chandr ', 'cgfcghc@gmail.com', '2', 'ggcgfcghc');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(43, 'Cisco', 'onlinecourse', 'It offers a variety of courses', 'https://www.cisco.com/c/m/en_sg/partners/cisco-networking-academy/index.html', 'cisco.png'),
(44, 'HP Life', 'onlinecourse', 'it odsjadl;f', 'https://www.life-global.org/', 'hplife.png'),
(45, 'SkillUp', 'onlinecourse', 'sadfadsf', 'https://www.simplilearn.com/skillup-free-online-courses', 'SkillUp.png'),
(46, 'Udacity', 'onlinecourse', 'sdafdsaf', 'https://www.udacity.com/courses/all', 'udacity.png'),
(47, 'Google', 'onlinecourse', 'asdfdsaf', 'https://learndigital.withgoogle.com/digitalgarage/courses', 'google.png'),
(48, 'Great Learining', 'onlinecourse', 'sadfasd', 'https://www.mygreatlearning.com/academy', 'greatlearning.png'),
(49, 'Udemy', 'onlinecourse', 'sdfsfs', 'https://www.udemy.com/courses/free/', 'Udemy.png'),
(50, 'Coursera', 'onlinecourse', 'sdsfasdf', 'https://www.coursera.org/collections/popular-free-courses', 'coursera.png'),
(51, 'Harvard University', 'onlinecourse', 'dasfgaredagdsv', 'https://pll.harvard.edu/catalog/free', 'harvard.png'),
(52, 'LinkedIn', 'internship', 'asdfasdf', 'https://careers.linkedin.com/pathways-programs/internships', 'linkedin.png'),
(53, 'Zuno', 'internship', 'sdafsfdsa', 'https://www.foundit.in/zuno/', 'zuno.png'),
(54, 'Amazon', 'internship', 'asdfasf', 'https://www.amazon.jobs/en-gb/teams/internships-for-students', 'amazon.png'),
(55, 'AICTE', 'internship', '&#39;/GIBKUJM', 'https://internship.aicte-india.org/', 'aicte.png'),
(56, 'Internshala', 'internship', 'dasfadsfewrqf', 'https://internshala.com/internships/', 'internshala.png'),
(57, 'Glassdoor', 'internship', 'asdfefds', 'https://www.glassdoor.co.in/Job/intern-jobs-SRCH_KO0,6.htm', 'glassdoor.png'),
(58, 'Forage', 'internship', 'dsfewfdvewfcdscew', 'https://www.theforage.com/', 'forage.png'),
(59, 'Github', 'entertainment', 'dfasfa', 'https://education.github.com/pack', 'Github.png'),
(60, 'Spotify', 'entertainment', 'reavgfdsvff', 'https://www.spotify.com/in-en/student/', 'Spotify.png'),
(61, 'Youtube Premium', 'entertainment', 'yuhagdejca;fd', 'https://youtube.sheerid.com/?yrdup=https://www.youtube.com/%3Fsld%3DCgl1bmxpbWl0ZWQQBRgP&ytpid=premium&yrsp=https://www.youtube.com/premium/student%3Fsld%3DCgl1bmxpbWl0ZWQQBRgO&euid=51571075&locale=en_IN&oid=AI97cZlKNR6Ka8qZ3982A7MH-jZ_gi93eOMl9yPaTVlphn9jhC2872jToF7RMl2Id7_D840bm01w', 'Youtube Premium.png'),
(62, 'MS Office', 'entertainment', 'gvjhb', 'https://www.microsoft.com/en-in/education/products/office', 'MS Office.png'),
(63, 'Apple', 'entertainment', 'jdsal;kjfae', 'https://www.apple.com/in/shop/education-pricing', 'Apple.png'),
(64, 'Indigo Airlines', 'entertainment', 'jkjbjgv', 'https://www.goindigo.in/add-on-services/student-discount.html', 'Indigo.png'),
(65, 'Notion', 'entertainment', 'kjklmlkm', 'https://www.notion.so/product/notion-for-education', 'Notion.png'),
(66, 'HP', 'entertainment', 'dsafasdf', 'https://www.hp.com/in-en/shop/students/about-the-program', 'HP.png'),
(67, 'LinkedIn Premium', 'entertainment', 'jknkjgvcgfvjkm', 'https://members.linkedin.com/en-in/student/linkedin-premium', 'LinkedIn Premium.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'chandru', 'chandru@gmail.com', '6199393e792b08f629f1bc547fd4d8b8', 'admin', 'alert.jpg'),
(32, 'chandrubf', 'chandru1@gmail.com', '6199393e792b08f629f1bc547fd4d8b8', 'user', 'bfv.png'),
(33, 'sankar', 'sankarmorthy@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'Arcreactor.jpg'),
(34, 'sanjay', 'sanjay@gmail.com', 'e505075a8e20bb186913687c67ab2e0c', 'admin', 'Screenshot 2023-03-21 at 12-48-46 CodePen - CATS pets store #codepenchallenge #cpc-hero.png'),
(35, 'Dharun Prasad', 'dharun@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'BodyGuard_15-03-2023_15_52_15.JPEG'),
(36, 'Chandru', 'chan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'Arcreactor.jpg'),
(37, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'about-img-2.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
