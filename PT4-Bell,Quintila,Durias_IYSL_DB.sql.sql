-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2026 at 07:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iysl`
--

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `CoachID` int(11) NOT NULL,
  `CoachFullName` varchar(100) DEFAULT NULL,
  `ContactInfo` varchar(50) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`CoachID`, `CoachFullName`, `ContactInfo`, `TeamID`) VALUES
(1, 'Jinpachi Ego', '09171234501', 1),
(2, 'Noel Noa', '09171234502', 1),
(3, 'Chris Prince', '09171234503', 1),
(4, 'Lavinho', '09171234504', 2),
(5, 'Marc Snuffy', '09171234505', 2),
(6, 'Julian Loki', '09171234506', 2),
(7, 'Leonardo Luna', '09171234507', 3),
(8, 'Adam Blake', '09171234508', 3),
(9, 'Pablo Cavasoz', '09171234509', 3),
(10, 'Dada Silva', '09171234510', 4),
(11, 'Matteo Ricci', '09171234511', 4),
(12, 'Hiroshi Tanaka', '09171234512', 4);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `GameID` int(11) NOT NULL,
  `GameDate` date DEFAULT NULL,
  `Gametime` time DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `HomeTeamID` int(11) DEFAULT NULL,
  `VisitorTeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`GameID`, `GameDate`, `Gametime`, `Location`, `HomeTeamID`, `VisitorTeamID`) VALUES
(1, '2026-09-01', '09:00:00', 'Blue Lock Stadium', 1, 2),
(2, '2026-09-01', '14:00:00', 'Blue Lock Stadium', 3, 4),
(3, '2026-09-02', '09:00:00', 'Neo Egoist Arena', 2, 3),
(4, '2026-09-02', '14:00:00', 'Neo Egoist Arena', 4, 1),
(5, '2026-09-03', '09:00:00', 'Blue Lock Stadium', 1, 3),
(6, '2026-09-03', '14:00:00', 'Blue Lock Stadium', 2, 4),
(7, '2026-09-04', '09:00:00', 'Neo Egoist Arena', 4, 2),
(8, '2026-09-04', '14:00:00', 'Neo Egoist Arena', 3, 1),
(9, '2026-09-05', '09:00:00', 'Blue Lock Stadium', 2, 1),
(10, '2026-09-05', '14:00:00', 'Blue Lock Stadium', 4, 3),
(11, '2026-09-06', '09:00:00', 'Neo Egoist Arena', 1, 4),
(12, '2026-09-06', '14:00:00', 'Neo Egoist Arena', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `PlayerID` int(11) NOT NULL,
  `PlayerFullname` varchar(100) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `TeamID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`PlayerID`, `PlayerFullname`, `DateOfBirth`, `Email`, `MobileNumber`, `TeamID`) VALUES
(1, 'Isagi Yoichi', '2005-04-01', 'isagi@gmail.com', '09181234501', 1),
(2, 'Bachira Meguru', '2005-08-08', 'bachira@gmail.com', '09181234502', 1),
(3, 'Kunigami Rensuke', '2004-03-11', 'kunigami@gmail.com', '09181234503', 1),
(4, 'Chigiri Hyoma', '2005-12-23', 'chigiri@gmail.com', '09181234504', 1),
(5, 'Gagamaru Gin', '2004-01-02', 'gagamaru@gmail.com', '09181234505', 1),
(6, 'Raichi Jingo', '2005-10-12', 'raichi@gmail.com', '09181234506', 1),
(7, 'Igarashi Gurimu', '2005-07-06', 'igarashi@gmail.com', '09181234507', 1),
(8, 'Naruhaya Asahi', '2005-03-20', 'naruhaya@gmail.com', '09181234508', 1),
(9, 'Imamura Yudai', '2005-08-13', 'imamura@gmail.com', '09181234509', 1),
(10, 'Kuon Wataru', '2004-11-16', 'kuon@gmail.com', '09181234510', 1),
(11, 'Kira Ryosuke', '2005-05-19', 'kira@gmail.com', '09181234511', 1),
(12, 'Rin Itoshi', '2005-09-09', 'rin@gmail.com', '09181234512', 2),
(13, 'Shidou Ryusei', '2005-07-07', 'shidou@gmail.com', '09181234513', 2),
(14, 'Karasu Tabito', '2004-08-15', 'karasu@gmail.com', '09181234514', 2),
(15, 'Otoya Eita', '2005-12-03', 'otoya@gmail.com', '09181234515', 2),
(16, 'Aryu Jyubei', '2004-11-03', 'aryu@gmail.com', '09181234516', 2),
(17, 'Tokimitsu Aoshi', '2005-11-11', 'tokimitsu@gmail.com', '09181234517', 2),
(18, 'Zantetsu Tsurugi', '2005-10-30', 'zantetsu@gmail.com', '09181234518', 2),
(19, 'Nanase Nijiro', '2005-01-20', 'nanase@gmail.com', '09181234519', 2),
(20, 'Hiori Yo', '2005-12-01', 'hiori@gmail.com', '09181234520', 2),
(21, 'Kurona Ranze', '2005-09-06', 'kurona@gmail.com', '09181234521', 2),
(22, 'Sendou Shuto', '2004-10-07', 'sendou@gmail.com', '09181234522', 2),
(23, 'Nagi Seishiro', '2005-05-06', 'nagi@gmail.com', '09181234523', 3),
(24, 'Barou Shoei', '2005-06-27', 'barou@gmail.com', '09181234524', 3),
(25, 'Niko Ikki', '2005-02-05', 'niko@gmail.com', '09181234525', 3),
(26, 'Oliver Aiku', '1999-06-30', 'aiku@gmail.com', '09181234526', 3),
(27, 'Yukimiya Kenyu', '2004-04-28', 'yukimiya@gmail.com', '09181234527', 3),
(28, 'Mikage Reo', '2005-08-12', 'reo@gmail.com', '09181234528', 3),
(29, 'Wanima Junichi', '2004-08-01', 'wanima@gmail.com', '09181234529', 3),
(30, 'Wanima Keisuke', '2004-08-01', 'keisuke@gmail.com', '09181234530', 3),
(31, 'Nishioka Hajime', '2005-02-12', 'nishioka@gmail.com', '09181234531', 3),
(32, 'Matsukaze Kakeru', '2005-04-25', 'matsukaze@gmail.com', '09181234532', 3),
(33, 'Miroku Darai', '2004-05-07', 'darai@gmail.com', '09181234533', 3),
(34, 'Michael Kaiser', '2004-12-25', 'kaiser@gmail.com', '09181234534', 4),
(35, 'Alexis Ness', '2004-07-01', 'ness@gmail.com', '09181234535', 4),
(36, 'Don Lorenzo', '2004-11-28', 'lorenzo@gmail.com', '09181234536', 4),
(37, 'Agi', '2003-09-15', 'agi@gmail.com', '09181234537', 4),
(38, 'Sae Itoshi', '2003-10-10', 'sae@gmail.com', '09181234538', 4),
(39, 'Kazuma Niou', '2004-08-05', 'niou@gmail.com', '09181234539', 4),
(40, 'Teppei Neru', '2005-03-08', 'neru@gmail.com', '09181234540', 4),
(41, 'Gen Fukaku', '2004-08-01', 'fukaku@gmail.com', '09181234541', 4),
(42, 'Kento Cho', '2005-06-14', 'cho@gmail.com', '09181234542', 4),
(43, 'Reiji Hiiragi', '2005-04-17', 'hiiragi@gmail.com', '09181234543', 4),
(44, 'Shiguma Kento', '2005-06-14', 'shiguma@gmail.com', '09181234544', 4);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `TeamID` int(11) NOT NULL,
  `Teamname` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `ManagerName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`TeamID`, `Teamname`, `City`, `ManagerName`) VALUES
(1, 'Bastard Munchen', 'Munich', 'Markus Vogel'),
(2, 'Manshine City', 'Manchester', 'Daniel Whitmore'),
(3, 'FC Barcha', 'Barcelona', 'Rafael Torres'),
(4, 'Ubers', 'Turin', 'Lorenzo Moretti');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_gameresults`
-- (See below for the actual view)
--
CREATE TABLE `vw_gameresults` (
`GameID` int(11)
,`GameDate` date
,`GameTime` time
,`Location` varchar(100)
,`HomeTeam` varchar(50)
,`VisitorTeam` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_teamrosters`
-- (See below for the actual view)
--
CREATE TABLE `vw_teamrosters` (
`TeamName` varchar(50)
,`City` varchar(50)
,`ManagerName` varchar(100)
,`CoachFullName` varchar(100)
,`CoachContact` varchar(50)
,`PlayerFullname` varchar(100)
,`DateOfBirth` date
,`PlayerEmail` varchar(100)
,`Playermobile` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_gameresults`
--
DROP TABLE IF EXISTS `vw_gameresults`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_gameresults`  AS  select `g`.`GameID` AS `GameID`,`g`.`GameDate` AS `GameDate`,`g`.`Gametime` AS `GameTime`,`g`.`Location` AS `Location`,`ht`.`Teamname` AS `HomeTeam`,`vt`.`Teamname` AS `VisitorTeam` from ((`games` `g` join `teams` `ht` on((`g`.`HomeTeamID` = `ht`.`TeamID`))) join `teams` `vt` on((`g`.`VisitorTeamID` = `vt`.`TeamID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_teamrosters`
--
DROP TABLE IF EXISTS `vw_teamrosters`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_teamrosters`  AS  select `t`.`Teamname` AS `TeamName`,`t`.`City` AS `City`,`t`.`ManagerName` AS `ManagerName`,`c`.`CoachFullName` AS `CoachFullName`,`c`.`ContactInfo` AS `CoachContact`,`p`.`PlayerFullname` AS `PlayerFullname`,`p`.`DateOfBirth` AS `DateOfBirth`,`p`.`Email` AS `PlayerEmail`,`p`.`MobileNumber` AS `Playermobile` from ((`teams` `t` join `players` `p` on((`t`.`TeamID` = `p`.`TeamID`))) join `coaches` `c` on((`t`.`TeamID` = `c`.`TeamID`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`CoachID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `HomeTeamID` (`HomeTeamID`),
  ADD KEY `VisitorTeamID` (`VisitorTeamID`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`PlayerID`),
  ADD KEY `TeamID` (`TeamID`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`TeamID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coaches`
--
ALTER TABLE `coaches`
  ADD CONSTRAINT `coaches_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `teams` (`TeamID`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`HomeTeamID`) REFERENCES `teams` (`TeamID`),
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`VisitorTeamID`) REFERENCES `teams` (`TeamID`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`TeamID`) REFERENCES `teams` (`TeamID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
