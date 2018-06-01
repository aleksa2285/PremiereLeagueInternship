-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2018 at 11:19 PM
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
(1, 12, 5, '2018-05-28 21:17:40', 0, 1, 10),
(2, 6, 18, '2018-05-28 21:17:42', 2, 1, 10),
(3, 11, 13, '2018-05-28 21:17:43', 2, 2, 10),
(4, 4, 16, '2018-05-28 21:17:45', 3, 0, 10),
(5, 14, 19, '2018-05-28 21:17:47', 0, 1, 10),
(6, 20, 1, '2018-05-28 21:17:55', 2, 3, 10),
(7, 2, 3, '2018-05-28 21:17:58', 1, 0, 10),
(8, 9, 8, '2018-05-28 21:18:00', 2, 0, 10),
(9, 15, 17, '2018-05-28 21:18:02', 1, 1, 10),
(10, 7, 10, '2018-05-28 21:18:05', 1, 0, 10),
(11, 13, 4, '2018-05-28 21:18:06', 1, 4, 11),
(12, 16, 20, '2018-05-28 21:18:08', 1, 0, 11),
(13, 10, 12, '2018-05-28 21:18:10', 0, 1, 11),
(14, 17, 7, '2018-05-28 21:18:11', 0, 1, 11),
(15, 18, 15, '2018-05-28 21:18:14', 0, 1, 11),
(16, 19, 9, '2018-05-28 21:18:16', 2, 2, 11),
(17, 5, 2, '2018-05-28 21:18:17', 1, 0, 11),
(18, 8, 14, '2018-05-28 21:18:19', 3, 2, 11),
(19, 1, 6, '2018-05-28 21:18:20', 3, 1, 11),
(20, 3, 11, '2018-05-28 21:18:21', 1, 0, 11),
(21, 2, 10, '2018-05-28 21:18:24', 4, 1, 12),
(22, 12, 16, '2018-05-28 21:18:25', 4, 0, 12),
(23, 7, 18, '2018-05-28 21:18:27', 2, 0, 12),
(24, 11, 8, '2018-05-28 21:18:29', 2, 2, 12),
(25, 9, 1, '2018-05-28 21:18:31', 0, 2, 12),
(26, 4, 17, '2018-05-28 21:18:32', 3, 0, 12),
(27, 20, 5, '2018-05-28 21:18:35', 0, 4, 12),
(28, 6, 3, '2018-05-28 21:18:37', 2, 0, 12),
(29, 14, 13, '2018-05-28 21:18:39', 2, 0, 12),
(30, 15, 19, '2018-05-28 21:18:41', 2, 2, 12),
(31, 13, 9, '2018-05-28 21:18:44', 1, 1, 13),
(32, 4, 5, '2018-05-28 21:18:46', 1, 1, 13),
(33, 11, 19, '2018-05-28 21:18:48', 2, 1, 13),
(34, 2, 15, '2018-05-28 21:18:49', 1, 0, 13),
(35, 10, 14, '2018-05-28 21:18:51', 0, 3, 13),
(36, 18, 12, '2018-05-28 21:18:52', 0, 0, 13),
(37, 3, 20, '2018-05-28 21:18:54', 1, 1, 13),
(38, 16, 1, '2018-05-28 21:18:57', 1, 2, 13),
(39, 7, 6, '2018-05-28 21:18:59', 0, 1, 13),
(40, 17, 8, '2018-05-28 21:19:00', 4, 1, 13);

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
  `TEAM_FORM` varchar(1024) NOT NULL DEFAULT '',
  `TEAM_TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TEAM_PROFILE_PATH` varchar(1024) DEFAULT NULL,
  `TEAM_POINTS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`TEAM_ID`, `TEAM_NAME`, `TEAM_GAMES_PLAYED`, `TEAM_WON`, `TEAM_DRAWN`, `TEAM_LOST`, `TEAM_GOALS_FOR`, `TEAM_GOALS_AGAINST`, `TEAM_FORM`, `TEAM_TIMESTAMP`, `TEAM_PROFILE_PATH`, `TEAM_POINTS`) VALUES
(1, 'Man City', 4, 4, 0, 0, 10, 4, '2222', '2018-05-28 21:18:57', 'https://sport.guim.co.uk/football/crests/60/11.png', 12),
(2, 'Man Utd ', 4, 3, 0, 1, 6, 2, '2022', '2018-05-28 21:18:49', 'https://sport.guim.co.uk/football/crests/60/12.png', 9),
(3, 'Tottenham', 4, 1, 1, 2, 2, 4, '0201', '2018-05-28 21:18:54', 'https://sport.guim.co.uk/football/crests/60/19.png)', 4),
(4, 'Liverpool ', 4, 3, 1, 0, 11, 2, '2221', '2018-05-28 21:18:46', 'https://sport.guim.co.uk/football/crests/60/9.png', 10),
(5, 'Chelsea ', 4, 3, 1, 0, 7, 1, '2221', '2018-05-28 21:18:46', 'https://sport.guim.co.uk/football/crests/60/4.png', 10),
(6, 'Arsenal ', 4, 3, 0, 1, 6, 4, '2022', '2018-05-28 21:18:59', 'https://sport.guim.co.uk/football/crests/60/1006.png', 9),
(7, 'Burnley ', 4, 3, 0, 1, 4, 1, '2220', '2018-05-28 21:18:59', 'https://sport.guim.co.uk/football/crests/60/70.png', 9),
(8, 'Everton ', 4, 1, 1, 2, 6, 10, '0210', '2018-05-28 21:19:00', 'https://sport.guim.co.uk/football/crests/60/8.png', 4),
(9, 'Leicester ', 4, 1, 2, 1, 5, 5, '2101', '2018-05-28 21:18:44', 'https://sport.guim.co.uk/football/crests/60/29.png', 5),
(10, 'Newcastle ', 4, 0, 0, 4, 1, 9, '0000', '2018-05-28 21:18:51', 'https://sport.guim.co.uk/football/crests/60/31.png', 0),
(11, 'C Palace', 4, 1, 2, 1, 6, 6, '1012', '2018-05-28 21:18:48', 'https://sport.guim.co.uk/football/crests/60/5.png', 5),
(12, 'AFC Bournemouth ', 4, 2, 1, 1, 5, 1, '0221', '2018-05-28 21:18:52', 'https://sport.guim.co.uk/football/crests/60/23.png', 7),
(13, 'West Ham ', 4, 0, 2, 2, 4, 9, '1001', '2018-05-28 21:18:44', 'https://sport.guim.co.uk/football/crests/60/43.png', 2),
(14, 'Watford ', 4, 2, 0, 2, 7, 4, '0022', '2018-05-28 21:18:51', 'https://sport.guim.co.uk/football/crests/60/41.png', 6),
(15, 'Brighton ', 4, 1, 2, 1, 4, 4, '1210', '2018-05-28 21:18:49', 'https://sport.guim.co.uk/football/crests/60/6795.png', 5),
(16, 'Huddersfield ', 4, 1, 0, 3, 2, 9, '0200', '2018-05-28 21:18:57', 'https://sport.guim.co.uk/football/crests/60/56.png', 3),
(17, 'Southampton ', 4, 1, 1, 2, 5, 6, '1002', '2018-05-28 21:19:00', 'https://sport.guim.co.uk/football/crests/60/18.png', 4),
(18, 'Swansea ', 4, 0, 1, 3, 1, 5, '0001', '2018-05-28 21:18:52', 'https://sport.guim.co.uk/football/crests/60/65.png', 1),
(19, 'Stoke ', 4, 1, 2, 1, 6, 6, '2110', '2018-05-28 21:18:48', 'https://sport.guim.co.uk/football/crests/60/38.png', 5),
(20, 'West Brom ', 4, 0, 1, 3, 3, 9, '0001', '2018-05-28 21:18:54', 'https://sport.guim.co.uk/football/crests/60/42.png', 1);

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
