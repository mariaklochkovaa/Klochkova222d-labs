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
  `first_station` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `second_station` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `connections_of_stations` (`id`, `first_station`, `second_station`) VALUES
(1,	'Перемоги',	'Олексіївська'),
(2,	'Олексіївська',	'23 серпня'),
(3,	'23 серпня',	'Ботанічний сад');

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `line` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `stations` (`id`, `name`, `line`) VALUES
(1,	'Героїв праці',	'Салтівська лінія'),
(2,	'Проспект Гагаріна',	'Холодногірська-заводська лінія');

DROP TABLE IF EXISTS `transitions_between_lines`;
CREATE TABLE `transitions_between_lines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_station` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `second_station` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `transitions_between_lines` (`id`, `first_station`, `second_station`) VALUES
(1,	'Майдан Конституції',	'Історичний музей'),
(2,	'Університет ',	'Держпром'),
(3,	'Спортивна',	'Метробудівників');

-- 2023-10-13 13:51:52
