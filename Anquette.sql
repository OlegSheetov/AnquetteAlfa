-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2024 at 12:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Anquette`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `CommentID` int(11) NOT NULL,
  `AuthorName` int(11) NOT NULL,
  `commentBody` tinytext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `AnquetteID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`CommentID`, `AuthorName`, `commentBody`, `timestamp`, `AnquetteID`) VALUES
(10, 11, 'Hello world!!! World  hello!!!!!!!!!\r\n', '2023-11-08 07:23:46', 1),
(11, 11, 'Hello world !', '2023-11-09 08:07:05', 2),
(36, 5, 'TEST', '2023-11-09 14:53:50', 11),
(37, 11, 'Не хочешь стать веб разработчиком ? Это интересно. ', '2023-11-09 14:54:51', 10);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` tinytext NOT NULL,
  `description` tinytext NOT NULL,
  `mbtitype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `password`, `description`, `mbtitype`) VALUES
(5, '@DudeLogin', 'DUDE', '$2y$10$hbNO7CKMwz3Yh3p43b9fcuo76aVZqn6OOtGTIkWfRWcexXtCVvxaW', 'Hi', 'ENTP'),
(10, '@OlegLogin', 'Oleg', '$2y$10$bUNpKJ9/Q6K3DKEGvug6YeoCqutcgQmxSQwT641/knzI2sy1f/uvW', 'Я работаю грузчиком. Работа вроде норм.', 'INFJ'),
(11, '@NathanLogin', 'Nathan', '$2y$10$YHWmBQw5XOPCH0zATILv0.nCScxwjnRz3X9xHCvhT.sOB2UCeqTiO', 'Web developer. ', 'INTJ'),
(44, '@YoshidaLogin', 'Yoshida', '$2y$10$QDcxFIU8CdwyOTttCF46EOpzG0K5bWeF/qKqK/7HbwXfOrxMyd79i', 'Mangaka', 'ISFP'),
(45, '@DanLogin', 'Dan', '$2y$10$sAkw9Jd4E.hLu3qVX46Cye8bJCrNN.UkbddObJeHAaYv4vVWuyZFW', 'Работаю в офисе', 'ISFJ'),
(46, '@SamLogin', 'Sam', '$2y$10$zgNJ.c4Oy4.ojptGDULpbeeD8GoEf7OkZKkC9p..Z1GsVyifUCDDC', 'Musican', 'ISTP'),
(63, '@NanaLogin', 'Nana', '$2y$10$iNq8.F8jY3wrIiJH9noJ4O5MSKJmnxiFqeQ3vQjCkfZ9h5Q2haVU2', 'Hello world!', 'ISFP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentID`),
  ADD KEY `AnquetteID` (`AnquetteID`),
  ADD KEY `NamesInAuthorName` (`AuthorName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`,`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `NamesInAuthorName` FOREIGN KEY (`AuthorName`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
