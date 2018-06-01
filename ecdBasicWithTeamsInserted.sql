-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 04:24 PM
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
(1, 'Man City', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:14:54', 'https://sport.guim.co.uk/football/crests/60/11.png', 0, 0),
(2, 'Man Utd', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:15:32', 'https://sport.guim.co.uk/football/crests/60/12.png', 0, 0),
(3, 'Spurs', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:15:56', 'https://sport.guim.co.uk/football/crests/60/19.png', 0, 0),
(4, 'Liverpool', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:16:24', 'https://sport.guim.co.uk/football/crests/60/9.png', 0, 0),
(5, 'Chelsea', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:17:29', 'https://sport.guim.co.uk/football/crests/60/4.png', 0, 0),
(6, 'Arsenal', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:17:44', 'https://sport.guim.co.uk/football/crests/60/1006.png', 0, 0),
(7, 'Burnley', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:18:23', 'https://sport.guim.co.uk/football/crests/60/70.png', 0, 0),
(8, 'Everton', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:19:17', 'https://sport.guim.co.uk/football/crests/60/8.png', 0, 0),
(9, 'Leicester', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:19:39', 'https://sport.guim.co.uk/football/crests/60/29.png', 0, 0),
(10, 'Newcastle', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:19:55', 'https://sport.guim.co.uk/football/crests/60/31.png', 0, 0),
(11, 'C Palace', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:20:11', 'https://sport.guim.co.uk/football/crests/60/5.png', 0, 0),
(12, 'AFC Bournemouth', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:20:28', 'https://sport.guim.co.uk/football/crests/60/23.png', 0, 0),
(13, 'West Ham', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:20:50', 'https://sport.guim.co.uk/football/crests/60/43.png', 0, 0),
(14, 'Watford', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:21:06', 'https://sport.guim.co.uk/football/crests/60/41.png', 0, 0),
(15, 'Brighton', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:21:21', 'https://sport.guim.co.uk/football/crests/60/6795.png', 0, 0),
(16, 'Huddersfield', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:21:36', 'https://sport.guim.co.uk/football/crests/60/56.png', 0, 0),
(17, 'Southampton', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:21:50', 'https://sport.guim.co.uk/football/crests/60/18.png', 0, 0),
(18, 'Swansea', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:22:06', 'https://sport.guim.co.uk/football/crests/60/65.png', 0, 0),
(19, 'Stoke', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:22:20', 'https://sport.guim.co.uk/football/crests/60/38.png', 0, 0),
(20, 'West Brom', NULL, NULL, NULL, NULL, NULL, NULL, '', '2018-05-29 14:22:36', 'https://sport.guim.co.uk/football/crests/60/42.png', 0, 0);

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
  MODIFY `MATCH_ID` bigint(20) NOT NULL AUTO_INCREMENT;
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
