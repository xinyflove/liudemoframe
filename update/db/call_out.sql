SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE IF NOT EXISTS `call_out` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `call_out`;

CREATE TABLE `call_log` (
  `id` int(11) NOT NULL,
  `time_c` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time_e` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time_n` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_str` varchar(16) NOT NULL,
  `status_last` int(11) NOT NULL DEFAULT '0',
  `status_last_str` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `out_list` (
  `id` int(11) NOT NULL,
  `num_str` varchar(16) NOT NULL,
  `i_type` int(11) NOT NULL DEFAULT '0',
  `num_fee` int(11) NOT NULL,
  `pay_day` int(11) NOT NULL DEFAULT '32',
  `time_last` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `time_called` int(11) NOT NULL DEFAULT '0',
  `f_status` int(11) NOT NULL DEFAULT '0',
  `status_last` int(11) NOT NULL DEFAULT '0',
  `status_last_str` varchar(200) NOT NULL DEFAULT '',
  `f_delete` int(11) NOT NULL DEFAULT '0',
  `f_going` int(11) NOT NULL DEFAULT '0',
  `f_month` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `call_log`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `out_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_status` (`f_status`,`f_delete`),
  ADD KEY `time_called` (`time_called`),
  ADD KEY `f_going` (`f_going`);


ALTER TABLE `call_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE `out_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
