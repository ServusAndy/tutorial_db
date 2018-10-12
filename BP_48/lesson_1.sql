mysql -u root -p --->> For start  mysql client
/* Comments */
-- Comments

SHOW DATABASES;

CREATE DATABASE  `bp_48`;

DROP DATABASE `bp_48`;

CREATE DATABASE IF NOT EXISTS `bp_48`;

DROP DATABASE IF EXISTS `bp_48`;

USE `bp_48`;

SELECT DATABASE();

SHOW TABLES;

CREATE TABLE `cars`(
`id` INT(4) UNSIGNED,
`carId` CHAR(3) NOT NULL,
`model` VARCHAR(10) NOT NULL DEFAULT '',
`country` VARCHAR(10),
`mnanufc` VARCHAR(10)
);















