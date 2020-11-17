-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 02:27 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cflms-marinbalabanov-codereview-10`
--
CREATE DATABASE IF NOT EXISTS `cflms-marinbalabanov-codereview-10` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cflms-marinbalabanov-codereview-10`;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `author_first_name` varchar(100) DEFAULT NULL,
  `author_last_name` varchar(100) DEFAULT NULL,
  `isbn_code` varchar(100) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `publish_date` year(4) DEFAULT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  `publisher_address` varchar(100) DEFAULT NULL,
  `publisher_size` varchar(10) DEFAULT NULL,
  `media_type` varchar(100) DEFAULT NULL,
  `status` enum('available','reserved') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `title`, `image`, `author_first_name`, `author_last_name`, `isbn_code`, `short_description`, `publish_date`, `publisher_name`, `publisher_address`, `publisher_size`, `media_type`, `status`) VALUES
(1, 'Silhouette of Mist', 'assets/11_media.jpg', 'Kevin', 'Ham', '978-3-8362-4186-1', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores ', 2016, 'Ronson House', '9502 Annadale Lane, Collierville, TN 38017', 'big', 'Book', 'available'),
(2, 'Iguana Dawn', 'assets/12_media.jpg', 'Eric', 'Hogan', '988-3-9162-3366-2', 'Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 2013, 'Lancaster Holding', '823 Beech Lane, Norwalk, CT 06851', 'medium', 'Book', 'available'),
(3, 'Extreme Makeover', 'assets/02_media.jpg', 'Goldie', 'Gold', '978-1-6891-6015-5', 'De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia?', 2001, 'North Texas Services', '7567 Woodsman Ave., Saratoga Springs, NY 12866', 'big', 'Book', 'available'),
(4, 'Clue of the Painted Footprint', 'assets/03_media.jpg', 'Emile', 'Bortle', '978-8-0899-6653-0', 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro.', 2009, 'Enterprise News', '11 Birchpond Street, Lewiston, ME 04240', 'big', 'CD', 'available'),
(5, 'Cyber Leviathan', 'assets/01_media.jpg', 'Dexter', 'Cavender', '978-4-2291-4653-4', 'De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas.', 1998, 'Market Time', '72 Race Drive, Snohomish, WA 98290', 'medium', 'DVD', 'available'),
(6, 'Secret of the Silent Tourists', 'assets/04_media.jpg', 'Raye', 'Orman', '978-5-3106-0703-3', 'Imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.', 2017, 'Washington Courier', '886 Spring Street, Garland, TX 75043', 'medium', 'Book', 'available'),
(7, 'The Blood in the Dusk', 'assets/13_media.jpg', 'Dorsey', 'Crimmins', '978-0-1148-4081-5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 2019, 'Wellpoint', '42 Sutor St., San Pablo, CA 94806', 'small', 'CD', 'available'),
(8, 'Extreme Makeover', 'assets/02_media.jpg', 'Ernest', 'End', '978-1-6891-6015-5', 'De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia?', 2001, 'Wentworth', '9079 West Marlborough Ave., Kaukauna, WI 54130', 'small', 'Book', 'available'),
(9, 'Clue of the Painted Footprint', 'assets/03_media.jpg', 'Emile', 'Bortle', '978-8-0899-6653-0', 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro.', 2009, 'Sierra Corp', '219 Washington Street, Severn, MD 21144', 'medium', 'CD', 'available'),
(10, 'Cyber Leviathan', 'assets/01_media.jpg', 'Roger', 'Cavendish', '978-4-2291-4653-4', 'De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas.', 1998, 'Updike', '256 Silver Spear Avenue, Coram, NY 11727', 'big', 'DVD', 'available'),
(11, 'Secret of the Silent Tourists', 'assets/04_media.jpg', 'May', 'North', '978-5-3106-0703-3', 'Imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.', 2017, 'Virginia Press', '68 Canal Ave., East Stroudsburg, PA 18301', 'medium', 'Book', 'available'),
(12, 'Escape from Oblivion', 'assets/05_media.jpg', 'Nina', 'Rum', '978-0-2248-5681-5', 'Sequitur lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 2019, 'Godsend International', '9780 Tarkiln Hill Street, Cranford, NJ 07016', 'big', 'Book', 'available'),
(13, 'Changeling Graves', 'assets/06_media.jpg', 'Riannah', 'Smith', '978-2-6885-1572-4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.', 2003, 'Starline', '260 Grant Drive, Harvey, IL 60426', 'big', 'DVD', 'available'),
(14, 'Trapped in Lace', 'assets/07_media.jpg', 'Malia', 'Hauser', '978-5-3384-4273-9', 'Labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.', 2001, 'Wellington Publishing', '9910 Border Street, Hoffman Estates, IL 60169', 'big', 'Book', 'available'),
(15, 'The Call of the Wicked', 'assets/08_media.jpg', 'Janel', 'Desilva', '978-0-0431-9933-6', 'Laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.', 2004, 'Cornish Legal', '54 Crescent Ave., Phillipsburg, NJ 08865', 'small', 'CD', 'available'),
(16, 'Dead Funeral', 'assets/09_media.jpg', 'Venessa', 'Timlin', '978-8-4077-3848-1', 'In voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 2005, 'Itale Books', '324 Sunset Lane, Sicklerville, NJ 08081', 'small', 'DVD', 'available'),
(17, 'The Missing Paper', 'assets/10_media.jpg', 'Brenton', 'Gaeta', '978-1-1247-5140-5', 'Bacon ipsum dolor amet short ribs brisket venison rump drumstick pig sausage prosciutto chicken.', 2008, 'Datamill', '720 Oklahoma St., Attleboro, MA 02703', 'big', 'Book', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(100) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userPass` varchar(100) NOT NULL,
  `userImage` varchar(100) DEFAULT NULL,
  `userType` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `userImage`, `userType`) VALUES
(1, 'Arthur Adams', 'arthur@adams.com', '38a320b2a67c8003cc748d6666534f2b01f3f08d175440537a5bf86b7d08d5ee', 'assets/user1.png', 'admin'),
(2, 'Test User', 'test1@test.com', '38a320b2a67c8003cc748d6666534f2b01f3f08d175440537a5bf86b7d08d5ee', 'assets/user2.png', 'user'),
(3, 'Admin Istrator', 'admin@admin.com', '38a320b2a67c8003cc748d6666534f2b01f3f08d175440537a5bf86b7d08d5ee', 'assets/user2.png', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
