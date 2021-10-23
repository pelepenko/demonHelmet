-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 03:51 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `password` char(40) NOT NULL,
  `secret` char(16) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1,
  `premdays` int(11) NOT NULL DEFAULT 0,
  `coins` int(12) NOT NULL DEFAULT 0,
  `lastday` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `proxy_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL DEFAULT '',
  `creation` bigint(20) NOT NULL DEFAULT 0,
  `recruiter` int(6) DEFAULT 0,
  `vote` int(11) NOT NULL DEFAULT 0,
  `key` varchar(20) NOT NULL DEFAULT '0',
  `email_new` varchar(255) NOT NULL DEFAULT '',
  `email_new_time` int(11) NOT NULL DEFAULT 0,
  `rlname` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(255) NOT NULL DEFAULT '',
  `page_access` int(11) NOT NULL DEFAULT 0,
  `email_code` varchar(255) NOT NULL DEFAULT '',
  `next_email` int(11) NOT NULL DEFAULT 0,
  `premium_points` int(11) NOT NULL DEFAULT 0,
  `create_date` bigint(20) NOT NULL DEFAULT 0,
  `create_ip` bigint(20) NOT NULL DEFAULT 0,
  `last_post` int(11) NOT NULL DEFAULT 0,
  `flag` varchar(80) NOT NULL DEFAULT '',
  `vip_time` int(11) NOT NULL DEFAULT 0,
  `guild_points` int(11) NOT NULL DEFAULT 0,
  `guild_points_stats` int(11) NOT NULL DEFAULT 0,
  `passed` int(11) NOT NULL DEFAULT 0,
  `block` int(11) NOT NULL DEFAULT 0,
  `refresh` int(11) NOT NULL DEFAULT 0,
  `birth_date` varchar(50) NOT NULL DEFAULT '',
  `gender` varchar(20) NOT NULL DEFAULT '',
  `loyalty_points` bigint(20) NOT NULL DEFAULT 0,
  `authToken` varchar(100) NOT NULL DEFAULT '',
  `player_sell_bank` int(11) DEFAULT 0,
  `secret_status` tinyint(1) NOT NULL DEFAULT 0,
  `tournamentBalance` int(11) NOT NULL DEFAULT 0,
  `bonus_reroll` int(11) NOT NULL DEFAULT 0,
  `autoloot` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `password`, `secret`, `type`, `premdays`, `coins`, `lastday`, `proxy_id`, `email`, `creation`, `recruiter`, `vote`, `key`, `email_new`, `email_new_time`, `rlname`, `location`, `page_access`, `email_code`, `next_email`, `premium_points`, `create_date`, `create_ip`, `last_post`, `flag`, `vip_time`, `guild_points`, `guild_points_stats`, `passed`, `block`, `refresh`, `birth_date`, `gender`, `loyalty_points`, `authToken`, `player_sell_bank`, `secret_status`, `tournamentBalance`, `bonus_reroll`, `autoloot`) VALUES
(1, 'sdsd', '298df8a3277330b535cfd', '', 5, 0, 0, 0, 0, '@goddsd', 1592969263, 0, 0, '', '', 0, 'Teste', 'Teste', 0, '', 0, 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '0/0/0', 'male', 0, '', 6, 0, 0, 0, 0),
(6, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '', 5, 0, 10000, 1629536222, 0, '@admin', 1621454917, 0, 0, 'zzz', '', 0, 'Administrador', 'Thais', 666, '', 0, 0, 0, 0, 0, 'unknown', 0, 0, 0, 0, 0, 0, '0/0/0', 'male', 0, '', 13, 0, 10000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_storage`
--

CREATE TABLE `accounts_storage` (
  `account_id` int(11) NOT NULL DEFAULT 0,
  `key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_bans`
--

CREATE TABLE `account_bans` (
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_ban_history`
--

CREATE TABLE `account_ban_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expired_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_character_sale`
--

CREATE TABLE `account_character_sale` (
  `id` int(11) NOT NULL,
  `id_account` int(11) NOT NULL,
  `id_player` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `price_type` tinyint(4) NOT NULL,
  `price_coins` int(11) DEFAULT NULL,
  `price_gold` int(11) DEFAULT NULL,
  `dta_insert` datetime NOT NULL,
  `dta_valid` datetime NOT NULL,
  `dta_sale` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_viplist`
--

CREATE TABLE `account_viplist` (
  `account_id` int(11) NOT NULL COMMENT 'id of account whose viplist entry it is',
  `player_id` int(11) NOT NULL COMMENT 'id of target player of viplist entry',
  `description` varchar(128) NOT NULL DEFAULT '',
  `icon` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `notify` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL,
  `author` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blessings_history`
--

CREATE TABLE `blessings_history` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `blessing` tinyint(4) NOT NULL,
  `loss` tinyint(1) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `boosted_creature`
--

CREATE TABLE `boosted_creature` (
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `lookmount` int(11) DEFAULT 0,
  `date` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT '',
  `boostname` text COLLATE utf8_bin DEFAULT NULL,
  `raceid` varchar(250) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `city_war`
--

CREATE TABLE `city_war` (
  `id` int(11) NOT NULL,
  `GuildName_A` varchar(255) NOT NULL,
  `GuildFrags_A` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `GuildName_B` varchar(255) NOT NULL,
  `GuildFrags_B` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `War_Time` int(11) NOT NULL DEFAULT 0,
  `War_Map` varchar(255) NOT NULL,
  `War_Mode` int(11) NOT NULL DEFAULT 0,
  `War_PlayersLimit` int(11) NOT NULL DEFAULT 0,
  `War_Status` int(11) NOT NULL DEFAULT 0,
  `War_DateEnd` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coins_transactions`
--

CREATE TABLE `coins_transactions` (
  `id` int(11) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `amount` int(12) UNSIGNED NOT NULL,
  `description` varchar(3500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `daily_reward_history`
--

CREATE TABLE `daily_reward_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `daystreak` smallint(2) NOT NULL DEFAULT 0,
  `player_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `free_pass`
--

CREATE TABLE `free_pass` (
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_storage`
--

CREATE TABLE `global_storage` (
  `key` varchar(32) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guilds`
--

CREATE TABLE `guilds` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `creationdata` bigint(20) NOT NULL,
  `motd` varchar(255) NOT NULL DEFAULT '',
  `residence` int(11) NOT NULL,
  `description` text NOT NULL,
  `guild_logo` mediumblob DEFAULT NULL,
  `create_ip` bigint(20) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `last_execute_points` bigint(20) NOT NULL DEFAULT 0,
  `logo_gfx_name` varchar(255) NOT NULL DEFAULT '',
  `level` int(11) DEFAULT 1,
  `points` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `guilds`
--
DELIMITER $$
CREATE TRIGGER `oncreate_guilds` AFTER INSERT ON `guilds` FOR EACH ROW BEGIN
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('The Leader', 3, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Vice-Leader', 2, NEW.`id`);
    INSERT INTO `guild_ranks` (`name`, `level`, `guild_id`) VALUES ('Member', 1, NEW.`id`);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `guildwar_kills`
--

CREATE TABLE `guildwar_kills` (
  `id` int(11) NOT NULL,
  `killer` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `killerguild` int(11) NOT NULL DEFAULT 0,
  `targetguild` int(11) NOT NULL DEFAULT 0,
  `warid` int(11) NOT NULL DEFAULT 0,
  `time` bigint(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_actions_h`
--

CREATE TABLE `guild_actions_h` (
  `id` int(6) UNSIGNED NOT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `player_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  `type` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_invites`
--

CREATE TABLE `guild_invites` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `guild_id` int(11) NOT NULL DEFAULT 0,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_membership`
--

CREATE TABLE `guild_membership` (
  `player_id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `nick` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_ranks`
--

CREATE TABLE `guild_ranks` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) NOT NULL COMMENT 'guild',
  `name` varchar(255) NOT NULL COMMENT 'rank name',
  `level` int(11) NOT NULL COMMENT 'rank level - leader, vice, member, maybe something else'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_transfer_h`
--

CREATE TABLE `guild_transfer_h` (
  `id` int(6) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `from_guild_id` int(6) NOT NULL,
  `to_guild_id` int(6) NOT NULL,
  `value` int(11) NOT NULL,
  `date` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guild_wars`
--

CREATE TABLE `guild_wars` (
  `id` int(11) NOT NULL,
  `guild1` int(11) NOT NULL DEFAULT 0,
  `guild2` int(11) NOT NULL DEFAULT 0,
  `name1` varchar(255) NOT NULL,
  `name2` varchar(255) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT 0,
  `started` bigint(15) NOT NULL DEFAULT 0,
  `ended` bigint(15) NOT NULL DEFAULT 0,
  `frags_limit` int(10) DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `paid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `warnings` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `rent` int(11) NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 0,
  `bid` int(11) NOT NULL DEFAULT 0,
  `bid_end` int(11) NOT NULL DEFAULT 0,
  `last_bid` int(11) NOT NULL DEFAULT 0,
  `highest_bidder` int(11) NOT NULL DEFAULT 0,
  `size` int(11) NOT NULL DEFAULT 0,
  `guildid` int(11) DEFAULT NULL,
  `beds` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`) VALUES
(2628, 0, 1624429868, 0, 'Castle of the Winds', 500000, 5, 0, 0, 0, 0, 863, NULL, 36),
(2629, 0, 1620538346, 0, 'Ab\'Dendriel Clanhall', 250000, 5, 0, 0, 0, 0, 456, NULL, 20),
(2630, 0, 1620538346, 0, 'Underwood 9', 50000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2631, 0, 1620538346, 0, 'Treetop 13', 100000, 5, 0, 0, 0, 0, 45, NULL, 4),
(2632, 0, 1620538346, 0, 'Underwood 8', 50000, 5, 0, 0, 0, 0, 33, NULL, 4),
(2633, 0, 1620538346, 0, 'Treetop 11', 50000, 5, 0, 0, 0, 0, 34, NULL, 4),
(2635, 0, 1620538346, 0, 'Great Willow 2a', 50000, 5, 0, 0, 0, 0, 34, NULL, 2),
(2637, 0, 1620538346, 0, 'Great Willow 2b', 50000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2638, 0, 1620538346, 0, 'Great Willow Western Wing', 100000, 5, 0, 0, 0, 0, 90, NULL, 10),
(2640, 0, 1620538346, 0, 'Great Willow 1', 100000, 5, 0, 0, 0, 0, 55, NULL, 4),
(2642, 0, 1620538346, 0, 'Great Willow 3a', 50000, 5, 0, 0, 0, 0, 33, NULL, 2),
(2644, 0, 1620538346, 0, 'Great Willow 3b', 80000, 5, 0, 0, 0, 0, 52, NULL, 4),
(2645, 0, 1620538346, 0, 'Great Willow 4a', 25000, 5, 0, 0, 0, 0, 27, NULL, 4),
(2648, 0, 1620538346, 0, 'Great Willow 4b', 25000, 5, 0, 0, 0, 0, 31, NULL, 4),
(2649, 0, 1620538346, 0, 'Underwood 6', 100000, 5, 0, 0, 0, 0, 55, NULL, 6),
(2650, 0, 1620538346, 0, 'Underwood 3', 100000, 5, 0, 0, 0, 0, 56, NULL, 6),
(2651, 0, 1620538346, 0, 'Underwood 5', 80000, 5, 0, 0, 0, 0, 49, NULL, 6),
(2652, 0, 1620538346, 0, 'Underwood 2', 100000, 5, 0, 0, 0, 0, 53, NULL, 4),
(2653, 0, 1620538346, 0, 'Underwood 1', 100000, 5, 0, 0, 0, 0, 54, NULL, 4),
(2654, 0, 1620538346, 0, 'Prima Arbor', 400000, 5, 0, 0, 0, 0, 316, NULL, 6),
(2655, 0, 1620538346, 0, 'Underwood 7', 200000, 5, 0, 0, 0, 0, 52, NULL, 4),
(2656, 0, 1620538346, 0, 'Underwood 10', 25000, 5, 0, 0, 0, 0, 30, NULL, 2),
(2657, 0, 1620538346, 0, 'Underwood 4', 100000, 5, 0, 0, 0, 0, 72, NULL, 8),
(2658, 0, 1620538346, 0, 'Treetop 9', 50000, 5, 0, 0, 0, 0, 35, NULL, 4),
(2659, 0, 1620538346, 0, 'Treetop 10', 80000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2660, 0, 1620538346, 0, 'Treetop 8', 25000, 5, 0, 0, 0, 0, 35, NULL, 2),
(2661, 0, 1620538346, 0, 'Treetop 7', 50000, 5, 0, 0, 0, 0, 28, NULL, 2),
(2662, 0, 1620538346, 0, 'Treetop 6', 25000, 5, 0, 0, 0, 0, 24, NULL, 2),
(2663, 0, 1620538346, 0, 'Treetop 5 (Shop)', 80000, 5, 0, 0, 0, 0, 54, NULL, 2),
(2664, 0, 1620538346, 0, 'Treetop 12 (Shop)', 100000, 5, 0, 0, 0, 0, 56, NULL, 2),
(2665, 0, 1620538346, 0, 'Treetop 4 (Shop)', 80000, 5, 0, 0, 0, 0, 48, NULL, 2),
(2666, 0, 1620538346, 0, 'Treetop 3 (Shop)', 80000, 5, 0, 0, 0, 0, 60, NULL, 2),
(2687, 0, 1620538346, 0, 'Northern Street 1a', 100000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2688, 0, 1620538346, 0, 'Park Lane 3a', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2689, 0, 1620538346, 0, 'Park Lane 1a', 150000, 6, 0, 0, 0, 0, 53, NULL, 4),
(2690, 0, 1620538346, 0, 'Park Lane 4', 150000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2691, 0, 1620538346, 0, 'Park Lane 2', 150000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2692, 0, 1620538346, 0, 'Theater Avenue 7, Flat 04', 50000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2693, 0, 1620538346, 0, 'Theater Avenue 7, Flat 03', 25000, 6, 0, 0, 0, 0, 19, NULL, 2),
(2694, 0, 1620538346, 0, 'Theater Avenue 7, Flat 05', 50000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2695, 0, 1620538346, 0, 'Theater Avenue 7, Flat 06', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2696, 29, 1631854070, 0, 'Theater Avenue 7, Flat 02', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2697, 0, 1620538346, 0, 'Theater Avenue 7, Flat 01', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2698, 0, 1620538346, 0, 'Northern Street 5', 200000, 6, 0, 0, 0, 0, 68, NULL, 4),
(2699, 0, 1620538346, 0, 'Northern Street 7', 150000, 6, 0, 0, 0, 0, 59, NULL, 4),
(2700, 0, 1620538346, 0, 'Theater Avenue 6e', 80000, 6, 0, 0, 0, 0, 31, NULL, 4),
(2701, 0, 1620538346, 0, 'Theater Avenue 6c', 25000, 6, 0, 0, 0, 0, 12, NULL, 2),
(2702, 0, 1620538346, 0, 'Theater Avenue 6a', 80000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2703, 0, 1620538346, 0, 'Theater Avenue, Tower', 300000, 6, 0, 0, 0, 0, 125, NULL, 0),
(2705, 0, 1620538346, 0, 'East Lane 2', 300000, 6, 0, 0, 0, 0, 111, NULL, 4),
(2706, 0, 1620538346, 0, 'Harbour Lane 2a (Shop)', 80000, 6, 0, 0, 0, 0, 32, NULL, 0),
(2707, 0, 1620538346, 0, 'Harbour Lane 2b (Shop)', 80000, 6, 0, 0, 0, 0, 40, NULL, 0),
(2708, 0, 1625890619, 0, 'Harbour Lane 3', 400000, 6, 0, 0, 0, 0, 113, NULL, 6),
(2709, 0, 1620538346, 0, 'Magician\'s Alley 8', 150000, 6, 0, 0, 0, 0, 49, NULL, 4),
(2710, 0, 1620538346, 0, 'Lonely Sea Side Hostel', 400000, 6, 0, 0, 0, 0, 397, NULL, 16),
(2711, 0, 1620538346, 0, 'Suntower', 500000, 6, 0, 0, 0, 0, 451, NULL, 14),
(2712, 0, 1620538346, 0, 'House of Recreation', 500000, 6, 0, 0, 0, 0, 687, NULL, 32),
(2713, 0, 1620538346, 0, 'Carlin Clanhall', 250000, 6, 0, 0, 0, 0, 374, NULL, 20),
(2714, 0, 1620538346, 0, 'Magician\'s Alley 4', 200000, 6, 0, 0, 0, 0, 96, NULL, 8),
(2715, 0, 1620538346, 0, 'Theater Avenue 14 (Shop)', 200000, 6, 0, 0, 0, 0, 83, NULL, 2),
(2716, 0, 1620538346, 0, 'Theater Avenue 12', 80000, 6, 0, 0, 0, 0, 28, NULL, 4),
(2717, 0, 1620538346, 0, 'Magician\'s Alley 1', 100000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2718, 0, 1620538346, 0, 'Theater Avenue 10', 100000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2719, 0, 1620538346, 0, 'Magician\'s Alley 1b', 25000, 6, 0, 0, 0, 0, 24, NULL, 4),
(2720, 0, 1620538346, 0, 'Magician\'s Alley 1a', 25000, 6, 0, 0, 0, 0, 28, NULL, 4),
(2721, 0, 1620538346, 0, 'Magician\'s Alley 1c', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2722, 0, 1620538346, 0, 'Magician\'s Alley 1d', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2723, 0, 1620538346, 0, 'Magician\'s Alley 5c', 100000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2724, 0, 1620538346, 0, 'Magician\'s Alley 5f', 80000, 6, 0, 0, 0, 0, 42, NULL, 4),
(2725, 0, 1620538346, 0, 'Magician\'s Alley 5b', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2727, 0, 1620538346, 0, 'Magician\'s Alley 5a', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2729, 0, 1620538346, 0, 'Central Plaza 3 (Shop)', 50000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2730, 0, 1620538346, 0, 'Central Plaza 2 (Shop)', 25000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2731, 0, 1620538346, 0, 'Central Plaza 1 (Shop)', 50000, 6, 0, 0, 0, 0, 24, NULL, 0),
(2732, 0, 1620538346, 0, 'Theater Avenue 8b', 100000, 6, 0, 0, 0, 0, 49, NULL, 4),
(2733, 0, 1620538346, 0, 'Harbour Lane 1 (Shop)', 100000, 6, 0, 0, 0, 0, 54, NULL, 0),
(2734, 0, 1620538346, 0, 'Theater Avenue 6f', 80000, 6, 0, 0, 0, 0, 31, NULL, 4),
(2735, 0, 1620538346, 0, 'Theater Avenue 6d', 25000, 6, 0, 0, 0, 0, 12, NULL, 2),
(2736, 0, 1620538346, 0, 'Theater Avenue 6b', 50000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2737, 0, 1620538346, 0, 'Northern Street 3a', 80000, 6, 0, 0, 0, 0, 34, NULL, 4),
(2738, 0, 1620538346, 0, 'Northern Street 3b', 80000, 6, 0, 0, 0, 0, 36, NULL, 4),
(2739, 0, 1620538346, 0, 'Northern Street 1b', 80000, 6, 0, 0, 0, 0, 37, NULL, 4),
(2740, 0, 1620538346, 0, 'Northern Street 1c', 80000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2741, 0, 1620538346, 0, 'Theater Avenue 7, Flat 14', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2742, 0, 1620538346, 0, 'Theater Avenue 7, Flat 13', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2743, 0, 1620538346, 0, 'Theater Avenue 7, Flat 15', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2744, 0, 1620538346, 0, 'Theater Avenue 7, Flat 12', 25000, 6, 0, 0, 0, 0, 20, NULL, 2),
(2745, 0, 1620538346, 0, 'Theater Avenue 7, Flat 11', 50000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2746, 0, 1620538346, 0, 'Theater Avenue 7, Flat 16', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2747, 0, 1620538346, 0, 'Theater Avenue 5', 200000, 6, 0, 0, 0, 0, 165, NULL, 6),
(2751, 0, 1620538346, 0, 'Harbour Flats, Flat 11', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2752, 0, 1620538346, 0, 'Harbour Flats, Flat 13', 25000, 6, 0, 0, 0, 0, 24, NULL, 2),
(2753, 0, 1620538346, 0, 'Harbour Flats, Flat 15', 50000, 6, 0, 0, 0, 0, 38, NULL, 4),
(2755, 0, 1620538346, 0, 'Harbour Flats, Flat 12', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2757, 0, 1620538346, 0, 'Harbour Flats, Flat 16', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2759, 0, 1620538346, 0, 'Harbour Flats, Flat 21', 50000, 6, 0, 0, 0, 0, 35, NULL, 4),
(2760, 0, 1620538346, 0, 'Harbour Flats, Flat 22', 80000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2761, 0, 1620538346, 0, 'Harbour Flats, Flat 23', 25000, 6, 0, 0, 0, 0, 25, NULL, 2),
(2763, 0, 1620538346, 0, 'Park Lane 1b', 200000, 6, 0, 0, 0, 0, 54, NULL, 4),
(2764, 0, 1620538346, 0, 'Theater Avenue 8a', 100000, 6, 0, 0, 0, 0, 49, NULL, 6),
(2765, 0, 1620538346, 0, 'Theater Avenue 11a', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2767, 0, 1620538346, 0, 'Theater Avenue 11b', 100000, 6, 0, 0, 0, 0, 54, NULL, 4),
(2768, 0, 1620538346, 0, 'Caretaker\'s Residence', 600000, 6, 0, 0, 0, 0, 423, NULL, 0),
(2769, 0, 1620538346, 0, 'Moonkeep', 250000, 6, 0, 0, 0, 0, 518, NULL, 32),
(2770, 0, 1620538346, 0, 'Mangrove 1', 80000, 5, 0, 0, 0, 0, 56, NULL, 6),
(2771, 0, 1620538346, 0, 'Coastwood 2', 50000, 5, 0, 0, 0, 0, 28, NULL, 4),
(2772, 0, 1620538346, 0, 'Coastwood 1', 50000, 5, 0, 0, 0, 0, 35, NULL, 4),
(2773, 0, 1620538346, 0, 'Coastwood 3', 50000, 5, 0, 0, 0, 0, 37, NULL, 4),
(2774, 0, 1620538346, 0, 'Coastwood 4', 50000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2775, 0, 1620538346, 0, 'Mangrove 4', 50000, 5, 0, 0, 0, 0, 36, NULL, 4),
(2776, 0, 1620538346, 0, 'Coastwood 10', 80000, 5, 0, 0, 0, 0, 49, NULL, 6),
(2777, 0, 1620538346, 0, 'Coastwood 5', 50000, 5, 0, 0, 0, 0, 49, NULL, 4),
(2778, 0, 1620538346, 0, 'Coastwood 6 (Shop)', 80000, 5, 0, 0, 0, 0, 48, NULL, 2),
(2779, 0, 1620538346, 0, 'Coastwood 7', 25000, 5, 0, 0, 0, 0, 29, NULL, 2),
(2780, 0, 1620538346, 0, 'Coastwood 8', 50000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2781, 0, 1620538346, 0, 'Coastwood 9', 50000, 5, 0, 0, 0, 0, 36, NULL, 2),
(2782, 0, 1620538346, 0, 'Treetop 2', 25000, 5, 0, 0, 0, 0, 24, NULL, 2),
(2783, 0, 1620538346, 0, 'Treetop 1', 25000, 5, 0, 0, 0, 0, 30, NULL, 2),
(2784, 0, 1620538346, 0, 'Mangrove 3', 80000, 5, 0, 0, 0, 0, 42, NULL, 4),
(2785, 0, 1620538346, 0, 'Mangrove 2', 50000, 5, 0, 0, 0, 0, 48, NULL, 4),
(2786, 0, 1620538346, 0, 'The Hideout', 250000, 5, 0, 0, 0, 0, 584, NULL, 40),
(2787, 0, 1620538346, 0, 'Shadow Towers', 250000, 5, 0, 0, 0, 0, 708, NULL, 36),
(2788, 0, 1620538346, 0, 'Druids Retreat A', 50000, 6, 0, 0, 0, 0, 60, NULL, 4),
(2789, 0, 1620538346, 0, 'Druids Retreat C', 50000, 6, 0, 0, 0, 0, 45, NULL, 4),
(2790, 0, 1620538346, 0, 'Druids Retreat B', 50000, 6, 0, 0, 0, 0, 56, NULL, 4),
(2791, 0, 1620538346, 0, 'Druids Retreat D', 80000, 6, 0, 0, 0, 0, 51, NULL, 4),
(2792, 0, 1620538346, 0, 'East Lane 1b', 150000, 6, 0, 0, 0, 0, 53, NULL, 4),
(2793, 0, 1620538346, 0, 'East Lane 1a', 200000, 6, 0, 0, 0, 0, 87, NULL, 4),
(2794, 0, 1620538346, 0, 'Senja Village 11', 80000, 6, 0, 0, 0, 0, 92, NULL, 4),
(2795, 0, 1620538346, 0, 'Senja Village 10', 50000, 6, 0, 0, 0, 0, 72, NULL, 2),
(2796, 0, 1620538346, 0, 'Senja Village 9', 80000, 6, 0, 0, 0, 0, 112, NULL, 4),
(2797, 0, 1620538346, 0, 'Senja Village 8', 50000, 6, 0, 0, 0, 0, 72, NULL, 4),
(2798, 0, 1620538346, 0, 'Senja Village 7', 25000, 6, 0, 0, 0, 0, 36, NULL, 4),
(2799, 0, 1620538346, 0, 'Senja Village 6b', 25000, 6, 0, 0, 0, 0, 30, NULL, 2),
(2800, 0, 1620538346, 0, 'Senja Village 6a', 50000, 6, 0, 0, 0, 0, 30, NULL, 2),
(2801, 0, 1620538346, 0, 'Senja Village 5', 50000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2802, 0, 1620538346, 0, 'Senja Village 4', 50000, 6, 0, 0, 0, 0, 66, NULL, 4),
(2803, 0, 1620538346, 0, 'Senja Village 3', 50000, 6, 0, 0, 0, 0, 72, NULL, 4),
(2804, 0, 1620538346, 0, 'Senja Village 1b', 50000, 6, 0, 0, 0, 0, 66, NULL, 4),
(2805, 0, 1620538346, 0, 'Senja Village 1a', 25000, 6, 0, 0, 0, 0, 36, NULL, 2),
(2806, 0, 1620538346, 0, 'Rosebud C', 100000, 6, 0, 0, 0, 0, 70, NULL, 0),
(2807, 0, 1620538346, 0, 'Rosebud B', 80000, 6, 0, 0, 0, 0, 60, NULL, 2),
(2808, 0, 1620538346, 0, 'Rosebud A', 50000, 6, 0, 0, 0, 0, 60, NULL, 2),
(2809, 0, 1620538346, 0, 'Park Lane 3b', 100000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2810, 0, 1620538346, 0, 'Northport Village 6', 80000, 6, 0, 0, 0, 0, 64, NULL, 4),
(2811, 0, 1620538346, 0, 'Northport Village 5', 80000, 6, 0, 0, 0, 0, 56, NULL, 4),
(2812, 0, 1620538346, 0, 'Northport Village 4', 100000, 6, 0, 0, 0, 0, 92, NULL, 4),
(2813, 0, 1620538346, 0, 'Northport Village 3', 150000, 6, 0, 0, 0, 0, 119, NULL, 4),
(2814, 0, 1620538346, 0, 'Northport Village 2', 50000, 6, 0, 0, 0, 0, 40, NULL, 4),
(2815, 0, 1620538346, 0, 'Northport Village 1', 50000, 6, 0, 0, 0, 0, 48, NULL, 4),
(2816, 0, 1620538346, 0, 'Nautic Observer', 200000, 6, 0, 0, 0, 0, 226, NULL, 8),
(2817, 0, 1620538346, 0, 'Nordic Stronghold', 250000, 6, 0, 0, 0, 0, 809, NULL, 42),
(2818, 0, 1620538346, 0, 'Senja Clanhall', 250000, 6, 0, 0, 0, 0, 396, NULL, 18),
(2819, 0, 1620538346, 0, 'Seawatch', 250000, 6, 0, 0, 0, 0, 749, NULL, 38),
(2820, 0, 1620538346, 0, 'Dwarven Magnate\'s Estate', 300000, 7, 0, 0, 0, 0, 395, NULL, 0),
(2821, 0, 1620538346, 0, 'Forge Master\'s Quarters', 300000, 7, 0, 0, 0, 0, 117, NULL, 0),
(2822, 0, 1620538346, 0, 'Upper Barracks 13', 25000, 7, 0, 0, 0, 0, 24, NULL, 4),
(2823, 0, 1620538346, 0, 'Upper Barracks 5', 80000, 7, 0, 0, 0, 0, 50, NULL, 6),
(2824, 0, 1620538346, 0, 'Upper Barracks 3', 80000, 7, 0, 0, 0, 0, 24, NULL, 4),
(2825, 0, 1620538346, 0, 'Upper Barracks 4', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2826, 0, 1620538346, 0, 'Upper Barracks 2', 80000, 7, 0, 0, 0, 0, 50, NULL, 6),
(2827, 0, 1620538346, 0, 'Upper Barracks 1', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2828, 0, 1620538346, 0, 'Tunnel Gardens 9', 150000, 7, 0, 0, 0, 0, 145, NULL, 14),
(2829, 0, 1620538346, 0, 'Tunnel Gardens 8', 25000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2830, 0, 1620538346, 0, 'Tunnel Gardens 7', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2831, 0, 1620538346, 0, 'Tunnel Gardens 6', 25000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2832, 0, 1620538346, 0, 'Tunnel Gardens 5', 25000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2835, 0, 1620538346, 0, 'Tunnel Gardens 4', 80000, 7, 0, 0, 0, 0, 58, NULL, 6),
(2836, 0, 1620538346, 0, 'Tunnel Gardens 2', 80000, 7, 0, 0, 0, 0, 54, NULL, 6),
(2837, 0, 1620538346, 0, 'Tunnel Gardens 1', 80000, 7, 0, 0, 0, 0, 47, NULL, 6),
(2838, 0, 1620538346, 0, 'Tunnel Gardens 3', 80000, 7, 0, 0, 0, 0, 65, NULL, 6),
(2839, 0, 1620538346, 0, 'The Market 4 (Shop)', 80000, 7, 0, 0, 0, 0, 63, NULL, 2),
(2840, 0, 1620538346, 0, 'The Market 3 (Shop)', 80000, 7, 0, 0, 0, 0, 54, NULL, 2),
(2841, 0, 1620538346, 0, 'The Market 2 (Shop)', 50000, 7, 0, 0, 0, 0, 45, NULL, 2),
(2842, 0, 1620538346, 0, 'The Market 1 (Shop)', 25000, 7, 0, 0, 0, 0, 25, NULL, 2),
(2843, 0, 1620538346, 0, 'The Farms 6, Fishing Hut', 50000, 7, 0, 0, 0, 0, 42, NULL, 4),
(2844, 0, 1620538346, 0, 'The Farms 5', 50000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2845, 0, 1620538346, 0, 'The Farms 4', 25000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2846, 0, 1620538346, 0, 'The Farms 3', 80000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2847, 0, 1620538346, 0, 'The Farms 2', 50000, 7, 0, 0, 0, 0, 49, NULL, 4),
(2849, 0, 1620538346, 0, 'The Farms 1', 80000, 7, 0, 0, 0, 0, 78, NULL, 6),
(2850, 0, 1620538346, 0, 'Outlaw Camp 14 (Shop)', 25000, 7, 0, 0, 0, 0, 35, NULL, 0),
(2852, 0, 1620538346, 0, 'Outlaw Camp 13 (Shop)', 50000, 7, 0, 0, 0, 0, 40, NULL, 0),
(2853, 0, 1620538346, 0, 'Outlaw Camp 9', 80000, 7, 0, 0, 0, 0, 40, NULL, 4),
(2854, 0, 1620538346, 0, 'Outlaw Camp 7', 25000, 7, 0, 0, 0, 0, 38, NULL, 4),
(2855, 0, 1620538346, 0, 'Outlaw Camp 4', 50000, 7, 0, 0, 0, 0, 40, NULL, 2),
(2856, 0, 1620538346, 0, 'Outlaw Camp 2', 50000, 7, 0, 0, 0, 0, 40, NULL, 2),
(2857, 0, 1620538346, 0, 'Outlaw Camp 3', 50000, 7, 0, 0, 0, 0, 35, NULL, 4),
(2858, 0, 1620538346, 0, 'Outlaw Camp 1', 80000, 7, 0, 0, 0, 0, 54, NULL, 4),
(2859, 0, 1620538346, 0, 'Nobility Quarter 5', 100000, 7, 0, 0, 0, 0, 143, NULL, 8),
(2860, 0, 1620538346, 0, 'Nobility Quarter 4', 50000, 7, 0, 0, 0, 0, 66, NULL, 4),
(2861, 0, 1620538346, 0, 'Nobility Quarter 3', 80000, 7, 0, 0, 0, 0, 56, NULL, 6),
(2862, 0, 1620538346, 0, 'Nobility Quarter 2', 50000, 7, 0, 0, 0, 0, 61, NULL, 6),
(2863, 0, 1620538346, 0, 'Nobility Quarter 1', 80000, 7, 0, 0, 0, 0, 64, NULL, 6),
(2864, 0, 1620538346, 0, 'Lower Barracks 10', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2865, 0, 1620538346, 0, 'Lower Barracks 9', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2866, 0, 1620538346, 0, 'Lower Barracks 8', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2867, 0, 1620538346, 0, 'Lower Barracks 1', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2868, 0, 1620538346, 0, 'Lower Barracks 2', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2869, 0, 1620538346, 0, 'Lower Barracks 3', 80000, 7, 0, 0, 0, 0, 50, NULL, 4),
(2870, 0, 1620538346, 0, 'Lower Barracks 4', 50000, 7, 0, 0, 0, 0, 50, NULL, 2),
(2871, 0, 1620538346, 0, 'Lower Barracks 5', 100000, 7, 0, 0, 0, 0, 100, NULL, 2),
(2872, 0, 1620538346, 0, 'Lower Barracks 6', 100000, 7, 0, 0, 0, 0, 100, NULL, 4),
(2873, 0, 1620538346, 0, 'Lower Barracks 7', 80000, 7, 0, 0, 0, 0, 50, NULL, 2),
(2874, 0, 1620538346, 0, 'Wolftower', 500000, 7, 0, 0, 0, 0, 680, NULL, 46),
(2875, 0, 1620538346, 0, 'Riverspring', 250000, 7, 0, 0, 0, 0, 632, NULL, 36),
(2876, 0, 1620538346, 0, 'Outlaw Castle', 250000, 7, 0, 0, 0, 0, 356, NULL, 18),
(2877, 0, 1620538346, 0, 'Marble Guildhall', 250000, 7, 0, 0, 0, 0, 612, NULL, 34),
(2878, 0, 1620538346, 0, 'Iron Guildhall', 250000, 7, 0, 0, 0, 0, 534, NULL, 34),
(2879, 0, 1620538346, 0, 'Hill Hideout', 250000, 7, 0, 0, 0, 0, 395, NULL, 30),
(2880, 0, 1620538346, 0, 'Granite Guildhall', 250000, 7, 0, 0, 0, 0, 627, NULL, 34),
(2881, 0, 1620538346, 0, 'Alai Flats, Flat 01', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2882, 0, 1620538346, 0, 'Alai Flats, Flat 02', 50000, 8, 0, 0, 0, 0, 35, NULL, 2),
(2883, 0, 1620538346, 0, 'Alai Flats, Flat 03', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2884, 0, 1620538346, 0, 'Alai Flats, Flat 04', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2885, 0, 1620538346, 0, 'Alai Flats, Flat 05', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2886, 0, 1620538346, 0, 'Alai Flats, Flat 06', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2887, 0, 1620538346, 0, 'Alai Flats, Flat 07', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2888, 0, 1620538346, 0, 'Alai Flats, Flat 08', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2889, 0, 1620538346, 0, 'Alai Flats, Flat 11', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2890, 0, 1620538346, 0, 'Alai Flats, Flat 12', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2891, 0, 1620538346, 0, 'Alai Flats, Flat 13', 50000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2892, 0, 1620538346, 0, 'Alai Flats, Flat 14', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2893, 0, 1620538346, 0, 'Alai Flats, Flat 15', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2894, 0, 1620538346, 0, 'Alai Flats, Flat 16', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2895, 0, 1620538346, 0, 'Alai Flats, Flat 17', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2896, 0, 1620538346, 0, 'Alai Flats, Flat 18', 50000, 8, 0, 0, 0, 0, 38, NULL, 2),
(2897, 0, 1620538346, 0, 'Alai Flats, Flat 21', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2898, 0, 1620538346, 0, 'Alai Flats, Flat 22', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2899, 0, 1620538346, 0, 'Alai Flats, Flat 23', 25000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2900, 0, 1620538346, 0, 'Alai Flats, Flat 28', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2901, 0, 1620538346, 0, 'Alai Flats, Flat 27', 80000, 8, 0, 0, 0, 0, 32, NULL, 2),
(2902, 0, 1620538346, 0, 'Alai Flats, Flat 26', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2903, 0, 1620538346, 0, 'Alai Flats, Flat 25', 100000, 8, 0, 0, 0, 0, 46, NULL, 4),
(2904, 0, 1620538346, 0, 'Alai Flats, Flat 24', 80000, 8, 0, 0, 0, 0, 39, NULL, 2),
(2905, 0, 1620538346, 0, 'Beach Home Apartments, Flat 01', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2906, 0, 1620538346, 0, 'Beach Home Apartments, Flat 02', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2907, 0, 1620538346, 0, 'Beach Home Apartments, Flat 03', 80000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2908, 0, 1620538346, 0, 'Beach Home Apartments, Flat 04', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2909, 0, 1620538346, 0, 'Beach Home Apartments, Flat 05', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2910, 0, 1620538346, 0, 'Beach Home Apartments, Flat 06', 100000, 8, 0, 0, 0, 0, 40, NULL, 4),
(2911, 0, 1620538346, 0, 'Beach Home Apartments, Flat 11', 25000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2912, 0, 1620538346, 0, 'Beach Home Apartments, Flat 12', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2913, 0, 1620538346, 0, 'Beach Home Apartments, Flat 13', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2914, 0, 1620538346, 0, 'Beach Home Apartments, Flat 14', 25000, 8, 0, 0, 0, 0, 15, NULL, 2),
(2915, 0, 1620538346, 0, 'Beach Home Apartments, Flat 15', 25000, 8, 0, 0, 0, 0, 20, NULL, 2),
(2916, 0, 1620538346, 0, 'Beach Home Apartments, Flat 16', 80000, 8, 0, 0, 0, 0, 40, NULL, 4),
(2917, 0, 1620538346, 0, 'Demon Tower', 100000, 8, 0, 0, 0, 0, 150, NULL, 4),
(2918, 139, 1631854070, 0, 'Farm Lane, 1st floor (Shop)', 80000, 8, 0, 0, 0, 0, 36, NULL, 0),
(2919, 0, 1620538346, 0, 'Farm Lane, 2nd Floor (Shop)', 50000, 8, 0, 0, 0, 0, 36, NULL, 0),
(2920, 0, 1620538346, 0, 'Farm Lane, Basement (Shop)', 50000, 8, 0, 0, 0, 0, 42, NULL, 0),
(2921, 0, 1620538346, 0, 'Fibula Village 1', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2922, 0, 1620538346, 0, 'Fibula Village 2', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2923, 0, 1620538346, 0, 'Fibula Village 4', 25000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2924, 0, 1620538346, 0, 'Fibula Village 5', 50000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2925, 0, 1620538346, 0, 'Fibula Village 3', 80000, 8, 0, 0, 0, 0, 110, NULL, 8),
(2926, 0, 1620538346, 0, 'Fibula Village, Tower Flat', 100000, 8, 0, 0, 0, 0, 156, NULL, 4),
(2927, 0, 1620538346, 0, 'Guildhall of the Red Rose', 250000, 8, 0, 0, 0, 0, 597, NULL, 30),
(2928, 0, 1620538346, 0, 'Fibula Village, Bar (Shop)', 100000, 8, 0, 0, 0, 0, 127, NULL, 4),
(2929, 0, 1620538346, 0, 'Fibula Village, Villa', 200000, 8, 0, 0, 0, 0, 397, NULL, 10),
(2930, 0, 1620538346, 0, 'Greenshore Village 1', 80000, 8, 0, 0, 0, 0, 64, NULL, 6),
(2931, 0, 1620538346, 0, 'Greenshore Clanhall', 250000, 8, 0, 0, 0, 0, 312, NULL, 20),
(2932, 0, 1620538346, 0, 'Castle of Greenshore', 250000, 8, 0, 0, 0, 0, 474, NULL, 24),
(2933, 0, 1620538346, 0, 'Greenshore Village, Shop', 80000, 8, 0, 0, 0, 0, 64, NULL, 2),
(2934, 0, 1620538346, 0, 'Greenshore Village, Villa', 300000, 8, 0, 0, 0, 0, 262, NULL, 8),
(2935, 0, 1620538346, 0, 'Greenshore Village 7', 25000, 8, 0, 0, 0, 0, 42, NULL, 2),
(2936, 0, 1620538346, 0, 'Greenshore Village 3', 50000, 8, 0, 0, 0, 0, 55, NULL, 4),
(2939, 0, 1620538346, 0, 'Greenshore Village 2', 50000, 8, 0, 0, 0, 0, 55, NULL, 4),
(2940, 0, 1620538346, 0, 'Greenshore Village 6', 150000, 8, 0, 0, 0, 0, 112, NULL, 4),
(2941, 189, 1631854070, 0, 'Harbour Place 1 (Shop)', 800000, 8, 0, 0, 0, 0, 95, NULL, 2),
(2942, 0, 1626506106, 0, 'Harbour Place 2 (Shop)', 600000, 8, 0, 0, 0, 0, 54, NULL, 2),
(2943, 28, 1631854070, 1, 'Harbour Place 3', 800000, 8, 0, 0, 0, 0, 138, NULL, 0),
(2944, 0, 1620538346, 0, 'Harbour Place 4', 80000, 8, 0, 0, 0, 0, 36, NULL, 2),
(2945, 0, 1620538346, 0, 'Lower Swamp Lane 1', 400000, 8, 0, 0, 0, 0, 156, NULL, 8),
(2946, 0, 1620538346, 0, 'Lower Swamp Lane 3', 400000, 8, 0, 0, 0, 0, 156, NULL, 8),
(2947, 101, 1631854070, 0, 'Main Street 9, 1st floor (Shop)', 200000, 8, 0, 0, 0, 0, 63, NULL, 0),
(2948, 124, 1631854070, 0, 'Main Street 9a, 2nd floor (Shop)', 100000, 8, 0, 0, 0, 0, 30, NULL, 0),
(2949, 0, 1625988348, 0, 'Main Street 9b, 2nd floor (Shop)', 150000, 8, 0, 0, 0, 0, 57, NULL, 0),
(2950, 164, 1631854070, 0, 'Mill Avenue 1 (Shop)', 200000, 8, 0, 0, 0, 0, 54, NULL, 2),
(2951, 0, 1625624412, 0, 'Mill Avenue 2 (Shop)', 200000, 8, 0, 0, 0, 0, 100, NULL, 4),
(2952, 0, 1620538346, 0, 'Mill Avenue 3', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2953, 0, 1620538346, 0, 'Mill Avenue 4', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2954, 0, 1620538346, 0, 'Mill Avenue 5', 300000, 8, 0, 0, 0, 0, 116, NULL, 8),
(2955, 0, 1620538346, 0, 'Open-Air Theatre', 150000, 8, 0, 0, 0, 0, 111, NULL, 2),
(2956, 0, 1620538346, 0, 'Smuggler\'s Den', 400000, 8, 0, 0, 0, 0, 298, NULL, 0),
(2957, 0, 1620538346, 0, 'Sorcerer\'s Avenue 1a', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2958, 0, 1620538346, 0, 'Sorcerer\'s Avenue 5 (Shop)', 150000, 8, 0, 0, 0, 0, 96, NULL, 2),
(2959, 0, 1620538346, 0, 'Sorcerer\'s Avenue 1b', 80000, 8, 0, 0, 0, 0, 30, NULL, 4),
(2960, 0, 1620538346, 0, 'Sorcerer\'s Avenue 1c', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2961, 0, 1620538346, 0, 'Sorcerer\'s Avenue Labs 2a', 50000, 8, 0, 0, 0, 0, 54, NULL, 4),
(2962, 0, 1620538346, 0, 'Sorcerer\'s Avenue Labs 2c', 50000, 8, 0, 0, 0, 0, 48, NULL, 4),
(2963, 0, 1620538346, 0, 'Sorcerer\'s Avenue Labs 2b', 50000, 8, 0, 0, 0, 0, 54, NULL, 4),
(2964, 0, 1625443214, 7, 'Sunset Homes, Flat 01', 100000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2965, 0, 1625952610, 0, 'Sunset Homes, Flat 02', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2966, 0, 1620538346, 0, 'Sunset Homes, Flat 03', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2967, 0, 1620538346, 0, 'Sunset Homes, Flat 11', 80000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2968, 0, 1620538346, 0, 'Sunset Homes, Flat 12', 50000, 8, 0, 0, 0, 0, 26, NULL, 2),
(2969, 0, 1620538346, 0, 'Sunset Homes, Flat 13', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2970, 0, 1620538346, 0, 'Sunset Homes, Flat 14', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2971, 0, 1620538346, 0, 'Sunset Homes, Flat 21', 50000, 8, 0, 0, 0, 0, 25, NULL, 2),
(2972, 0, 1620538346, 0, 'Sunset Homes, Flat 22', 50000, 8, 0, 0, 0, 0, 26, NULL, 2),
(2973, 0, 1620538346, 0, 'Sunset Homes, Flat 23', 80000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2974, 0, 1620538346, 0, 'Sunset Homes, Flat 24', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2975, 0, 1620538346, 0, 'Thais Hostel', 200000, 8, 0, 0, 0, 0, 171, NULL, 48),
(2976, 0, 1620538346, 0, 'The City Wall 1a', 150000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2977, 0, 1620538346, 0, 'The City Wall 1b', 100000, 8, 0, 0, 0, 0, 49, NULL, 4),
(2978, 0, 1620538346, 0, 'The City Wall 3a', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2979, 0, 1620538346, 0, 'The City Wall 3b', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2980, 0, 1620538346, 0, 'The City Wall 3c', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2981, 0, 1620538346, 0, 'The City Wall 3d', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2982, 0, 1620538346, 0, 'The City Wall 3e', 100000, 8, 0, 0, 0, 0, 35, NULL, 4),
(2983, 0, 1620538346, 0, 'The City Wall 3f', 100000, 8, 0, 0, 0, 0, 42, NULL, 4),
(2984, 0, 1620538346, 0, 'Upper Swamp Lane 12', 300000, 8, 0, 0, 0, 0, 124, NULL, 6),
(2985, 0, 1620538346, 0, 'Upper Swamp Lane 10', 150000, 8, 0, 0, 0, 0, 70, NULL, 6),
(2986, 106, 1631854070, 0, 'Upper Swamp Lane 8', 600000, 8, 0, 0, 0, 0, 206, NULL, 6),
(2987, 0, 1625952452, 0, 'Upper Swamp Lane 4', 600000, 8, 0, 0, 0, 0, 176, NULL, 8),
(2988, 0, 1626506106, 0, 'Upper Swamp Lane 2', 600000, 8, 0, 0, 0, 0, 176, NULL, 8),
(2989, 0, 1620538346, 0, 'The City Wall 9', 80000, 8, 0, 0, 0, 0, 50, NULL, 4),
(2990, 0, 1620538346, 0, 'The City Wall 7h', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2991, 0, 1620538346, 0, 'The City Wall 7b', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2992, 0, 1620538346, 0, 'The City Wall 7d', 50000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2993, 0, 1620538346, 0, 'The City Wall 7f', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2994, 0, 1620538346, 0, 'The City Wall 7c', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2995, 0, 1620538346, 0, 'The City Wall 7a', 80000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2996, 0, 1620538346, 0, 'The City Wall 7g', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(2997, 0, 1620538346, 0, 'The City Wall 7e', 80000, 8, 0, 0, 0, 0, 36, NULL, 4),
(2998, 0, 1620538346, 0, 'The City Wall 5b', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(2999, 0, 1620538346, 0, 'The City Wall 5d', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3000, 0, 1620538346, 0, 'The City Wall 5f', 25000, 8, 0, 0, 0, 0, 30, NULL, 2),
(3001, 0, 1620538346, 0, 'The City Wall 5a', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3002, 0, 1620538346, 0, 'The City Wall 5c', 50000, 8, 0, 0, 0, 0, 24, NULL, 2),
(3003, 0, 1620538346, 0, 'The City Wall 5e', 50000, 8, 0, 0, 0, 0, 30, NULL, 2),
(3004, 111, 1631854070, 0, 'Warriors\' Guildhall', 5000000, 8, 0, 0, 0, 0, 535, NULL, 22),
(3005, 0, 1620538346, 0, 'The Tibianic', 500000, 8, 0, 0, 0, 0, 824, NULL, 44),
(3006, 0, 1620538346, 0, 'Bloodhall', 500000, 8, 0, 0, 0, 0, 539, NULL, 30),
(3007, 0, 1620538346, 0, 'Fibula Clanhall', 250000, 8, 0, 0, 0, 0, 305, NULL, 20),
(3008, 0, 1629103007, 0, 'Dark Mansion', 1000000, 8, 0, 0, 0, 0, 590, NULL, 34),
(3009, 0, 1620538346, 0, 'Halls of the Adventurers', 250000, 8, 0, 0, 0, 0, 512, NULL, 36),
(3010, 0, 1620538346, 0, 'Mercenary Tower', 250000, 8, 0, 0, 0, 0, 982, NULL, 52),
(3011, 0, 1620538346, 0, 'Snake Tower', 500000, 8, 0, 0, 0, 0, 1041, NULL, 42),
(3012, 0, 1626506106, 0, 'Southern Thais Guildhall', 1000000, 8, 0, 0, 0, 0, 634, NULL, 32),
(3013, 0, 1620538346, 0, 'Spiritkeep', 500000, 8, 0, 0, 0, 0, 564, NULL, 26),
(3014, 0, 1626339635, 0, 'Thais Clanhall', 500000, 8, 0, 0, 0, 0, 380, NULL, 20),
(3015, 0, 1620538346, 0, 'The Lair', 200000, 9, 0, 0, 0, 0, 335, NULL, 6),
(3016, 0, 1620538346, 0, 'Silver Street 4', 300000, 9, 0, 0, 0, 0, 153, NULL, 4),
(3017, 0, 1620538346, 0, 'Dream Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 178, NULL, 4),
(3018, 0, 1620538346, 0, 'Dagger Alley 1', 200000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3019, 0, 1624427820, 0, 'Dream Street 2', 400000, 9, 0, 0, 0, 0, 138, NULL, 4),
(3020, 0, 1620538346, 0, 'Dream Street 3', 300000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3021, 0, 1620538346, 0, 'Elm Street 1', 300000, 9, 0, 0, 0, 0, 114, NULL, 4),
(3022, 0, 1620538346, 0, 'Elm Street 3', 300000, 9, 0, 0, 0, 0, 120, NULL, 6),
(3023, 0, 1620538346, 0, 'Elm Street 2', 300000, 9, 0, 0, 0, 0, 120, NULL, 4),
(3024, 0, 1620538346, 0, 'Elm Street 4', 300000, 9, 0, 0, 0, 0, 126, NULL, 4),
(3025, 0, 1620538346, 0, 'Seagull Walk 1', 800000, 9, 0, 0, 0, 0, 202, NULL, 4),
(3026, 0, 1620538346, 0, 'Seagull Walk 2', 300000, 9, 0, 0, 0, 0, 132, NULL, 6),
(3027, 0, 1620538346, 0, 'Dream Street 4', 400000, 9, 0, 0, 0, 0, 168, NULL, 8),
(3028, 0, 1620538346, 0, 'Old Lighthouse', 200000, 9, 0, 0, 0, 0, 177, NULL, 4),
(3029, 0, 1620538346, 0, 'Market Street 1', 600000, 9, 0, 0, 0, 0, 258, NULL, 6),
(3030, 0, 1620538346, 0, 'Market Street 3', 600000, 9, 0, 0, 0, 0, 153, NULL, 4),
(3031, 0, 1620538346, 0, 'Market Street 4 (Shop)', 800000, 9, 0, 0, 0, 0, 209, NULL, 6),
(3032, 0, 1620538346, 0, 'Market Street 5 (Shop)', 800000, 9, 0, 0, 0, 0, 243, NULL, 8),
(3033, 0, 1620538346, 0, 'Market Street 2', 600000, 9, 0, 0, 0, 0, 200, NULL, 6),
(3034, 0, 1620538346, 0, 'Loot Lane 1 (Shop)', 600000, 9, 0, 0, 0, 0, 198, NULL, 6),
(3035, 0, 1620538346, 0, 'Mystic Lane 1', 300000, 9, 0, 0, 0, 0, 110, NULL, 6),
(3036, 0, 1620538346, 0, 'Mystic Lane 2', 200000, 9, 0, 0, 0, 0, 139, NULL, 4),
(3037, 0, 1620538346, 0, 'Lucky Lane 2 (Tower)', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3038, 0, 1620538346, 0, 'Lucky Lane 3 (Tower)', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3039, 0, 1620538346, 0, 'Iron Alley 1', 300000, 9, 0, 0, 0, 0, 120, NULL, 8),
(3040, 0, 1620538346, 0, 'Iron Alley 2', 300000, 9, 0, 0, 0, 0, 144, NULL, 8),
(3041, 0, 1620538346, 0, 'Swamp Watch', 500000, 9, 0, 0, 0, 0, 420, NULL, 24),
(3042, 0, 1620538346, 0, 'Golden Axe Guildhall', 500000, 9, 0, 0, 0, 0, 390, NULL, 20),
(3043, 0, 1620538346, 0, 'Silver Street 1', 200000, 9, 0, 0, 0, 0, 125, NULL, 2),
(3044, 0, 1620538346, 0, 'Valorous Venore', 500000, 9, 0, 0, 0, 0, 507, NULL, 18),
(3045, 0, 1620538346, 0, 'Salvation Street 2', 300000, 9, 0, 0, 0, 0, 135, NULL, 4),
(3046, 0, 1620538346, 0, 'Salvation Street 3', 300000, 9, 0, 0, 0, 0, 162, NULL, 4),
(3047, 0, 1620538346, 0, 'Silver Street 2', 200000, 9, 0, 0, 0, 0, 84, NULL, 2),
(3048, 0, 1620538346, 0, 'Silver Street 3', 200000, 9, 0, 0, 0, 0, 105, NULL, 2),
(3049, 0, 1620538346, 0, 'Mystic Lane 3 (Tower)', 800000, 9, 0, 0, 0, 0, 245, NULL, 0),
(3050, 0, 1620538346, 0, 'Market Street 7', 200000, 9, 0, 0, 0, 0, 114, NULL, 4),
(3051, 0, 1620538346, 0, 'Market Street 6', 600000, 9, 0, 0, 0, 0, 216, NULL, 10),
(3052, 0, 1620538346, 0, 'Iron Alley Watch, Upper', 600000, 9, 0, 0, 0, 0, 252, NULL, 6),
(3053, 0, 1620538346, 0, 'Iron Alley Watch, Lower', 600000, 9, 0, 0, 0, 0, 240, NULL, 4),
(3054, 0, 1620538346, 0, 'Blessed Shield Guildhall', 500000, 9, 0, 0, 0, 0, 289, NULL, 18),
(3055, 171, 1631854070, 2, 'Steel Home', 500000, 9, 0, 0, 0, 0, 441, NULL, 26),
(3056, 0, 1620538346, 0, 'Salvation Street 1 (Shop)', 600000, 9, 0, 0, 0, 0, 249, NULL, 8),
(3057, 0, 1620538346, 0, 'Lucky Lane 1 (Shop)', 800000, 9, 0, 0, 0, 0, 253, NULL, 8),
(3058, 0, 1620538346, 0, 'Paupers Palace, Flat 34', 100000, 9, 0, 0, 0, 0, 60, NULL, 3),
(3059, 0, 1620538346, 0, 'Paupers Palace, Flat 33', 50000, 9, 0, 0, 0, 0, 35, NULL, 2),
(3060, 0, 1620538346, 0, 'Paupers Palace, Flat 32', 100000, 9, 0, 0, 0, 0, 50, NULL, 4),
(3061, 0, 1620538346, 0, 'Paupers Palace, Flat 31', 80000, 9, 0, 0, 0, 0, 40, NULL, 2),
(3062, 0, 1620538346, 0, 'Paupers Palace, Flat 28', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3063, 0, 1620538346, 0, 'Paupers Palace, Flat 26', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3064, 0, 1620538346, 0, 'Paupers Palace, Flat 24', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3065, 0, 1620538346, 0, 'Paupers Palace, Flat 22', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3066, 0, 1620538346, 0, 'Paupers Palace, Flat 21', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3067, 0, 1620538346, 0, 'Paupers Palace, Flat 27', 50000, 9, 0, 0, 0, 0, 25, NULL, 4),
(3068, 0, 1620538346, 0, 'Paupers Palace, Flat 25', 50000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3069, 0, 1620538346, 0, 'Paupers Palace, Flat 23', 50000, 9, 0, 0, 0, 0, 30, NULL, 2),
(3070, 0, 1620538346, 0, 'Paupers Palace, Flat 11', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3071, 0, 1620538346, 0, 'Paupers Palace, Flat 13', 50000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3072, 0, 1620538346, 0, 'Paupers Palace, Flat 15', 50000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3073, 0, 1620538346, 0, 'Paupers Palace, Flat 17', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3074, 0, 1620538346, 0, 'Paupers Palace, Flat 18', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3075, 0, 1620538346, 0, 'Paupers Palace, Flat 12', 50000, 9, 0, 0, 0, 0, 25, NULL, 4),
(3076, 0, 1620538346, 0, 'Paupers Palace, Flat 14', 50000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3077, 0, 1620538346, 0, 'Paupers Palace, Flat 16', 50000, 9, 0, 0, 0, 0, 30, NULL, 2),
(3078, 0, 1620538346, 0, 'Paupers Palace, Flat 06', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3079, 0, 1620538346, 0, 'Paupers Palace, Flat 05', 25000, 9, 0, 0, 0, 0, 15, NULL, 2),
(3080, 0, 1620538346, 0, 'Paupers Palace, Flat 04', 25000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3081, 0, 1620538346, 0, 'Paupers Palace, Flat 07', 50000, 9, 0, 0, 0, 0, 23, NULL, 4),
(3082, 0, 1620538346, 0, 'Paupers Palace, Flat 03', 25000, 9, 0, 0, 0, 0, 20, NULL, 2),
(3083, 0, 1620538346, 0, 'Paupers Palace, Flat 02', 25000, 9, 0, 0, 0, 0, 25, NULL, 2),
(3084, 0, 1620538346, 0, 'Paupers Palace, Flat 01', 25000, 9, 0, 0, 0, 0, 24, NULL, 2),
(3085, 0, 1620538346, 0, 'Castle, Residence', 600000, 11, 0, 0, 0, 0, 182, NULL, 0),
(3086, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3087, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 04', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3088, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3089, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 36, NULL, 4),
(3090, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3091, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3092, 0, 1620538346, 0, 'Castle, 3rd Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3093, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 09', 50000, 11, 0, 0, 0, 0, 28, NULL, 2),
(3094, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 08', 80000, 11, 0, 0, 0, 0, 42, NULL, 2),
(3095, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 07', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3096, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 04', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3097, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 03', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3098, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 06', 100000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3099, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 05', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3100, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 02', 80000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3101, 0, 1620538346, 0, 'Castle, 4th Floor, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3102, 0, 1620538346, 0, 'Castle Street 2', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3103, 0, 1620538346, 0, 'Castle Street 3', 150000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3104, 0, 1620538346, 0, 'Castle Street 4', 150000, 11, 0, 0, 0, 0, 61, NULL, 4),
(3105, 0, 1620538346, 0, 'Castle Street 5', 150000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3106, 0, 1620538346, 0, 'Castle Street 1', 300000, 11, 0, 0, 0, 0, 112, NULL, 6),
(3107, 0, 1620538346, 0, 'Edron Flats, Flat 08', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3108, 0, 1620538346, 0, 'Edron Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3109, 0, 1620538346, 0, 'Edron Flats, Flat 04', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3110, 0, 1620538346, 0, 'Edron Flats, Flat 01', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3111, 0, 1620538346, 0, 'Edron Flats, Flat 07', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3112, 0, 1620538346, 0, 'Edron Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3113, 0, 1620538346, 0, 'Edron Flats, Flat 03', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3114, 0, 1620538346, 0, 'Edron Flats, Flat 02', 100000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3115, 0, 1620538346, 0, 'Edron Flats, Basement Flat 2', 100000, 11, 0, 0, 0, 0, 54, NULL, 4),
(3116, 0, 1620538346, 0, 'Edron Flats, Basement Flat 1', 100000, 11, 0, 0, 0, 0, 63, NULL, 4),
(3119, 0, 1620538346, 0, 'Edron Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3121, 0, 1620538346, 0, 'Edron Flats, Flat 14', 100000, 11, 0, 0, 0, 0, 50, NULL, 4),
(3123, 0, 1620538346, 0, 'Edron Flats, Flat 12', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3124, 0, 1620538346, 0, 'Edron Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3125, 0, 1620538346, 0, 'Edron Flats, Flat 25', 80000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3127, 0, 1620538346, 0, 'Edron Flats, Flat 24', 80000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3128, 0, 1620538346, 0, 'Edron Flats, Flat 21', 80000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3131, 0, 1620538346, 0, 'Edron Flats, Flat 23', 80000, 11, 0, 0, 0, 0, 40, NULL, 4),
(3133, 0, 1625703757, 0, 'Castle Shop 1', 400000, 11, 0, 0, 0, 0, 70, NULL, 2),
(3134, 0, 1620538346, 0, 'Castle Shop 2', 400000, 11, 0, 0, 0, 0, 70, NULL, 2),
(3135, 0, 1620538346, 0, 'Castle Shop 3', 300000, 11, 0, 0, 0, 0, 80, NULL, 2),
(3136, 156, 1631854070, 0, 'Central Circle 1', 800000, 11, 0, 0, 0, 0, 98, NULL, 4),
(3137, 0, 1625446096, 7, 'Central Circle 2', 800000, 11, 0, 0, 0, 0, 120, NULL, 4),
(3138, 0, 1620538346, 0, 'Central Circle 3', 800000, 11, 0, 0, 0, 0, 147, NULL, 10),
(3139, 0, 1620538346, 0, 'Central Circle 4', 800000, 11, 0, 0, 0, 0, 147, NULL, 10),
(3140, 0, 1620538346, 0, 'Central Circle 5', 800000, 11, 0, 0, 0, 0, 168, NULL, 10),
(3141, 0, 1620538346, 0, 'Central Circle 8 (Shop)', 400000, 11, 0, 0, 0, 0, 168, NULL, 4),
(3142, 0, 1620538346, 0, 'Central Circle 7 (Shop)', 400000, 11, 0, 0, 0, 0, 168, NULL, 4),
(3143, 0, 1620538346, 0, 'Central Circle 6 (Shop)', 400000, 11, 0, 0, 0, 0, 192, NULL, 4),
(3144, 0, 1620538346, 0, 'Central Circle 9a', 150000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3145, 0, 1620538346, 0, 'Central Circle 9b', 150000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3146, 0, 1620538346, 0, 'Sky Lane, Guild 1', 1000000, 11, 0, 0, 0, 0, 663, NULL, 46),
(3147, 0, 1620538346, 0, 'Sky Lane, Sea Tower', 300000, 11, 0, 0, 0, 0, 196, NULL, 12),
(3148, 0, 1620538346, 0, 'Sky Lane, Guild 3', 1000000, 11, 0, 0, 0, 0, 507, NULL, 36),
(3149, 0, 1620538346, 0, 'Sky Lane, Guild 2', 1000000, 11, 0, 0, 0, 0, 653, NULL, 28),
(3150, 0, 1620538346, 0, 'Wood Avenue 11', 600000, 11, 0, 0, 0, 0, 245, NULL, 12),
(3151, 0, 1620538346, 0, 'Wood Avenue 8', 800000, 11, 0, 0, 0, 0, 218, NULL, 6),
(3152, 0, 1620538346, 0, 'Wood Avenue 7', 800000, 11, 0, 0, 0, 0, 232, NULL, 6),
(3153, 0, 1620538346, 0, 'Wood Avenue 10a', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3154, 0, 1620538346, 0, 'Wood Avenue 9a', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3155, 0, 1620538346, 0, 'Wood Avenue 6a', 300000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3156, 0, 1620538346, 0, 'Wood Avenue 6b', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3157, 0, 1620538346, 0, 'Wood Avenue 9b', 200000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3158, 0, 1620538346, 0, 'Wood Avenue 10b', 200000, 11, 0, 0, 0, 0, 64, NULL, 6),
(3159, 0, 1620538346, 0, 'Stronghold', 800000, 11, 0, 0, 0, 0, 285, NULL, 0),
(3160, 0, 1620538346, 0, 'Wood Avenue 5', 300000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3161, 0, 1620538346, 0, 'Wood Avenue 3', 200000, 11, 0, 0, 0, 0, 52, NULL, 4),
(3162, 0, 1620538346, 0, 'Wood Avenue 4', 200000, 11, 0, 0, 0, 0, 60, NULL, 4),
(3163, 0, 1620538346, 0, 'Wood Avenue 2', 200000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3164, 0, 1620538346, 0, 'Wood Avenue 1', 200000, 11, 0, 0, 0, 0, 64, NULL, 4),
(3165, 0, 1620538346, 0, 'Wood Avenue 4c', 200000, 11, 0, 0, 0, 0, 57, NULL, 4),
(3166, 0, 1620538346, 0, 'Wood Avenue 4a', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3167, 0, 1620538346, 0, 'Wood Avenue 4b', 150000, 11, 0, 0, 0, 0, 56, NULL, 4),
(3168, 0, 1620538346, 0, 'Stonehome Village 1', 150000, 11, 0, 0, 0, 0, 77, NULL, 4),
(3169, 0, 1620538346, 0, 'Stonehome Flats, Flat 04', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3171, 0, 1620538346, 0, 'Stonehome Flats, Flat 03', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3173, 0, 1620538346, 0, 'Stonehome Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3174, 0, 1620538346, 0, 'Stonehome Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3175, 0, 1620538346, 0, 'Stonehome Flats, Flat 13', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3177, 0, 1620538346, 0, 'Stonehome Flats, Flat 11', 50000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3178, 0, 1620538346, 0, 'Stonehome Flats, Flat 14', 80000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3180, 0, 1620538346, 0, 'Stonehome Flats, Flat 12', 50000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3181, 0, 1620538346, 0, 'Stonehome Village 2', 50000, 11, 0, 0, 0, 0, 35, NULL, 2),
(3182, 0, 1620538346, 0, 'Stonehome Village 3', 50000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3183, 0, 1620538346, 0, 'Stonehome Village 4', 80000, 11, 0, 0, 0, 0, 42, NULL, 4),
(3184, 0, 1620538346, 0, 'Stonehome Village 6', 100000, 11, 0, 0, 0, 0, 55, NULL, 4),
(3185, 0, 1620538346, 0, 'Stonehome Village 5', 80000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3186, 0, 1620538346, 0, 'Stonehome Village 7', 100000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3187, 0, 1620538346, 0, 'Stonehome Village 8', 25000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3188, 0, 1620538346, 0, 'Stonehome Village 9', 50000, 11, 0, 0, 0, 0, 36, NULL, 2),
(3189, 0, 1620538346, 0, 'Stonehome Clanhall', 250000, 11, 0, 0, 0, 0, 364, NULL, 18),
(3190, 0, 1620538346, 0, 'Mad Scientist\'s Lab', 600000, 17, 0, 0, 0, 0, 115, NULL, 0),
(3191, 0, 1620538346, 0, 'Radiant Plaza 4', 800000, 17, 0, 0, 0, 0, 361, NULL, 6),
(3192, 0, 1620538346, 0, 'Radiant Plaza 3', 800000, 17, 0, 0, 0, 0, 245, NULL, 4),
(3193, 0, 1620538346, 0, 'Radiant Plaza 2', 600000, 17, 0, 0, 0, 0, 153, NULL, 4),
(3194, 0, 1620538346, 0, 'Radiant Plaza 1', 800000, 17, 0, 0, 0, 0, 257, NULL, 8),
(3195, 0, 1620538346, 0, 'Aureate Court 3', 400000, 17, 0, 0, 0, 0, 226, NULL, 4),
(3196, 0, 1620538346, 0, 'Aureate Court 4', 400000, 17, 0, 0, 0, 0, 185, NULL, 8),
(3197, 0, 1620538346, 0, 'Aureate Court 5', 600000, 17, 0, 0, 0, 0, 201, NULL, 0),
(3198, 0, 1620538346, 0, 'Aureate Court 2', 400000, 17, 0, 0, 0, 0, 176, NULL, 4),
(3199, 0, 1620538346, 0, 'Aureate Court 1', 600000, 17, 0, 0, 0, 0, 264, NULL, 6),
(3205, 0, 1620538346, 0, 'Halls of Serenity', 5000000, 17, 0, 0, 0, 0, 1026, NULL, 66),
(3206, 0, 1620538346, 0, 'Fortune Wing 3', 600000, 17, 0, 0, 0, 0, 235, NULL, 4),
(3207, 0, 1620538346, 0, 'Fortune Wing 4', 600000, 17, 0, 0, 0, 0, 252, NULL, 8),
(3208, 0, 1620538346, 0, 'Fortune Wing 2', 600000, 17, 0, 0, 0, 0, 260, NULL, 4),
(3209, 0, 1620538346, 0, 'Fortune Wing 1', 800000, 17, 0, 0, 0, 0, 400, NULL, 8),
(3211, 0, 1620538346, 0, 'Cascade Towers', 5000000, 17, 0, 0, 0, 0, 739, NULL, 66),
(3212, 0, 1620538346, 0, 'Luminous Arc 5', 800000, 17, 0, 0, 0, 0, 196, NULL, 0),
(3213, 0, 1620538346, 0, 'Luminous Arc 2', 600000, 17, 0, 0, 0, 0, 298, NULL, 8),
(3214, 0, 1620538346, 0, 'Luminous Arc 1', 800000, 17, 0, 0, 0, 0, 341, NULL, 4),
(3215, 0, 1620538346, 0, 'Luminous Arc 3', 600000, 17, 0, 0, 0, 0, 228, NULL, 6),
(3216, 0, 1620538346, 0, 'Luminous Arc 4', 800000, 17, 0, 0, 0, 0, 326, NULL, 10),
(3217, 0, 1620538346, 0, 'Harbour Promenade 1', 800000, 17, 0, 0, 0, 0, 205, NULL, 0),
(3218, 0, 1620538346, 0, 'Sun Palace', 5000000, 17, 0, 0, 0, 0, 926, NULL, 54),
(3219, 0, 1620538346, 0, 'Haggler\'s Hangout 3', 300000, 15, 0, 0, 0, 0, 241, NULL, 8),
(3220, 0, 1620538346, 0, 'Haggler\'s Hangout 7', 400000, 15, 0, 0, 0, 0, 240, NULL, 0),
(3221, 0, 1620538346, 0, 'Big Game Hunter\'s Lodge', 600000, 15, 0, 0, 0, 0, 257, NULL, 0),
(3222, 0, 1620538346, 0, 'Haggler\'s Hangout 6', 400000, 15, 0, 0, 0, 0, 188, NULL, 8),
(3223, 0, 1620538346, 0, 'Haggler\'s Hangout 5 (Shop)', 200000, 15, 0, 0, 0, 0, 56, NULL, 2),
(3224, 0, 1620538346, 0, 'Haggler\'s Hangout 4b (Shop)', 150000, 15, 0, 0, 0, 0, 48, NULL, 2),
(3225, 0, 1620538346, 0, 'Haggler\'s Hangout 4a (Shop)', 200000, 15, 0, 0, 0, 0, 64, NULL, 2),
(3226, 0, 1620538346, 0, 'Haggler\'s Hangout 2', 100000, 15, 0, 0, 0, 0, 49, NULL, 2),
(3227, 0, 1620538346, 0, 'Haggler\'s Hangout 1', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3228, 0, 1620538346, 0, 'Bamboo Garden 3', 150000, 15, 0, 0, 0, 0, 63, NULL, 4),
(3229, 0, 1620538346, 0, 'Bamboo Fortress', 500000, 15, 0, 0, 0, 0, 762, NULL, 40),
(3230, 0, 1620538346, 0, 'Bamboo Garden 2', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3231, 0, 1620538346, 0, 'Bamboo Garden 1', 100000, 15, 0, 0, 0, 0, 63, NULL, 6),
(3232, 0, 1620538346, 0, 'Banana Bay 4', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3233, 0, 1620538346, 0, 'Banana Bay 2', 50000, 15, 0, 0, 0, 0, 36, NULL, 2),
(3234, 0, 1620538346, 0, 'Banana Bay 3', 50000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3235, 0, 1620538346, 0, 'Banana Bay 1', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3236, 0, 1620538346, 0, 'Crocodile Bridge 1', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3237, 0, 1620538346, 0, 'Crocodile Bridge 2', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3238, 0, 1620538346, 0, 'Crocodile Bridge 3', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3239, 0, 1620538346, 0, 'Crocodile Bridge 4', 300000, 15, 0, 0, 0, 0, 158, NULL, 8),
(3240, 0, 1620538346, 0, 'Crocodile Bridge 5', 200000, 15, 0, 0, 0, 0, 137, NULL, 4),
(3241, 0, 1620538346, 0, 'Woodway 1', 80000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3242, 0, 1620538346, 0, 'Woodway 2', 50000, 15, 0, 0, 0, 0, 20, NULL, 2),
(3243, 0, 1620538346, 0, 'Woodway 3', 150000, 15, 0, 0, 0, 0, 65, NULL, 4),
(3244, 0, 1620538346, 0, 'Woodway 4', 25000, 15, 0, 0, 0, 0, 24, NULL, 2),
(3245, 0, 1620538346, 0, 'Flamingo Flats 5', 150000, 15, 0, 0, 0, 0, 72, NULL, 2),
(3246, 0, 1620538346, 0, 'Flamingo Flats 4', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3247, 0, 1620538346, 0, 'Flamingo Flats 1', 50000, 15, 0, 0, 0, 0, 30, NULL, 4),
(3248, 0, 1620538346, 0, 'Flamingo Flats 2', 80000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3249, 0, 1620538346, 0, 'Flamingo Flats 3', 50000, 15, 0, 0, 0, 0, 30, NULL, 4),
(3250, 0, 1620538346, 0, 'Jungle Edge 1', 200000, 15, 0, 0, 0, 0, 85, NULL, 6),
(3251, 0, 1620538346, 0, 'Jungle Edge 2', 200000, 15, 0, 0, 0, 0, 128, NULL, 6),
(3252, 0, 1620538346, 0, 'Jungle Edge 4', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3253, 0, 1620538346, 0, 'Jungle Edge 5', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3254, 0, 1620538346, 0, 'Jungle Edge 6', 25000, 15, 0, 0, 0, 0, 25, NULL, 2),
(3255, 0, 1620538346, 0, 'Jungle Edge 3', 80000, 15, 0, 0, 0, 0, 36, NULL, 4),
(3256, 0, 1620538346, 0, 'River Homes 3', 200000, 15, 0, 0, 0, 0, 140, NULL, 14),
(3257, 0, 1620538346, 0, 'River Homes 2b', 150000, 15, 0, 0, 0, 0, 49, NULL, 6),
(3258, 0, 1620538346, 0, 'River Homes 2a', 100000, 15, 0, 0, 0, 0, 49, NULL, 4),
(3259, 0, 1620538346, 0, 'River Homes 1', 300000, 15, 0, 0, 0, 0, 128, NULL, 6),
(3260, 0, 1620538346, 0, 'Coconut Quay 4', 150000, 15, 0, 0, 0, 0, 72, NULL, 6),
(3261, 0, 1620538346, 0, 'Coconut Quay 3', 200000, 15, 0, 0, 0, 0, 70, NULL, 8),
(3262, 0, 1620538346, 0, 'Coconut Quay 2', 100000, 15, 0, 0, 0, 0, 42, NULL, 4),
(3263, 0, 1620538346, 0, 'Coconut Quay 1', 150000, 15, 0, 0, 0, 0, 64, NULL, 4),
(3264, 0, 1620538346, 0, 'Shark Manor', 250000, 15, 0, 0, 0, 0, 240, NULL, 30),
(3265, 0, 1620538346, 0, 'Glacier Side 2', 300000, 16, 0, 0, 0, 0, 154, NULL, 6),
(3266, 0, 1620538346, 0, 'Glacier Side 1', 150000, 16, 0, 0, 0, 0, 65, NULL, 4),
(3267, 0, 1620538346, 0, 'Glacier Side 3', 150000, 16, 0, 0, 0, 0, 75, NULL, 4),
(3268, 0, 1620538346, 0, 'Glacier Side 4', 150000, 16, 0, 0, 0, 0, 70, NULL, 2),
(3269, 0, 1620538346, 0, 'Shelf Site', 300000, 16, 0, 0, 0, 0, 145, NULL, 6),
(3270, 0, 1620538346, 0, 'Spirit Homes 5', 150000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3271, 0, 1620538346, 0, 'Spirit Homes 4', 80000, 16, 0, 0, 0, 0, 49, NULL, 2),
(3272, 0, 1620538346, 0, 'Spirit Homes 1', 150000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3273, 0, 1620538346, 0, 'Spirit Homes 2', 150000, 16, 0, 0, 0, 0, 72, NULL, 4),
(3274, 0, 1620538346, 0, 'Spirit Homes 3', 300000, 16, 0, 0, 0, 0, 128, NULL, 6),
(3275, 0, 1620538346, 0, 'Arena Walk 3', 300000, 16, 0, 0, 0, 0, 126, NULL, 6),
(3276, 0, 1620538346, 0, 'Arena Walk 2', 150000, 16, 0, 0, 0, 0, 54, NULL, 4),
(3277, 0, 1620538346, 0, 'Arena Walk 1', 300000, 16, 0, 0, 0, 0, 128, NULL, 6),
(3278, 0, 1620538346, 0, 'Bears Paw 2', 300000, 16, 0, 0, 0, 0, 98, NULL, 4),
(3279, 0, 1620538346, 0, 'Bears Paw 1', 200000, 16, 0, 0, 0, 0, 72, NULL, 4),
(3280, 0, 1620538346, 0, 'Crystal Glance', 1000000, 16, 0, 0, 0, 0, 550, NULL, 48),
(3281, 0, 1620538346, 0, 'Shady Rocks 2', 200000, 16, 0, 0, 0, 0, 77, NULL, 8),
(3282, 0, 1620538346, 0, 'Shady Rocks 1', 300000, 16, 0, 0, 0, 0, 116, NULL, 8),
(3283, 0, 1620538346, 0, 'Shady Rocks 3', 300000, 16, 0, 0, 0, 0, 137, NULL, 6),
(3284, 0, 1620538346, 0, 'Shady Rocks 4 (Shop)', 200000, 16, 0, 0, 0, 0, 95, NULL, 4),
(3285, 0, 1620538346, 0, 'Shady Rocks 5', 300000, 16, 0, 0, 0, 0, 110, NULL, 4),
(3286, 0, 1620538346, 0, 'Tusk Flats 2', 80000, 16, 0, 0, 0, 0, 42, NULL, 4),
(3287, 0, 1620538346, 0, 'Tusk Flats 1', 80000, 16, 0, 0, 0, 0, 40, NULL, 4),
(3288, 0, 1620538346, 0, 'Tusk Flats 3', 80000, 16, 0, 0, 0, 0, 35, NULL, 4),
(3289, 0, 1620538346, 0, 'Tusk Flats 4', 25000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3290, 0, 1620538346, 0, 'Tusk Flats 6', 50000, 16, 0, 0, 0, 0, 35, NULL, 4),
(3291, 0, 1620538346, 0, 'Tusk Flats 5', 25000, 16, 0, 0, 0, 0, 30, NULL, 2),
(3292, 0, 1620538346, 0, 'Corner Shop (Shop)', 200000, 16, 0, 0, 0, 0, 88, NULL, 4),
(3293, 0, 1620538346, 0, 'Bears Paw 5', 200000, 16, 0, 0, 0, 0, 81, NULL, 6),
(3294, 0, 1620538346, 0, 'Bears Paw 4', 400000, 16, 0, 0, 0, 0, 185, NULL, 8),
(3295, 0, 1620538346, 0, 'Trout Plaza 2', 150000, 16, 0, 0, 0, 0, 64, NULL, 4),
(3296, 0, 1620538346, 0, 'Trout Plaza 1', 200000, 16, 0, 0, 0, 0, 112, NULL, 4),
(3297, 0, 1620538346, 0, 'Trout Plaza 5 (Shop)', 300000, 16, 0, 0, 0, 0, 135, NULL, 4),
(3298, 0, 1620538346, 0, 'Trout Plaza 3', 80000, 16, 0, 0, 0, 0, 36, NULL, 2);
INSERT INTO `houses` (`id`, `owner`, `paid`, `warnings`, `name`, `rent`, `town_id`, `bid`, `bid_end`, `last_bid`, `highest_bidder`, `size`, `guildid`, `beds`) VALUES
(3299, 0, 1620538346, 0, 'Trout Plaza 4', 80000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3300, 0, 1620538346, 0, 'Skiffs End 2', 80000, 16, 0, 0, 0, 0, 42, NULL, 4),
(3301, 0, 1620538346, 0, 'Skiffs End 1', 100000, 16, 0, 0, 0, 0, 70, NULL, 4),
(3302, 0, 1620538346, 0, 'Furrier Quarter 3', 100000, 16, 0, 0, 0, 0, 54, NULL, 4),
(3303, 0, 1620538346, 0, 'Fimbul Shelf 4', 100000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3304, 0, 1620538346, 0, 'Fimbul Shelf 3', 100000, 16, 0, 0, 0, 0, 66, NULL, 4),
(3305, 0, 1620538346, 0, 'Furrier Quarter 2', 80000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3306, 0, 1620538346, 0, 'Furrier Quarter 1', 150000, 16, 0, 0, 0, 0, 84, NULL, 6),
(3307, 0, 1620538346, 0, 'Fimbul Shelf 2', 100000, 16, 0, 0, 0, 0, 56, NULL, 4),
(3308, 0, 1620538346, 0, 'Fimbul Shelf 1', 80000, 16, 0, 0, 0, 0, 48, NULL, 4),
(3309, 0, 1620538346, 0, 'Bears Paw 3', 200000, 16, 0, 0, 0, 0, 82, NULL, 6),
(3310, 0, 1620538346, 0, 'Raven Corner 2', 150000, 16, 0, 0, 0, 0, 60, NULL, 6),
(3311, 0, 1620538346, 0, 'Raven Corner 1', 80000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3312, 0, 1620538346, 0, 'Raven Corner 3', 100000, 16, 0, 0, 0, 0, 45, NULL, 2),
(3313, 0, 1620538346, 0, 'Mammoth Belly', 1000000, 16, 0, 0, 0, 0, 634, NULL, 60),
(3314, 0, 1620538346, 0, 'Darashia 3, Flat 01', 150000, 13, 0, 0, 0, 0, 42, NULL, 4),
(3315, 0, 1620538346, 0, 'Darashia 3, Flat 05', 150000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3316, 0, 1620538346, 0, 'Darashia 3, Flat 02', 200000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3317, 0, 1620538346, 0, 'Darashia 3, Flat 04', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3318, 0, 1620538346, 0, 'Darashia 3, Flat 03', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3319, 0, 1620538346, 0, 'Darashia 3, Flat 12', 200000, 13, 0, 0, 0, 0, 90, NULL, 10),
(3320, 0, 1620538346, 0, 'Darashia 3, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3321, 0, 1620538346, 0, 'Darashia 3, Flat 14', 200000, 13, 0, 0, 0, 0, 96, NULL, 6),
(3322, 0, 1620538346, 0, 'Darashia 3, Flat 13', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3323, 0, 1620538346, 0, 'Darashia 8, Flat 01', 300000, 13, 0, 0, 0, 0, 82, NULL, 4),
(3325, 0, 1620538346, 0, 'Darashia 8, Flat 05', 300000, 13, 0, 0, 0, 0, 92, NULL, 4),
(3326, 0, 1620538346, 0, 'Darashia 8, Flat 04', 200000, 13, 0, 0, 0, 0, 90, NULL, 4),
(3327, 0, 1620538346, 0, 'Darashia 8, Flat 03', 300000, 13, 0, 0, 0, 0, 171, NULL, 6),
(3328, 0, 1620538346, 0, 'Darashia 8, Flat 12', 150000, 13, 0, 0, 0, 0, 60, NULL, 4),
(3329, 0, 1620538346, 0, 'Darashia 8, Flat 11', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3330, 0, 1620538346, 0, 'Darashia 8, Flat 14', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3331, 0, 1620538346, 0, 'Darashia 8, Flat 13', 150000, 13, 0, 0, 0, 0, 78, NULL, 4),
(3332, 0, 1620538346, 0, 'Darashia, Villa', 800000, 13, 0, 0, 0, 0, 233, NULL, 8),
(3333, 0, 1620538346, 0, 'Darashia, Eastern Guildhall', 1000000, 13, 0, 0, 0, 0, 456, NULL, 32),
(3334, 0, 1620538346, 0, 'Darashia, Western Guildhall', 500000, 13, 0, 0, 0, 0, 376, NULL, 28),
(3335, 0, 1620538346, 0, 'Darashia 2, Flat 03', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3336, 0, 1620538346, 0, 'Darashia 2, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3337, 0, 1620538346, 0, 'Darashia 2, Flat 01', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3338, 0, 1620538346, 0, 'Darashia 2, Flat 04', 80000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3339, 0, 1620538346, 0, 'Darashia 2, Flat 05', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3340, 0, 1620538346, 0, 'Darashia 2, Flat 06', 80000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3341, 0, 1620538346, 0, 'Darashia 2, Flat 07', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3342, 0, 1620538346, 0, 'Darashia 2, Flat 13', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3343, 0, 1620538346, 0, 'Darashia 2, Flat 14', 50000, 13, 0, 0, 0, 0, 24, NULL, 2),
(3344, 0, 1620538346, 0, 'Darashia 2, Flat 15', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3345, 0, 1620538346, 0, 'Darashia 2, Flat 16', 80000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3346, 0, 1620538346, 0, 'Darashia 2, Flat 17', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3347, 0, 1620538346, 0, 'Darashia 2, Flat 18', 100000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3348, 0, 1620538346, 0, 'Darashia 2, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3349, 0, 1620538346, 0, 'Darashia 2, Flat 12', 80000, 13, 0, 0, 0, 0, 30, NULL, 2),
(3350, 0, 1620538346, 0, 'Darashia 1, Flat 03', 300000, 13, 0, 0, 0, 0, 96, NULL, 8),
(3351, 0, 1620538346, 0, 'Darashia 1, Flat 04', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3352, 0, 1620538346, 0, 'Darashia 1, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3353, 0, 1620538346, 0, 'Darashia 1, Flat 01', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3354, 0, 1620538346, 0, 'Darashia 1, Flat 05', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3355, 0, 1620538346, 0, 'Darashia 1, Flat 12', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3356, 0, 1620538346, 0, 'Darashia 1, Flat 13', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3357, 0, 1620538346, 0, 'Darashia 1, Flat 14', 200000, 13, 0, 0, 0, 0, 102, NULL, 10),
(3358, 0, 1620538346, 0, 'Darashia 1, Flat 11', 100000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3359, 0, 1620538346, 0, 'Darashia 5, Flat 02', 150000, 13, 0, 0, 0, 0, 60, NULL, 4),
(3360, 0, 1620538346, 0, 'Darashia 5, Flat 01', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3361, 0, 1620538346, 0, 'Darashia 5, Flat 05', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3362, 0, 1620538346, 0, 'Darashia 5, Flat 04', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3363, 0, 1620538346, 0, 'Darashia 5, Flat 03', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3364, 0, 1620538346, 0, 'Darashia 5, Flat 11', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3365, 0, 1620538346, 0, 'Darashia 5, Flat 12', 150000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3366, 0, 1620538346, 0, 'Darashia 5, Flat 13', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3367, 0, 1620538346, 0, 'Darashia 5, Flat 14', 150000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3368, 0, 1620538346, 0, 'Darashia 6a', 300000, 13, 0, 0, 0, 0, 117, NULL, 4),
(3369, 0, 1620538346, 0, 'Darashia 6b', 300000, 13, 0, 0, 0, 0, 139, NULL, 4),
(3370, 0, 1620538346, 0, 'Darashia 4, Flat 02', 200000, 13, 0, 0, 0, 0, 66, NULL, 4),
(3371, 0, 1620538346, 0, 'Darashia 4, Flat 03', 150000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3372, 0, 1620538346, 0, 'Darashia 4, Flat 04', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3373, 0, 1620538346, 0, 'Darashia 4, Flat 05', 150000, 13, 0, 0, 0, 0, 48, NULL, 4),
(3374, 0, 1620538346, 0, 'Darashia 4, Flat 01', 100000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3375, 0, 1620538346, 0, 'Darashia 4, Flat 12', 200000, 13, 0, 0, 0, 0, 96, NULL, 6),
(3376, 0, 1620538346, 0, 'Darashia 4, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3377, 0, 1620538346, 0, 'Darashia 4, Flat 13', 200000, 13, 0, 0, 0, 0, 72, NULL, 4),
(3378, 0, 1620538346, 0, 'Darashia 4, Flat 14', 150000, 13, 0, 0, 0, 0, 78, NULL, 4),
(3379, 0, 1620538346, 0, 'Darashia 7, Flat 01', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3380, 0, 1620538346, 0, 'Darashia 7, Flat 02', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3381, 0, 1620538346, 0, 'Darashia 7, Flat 03', 200000, 13, 0, 0, 0, 0, 102, NULL, 8),
(3382, 0, 1620538346, 0, 'Darashia 7, Flat 05', 150000, 13, 0, 0, 0, 0, 42, NULL, 4),
(3383, 0, 1620538346, 0, 'Darashia 7, Flat 04', 150000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3384, 0, 1620538346, 0, 'Darashia 7, Flat 12', 200000, 13, 0, 0, 0, 0, 96, NULL, 8),
(3385, 0, 1620538346, 0, 'Darashia 7, Flat 11', 100000, 13, 0, 0, 0, 0, 42, NULL, 2),
(3386, 0, 1620538346, 0, 'Darashia 7, Flat 14', 200000, 13, 0, 0, 0, 0, 102, NULL, 8),
(3387, 0, 1620538346, 0, 'Darashia 7, Flat 13', 100000, 13, 0, 0, 0, 0, 48, NULL, 2),
(3388, 0, 1625822315, 0, 'Pirate Shipwreck 1', 800000, 13, 0, 0, 0, 0, 205, NULL, 0),
(3389, 0, 1625687043, 0, 'Pirate Shipwreck 2', 800000, 13, 0, 0, 0, 0, 294, NULL, 0),
(3390, 0, 1620538346, 0, 'The Shelter', 250000, 14, 0, 0, 0, 0, 560, NULL, 62),
(3391, 0, 1620538346, 0, 'Litter Promenade 1', 25000, 14, 0, 0, 0, 0, 25, NULL, 4),
(3392, 0, 1620538346, 0, 'Litter Promenade 2', 50000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3394, 0, 1620538346, 0, 'Litter Promenade 3', 25000, 14, 0, 0, 0, 0, 36, NULL, 2),
(3395, 0, 1620538346, 0, 'Litter Promenade 4', 25000, 14, 0, 0, 0, 0, 30, NULL, 2),
(3396, 0, 1620538346, 0, 'Rum Alley 3', 25000, 14, 0, 0, 0, 0, 28, NULL, 2),
(3397, 0, 1620538346, 0, 'Straycat\'s Corner 5', 80000, 14, 0, 0, 0, 0, 48, NULL, 4),
(3398, 0, 1620538346, 0, 'Straycat\'s Corner 6', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3399, 0, 1620538346, 0, 'Litter Promenade 5', 25000, 14, 0, 0, 0, 0, 35, NULL, 4),
(3401, 0, 1620538346, 0, 'Straycat\'s Corner 4', 50000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3402, 0, 1620538346, 0, 'Straycat\'s Corner 2', 50000, 14, 0, 0, 0, 0, 49, NULL, 2),
(3403, 0, 1620538346, 0, 'Straycat\'s Corner 1', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3404, 0, 1620538346, 0, 'Rum Alley 2', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3405, 0, 1620538346, 0, 'Rum Alley 1', 25000, 14, 0, 0, 0, 0, 36, NULL, 2),
(3406, 0, 1620538346, 0, 'Smuggler Backyard 3', 50000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3407, 0, 1620538346, 0, 'Shady Trail 3', 25000, 14, 0, 0, 0, 0, 25, NULL, 2),
(3408, 0, 1620538346, 0, 'Shady Trail 1', 100000, 14, 0, 0, 0, 0, 48, NULL, 10),
(3409, 0, 1620538346, 0, 'Shady Trail 2', 25000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3410, 0, 1620538346, 0, 'Smuggler Backyard 4', 25000, 14, 0, 0, 0, 0, 30, NULL, 2),
(3411, 0, 1620538346, 0, 'Smuggler Backyard 2', 25000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3412, 0, 1620538346, 0, 'Smuggler Backyard 1', 25000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3413, 0, 1620538346, 0, 'Smuggler Backyard 5', 25000, 14, 0, 0, 0, 0, 35, NULL, 4),
(3414, 0, 1620538346, 0, 'Sugar Street 1', 200000, 14, 0, 0, 0, 0, 84, NULL, 6),
(3415, 0, 1620538346, 0, 'Sugar Street 2', 150000, 14, 0, 0, 0, 0, 84, NULL, 6),
(3416, 0, 1620538346, 0, 'Sugar Street 3a', 100000, 14, 0, 0, 0, 0, 48, NULL, 6),
(3417, 0, 1620538346, 0, 'Sugar Street 3b', 150000, 14, 0, 0, 0, 0, 66, NULL, 6),
(3418, 0, 1620538346, 0, 'Sugar Street 4d', 50000, 14, 0, 0, 0, 0, 24, NULL, 4),
(3419, 0, 1620538346, 0, 'Sugar Street 4c', 25000, 14, 0, 0, 0, 0, 24, NULL, 2),
(3420, 0, 1620538346, 0, 'Sugar Street 4b', 100000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3421, 0, 1620538346, 0, 'Sugar Street 4a', 80000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3422, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 01', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3423, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 03', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3424, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 05', 50000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3425, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 06', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3426, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 04', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3427, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 02', 50000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3428, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 07', 80000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3429, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 09', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3430, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 11', 25000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3431, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 08', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3432, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 10', 50000, 14, 0, 0, 0, 0, 30, NULL, 4),
(3433, 0, 1620538346, 0, 'Harvester\'s Haven, Flat 12', 25000, 14, 0, 0, 0, 0, 36, NULL, 4),
(3434, 0, 1620538346, 0, 'Marble Lane 3', 600000, 14, 0, 0, 0, 0, 240, NULL, 8),
(3435, 0, 1620538346, 0, 'Marble Lane 2', 400000, 14, 0, 0, 0, 0, 200, NULL, 6),
(3436, 0, 1620538346, 0, 'Marble Lane 4', 400000, 14, 0, 0, 0, 0, 192, NULL, 8),
(3437, 0, 1620538346, 0, 'Admiral\'s Avenue 1', 400000, 14, 0, 0, 0, 0, 176, NULL, 4),
(3438, 0, 1620538346, 0, 'Admiral\'s Avenue 2', 400000, 14, 0, 0, 0, 0, 183, NULL, 8),
(3439, 0, 1620538346, 0, 'Admiral\'s Avenue 3', 300000, 14, 0, 0, 0, 0, 144, NULL, 4),
(3440, 0, 1620538346, 0, 'Ivory Circle 1', 400000, 14, 0, 0, 0, 0, 160, NULL, 4),
(3441, 0, 1620538346, 0, 'Sugar Street 5', 150000, 14, 0, 0, 0, 0, 48, NULL, 4),
(3442, 0, 1620538346, 0, 'Freedom Street 1', 200000, 14, 0, 0, 0, 0, 84, NULL, 4),
(3443, 0, 1620538346, 0, 'Trader\'s Point 1', 200000, 14, 0, 0, 0, 0, 77, NULL, 4),
(3444, 0, 1620538346, 0, 'Trader\'s Point 2 (Shop)', 600000, 14, 0, 0, 0, 0, 195, NULL, 4),
(3445, 0, 1620538346, 0, 'Trader\'s Point 3 (Shop)', 600000, 14, 0, 0, 0, 0, 198, NULL, 4),
(3446, 0, 1620538346, 0, 'Ivory Mansion', 800000, 14, 0, 0, 0, 0, 455, NULL, 0),
(3447, 0, 1620538346, 0, 'Ivory Circle 2', 400000, 14, 0, 0, 0, 0, 196, NULL, 4),
(3448, 0, 1620538346, 0, 'Ivy Cottage', 500000, 14, 0, 0, 0, 0, 876, NULL, 52),
(3449, 0, 1620538346, 0, 'Marble Lane 1', 600000, 14, 0, 0, 0, 0, 320, NULL, 12),
(3450, 0, 1620538346, 0, 'Freedom Street 2', 400000, 14, 0, 0, 0, 0, 208, NULL, 8),
(3452, 0, 1620538346, 0, 'Meriana Beach', 150000, 14, 0, 0, 0, 0, 219, NULL, 6),
(3453, 0, 1620538346, 0, 'The Tavern 1a', 150000, 14, 0, 0, 0, 0, 73, NULL, 8),
(3454, 0, 1620538346, 0, 'The Tavern 1b', 100000, 14, 0, 0, 0, 0, 54, NULL, 4),
(3455, 0, 1620538346, 0, 'The Tavern 1c', 200000, 14, 0, 0, 0, 0, 126, NULL, 6),
(3456, 0, 1620538346, 0, 'The Tavern 1d', 100000, 14, 0, 0, 0, 0, 54, NULL, 4),
(3457, 0, 1620538346, 0, 'The Tavern 2a', 300000, 14, 0, 0, 0, 0, 163, NULL, 10),
(3458, 0, 1620538346, 0, 'The Tavern 2b', 100000, 14, 0, 0, 0, 0, 57, NULL, 4),
(3459, 0, 1620538346, 0, 'The Tavern 2d', 100000, 14, 0, 0, 0, 0, 40, NULL, 4),
(3460, 0, 1620538346, 0, 'The Tavern 2c', 50000, 14, 0, 0, 0, 0, 40, NULL, 2),
(3461, 0, 1620538346, 0, 'The Yeah Beach Project', 150000, 14, 0, 0, 0, 0, 202, NULL, 6),
(3462, 0, 1620538346, 0, 'Mountain Hideout', 500000, 14, 0, 0, 0, 0, 511, NULL, 34),
(3463, 0, 1620538346, 0, 'Darashia 8, Flat 02', 300000, 13, 0, 0, 0, 0, 135, NULL, 4),
(3464, 0, 1620538346, 0, 'Castle, Basement, Flat 01', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3465, 0, 1620538346, 0, 'Castle, Basement, Flat 02', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3466, 0, 1620538346, 0, 'Castle, Basement, Flat 03', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3467, 0, 1620538346, 0, 'Castle, Basement, Flat 05', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3468, 0, 1620538346, 0, 'Castle, Basement, Flat 04', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3469, 0, 1620538346, 0, 'Castle, Basement, Flat 06', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3470, 0, 1620538346, 0, 'Castle, Basement, Flat 07', 50000, 11, 0, 0, 0, 0, 24, NULL, 2),
(3471, 0, 1620538346, 0, 'Castle, Basement, Flat 09', 25000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3472, 0, 1620538346, 0, 'Castle, Basement, Flat 08', 50000, 11, 0, 0, 0, 0, 30, NULL, 2),
(3473, 0, 1620538346, 0, 'Cormaya 1', 150000, 11, 0, 0, 0, 0, 49, NULL, 4),
(3474, 0, 1620538346, 0, 'Cormaya Flats, Flat 01', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3475, 0, 1620538346, 0, 'Cormaya Flats, Flat 02', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3476, 0, 1620538346, 0, 'Cormaya Flats, Flat 03', 50000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3477, 0, 1620538346, 0, 'Cormaya Flats, Flat 06', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3478, 0, 1620538346, 0, 'Cormaya Flats, Flat 05', 25000, 11, 0, 0, 0, 0, 20, NULL, 2),
(3479, 0, 1620538346, 0, 'Cormaya Flats, Flat 04', 50000, 11, 0, 0, 0, 0, 35, NULL, 4),
(3480, 0, 1620538346, 0, 'Cormaya Flats, Flat 11', 100000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3482, 0, 1620538346, 0, 'Cormaya Flats, Flat 13', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3483, 0, 1620538346, 0, 'Cormaya Flats, Flat 12', 100000, 11, 0, 0, 0, 0, 45, NULL, 4),
(3485, 0, 1620538346, 0, 'Cormaya Flats, Flat 14', 25000, 11, 0, 0, 0, 0, 30, NULL, 4),
(3486, 0, 1620538346, 0, 'Cormaya 2', 300000, 11, 0, 0, 0, 0, 144, NULL, 6),
(3487, 0, 1620538346, 0, 'Cormaya 4', 150000, 11, 0, 0, 0, 0, 63, NULL, 4),
(3488, 0, 1620538346, 0, 'Cormaya 3', 200000, 11, 0, 0, 0, 0, 72, NULL, 4),
(3489, 0, 1620538346, 0, 'Cormaya 6', 200000, 11, 0, 0, 0, 0, 84, NULL, 4),
(3490, 0, 1620538346, 0, 'Cormaya 7', 200000, 11, 0, 0, 0, 0, 84, NULL, 4),
(3491, 0, 1620538346, 0, 'Cormaya 8', 200000, 11, 0, 0, 0, 0, 106, NULL, 4),
(3492, 0, 1620538346, 0, 'Cormaya 5', 300000, 11, 0, 0, 0, 0, 165, NULL, 6),
(3493, 0, 1620538346, 0, 'Castle of the White Dragon', 1000000, 11, 0, 0, 0, 0, 888, NULL, 38),
(3494, 0, 1620538346, 0, 'Cormaya 9b', 150000, 11, 0, 0, 0, 0, 88, NULL, 4),
(3495, 0, 1620538346, 0, 'Cormaya 9a', 80000, 11, 0, 0, 0, 0, 48, NULL, 4),
(3496, 0, 1620538346, 0, 'Cormaya 9d', 150000, 11, 0, 0, 0, 0, 88, NULL, 4),
(3497, 0, 1620538346, 0, 'Cormaya 9c', 80000, 11, 0, 0, 0, 0, 48, NULL, 4),
(3498, 0, 1620538346, 0, 'Cormaya 10', 300000, 11, 0, 0, 0, 0, 144, NULL, 6),
(3499, 0, 1620538346, 0, 'Cormaya 11', 150000, 11, 0, 0, 0, 0, 72, NULL, 4),
(3500, 0, 1620538346, 0, 'Edron Flats, Flat 22', 50000, 11, 0, 0, 0, 0, 25, NULL, 2),
(3501, 0, 1620538346, 0, 'Magic Academy, Shop', 150000, 11, 0, 0, 0, 0, 48, NULL, 2),
(3502, 0, 1620538346, 0, 'Magic Academy, Flat 1', 100000, 11, 0, 0, 0, 0, 55, NULL, 6),
(3503, 0, 1620538346, 0, 'Magic Academy, Guild', 500000, 11, 0, 0, 0, 0, 401, NULL, 28),
(3504, 0, 1620538346, 0, 'Magic Academy, Flat 2', 80000, 11, 0, 0, 0, 0, 53, NULL, 4),
(3505, 0, 1620538346, 0, 'Magic Academy, Flat 3', 100000, 11, 0, 0, 0, 0, 53, NULL, 2),
(3506, 0, 1620538346, 0, 'Magic Academy, Flat 4', 100000, 11, 0, 0, 0, 0, 50, NULL, 4),
(3507, 0, 1620538346, 0, 'Magic Academy, Flat 5', 80000, 11, 0, 0, 0, 0, 53, NULL, 2),
(3508, 0, 1620538346, 0, 'Oskahl I f', 100000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3509, 0, 1620538346, 0, 'Oskahl I g', 100000, 10, 0, 0, 0, 0, 42, NULL, 4),
(3510, 0, 1620538346, 0, 'Oskahl I h', 150000, 10, 0, 0, 0, 0, 74, NULL, 6),
(3511, 0, 1620538346, 0, 'Oskahl I i', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3512, 0, 1620538346, 0, 'Oskahl I j', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3513, 0, 1620538346, 0, 'Oskahl I b', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3514, 0, 1620538346, 0, 'Oskahl I d', 100000, 10, 0, 0, 0, 0, 42, NULL, 4),
(3515, 0, 1620538346, 0, 'Oskahl I e', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3516, 0, 1620538346, 0, 'Oskahl I c', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3517, 0, 1620538346, 0, 'Chameken I', 100000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3518, 0, 1620538346, 0, 'Chameken II', 80000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3519, 0, 1620538346, 0, 'Charsirakh III', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3520, 0, 1620538346, 0, 'Charsirakh II', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3521, 0, 1620538346, 0, 'Murkhol I a', 80000, 10, 0, 0, 0, 0, 48, NULL, 4),
(3523, 0, 1620538346, 0, 'Murkhol I c', 50000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3524, 0, 1620538346, 0, 'Murkhol I b', 50000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3525, 0, 1620538346, 0, 'Charsirakh I b', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3526, 0, 1620538346, 0, 'Harrah I', 250000, 10, 0, 0, 0, 0, 232, NULL, 20),
(3527, 0, 1620538346, 0, 'Thanah I d', 200000, 10, 0, 0, 0, 0, 84, NULL, 8),
(3528, 0, 1620538346, 0, 'Thanah I c', 200000, 10, 0, 0, 0, 0, 112, NULL, 6),
(3529, 0, 1620538346, 0, 'Thanah I b', 150000, 10, 0, 0, 0, 0, 100, NULL, 6),
(3530, 0, 1620538346, 0, 'Thanah I a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3531, 0, 1620538346, 0, 'Othehothep I c', 150000, 10, 0, 0, 0, 0, 60, NULL, 6),
(3532, 0, 1620538346, 0, 'Othehothep I d', 150000, 10, 0, 0, 0, 0, 84, NULL, 8),
(3533, 0, 1620538346, 0, 'Othehothep I b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3534, 0, 1620538346, 0, 'Othehothep II c', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3535, 0, 1620538346, 0, 'Othehothep II d', 80000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3536, 0, 1620538346, 0, 'Othehothep II e', 150000, 10, 0, 0, 0, 0, 48, NULL, 4),
(3537, 0, 1620538346, 0, 'Othehothep II f', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3538, 0, 1620538346, 0, 'Othehothep II b', 150000, 10, 0, 0, 0, 0, 81, NULL, 6),
(3539, 0, 1620538346, 0, 'Othehothep II a', 25000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3540, 0, 1620538346, 0, 'Mothrem I', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3541, 0, 1620538346, 0, 'Arakmehn I', 100000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3542, 0, 1620538346, 0, 'Arakmehn II', 80000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3543, 0, 1620538346, 0, 'Arakmehn III', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3544, 0, 1620538346, 0, 'Arakmehn IV', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3545, 0, 1620538346, 0, 'Unklath II b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3546, 0, 1620538346, 0, 'Unklath II c', 50000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3547, 0, 1620538346, 0, 'Unklath II d', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3548, 0, 1620538346, 0, 'Unklath II a', 50000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3549, 0, 1620538346, 0, 'Rathal I b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3550, 0, 1620538346, 0, 'Rathal I c', 25000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3551, 0, 1620538346, 0, 'Rathal I d', 50000, 10, 0, 0, 0, 0, 30, NULL, 4),
(3552, 0, 1620538346, 0, 'Rathal I e', 50000, 10, 0, 0, 0, 0, 36, NULL, 4),
(3553, 0, 1620538346, 0, 'Rathal I a', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3554, 0, 1620538346, 0, 'Rathal II b', 50000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3555, 0, 1620538346, 0, 'Rathal II c', 50000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3556, 0, 1620538346, 0, 'Rathal II d', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3557, 0, 1620538346, 0, 'Rathal II a', 80000, 10, 0, 0, 0, 0, 49, NULL, 2),
(3558, 0, 1620538346, 0, 'Esuph I', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3559, 0, 1620538346, 0, 'Esuph II b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3560, 0, 1620538346, 0, 'Esuph II a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3561, 0, 1620538346, 0, 'Esuph III b', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3562, 0, 1620538346, 0, 'Esuph III a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3564, 0, 1620538346, 0, 'Esuph IV c', 80000, 10, 0, 0, 0, 0, 43, NULL, 4),
(3565, 0, 1620538346, 0, 'Esuph IV d', 25000, 10, 0, 0, 0, 0, 38, NULL, 2),
(3566, 0, 1620538346, 0, 'Esuph IV a', 25000, 10, 0, 0, 0, 0, 25, NULL, 2),
(3567, 0, 1620538346, 0, 'Horakhal', 250000, 10, 0, 0, 0, 0, 332, NULL, 28),
(3568, 0, 1620538346, 0, 'Botham II d', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3569, 0, 1620538346, 0, 'Botham II e', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3570, 0, 1620538346, 0, 'Botham II f', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3571, 0, 1620538346, 0, 'Botham II g', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3572, 0, 1620538346, 0, 'Botham II c', 100000, 10, 0, 0, 0, 0, 40, NULL, 4),
(3573, 0, 1620538346, 0, 'Botham II b', 100000, 10, 0, 0, 0, 0, 60, NULL, 4),
(3574, 0, 1620538346, 0, 'Botham II a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3575, 0, 1620538346, 0, 'Botham III f', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3576, 0, 1620538346, 0, 'Botham III h', 200000, 10, 0, 0, 0, 0, 113, NULL, 6),
(3577, 0, 1620538346, 0, 'Botham III g', 100000, 10, 0, 0, 0, 0, 56, NULL, 4),
(3578, 0, 1620538346, 0, 'Botham III b', 50000, 10, 0, 0, 0, 0, 25, NULL, 4),
(3579, 0, 1620538346, 0, 'Botham III c', 25000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3581, 0, 1620538346, 0, 'Botham III e', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3582, 0, 1620538346, 0, 'Botham III a', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3583, 0, 1620538346, 0, 'Botham IV f', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3584, 0, 1620538346, 0, 'Botham IV h', 100000, 10, 0, 0, 0, 0, 56, NULL, 2),
(3585, 0, 1620538346, 0, 'Botham IV i', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3586, 0, 1620538346, 0, 'Botham IV g', 100000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3587, 0, 1620538346, 0, 'Botham IV e', 100000, 10, 0, 0, 0, 0, 121, NULL, 8),
(3591, 0, 1620538346, 0, 'Botham IV a', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3592, 0, 1620538346, 0, 'Ramen Tah', 250000, 10, 0, 0, 0, 0, 227, NULL, 32),
(3593, 0, 1620538346, 0, 'Botham I c', 150000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3594, 0, 1620538346, 0, 'Botham I e', 80000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3595, 0, 1620538346, 0, 'Botham I d', 150000, 10, 0, 0, 0, 0, 98, NULL, 6),
(3596, 0, 1620538346, 0, 'Botham I b', 150000, 10, 0, 0, 0, 0, 100, NULL, 6),
(3597, 0, 1620538346, 0, 'Botham I a', 50000, 10, 0, 0, 0, 0, 40, NULL, 2),
(3598, 0, 1620538346, 0, 'Charsirakh I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3599, 0, 1620538346, 0, 'Low Waters Observatory', 400000, 10, 0, 0, 0, 0, 743, NULL, 10),
(3600, 0, 1620538346, 0, 'Oskahl I a', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3601, 0, 1620538346, 0, 'Othehothep I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3602, 0, 1620538346, 0, 'Othehothep III a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3603, 0, 1620538346, 0, 'Othehothep III b', 80000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3604, 0, 1620538346, 0, 'Othehothep III c', 80000, 10, 0, 0, 0, 0, 30, NULL, 4),
(3605, 0, 1620538346, 0, 'Othehothep III d', 80000, 10, 0, 0, 0, 0, 42, NULL, 2),
(3606, 0, 1620538346, 0, 'Othehothep III e', 50000, 10, 0, 0, 0, 0, 35, NULL, 2),
(3607, 0, 1620538346, 0, 'Othehothep III f', 50000, 10, 0, 0, 0, 0, 37, NULL, 2),
(3608, 0, 1620538346, 0, 'Unklath I f', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3609, 0, 1620538346, 0, 'Unklath I g', 100000, 10, 0, 0, 0, 0, 56, NULL, 2),
(3610, 0, 1620538346, 0, 'Unklath I d', 150000, 10, 0, 0, 0, 0, 56, NULL, 6),
(3611, 0, 1620538346, 0, 'Unklath I e', 150000, 10, 0, 0, 0, 0, 64, NULL, 4),
(3612, 0, 1620538346, 0, 'Unklath I b', 100000, 10, 0, 0, 0, 0, 55, NULL, 4),
(3613, 0, 1620538346, 0, 'Unklath I c', 100000, 10, 0, 0, 0, 0, 66, NULL, 4),
(3614, 0, 1620538346, 0, 'Unklath I a', 100000, 10, 0, 0, 0, 0, 49, NULL, 4),
(3615, 0, 1620538346, 0, 'Thanah II a', 25000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3616, 0, 1620538346, 0, 'Thanah II b', 50000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3617, 0, 1620538346, 0, 'Thanah II d', 50000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3618, 0, 1620538346, 0, 'Thanah II e', 25000, 10, 0, 0, 0, 0, 16, NULL, 2),
(3619, 0, 1620538346, 0, 'Thanah II c', 25000, 10, 0, 0, 0, 0, 24, NULL, 2),
(3620, 0, 1620538346, 0, 'Thanah II f', 150000, 10, 0, 0, 0, 0, 86, NULL, 6),
(3621, 0, 1620538346, 0, 'Thanah II g', 100000, 10, 0, 0, 0, 0, 51, NULL, 4),
(3622, 0, 1620538346, 0, 'Thanah II h', 100000, 10, 0, 0, 0, 0, 55, NULL, 4),
(3623, 0, 1620538346, 0, 'Thrarhor I a (Shop)', 50000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3624, 0, 1620538346, 0, 'Thrarhor I c (Shop)', 50000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3625, 0, 1620538346, 0, 'Thrarhor I d (Shop)', 80000, 10, 0, 0, 0, 0, 32, NULL, 2),
(3626, 0, 1620538346, 0, 'Thrarhor I b (Shop)', 50000, 10, 0, 0, 0, 0, 28, NULL, 2),
(3627, 0, 1620538346, 0, 'Uthemath I a', 25000, 10, 0, 0, 0, 0, 20, NULL, 2),
(3628, 0, 1620538346, 0, 'Uthemath I b', 50000, 10, 0, 0, 0, 0, 36, NULL, 2),
(3629, 0, 1620538346, 0, 'Uthemath I c', 80000, 10, 0, 0, 0, 0, 45, NULL, 4),
(3630, 0, 1620538346, 0, 'Uthemath I d', 80000, 10, 0, 0, 0, 0, 30, NULL, 2),
(3631, 0, 1620538346, 0, 'Uthemath I e', 80000, 10, 0, 0, 0, 0, 35, NULL, 4),
(3632, 0, 1620538346, 0, 'Uthemath I f', 150000, 10, 0, 0, 0, 0, 104, NULL, 6),
(3633, 0, 1620538346, 0, 'Uthemath II', 250000, 10, 0, 0, 0, 0, 170, NULL, 16),
(3634, 0, 1620538346, 0, 'Marketplace 1', 400000, 22, 0, 0, 0, 0, 137, NULL, 2),
(3635, 0, 1620538346, 0, 'Marketplace 2', 400000, 22, 0, 0, 0, 0, 148, NULL, 4),
(3636, 0, 1620538346, 0, 'Quay 1', 200000, 22, 0, 0, 0, 0, 124, NULL, 4),
(3637, 0, 1620538346, 0, 'Quay 2', 200000, 22, 0, 0, 0, 0, 185, NULL, 6),
(3638, 0, 1620538346, 0, 'Halls of Sun and Sea', 1000000, 22, 0, 0, 0, 0, 536, NULL, 18),
(3639, 0, 1620538346, 0, 'Palace Vicinity', 200000, 22, 0, 0, 0, 0, 198, NULL, 4),
(3640, 0, 1620538346, 0, 'Wave Tower', 400000, 22, 0, 0, 0, 0, 341, NULL, 8),
(3641, 0, 1620538346, 0, 'Old Sanctuary of God King Qjell', 300000, 18, 0, 0, 0, 0, 701, NULL, 12),
(3642, 0, 1620538346, 0, 'Old Heritage Estate', 600000, 20, 0, 0, 0, 0, 435, NULL, 14),
(3643, 0, 1620538346, 0, 'Rathleton Plaza 4', 400000, 20, 0, 0, 0, 0, 200, NULL, 4),
(3644, 0, 1620538346, 0, 'Rathleton Plaza 3', 400000, 20, 0, 0, 0, 0, 224, NULL, 6),
(3645, 0, 1620538346, 0, 'Rathleton Plaza 2', 400000, 20, 0, 0, 0, 0, 112, NULL, 4),
(3646, 0, 1620538346, 0, 'Rathleton Plaza 1', 300000, 20, 0, 0, 0, 0, 120, NULL, 4),
(3647, 0, 1620538346, 0, 'Antimony Lane 2', 400000, 20, 0, 0, 0, 0, 196, NULL, 6),
(3648, 0, 1620538346, 0, 'Antimony Lane 1', 400000, 20, 0, 0, 0, 0, 265, NULL, 10),
(3649, 0, 1620538346, 0, 'Wallside Residence', 400000, 20, 0, 0, 0, 0, 264, NULL, 8),
(3650, 0, 1620538346, 0, 'Wallside Lane 1', 800000, 20, 0, 0, 0, 0, 286, NULL, 8),
(3651, 0, 1620538346, 0, 'Wallside Lane 2', 600000, 20, 0, 0, 0, 0, 312, NULL, 8),
(3652, 0, 1620538346, 0, 'Vanward Flats B', 400000, 20, 0, 0, 0, 0, 243, NULL, 8),
(3653, 0, 1620538346, 0, 'Vanward Flats A', 400000, 20, 0, 0, 0, 0, 276, NULL, 8),
(3654, 0, 1620538346, 0, 'Bronze Brothers Bastion', 5000000, 20, 0, 0, 0, 0, 1231, NULL, 30),
(3655, 0, 1620538346, 0, 'Cistern Ave', 300000, 20, 0, 0, 0, 0, 156, NULL, 4),
(3656, 0, 1620538346, 0, 'Antimony Lane 4', 400000, 20, 0, 0, 0, 0, 218, NULL, 6),
(3657, 0, 1620538346, 0, 'Antimony Lane 3', 400000, 20, 0, 0, 0, 0, 140, NULL, 6),
(3658, 0, 1620538346, 0, 'Rathleton Hills Residence', 400000, 20, 0, 0, 0, 0, 252, NULL, 6),
(3659, 0, 1620538346, 0, 'Rathleton Hills Estate', 1000000, 20, 0, 0, 0, 0, 710, NULL, 26),
(3660, 0, 1620538346, 0, 'Lion\'s Head Reef', 400000, 25, 0, 0, 0, 0, 239, NULL, 0),
(3661, 0, 1620538346, 0, 'Shadow Caves 1', 50000, 5, 0, 0, 0, 0, 45, NULL, 4),
(3662, 0, 1620538346, 0, 'Shadow Caves 2', 50000, 5, 0, 0, 0, 0, 54, NULL, 4),
(3663, 0, 1620538346, 0, 'Shadow Caves 3', 100000, 5, 0, 0, 0, 0, 80, NULL, 4),
(3664, 0, 1620538346, 0, 'Shadow Caves 4', 100000, 5, 0, 0, 0, 0, 80, NULL, 4),
(3665, 0, 1620538346, 0, 'Shadow Caves 5', 100000, 5, 0, 0, 0, 0, 90, NULL, 4),
(3666, 0, 1620538346, 0, 'Shadow Caves 6', 100000, 5, 0, 0, 0, 0, 90, NULL, 4),
(3667, 0, 1620538346, 0, 'Northport Clanhall', 250000, 6, 0, 0, 0, 0, 306, NULL, 20),
(3668, 0, 1620538346, 0, 'The Treehouse', 250000, 15, 0, 0, 0, 0, 1067, NULL, 46),
(3669, 0, 1620538346, 0, 'Frost Manor', 500000, 16, 0, 0, 0, 0, 743, NULL, 48),
(3670, 0, 1620538346, 0, 'Hare\'s Den', 150000, 7, 0, 0, 0, 0, 306, NULL, 8),
(3671, 0, 1620538346, 0, 'Lost Cavern', 200000, 7, 0, 0, 0, 0, 806, NULL, 14),
(3673, 0, 1620538346, 0, 'Caveman Shelter', 150000, 12, 0, 0, 0, 0, 146, NULL, 8),
(3674, 0, 1620538346, 0, 'Eastern House of Tranquility', 200000, 12, 0, 0, 0, 0, 419, NULL, 10),
(3675, 0, 1620538346, 0, 'Lakeside Mansion', 300000, 16, 0, 0, 0, 0, 218, NULL, 0),
(3676, 0, 1620538346, 0, 'Pilchard Bin 1', 80000, 16, 0, 0, 0, 0, 30, NULL, 4),
(3677, 0, 1620538346, 0, 'Pilchard Bin 2', 50000, 16, 0, 0, 0, 0, 24, NULL, 4),
(3678, 0, 1620538346, 0, 'Pilchard Bin 3', 50000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3679, 0, 1620538346, 0, 'Pilchard Bin 4', 50000, 16, 0, 0, 0, 0, 24, NULL, 2),
(3680, 0, 1620538346, 0, 'Pilchard Bin 5', 80000, 16, 0, 0, 0, 0, 24, NULL, 4),
(3681, 0, 1620538346, 0, 'Pilchard Bin 6', 25000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3682, 0, 1620538346, 0, 'Pilchard Bin 7', 25000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3683, 0, 1620538346, 0, 'Pilchard Bin 8', 25000, 16, 0, 0, 0, 0, 20, NULL, 4),
(3684, 0, 1620538346, 0, 'Pilchard Bin 9', 50000, 16, 0, 0, 0, 0, 20, NULL, 2),
(3685, 0, 1620538346, 0, 'Pilchard Bin 10', 0, 16, 0, 0, 0, 0, 20, NULL, 2),
(3686, 0, 1620538346, 0, 'Mammoth House', 300000, 16, 0, 0, 0, 0, 310, NULL, 12),
(3687, 0, 0, 0, 'Master Guildhall', 5000000, 8, 0, 0, 0, 0, 287, NULL, 12),
(3688, 0, 0, 0, 'Central Plaza 4', 50000, 6, 0, 0, 0, 0, 12, NULL, 0),
(3689, 0, 1621392900, 0, 'Frodo\'s Rent House 1', 1000, 8, 0, 0, 0, 0, 20, NULL, 2),
(3690, 0, 1621392900, 0, 'Frodo\'s Rent House 2', 1000, 8, 0, 0, 0, 0, 25, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `house_lists`
--

CREATE TABLE `house_lists` (
  `house_id` int(11) NOT NULL,
  `listid` int(11) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_bans`
--

CREATE TABLE `ip_bans` (
  `ip` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `banned_at` bigint(20) NOT NULL,
  `expires_at` bigint(20) NOT NULL,
  `banned_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `account_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `code_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `live_casts`
--

CREATE TABLE `live_casts` (
  `player_id` int(11) NOT NULL,
  `cast_name` varchar(255) NOT NULL,
  `password` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `spectators` smallint(5) DEFAULT 0,
  `version` int(10) DEFAULT 1220
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `market_history`
--

CREATE TABLE `market_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `expires_at` bigint(20) UNSIGNED NOT NULL,
  `inserted` bigint(20) UNSIGNED NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `market_offers`
--

CREATE TABLE `market_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `itemtype` int(10) UNSIGNED NOT NULL,
  `amount` smallint(5) UNSIGNED NOT NULL,
  `created` bigint(20) UNSIGNED NOT NULL,
  `anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `newsticker`
--

CREATE TABLE `newsticker` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` int(11) NOT NULL,
  `text` mediumtext NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagseguro`
--

CREATE TABLE `pagseguro` (
  `date` datetime NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `lastEventDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagseguro_transactions`
--

CREATE TABLE `pagseguro_transactions` (
  `transaction_code` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `item_count` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `payment_amount` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paypal_transactions`
--

CREATE TABLE `paypal_transactions` (
  `id` int(11) NOT NULL,
  `payment_status` varchar(70) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `payer_email` varchar(255) NOT NULL DEFAULT '',
  `payer_id` varchar(255) NOT NULL DEFAULT '',
  `item_number1` varchar(255) NOT NULL DEFAULT '',
  `mc_gross` float NOT NULL,
  `mc_currency` varchar(5) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT 1,
  `account_id` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `vocation` int(11) NOT NULL DEFAULT 0,
  `health` int(11) NOT NULL DEFAULT 150,
  `healthmax` int(11) NOT NULL DEFAULT 150,
  `experience` bigint(20) NOT NULL DEFAULT 0,
  `exptoday` int(11) DEFAULT NULL,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136,
  `lookaddons` int(11) NOT NULL DEFAULT 0,
  `maglevel` int(11) NOT NULL DEFAULT 0,
  `mana` int(11) NOT NULL DEFAULT 0,
  `manamax` int(11) NOT NULL DEFAULT 0,
  `manaspent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `soul` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `town_id` int(11) NOT NULL DEFAULT 0,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `conditions` blob NOT NULL,
  `cap` int(11) NOT NULL DEFAULT 0,
  `sex` int(11) NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `save` tinyint(1) NOT NULL DEFAULT 1,
  `skull` tinyint(1) NOT NULL DEFAULT 0,
  `skulltime` bigint(20) NOT NULL DEFAULT 0,
  `lastlogout` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `blessings` tinyint(2) NOT NULL DEFAULT 0,
  `blessings1` tinyint(4) NOT NULL DEFAULT 0,
  `blessings2` tinyint(4) NOT NULL DEFAULT 0,
  `blessings3` tinyint(4) NOT NULL DEFAULT 0,
  `blessings4` tinyint(4) NOT NULL DEFAULT 0,
  `blessings5` tinyint(4) NOT NULL DEFAULT 0,
  `blessings6` tinyint(4) NOT NULL DEFAULT 0,
  `blessings7` tinyint(4) NOT NULL DEFAULT 0,
  `blessings8` tinyint(4) NOT NULL DEFAULT 0,
  `onlinetime` bigint(20) NOT NULL DEFAULT 0,
  `deletion` bigint(15) NOT NULL DEFAULT 0,
  `balance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `bonusrerollcount` bigint(20) DEFAULT 0,
  `quickloot_fallback` tinyint(1) DEFAULT 0,
  `lookmountbody` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmountfeet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmounthead` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookmountlegs` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lookfamiliarstype` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `isreward` tinyint(1) NOT NULL DEFAULT 1,
  `istutorial` tinyint(1) NOT NULL DEFAULT 0,
  `offlinetraining_time` smallint(5) UNSIGNED NOT NULL DEFAULT 43200,
  `offlinetraining_skill` int(11) NOT NULL DEFAULT -1,
  `stamina` smallint(5) UNSIGNED NOT NULL DEFAULT 2520,
  `skill_fist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_club` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_club_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_sword` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_sword_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_axe` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_axe_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_dist` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_dist_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_shielding` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_shielding_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_fishing` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `skill_fishing_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `create_ip` bigint(20) NOT NULL DEFAULT 0,
  `create_date` bigint(20) NOT NULL DEFAULT 0,
  `hide_char` int(11) NOT NULL DEFAULT 0,
  `skill_critical_hit_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_damage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_critical_hit_damage_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_life_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_chance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_chance_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `skill_mana_leech_amount_tries` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_criticalhit_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_criticalhit_damage` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lifeleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_lifeleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_manaleech_chance` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `skill_manaleech_amount` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `manashield` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `max_manashield` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prey_stamina_1` int(11) DEFAULT NULL,
  `prey_stamina_2` int(11) DEFAULT NULL,
  `prey_stamina_3` int(11) DEFAULT NULL,
  `prey_column` smallint(6) NOT NULL DEFAULT 1,
  `xpboost_stamina` int(11) DEFAULT NULL,
  `xpboost_value` int(10) DEFAULT NULL,
  `marriage_status` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `hide_skills` int(11) DEFAULT NULL,
  `hide_set` int(11) DEFAULT NULL,
  `former` varchar(255) NOT NULL DEFAULT '-',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `marriage_spouse` int(11) NOT NULL DEFAULT -1,
  `loyalty_ranking` tinyint(1) NOT NULL DEFAULT 0,
  `bonus_rerolls` bigint(21) NOT NULL DEFAULT 0,
  `critical` int(20) DEFAULT 0,
  `bonus_reroll` int(11) NOT NULL DEFAULT 0,
  `sbw_points` int(11) NOT NULL DEFAULT 0,
  `instantrewardtokens` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `charmpoints` int(11) DEFAULT 0,
  `direction` tinyint(1) DEFAULT 0,
  `lookmount` int(11) DEFAULT 0,
  `version` int(11) DEFAULT 1000,
  `lootaction` tinyint(2) DEFAULT 0,
  `spells` blob DEFAULT NULL,
  `storages` mediumblob DEFAULT NULL,
  `items` longblob DEFAULT NULL,
  `depotitems` longblob DEFAULT NULL,
  `inboxitems` longblob DEFAULT NULL,
  `rewards` longblob DEFAULT NULL,
  `varcap` int(11) NOT NULL DEFAULT 0,
  `charmExpansion` tinyint(2) DEFAULT 0,
  `bestiarykills` longblob DEFAULT NULL,
  `charms` longblob DEFAULT NULL,
  `bestiaryTracker` longblob DEFAULT NULL,
  `autoloot` blob DEFAULT NULL,
  `lastday` bigint(22) DEFAULT 0,
  `cast` tinyint(1) NOT NULL DEFAULT 0,
  `sell_char` int(11) NOT NULL DEFAULT 0,
  `cast_viewers` int(11) NOT NULL DEFAULT 0,
  `cast_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `cast_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `cast_status` int(11) NOT NULL DEFAULT 0,
  `cast_version` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `name`, `group_id`, `account_id`, `level`, `vocation`, `health`, `healthmax`, `experience`, `exptoday`, `lookbody`, `lookfeet`, `lookhead`, `looklegs`, `looktype`, `lookaddons`, `maglevel`, `mana`, `manamax`, `manaspent`, `soul`, `town_id`, `posx`, `posy`, `posz`, `conditions`, `cap`, `sex`, `lastlogin`, `lastip`, `save`, `skull`, `skulltime`, `lastlogout`, `blessings`, `blessings1`, `blessings2`, `blessings3`, `blessings4`, `blessings5`, `blessings6`, `blessings7`, `blessings8`, `onlinetime`, `deletion`, `balance`, `bonusrerollcount`, `quickloot_fallback`, `lookmountbody`, `lookmountfeet`, `lookmounthead`, `lookmountlegs`, `lookfamiliarstype`, `isreward`, `istutorial`, `offlinetraining_time`, `offlinetraining_skill`, `stamina`, `skill_fist`, `skill_fist_tries`, `skill_club`, `skill_club_tries`, `skill_sword`, `skill_sword_tries`, `skill_axe`, `skill_axe_tries`, `skill_dist`, `skill_dist_tries`, `skill_shielding`, `skill_shielding_tries`, `skill_fishing`, `skill_fishing_tries`, `deleted`, `description`, `comment`, `create_ip`, `create_date`, `hide_char`, `skill_critical_hit_chance`, `skill_critical_hit_chance_tries`, `skill_critical_hit_damage`, `skill_critical_hit_damage_tries`, `skill_life_leech_chance`, `skill_life_leech_chance_tries`, `skill_life_leech_amount`, `skill_life_leech_amount_tries`, `skill_mana_leech_chance`, `skill_mana_leech_chance_tries`, `skill_mana_leech_amount`, `skill_mana_leech_amount_tries`, `skill_criticalhit_chance`, `skill_criticalhit_damage`, `skill_lifeleech_chance`, `skill_lifeleech_amount`, `skill_manaleech_chance`, `skill_manaleech_amount`, `manashield`, `max_manashield`, `prey_stamina_1`, `prey_stamina_2`, `prey_stamina_3`, `prey_column`, `xpboost_stamina`, `xpboost_value`, `marriage_status`, `hide_skills`, `hide_set`, `former`, `signature`, `marriage_spouse`, `loyalty_ranking`, `bonus_rerolls`, `critical`, `bonus_reroll`, `sbw_points`, `instantrewardtokens`, `charmpoints`, `direction`, `lookmount`, `version`, `lootaction`, `spells`, `storages`, `items`, `depotitems`, `inboxitems`, `rewards`, `varcap`, `charmExpansion`, `bestiarykills`, `charms`, `bestiaryTracker`, `autoloot`, `lastday`, `cast`, `sell_char`, `cast_viewers`, `cast_description`, `cast_password`, `cast_status`, `cast_version`) VALUES
(1, 'Rook Sample', 1, 1, 1, 0, 155, 155, 100, NULL, 113, 115, 95, 39, 129, 0, 2, 60, 60, 0, 0, 1, 0, 0, 0, '', 410, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 12, 155, 12, 155, 12, 155, 12, 93, 10, 0, 10, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0),
(2, 'Sorcerer Sample', 1, 1, 8, 1, 185, 185, 4200, NULL, 106, 76, 78, 58, 130, 0, 0, 90, 90, 0, 100, 8, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0),
(3, 'Druid Sample', 1, 1, 8, 2, 185, 185, 4200, NULL, 106, 76, 78, 58, 144, 0, 0, 90, 90, 0, 100, 8, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0),
(4, 'Paladin Sample', 1, 1, 8, 3, 185, 185, 4200, NULL, 106, 76, 78, 58, 129, 0, 0, 90, 90, 0, 100, 8, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0),
(5, 'Knight Sample', 1, 1, 8, 4, 185, 185, 4200, NULL, 106, 76, 78, 58, 131, 0, 0, 90, 90, 0, 100, 8, 0, 0, 0, '', 470, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 10, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0),
(294, 'ADM', 5, 6, 999, 0, 10000, 10000, 10000, NULL, 113, 115, 95, 39, 128, 0, 100, 10000, 10000, 0, 100, 8, 0, 0, 0, '', 410, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 43200, -1, 2520, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 100, 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, 0, NULL, NULL, '-', '', -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `players_online`
--

CREATE TABLE `players_online` (
  `player_id` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_autoloot`
--

CREATE TABLE `player_autoloot` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `autoloot_list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_autoloot_persist`
--

CREATE TABLE `player_autoloot_persist` (
  `player_guid` mediumint(9) DEFAULT NULL,
  `cont_id` mediumint(9) DEFAULT NULL,
  `item_id` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `player_binary_items`
--

CREATE TABLE `player_binary_items` (
  `player_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `items` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_charms`
--

CREATE TABLE `player_charms` (
  `player_guid` int(250) NOT NULL,
  `charm_points` varchar(250) DEFAULT NULL,
  `charm_expansion` tinyint(1) DEFAULT NULL,
  `rune_wound` int(250) DEFAULT NULL,
  `rune_enflame` int(250) DEFAULT NULL,
  `rune_poison` int(250) DEFAULT NULL,
  `rune_freeze` int(250) DEFAULT NULL,
  `rune_zap` int(250) DEFAULT NULL,
  `rune_curse` int(250) DEFAULT NULL,
  `rune_cripple` int(250) DEFAULT NULL,
  `rune_parry` int(250) DEFAULT NULL,
  `rune_dodge` int(250) DEFAULT NULL,
  `rune_adrenaline` int(250) DEFAULT NULL,
  `rune_numb` int(250) DEFAULT NULL,
  `rune_cleanse` int(250) DEFAULT NULL,
  `rune_bless` int(250) DEFAULT NULL,
  `rune_scavenge` int(250) DEFAULT NULL,
  `rune_gut` int(250) DEFAULT NULL,
  `rune_low_blow` int(250) DEFAULT NULL,
  `rune_divine` int(250) DEFAULT NULL,
  `rune_vamp` int(250) DEFAULT NULL,
  `rune_void` int(250) DEFAULT NULL,
  `UsedRunesBit` varchar(250) DEFAULT NULL,
  `UnlockedRunesBit` varchar(250) DEFAULT NULL,
  `tracker list` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_deaths`
--

CREATE TABLE `player_deaths` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `killed_by` varchar(255) NOT NULL,
  `is_player` tinyint(1) NOT NULL DEFAULT 1,
  `mostdamage_by` varchar(100) NOT NULL,
  `mostdamage_is_player` tinyint(1) NOT NULL DEFAULT 0,
  `unjustified` tinyint(1) NOT NULL DEFAULT 0,
  `mostdamage_unjustified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_depotitems`
--

CREATE TABLE `player_depotitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL COMMENT 'any given range eg 0-100 will be reserved for depot lockers and all > 100 will be then normal items inside depots',
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_former_names`
--

CREATE TABLE `player_former_names` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `former_name` varchar(35) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_hirelings`
--

CREATE TABLE `player_hirelings` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `posx` int(11) NOT NULL DEFAULT 0,
  `posy` int(11) NOT NULL DEFAULT 0,
  `posz` int(11) NOT NULL DEFAULT 0,
  `lookbody` int(11) NOT NULL DEFAULT 0,
  `lookfeet` int(11) NOT NULL DEFAULT 0,
  `lookhead` int(11) NOT NULL DEFAULT 0,
  `looklegs` int(11) NOT NULL DEFAULT 0,
  `looktype` int(11) NOT NULL DEFAULT 136
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_inboxitems`
--

CREATE TABLE `player_inboxitems` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_items`
--

CREATE TABLE `player_items` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL DEFAULT 0,
  `sid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_kills`
--

CREATE TABLE `player_kills` (
  `player_id` int(11) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `target` int(11) NOT NULL,
  `unavenged` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_misc`
--

CREATE TABLE `player_misc` (
  `player_id` int(11) NOT NULL,
  `info` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_namelocks`
--

CREATE TABLE `player_namelocks` (
  `player_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `namelocked_at` bigint(20) NOT NULL,
  `namelocked_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_prey`
--

CREATE TABLE `player_prey` (
  `player_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mindex` smallint(6) NOT NULL,
  `mcolumn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_preydata`
--

CREATE TABLE `player_preydata` (
  `player_id` int(11) NOT NULL,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_preytimes`
--

CREATE TABLE `player_preytimes` (
  `player_id` int(11) NOT NULL,
  `bonus_type1` int(11) NOT NULL,
  `bonus_value1` int(11) NOT NULL,
  `bonus_name1` varchar(50) NOT NULL,
  `bonus_type2` int(11) NOT NULL,
  `bonus_value2` int(11) NOT NULL,
  `bonus_name2` varchar(50) NOT NULL,
  `bonus_type3` int(11) NOT NULL,
  `bonus_value3` int(11) NOT NULL,
  `bonus_name3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_rewards`
--

CREATE TABLE `player_rewards` (
  `player_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `itemtype` int(11) NOT NULL DEFAULT 0,
  `count` int(11) NOT NULL DEFAULT 0,
  `attributes` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_spells`
--

CREATE TABLE `player_spells` (
  `player_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_stash`
--

CREATE TABLE `player_stash` (
  `player_id` int(16) NOT NULL,
  `item_id` int(16) NOT NULL,
  `item_count` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `player_storage`
--

CREATE TABLE `player_storage` (
  `player_id` int(11) NOT NULL DEFAULT 0,
  `key` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `value` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prey_slots`
--

CREATE TABLE `prey_slots` (
  `player_id` int(11) NOT NULL,
  `num` smallint(2) NOT NULL,
  `state` smallint(2) NOT NULL DEFAULT 1,
  `unlocked` tinyint(1) NOT NULL DEFAULT 0,
  `current` varchar(40) NOT NULL DEFAULT '',
  `monster_list` varchar(360) NOT NULL,
  `free_reroll_in` int(11) NOT NULL DEFAULT 0,
  `time_left` smallint(5) NOT NULL DEFAULT 0,
  `next_use` int(11) NOT NULL DEFAULT 0,
  `bonus_type` smallint(3) NOT NULL,
  `bonus_value` smallint(3) NOT NULL DEFAULT 0,
  `bonus_grade` smallint(3) NOT NULL DEFAULT 0,
  `tick` smallint(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quickloot_containers`
--

CREATE TABLE `quickloot_containers` (
  `player_id` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL,
  `sid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sellchar`
--

CREATE TABLE `sellchar` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `vocation` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(40) NOT NULL,
  `oldid` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sell_players`
--

CREATE TABLE `sell_players` (
  `player_id` int(11) NOT NULL,
  `account` int(11) NOT NULL,
  `create` bigint(20) NOT NULL,
  `createip` bigint(20) NOT NULL,
  `coin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sell_players_history`
--

CREATE TABLE `sell_players_history` (
  `player_id` int(11) NOT NULL,
  `accountold` int(11) NOT NULL,
  `accountnew` int(11) NOT NULL,
  `create` bigint(20) NOT NULL,
  `createip` bigint(20) NOT NULL,
  `buytime` bigint(20) NOT NULL,
  `buyip` bigint(20) NOT NULL,
  `coin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `server_config`
--

CREATE TABLE `server_config` (
  `config` varchar(50) NOT NULL,
  `value` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `server_config`
--

INSERT INTO `server_config` (`config`, `value`) VALUES
('db_version', '17'),
('motd_hash', '09c9a1b28cae219885b7dfc45c1e3de7ab1ed8c8'),
('motd_num', '4'),
('players_record', '0');

-- --------------------------------------------------------

--
-- Table structure for table `snowballwar`
--

CREATE TABLE `snowballwar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `hora` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `store_history`
--

CREATE TABLE `store_history` (
  `id` int(11) NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `mode` smallint(2) NOT NULL DEFAULT 0,
  `description` varchar(3500) NOT NULL,
  `coin_amount` int(12) NOT NULL,
  `time` bigint(20) UNSIGNED NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `coins` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `ticket_subject` varchar(255) DEFAULT NULL,
  `ticket_author` varchar(255) DEFAULT NULL,
  `ticket_author_acc_id` int(11) NOT NULL,
  `ticket_last_reply` varchar(11) DEFAULT NULL,
  `ticket_admin_reply` int(11) DEFAULT NULL,
  `ticket_date` varchar(255) DEFAULT NULL,
  `ticket_ended` varchar(255) DEFAULT NULL,
  `ticket_status` varchar(255) DEFAULT NULL,
  `ticket_category` varchar(255) DEFAULT NULL,
  `ticket_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets_reply`
--

CREATE TABLE `tickets_reply` (
  `reply_id` int(11) NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `reply_author` varchar(255) DEFAULT NULL,
  `reply_message` varchar(255) DEFAULT NULL,
  `reply_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tile_store`
--

CREATE TABLE `tile_store` (
  `house_id` int(11) NOT NULL,
  `data` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_forum`
--

CREATE TABLE `z_forum` (
  `id` int(11) NOT NULL,
  `first_post` int(11) NOT NULL DEFAULT 0,
  `last_post` int(11) NOT NULL DEFAULT 0,
  `section` int(3) NOT NULL DEFAULT 0,
  `replies` int(20) NOT NULL DEFAULT 0,
  `views` int(20) NOT NULL DEFAULT 0,
  `author_aid` int(20) NOT NULL DEFAULT 0,
  `author_guid` int(20) NOT NULL DEFAULT 0,
  `post_text` text NOT NULL,
  `post_topic` varchar(255) NOT NULL,
  `post_smile` tinyint(1) NOT NULL DEFAULT 0,
  `post_date` int(20) NOT NULL DEFAULT 0,
  `last_edit_aid` int(20) NOT NULL DEFAULT 0,
  `edit_date` int(20) NOT NULL DEFAULT 0,
  `post_ip` varchar(15) NOT NULL DEFAULT '0.0.0.0',
  `icon_id` int(11) NOT NULL,
  `news_icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_network_box`
--

CREATE TABLE `z_network_box` (
  `id` int(11) NOT NULL,
  `network_name` varchar(10) NOT NULL,
  `network_link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_news_tickers`
--

CREATE TABLE `z_news_tickers` (
  `date` int(11) NOT NULL DEFAULT 1,
  `author` int(11) NOT NULL,
  `image_id` int(3) NOT NULL DEFAULT 0,
  `text` text NOT NULL,
  `hide_ticker` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_comunication`
--

CREATE TABLE `z_ots_comunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_ots_guildcomunication`
--

CREATE TABLE `z_ots_guildcomunication` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `param1` varchar(255) NOT NULL,
  `param2` varchar(255) NOT NULL,
  `param3` varchar(255) NOT NULL,
  `param4` varchar(255) NOT NULL,
  `param5` varchar(255) NOT NULL,
  `param6` varchar(255) NOT NULL,
  `param7` varchar(255) NOT NULL,
  `delete_it` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls`
--

CREATE TABLE `z_polls` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `answers` int(11) NOT NULL,
  `votes_all` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_polls_answers`
--

CREATE TABLE `z_polls_answers` (
  `poll_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_replay`
--

CREATE TABLE `z_replay` (
  `title` varchar(255) DEFAULT NULL,
  `version` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_category`
--

CREATE TABLE `z_shop_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `button` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_donates`
--

CREATE TABLE `z_shop_donates` (
  `id` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `reference` varchar(50) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `coins` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_donate_confirm`
--

CREATE TABLE `z_shop_donate_confirm` (
  `id` int(11) NOT NULL,
  `date` bigint(20) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `donate_id` int(11) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_history_item`
--

CREATE TABLE `z_shop_history_item` (
  `id` int(11) NOT NULL,
  `to_name` varchar(255) NOT NULL DEFAULT '0',
  `to_account` int(11) NOT NULL DEFAULT 0,
  `from_nick` varchar(255) NOT NULL,
  `from_account` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `offer_id` varchar(255) NOT NULL DEFAULT '',
  `trans_state` varchar(255) NOT NULL,
  `trans_start` int(11) NOT NULL DEFAULT 0,
  `trans_real` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_offer`
--

CREATE TABLE `z_shop_offer` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `coins` int(11) NOT NULL DEFAULT 0,
  `price` varchar(50) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT 0,
  `mount_id` varchar(100) NOT NULL,
  `addon_name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `offer_type` varchar(255) DEFAULT NULL,
  `offer_description` text NOT NULL,
  `offer_name` varchar(255) NOT NULL,
  `offer_date` int(11) NOT NULL,
  `default_image` varchar(50) NOT NULL,
  `hide` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `z_shop_payment`
--

CREATE TABLE `z_shop_payment` (
  `id` int(11) NOT NULL,
  `ref` varchar(10) NOT NULL,
  `account_name` varchar(50) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_category_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `price` varchar(50) NOT NULL,
  `coins` int(11) UNSIGNED NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'waiting',
  `date` int(11) NOT NULL,
  `gift` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_2` (`name`),
  ADD UNIQUE KEY `name_3` (`name`);

--
-- Indexes for table `accounts_storage`
--
ALTER TABLE `accounts_storage`
  ADD PRIMARY KEY (`account_id`,`key`);

--
-- Indexes for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `banned_by` (`banned_by`),
  ADD KEY `account_id_2` (`account_id`),
  ADD KEY `account_id_3` (`account_id`),
  ADD KEY `account_id_4` (`account_id`),
  ADD KEY `account_id_5` (`account_id`);

--
-- Indexes for table `account_character_sale`
--
ALTER TABLE `account_character_sale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_player_UNIQUE` (`id_player`),
  ADD KEY `account_character_sale_ibfk_2` (`id_account`);

--
-- Indexes for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD UNIQUE KEY `account_player_index` (`account_id`,`player_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `blessings_history`
--
ALTER TABLE `blessings_history`
  ADD KEY `blessings_history_ibfk_1` (`player_id`);

--
-- Indexes for table `boosted_creature`
--
ALTER TABLE `boosted_creature`
  ADD PRIMARY KEY (`date`);

--
-- Indexes for table `city_war`
--
ALTER TABLE `city_war`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins_transactions`
--
ALTER TABLE `coins_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `coins_transactions_pk` (`account_id`);

--
-- Indexes for table `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `free_pass`
--
ALTER TABLE `free_pass`
  ADD KEY `free_pass_ibfk_1` (`player_id`);

--
-- Indexes for table `global_storage`
--
ALTER TABLE `global_storage`
  ADD UNIQUE KEY `key` (`key`);

--
-- Indexes for table `guilds`
--
ALTER TABLE `guilds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `ownerid` (`ownerid`);

--
-- Indexes for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warid` (`warid`);

--
-- Indexes for table `guild_actions_h`
--
ALTER TABLE `guild_actions_h`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD PRIMARY KEY (`player_id`,`guild_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `rank_id` (`rank_id`);

--
-- Indexes for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_transfer_h`
--
ALTER TABLE `guild_transfer_h`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guild_wars`
--
ALTER TABLE `guild_wars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild1` (`guild1`),
  ADD KEY `guild2` (`guild2`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `town_id` (`town_id`);

--
-- Indexes for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`ip`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `live_casts`
--
ALTER TABLE `live_casts`
  ADD UNIQUE KEY `player_id_2` (`player_id`);

--
-- Indexes for table `market_history`
--
ALTER TABLE `market_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`,`sale`);

--
-- Indexes for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale` (`sale`,`itemtype`),
  ADD KEY `created` (`created`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `newsticker`
--
ALTER TABLE `newsticker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagseguro_transactions`
--
ALTER TABLE `pagseguro_transactions`
  ADD UNIQUE KEY `transaction_code` (`transaction_code`,`status`),
  ADD KEY `name` (`name`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `vocation` (`vocation`);

--
-- Indexes for table `players_online`
--
ALTER TABLE `players_online`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_binary_items`
--
ALTER TABLE `player_binary_items`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`type`);

--
-- Indexes for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `killed_by` (`killed_by`),
  ADD KEY `mostdamage_by` (`mostdamage_by`);

--
-- Indexes for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_former_names`
--
ALTER TABLE `player_former_names`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_items`
--
ALTER TABLE `player_items`
  ADD KEY `player_id` (`player_id`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `player_kills`
--
ALTER TABLE `player_kills`
  ADD KEY `player_kills_ibfk_1` (`player_id`),
  ADD KEY `player_kills_ibfk_2` (`target`);

--
-- Indexes for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `namelocked_by` (`namelocked_by`);

--
-- Indexes for table `player_preydata`
--
ALTER TABLE `player_preydata`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD UNIQUE KEY `player_id_2` (`player_id`,`sid`);

--
-- Indexes for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD PRIMARY KEY (`player_id`,`key`);

--
-- Indexes for table `prey_slots`
--
ALTER TABLE `prey_slots`
  ADD KEY `player_id` (`player_id`);

--
-- Indexes for table `quickloot_containers`
--
ALTER TABLE `quickloot_containers`
  ADD KEY `fk_quickloot_containers_player_id` (`player_id`);

--
-- Indexes for table `sellchar`
--
ALTER TABLE `sellchar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_players`
--
ALTER TABLE `sell_players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `sell_players_history`
--
ALTER TABLE `sell_players_history`
  ADD PRIMARY KEY (`player_id`,`buytime`) USING BTREE;

--
-- Indexes for table `server_config`
--
ALTER TABLE `server_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `snowballwar`
--
ALTER TABLE `snowballwar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `store_history`
--
ALTER TABLE `store_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `store_history_pk` (`account_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `tickets_ibfk_1` (`ticket_author_acc_id`);

--
-- Indexes for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `tickets_reply_ibfk_1` (`ticket_id`);

--
-- Indexes for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `z_forum`
--
ALTER TABLE `z_forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section` (`section`);

--
-- Indexes for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_category`
--
ALTER TABLE `z_shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_donates`
--
ALTER TABLE `z_shop_donates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_donate_confirm`
--
ALTER TABLE `z_shop_donate_confirm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `z_shop_payment`
--
ALTER TABLE `z_shop_payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_character_sale`
--
ALTER TABLE `account_character_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `city_war`
--
ALTER TABLE `city_war`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coins_transactions`
--
ALTER TABLE `coins_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_reward_history`
--
ALTER TABLE `daily_reward_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guilds`
--
ALTER TABLE `guilds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_actions_h`
--
ALTER TABLE `guild_actions_h`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `guild_transfer_h`
--
ALTER TABLE `guild_transfer_h`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guild_wars`
--
ALTER TABLE `guild_wars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3691;

--
-- AUTO_INCREMENT for table `market_history`
--
ALTER TABLE `market_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `market_offers`
--
ALTER TABLE `market_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `newsticker`
--
ALTER TABLE `newsticker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `player_former_names`
--
ALTER TABLE `player_former_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellchar`
--
ALTER TABLE `sellchar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `snowballwar`
--
ALTER TABLE `snowballwar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_history`
--
ALTER TABLE `store_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_forum`
--
ALTER TABLE `z_forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `z_ots_comunication`
--
ALTER TABLE `z_ots_comunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_ots_guildcomunication`
--
ALTER TABLE `z_ots_guildcomunication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_category`
--
ALTER TABLE `z_shop_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_donates`
--
ALTER TABLE `z_shop_donates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_donate_confirm`
--
ALTER TABLE `z_shop_donate_confirm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_offer`
--
ALTER TABLE `z_shop_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `z_shop_payment`
--
ALTER TABLE `z_shop_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_storage`
--
ALTER TABLE `accounts_storage`
  ADD CONSTRAINT `accounts_storage_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `account_bans`
--
ALTER TABLE `account_bans`
  ADD CONSTRAINT `account_bans_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_bans_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_ban_history`
--
ALTER TABLE `account_ban_history`
  ADD CONSTRAINT `account_ban_history_ibfk_2` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_4` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_5` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `account_ban_history_ibfk_6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_character_sale`
--
ALTER TABLE `account_character_sale`
  ADD CONSTRAINT `account_character_sale_ibfk_1` FOREIGN KEY (`id_player`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_character_sale_ibfk_2` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `account_viplist`
--
ALTER TABLE `account_viplist`
  ADD CONSTRAINT `account_viplist_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_viplist_ibfk_2` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blessings_history`
--
ALTER TABLE `blessings_history`
  ADD CONSTRAINT `blessings_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `free_pass`
--
ALTER TABLE `free_pass`
  ADD CONSTRAINT `free_pass_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guilds`
--
ALTER TABLE `guilds`
  ADD CONSTRAINT `guilds_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guildwar_kills`
--
ALTER TABLE `guildwar_kills`
  ADD CONSTRAINT `guildwar_kills_ibfk_1` FOREIGN KEY (`warid`) REFERENCES `guild_wars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_invites`
--
ALTER TABLE `guild_invites`
  ADD CONSTRAINT `guild_invites_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `guild_invites_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `guild_membership`
--
ALTER TABLE `guild_membership`
  ADD CONSTRAINT `guild_membership_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `guild_membership_ibfk_3` FOREIGN KEY (`rank_id`) REFERENCES `guild_ranks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `guild_ranks`
--
ALTER TABLE `guild_ranks`
  ADD CONSTRAINT `guild_ranks_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guilds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `house_lists`
--
ALTER TABLE `house_lists`
  ADD CONSTRAINT `house_lists_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD CONSTRAINT `ip_bans_ibfk_1` FOREIGN KEY (`banned_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `live_casts`
--
ALTER TABLE `live_casts`
  ADD CONSTRAINT `live_casts_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_history`
--
ALTER TABLE `market_history`
  ADD CONSTRAINT `market_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `market_offers`
--
ALTER TABLE `market_offers`
  ADD CONSTRAINT `market_offers_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_deaths`
--
ALTER TABLE `player_deaths`
  ADD CONSTRAINT `player_deaths_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_depotitems`
--
ALTER TABLE `player_depotitems`
  ADD CONSTRAINT `player_depotitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_hirelings`
--
ALTER TABLE `player_hirelings`
  ADD CONSTRAINT `player_hirelings_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_inboxitems`
--
ALTER TABLE `player_inboxitems`
  ADD CONSTRAINT `player_inboxitems_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `player_items_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_kills`
--
ALTER TABLE `player_kills`
  ADD CONSTRAINT `player_kills_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_kills_ibfk_2` FOREIGN KEY (`target`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_namelocks`
--
ALTER TABLE `player_namelocks`
  ADD CONSTRAINT `player_namelocks_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `player_namelocks_ibfk_2` FOREIGN KEY (`namelocked_by`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_preydata`
--
ALTER TABLE `player_preydata`
  ADD CONSTRAINT `player_preydata_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_rewards`
--
ALTER TABLE `player_rewards`
  ADD CONSTRAINT `player_rewards_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_spells`
--
ALTER TABLE `player_spells`
  ADD CONSTRAINT `player_spells_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `player_storage`
--
ALTER TABLE `player_storage`
  ADD CONSTRAINT `player_storage_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prey_slots`
--
ALTER TABLE `prey_slots`
  ADD CONSTRAINT `prey_slots_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quickloot_containers`
--
ALTER TABLE `quickloot_containers`
  ADD CONSTRAINT `fk_quickloot_containers_player_id` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`);

--
-- Constraints for table `sellchar`
--
ALTER TABLE `sellchar`
  ADD CONSTRAINT `sellchar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sell_players`
--
ALTER TABLE `sell_players`
  ADD CONSTRAINT `sell_players_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sell_players_history`
--
ALTER TABLE `sell_players_history`
  ADD CONSTRAINT `sell_players_history_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`ticket_author_acc_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tickets_reply`
--
ALTER TABLE `tickets_reply`
  ADD CONSTRAINT `tickets_reply_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tile_store`
--
ALTER TABLE `tile_store`
  ADD CONSTRAINT `tile_store_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
