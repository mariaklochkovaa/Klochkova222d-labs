SELECT cities.name AS city, regions.name AS region
FROM cities, regions
WHERE cities.region=regions.uuid AND population>350000;
SELECT cities.name AS city, regions.name AS region
FROM cities, regions
WHERE cities.region=regions.uuid AND regions.name='Nord';


-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `connections_of_stations`;
CREATE TABLE `connections_of_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_first_station` int(10) unsigned NOT NULL,
  `id_second_station` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_first_station` (`id_first_station`),
  KEY `id_second_station` (`id_second_station`),
  CONSTRAINT `connections_of_stations_ibfk_1` FOREIGN KEY (`id_first_station`) REFERENCES `stations` (`id`),
  CONSTRAINT `connections_of_stations_ibfk_2` FOREIGN KEY (`id_second_station`) REFERENCES `stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `connections_of_stations` (`id`, `id_first_station`, `id_second_station`) VALUES
(1,	3,	4),
(2,	4,	6);

DROP TABLE IF EXISTS `lines`;
CREATE TABLE `lines` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `lines` (`id`, `name`) VALUES
(1,	'Салтівська'),
(2,	'Холодногірська-заводська '),
(3,	'Олексіївська');

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_line` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_line` (`id_line`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`id_line`) REFERENCES `lines` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `stations` (`id`, `name`, `id_line`) VALUES
(1,	'Героїв праці',	1),
(2,	'Майдан Конституції',	2),
(3,	'Історичний музей',	1),
(4,	'Університет',	1),
(5,	'Держпром',	3),
(6,	'Пушкінська',	1);

DROP TABLE IF EXISTS `transitions_between_lines`;
CREATE TABLE `transitions_between_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_first_station` int(10) unsigned NOT NULL,
  `id_second_station` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_first_station` (`id_first_station`),
  KEY `id_second_station` (`id_second_station`),
  CONSTRAINT `transitions_between_lines_ibfk_1` FOREIGN KEY (`id_first_station`) REFERENCES `stations` (`id`),
  CONSTRAINT `transitions_between_lines_ibfk_2` FOREIGN KEY (`id_second_station`) REFERENCES `stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transitions_between_lines` (`id`, `id_first_station`, `id_second_station`) VALUES
(1,	2,	1),
(2,	4,	5);

-- 2023-10-30 16:58:44
