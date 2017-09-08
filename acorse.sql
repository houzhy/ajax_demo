-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-09-08 16:29:51
-- 服务器版本： 5.5.27-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mianshi`
--

-- --------------------------------------------------------

--
-- 表的结构 `acorse`
--

CREATE TABLE `acorse` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'ID',
  `rank` char(4) NOT NULL COMMENT '等级',
  `min_score` int(11) NOT NULL COMMENT '最小积分',
  `max_score` int(11) NOT NULL COMMENT '最大积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `acorse`
--

INSERT INTO `acorse` (`id`, `rank`, `min_score`, `max_score`) VALUES
(1, 'L1', 1, 50),
(2, 'L2', 51, 100),
(3, 'L3', 101, 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acorse`
--
ALTER TABLE `acorse`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `acorse`
--
ALTER TABLE `acorse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
