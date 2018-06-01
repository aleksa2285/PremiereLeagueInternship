-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2018 at 04:11 PM
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
  MODIFY `TEAM_ID` bigint(20) NOT NULL AUTO_INCREMENT;
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
