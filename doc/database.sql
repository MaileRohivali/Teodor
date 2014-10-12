-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Okt 12, 2014 kell 03:38 PL
-- Serveri versioon: 5.6.17
-- PHP versioon: 5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `teodor`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `gradwork`
--

DROP TABLE IF EXISTS `gradwork`;
CREATE TABLE IF NOT EXISTS `gradwork` (
  `gradwork_name` varchar(200) NOT NULL,
  `gradwork_author` varchar(100) NOT NULL,
  `gradwork_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`gradwork_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'autocreated',
  `group_name` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT 'autocreated',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `group`
--

INSERT INTO `group` (`group_id`, `group_name`) VALUES
(1, 'VS_13');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `person`
--

DROP TABLE IF EXISTS `person`;
CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `person_name` varchar(70) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `person`
--

INSERT INTO `person` (`person_id`, `person_name`) VALUES
(1, 'Maile Rohiväli');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `person_id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `student`
--

INSERT INTO `student` (`person_id`, `group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `is_admin` int(10) unsigned NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `deleted` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `is_admin`, `password`, `active`, `email`, `deleted`) VALUES
(1, 'demo', 1, 'demo', 1, '', 0);
SET FOREIGN_KEY_CHECKS=1;
