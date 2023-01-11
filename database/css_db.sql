-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 04:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `css_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `user_type` tinyint(1) NOT NULL COMMENT '1= admin, 2= staff,3= customer',
  `ticket_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `user_type`, `ticket_id`, `comment`, `date_created`) VALUES
(1, 1, 1, 1, '&lt;p&gt;Sample Comment only&lt;/p&gt; ', '2020-11-09 14:52:16'),
(3, 2, 3, 1, '&lt;p&gt;Sample&amp;nbsp;&lt;/p&gt;', '2020-11-09 15:36:56'),
(4, 1, 1, 5, '&lt;p&gt;Complaint has been processed it will resolve soon sorry for inconvenience&lt;/p&gt;', '2022-09-12 01:56:56'),
(5, 2, 2, 4, '&lt;p&gt;Your query will be resolved till 24 september&lt;/p&gt;', '2022-09-13 22:30:10'),
(6, 2, 2, 9, '&lt;p&gt;Your Query is going to solve wiith in few days.&lt;/p&gt;', '2022-10-14 02:00:07'),
(7, 3, 3, 9, '&lt;p&gt;Exact date and time&lt;/p&gt;', '2022-10-14 02:01:04'),
(8, 3, 3, 26, '&lt;p&gt;Please help&lt;/p&gt;', '2022-12-30 01:58:42'),
(9, 2, 2, 26, 'new keyboard is required', '2022-12-30 02:04:56'),
(10, 3, 3, 32, '&lt;p&gt;Please do it as soon as possible&amp;nbsp;&lt;/p&gt;', '2022-12-31 02:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`) VALUES
(3, 'Suraj ', 'Singh', 'B', '9137567796', 'APSIT', 'surajsingh@gmail.com', '2f2b2adb68e83de7433190e454536813', '2022-09-11 03:00:43'),
(4, 'Himanshu ', 'Rane', 'P', '9638527410', 'Kharegaon', 'himanshurane123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-09-12 01:29:47'),
(5, 'Mark', 'Zuckerberg', '', '1345698745', 'Facebook', 'mark@facebook.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-14 01:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `date_created`) VALUES
(1, 'I.T. ', 'Information technology Department', '2020-11-09 11:43:18'),
(4, 'C.S.E ', 'computer Science Department', '2022-09-12 01:51:09'),
(5, 'AI ML ', 'Artificial intelligence and Machine Learning', '2022-09-12 01:52:15'),
(6, 'DS', 'Data Science', '2022-09-12 01:52:41'),
(7, 'Mechanical', '', '2023-01-07 02:51:47'),
(8, 'Civil ', 'Civil Branch', '2023-01-07 02:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` tinyint(4) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `month`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(7, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `middlename` varchar(200) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `department_id`, `firstname`, `lastname`, `middlename`, `contact`, `address`, `email`, `password`, `date_created`) VALUES
(2, 1, 'Athrava', 'Takle', '', '9874563210', 'APIST', 'athrava@gmail.com', '71b3b26aaa319e0cdf6fdb8429c112b0', '2022-09-11 03:05:59'),
(3, 4, 'Vinayak', 'Somvanshi', '', '7418529632', 'APSIT', 'vinayak123@gmail.com', '6cf82ee1020caef069e753c67a97a70d', '2022-09-12 02:09:01'),
(4, 5, 'Elon', 'Musk', '', '789654123', 'Tesla', 'elon@tesla.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-14 01:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`) VALUES
(0, 'Pending'),
(1, 'On Process'),
(2, 'Done'),
(3, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(30) NOT NULL,
  `uniqid` varchar(300) NOT NULL,
  `subject` text NOT NULL,
  `lab` int(11) NOT NULL,
  `Problem` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=Pending,1=on process,2= Closed',
  `department_id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `staff_id` int(30) NOT NULL,
  `admin_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `Priority` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `uniqid`, `subject`, `lab`, `Problem`, `description`, `status`, `department_id`, `customer_id`, `staff_id`, `admin_id`, `date_created`, `Priority`) VALUES
(32, 'TN63af4c8c7add1', '2', 207, 'Projector Problem', '&lt;p&gt;Projector not working please do it immediately as seminar is going to held on 18 dec&lt;/p&gt;', 2, 1, 3, 0, 0, '2022-12-31 02:10:40', 'Emergency'),
(33, 'TN63b5e791132c3', '4', 406, 'OS Problem', '&lt;p&gt;test3&lt;/p&gt;', 3, 5, 4, 0, 1, '2023-01-05 02:25:19', 'High'),
(34, 'TN63b9e8285a3f1', '3rd', 303, 'Projector Problem', '&lt;p&gt;test2&lt;/p&gt;', 0, 1, 3, 0, 1, '2023-01-08 03:16:36', 'Urgent'),
(35, 'TN63bbe8ee60d2e', '4th', 401, 'OS Problem', '&lt;p&gt;mailtest&lt;/p&gt;', 2, 1, 3, 0, 1, '2023-01-09 15:44:36', 'Medium'),
(36, 'TN63bc3f485696b', '5th', 501, 'OS Problem', '&lt;p&gt;test3&lt;/p&gt;', 1, 6, 5, 0, 1, '2023-01-09 21:53:04', 'Emergency'),
(37, 'TN63bc61899e989', '2nd', 204, 'Projector Problem', '&lt;p&gt;test&lt;/p&gt;', 0, 7, 4, 0, 1, '2023-01-10 00:19:09', 'Low'),
(38, 'TN63bc84c54bdaa', '2nd', 209, 'Projector Problem', '&lt;p&gt;test&lt;/p&gt;', 0, 8, 5, 0, 1, '2023-01-10 02:49:29', 'Urgent'),
(39, 'TN63bd82b82d13c', '3rd', 303, 'OS Problem', '&lt;p&gt;test&lt;/p&gt;', 0, 8, 3, 0, 1, '2023-01-10 20:53:24', 'High'),
(40, 'TN63bdc5691b4f4', '2nd', 201, 'Hardware Issue', '&lt;p&gt;test&lt;/p&gt;', 0, 4, 4, 0, 1, '2023-01-11 01:37:28', 'High'),
(41, 'TN63be7b0029e27', '3rd', 301, 'Projector Problem', '&lt;p&gt;test&lt;/p&gt;', 0, 8, 1, 0, 1, '2023-01-11 14:35:33', 'High'),
(42, 'TN63bec9f903c50', '3rd', 303, 'Hardware Issue', '&lt;p&gt;test&lt;/p&gt;', 0, 1, 3, 0, 0, '2023-01-11 20:09:16', 'Medium'),
(43, 'TN63beca438b3c0', '4th', 401, 'Hardware Issue', '&lt;p&gt;test&lt;/p&gt;', 0, 1, 3, 0, 0, '2023-01-11 20:10:22', 'Emergency');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` tinyint(1) NOT NULL COMMENT '1 = Admin,2=support',
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `role`, `username`, `password`, `date_created`) VALUES
(1, 'Administrator', '', '', 1, 'admin', '0192023a7bbd73250516f069df18b500', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
