-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 05:01 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecd`
--

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `MATCH_ID` bigint(20) NOT NULL,
  `TEAM_ID` bigint(20) DEFAULT NULL,
  `TEA_TEAM_ID` bigint(20) DEFAULT NULL,
  `MATCH_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MATCH_HOME_GOALS` int(11) DEFAULT NULL,
  `MATCH_AWAY_GOALS` int(11) DEFAULT NULL,
  `MATCH_ROUND` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`MATCH_ID`, `TEAM_ID`, `TEA_TEAM_ID`, `MATCH_TIMESTAMP`, `MATCH_HOME_GOALS`, `MATCH_AWAY_GOALS`, `MATCH_ROUND`) VALUES
(1, 6, 9, '2018-05-29 14:46:08', 4, 3, 1),
(2, 15, 1, '2018-05-29 14:47:09', 0, 2, 1),
(3, 5, 7, '2018-05-29 14:47:19', 2, 3, 1),
(4, 11, 16, '2018-05-29 14:47:30', 0, 3, 1),
(5, 8, 19, '2018-05-29 14:47:39', 1, 0, 1),
(6, 17, 18, '2018-05-29 14:47:50', 0, 0, 1),
(7, 20, 12, '2018-05-29 14:48:04', 1, 0, 1),
(8, 14, 4, '2018-05-29 14:48:18', 3, 3, 1),
(9, 2, 13, '2018-05-29 14:48:38', 4, 0, 1),
(10, 10, 3, '2018-05-29 14:48:52', 0, 2, 1),
(11, 19, 6, '2018-05-29 14:50:02', 1, 0, 2),
(12, 12, 14, '2018-05-29 14:50:14', 0, 2, 2),
(13, 7, 20, '2018-05-29 14:50:24', 0, 1, 2),
(14, 9, 15, '2018-05-29 14:50:38', 2, 0, 2),
(15, 4, 11, '2018-05-29 14:50:49', 1, 0, 2),
(16, 17, 13, '2018-05-29 14:51:00', 3, 2, 2),
(17, 18, 2, '2018-05-29 14:51:11', 0, 4, 2),
(18, 3, 5, '2018-05-29 14:51:22', 1, 2, 2),
(19, 16, 10, '2018-05-29 14:51:36', 1, 0, 2),
(20, 1, 8, '2018-05-29 14:51:45', 1, 1, 2),
(21, 2, 9, '2018-05-29 14:55:29', 2, 0, 3),
(22, 11, 18, '2018-05-29 14:55:27', 0, 2, 3),
(23, 16, 17, '2018-05-29 14:55:24', 0, 0, 3),
(24, 10, 13, '2018-05-29 14:55:22', 3, 0, 3),
(25, 14, 15, '2018-05-29 14:55:15', 0, 0, 3),
(26, 12, 1, '2018-05-29 14:55:12', 1, 2, 3),
(27, 4, 6, '2018-05-29 14:55:09', 4, 0, 3),
(28, 3, 7, '2018-05-29 14:55:00', 1, 1, 3),
(29, 5, 8, '2018-05-29 14:54:57', 2, 0, 3),
(30, 20, 19, '2018-05-29 14:54:55', 1, 1, 3),
(31, 19, 2, '2018-05-29 14:58:30', 2, 2, 4),
(32, 6, 12, '2018-05-29 14:58:42', 3, 0, 4),
(33, 15, 20, '2018-05-29 14:58:58', 3, 1, 4),
(34, 8, 3, '2018-05-29 14:59:09', 0, 3, 4),
(35, 9, 5, '2018-05-29 14:59:20', 1, 2, 4),
(36, 17, 14, '2018-05-29 14:59:38', 0, 2, 4),
(37, 1, 4, '2018-05-29 14:59:46', 5, 0, 4),
(38, 18, 10, '2018-05-29 15:00:00', 0, 1, 4),
(39, 7, 11, '2018-05-29 15:00:21', 1, 0, 4),
(40, 13, 16, '2018-05-29 15:00:32', 2, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `TEAM_ID` bigint(20) NOT NULL,
  `TEAM_NAME` varchar(1024) NOT NULL,
  `TEAM_GAMES_PLAYED` int(11) DEFAULT NULL,
  `TEAM_WON` int(11) DEFAULT NULL,
  `TEAM_DRAWN` int(11) DEFAULT NULL,
  `TEAM_LOST` int(11) DEFAULT NULL,
  `TEAM_GOALS_FOR` int(11) DEFAULT NULL,
  `TEAM_GOALS_AGAINST` int(11) DEFAULT NULL,
  `TEAM_FORM` varchar(1024) DEFAULT '',
  `TEAM_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TEAM_PROFILE_PATH` varchar(1024) DEFAULT NULL,
  `TEAM_POINTS` int(11) DEFAULT '0',
  `TEAM_GOAL_DIFFERENCE` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TEAM_ID`, `TEAM_NAME`, `TEAM_GAMES_PLAYED`, `TEAM_WON`, `TEAM_DRAWN`, `TEAM_LOST`, `TEAM_GOALS_FOR`, `TEAM_GOALS_AGAINST`, `TEAM_FORM`, `TEAM_TIMESTAMP`, `TEAM_PROFILE_PATH`, `TEAM_POINTS`, `TEAM_GOAL_DIFFERENCE`) VALUES
(1, 'Man City', 4, 3, 1, 0, 10, 2, '2122', '2018-05-29 14:59:46', 'https://sport.guim.co.uk/football/crests/60/11.png', 10, 8),
(2, 'Man Utd', 4, 3, 1, 0, 12, 2, '2221', '2018-05-29 14:58:30', 'https://sport.guim.co.uk/football/crests/60/12.png', 10, 10),
(3, 'Spurs', 4, 2, 1, 1, 7, 3, '2012', '2018-05-29 14:59:09', 'https://sport.guim.co.uk/football/crests/60/19.png', 7, 4),
(4, 'Liverpool', 4, 2, 1, 1, 8, 8, '1220', '2018-05-29 14:59:46', 'https://sport.guim.co.uk/football/crests/60/9.png', 7, 0),
(5, 'Chelsea', 4, 3, 0, 1, 8, 5, '0222', '2018-05-29 14:59:20', 'https://sport.guim.co.uk/football/crests/60/4.png', 9, 3),
(6, 'Arsenal', 4, 2, 0, 2, 7, 8, '2002', '2018-05-29 14:58:42', 'https://sport.guim.co.uk/football/crests/60/1006.png', 6, -1),
(7, 'Burnley', 4, 2, 1, 1, 5, 4, '2012', '2018-05-29 15:00:21', 'https://sport.guim.co.uk/football/crests/60/70.png', 7, 1),
(8, 'Everton', 4, 1, 1, 2, 2, 6, '2100', '2018-05-29 14:59:09', 'https://sport.guim.co.uk/football/crests/60/8.png', 4, -4),
(9, 'Leicester', 4, 1, 0, 3, 6, 8, '0200', '2018-05-29 14:59:20', 'https://sport.guim.co.uk/football/crests/60/29.png', 3, -2),
(10, 'Newcastle', 4, 2, 0, 2, 4, 3, '0022', '2018-05-29 15:00:00', 'https://sport.guim.co.uk/football/crests/60/31.png', 6, 1),
(11, 'C Palace', 4, 0, 0, 4, 0, 7, '0000', '2018-05-29 15:00:21', 'https://sport.guim.co.uk/football/crests/60/5.png', 0, -7),
(12, 'AFC Bournemouth', 4, 0, 0, 4, 1, 8, '0000', '2018-05-29 14:58:42', 'https://sport.guim.co.uk/football/crests/60/23.png', 0, -7),
(13, 'West Ham', 4, 1, 0, 3, 4, 10, '0002', '2018-05-29 15:00:32', 'https://sport.guim.co.uk/football/crests/60/43.png', 3, -6),
(14, 'Watford', 4, 2, 2, 0, 7, 3, '1212', '2018-05-29 14:59:38', 'https://sport.guim.co.uk/football/crests/60/41.png', 8, 4),
(15, 'Brighton', 4, 1, 1, 2, 3, 5, '0012', '2018-05-29 14:58:58', 'https://sport.guim.co.uk/football/crests/60/6795.png', 4, -2),
(16, 'Huddersfield', 4, 2, 1, 1, 4, 2, '2210', '2018-05-29 15:00:32', 'https://sport.guim.co.uk/football/crests/60/56.png', 7, 2),
(17, 'Southampton', 4, 1, 2, 1, 3, 4, '1210', '2018-05-29 14:59:38', 'https://sport.guim.co.uk/football/crests/60/18.png', 5, -1),
(18, 'Swansea', 4, 1, 1, 2, 2, 5, '1020', '2018-05-29 15:00:00', 'https://sport.guim.co.uk/football/crests/60/65.png', 4, -3),
(19, 'Stoke', 4, 1, 2, 1, 4, 4, '0211', '2018-05-29 14:58:30', 'https://sport.guim.co.uk/football/crests/60/38.png', 5, 0),
(20, 'West Brom', 4, 2, 1, 1, 4, 4, '2210', '2018-05-29 14:58:58', 'https://sport.guim.co.uk/football/crests/60/42.png', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` bigint(20) NOT NULL,
  `USER_EMAIL` varchar(1024) NOT NULL,
  `USER_PASSWORD` varchar(1024) NOT NULL,
  `USER_USERNAME` varchar(1024) NOT NULL,
  `USER_ISADMIN` int(11) DEFAULT NULL,
  `USER_AUTH_TOKEN` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`MATCH_ID`),
  ADD KEY `FK_RELATIONSHIP_1` (`TEAM_ID`),
  ADD KEY `FK_RELATIONSHIP_2` (`TEA_TEAM_ID`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`TEAM_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `MATCH_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `TEAM_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`TEAM_ID`) REFERENCES `team` (`TEAM_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`TEA_TEAM_ID`) REFERENCES `team` (`TEAM_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
