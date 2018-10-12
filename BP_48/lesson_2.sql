CREATE TABLE IF NOT EXISTS `cars`(
`id` INT(4) UNSIGNED,
`carCode` CHAR(3) NOT NULL,
`model` VARCHAR(10) NOT NULL DEFAULT '',
`country` VARCHAR(10),
`manufc` VARCHAR(10),
`price` DECIMAL(11,2)
);

-- only MySQL
SHOW CREATE TABLE `cars`;
SHOW CREATE TABLE `cars`\G

DROP TABLE `cars`;
DROP TABLE IF EXISTS `cars`;

DESCRIBE `cars`;

INSERT INTO `cars`
VALUES (1,'HND','Civic','Japan','Honda',180000);

INSERT INTO `cars` VALUES
(2,'HND','Accord','Japan','Honda',220000),
(3,'TYT','Corola','Japan','Toyota',170000)
;

INSERT INTO `cars` (`id`,`carCode`,`country`,`price`)
VALUES (9,'WTX','Ganduras',100);

DELETE FROM `cars`;

DELETE FROM `cars` WHERE `id` = 3;

UPDATE `cars` SET `price` = 250000, `country` = 'China'
WHERE `id` = 2;


SELECT * FROM `cars`;

SELECT `country`, `price` FROM `cars`;

SELECT NOW();


INSERT INTO `cars` VALUES
(1,'HND','Accord','Japan','Honda',220000),
(2,'HND','Civic','Japan','Honda',170000),
(3,'TYT','Corola','Japan','Toyota',180000),
(4,'TYT','Auris','Japan','Toyota',140000),
(5,'VAZ','2106','Russia','VAZ',70000),
(6,'OPL','Kaddet','Germany','Opel',80000),
(7,'KIA','Ceratto','Korea','Kia',130000),
(8,'NSX','Skyline','Japan','Nissan',190000)
;

SELECT * FROM `cars` WHERE `country` LIKE 'j%';

SELECT * FROM `cars` WHERE `manufc` LIKE '___';

SELECT * FROM `cars` WHERE `manufc` NOT LIKE '___';

SELECT * FROM `cars`
WHERE `manufc` LIKE '___' AND `price` > 100000;

SELECT * FROM `cars`
WHERE `country` = 'Japan' OR `country` = 'Germany';

SELECT * FROM `cars`
WHERE `country` IN ('Japan','Germany');

SELECT * FROM `cars`
WHERE `country` NOT IN ('Japan','Germany');

SELECT * FROM `cars`
WHERE `price` BETWEEN 80000 AND 170000;

SELECT * FROM `cars`
WHERE `price` NOT BETWEEN 100000 AND 200000;

SELECT * FROM `cars`
WHERE `manufc` IS NULL;

SELECT * FROM `cars`
WHERE `manufc` IS NOT NULL;

SELECT * FROM `cars` ORDER BY `model`;


SELECT * FROM `cars`
WHERE `price` BETWEEN 80000 AND 170000
ORDER BY `price` DESC;


SELECT * FROM `cars` LIMIT 5;

SELECT * FROM `cars` LIMIT 3,5;
