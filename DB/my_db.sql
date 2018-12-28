USE `my_db`;

SELECT*FROM `cars`;
-- 1
INSERT INTO `cars` VALUES
(9,'ZAZ','Kopeyka','USSR','Jigul',60000),
(10,'ITL','Bobo','Italia','Fiat',70000),
(11,'SWZ','Rosi','Schweiz','Volvo',80000)
;
SELECT*FROM `cars`;
-- 2
UPDATE `cars` SET `price` = `price` +(`price` /100*15) WHERE `price` < 120000;
SELECT*FROM `cars`;
-- 3
UPDATE `cars` SET `price` = `price` - (`price`/100*30) WHERE `id` < 8 AND `price` > 140000;
SELECT*FROM `cars`;
-- 4
DELETE FROM `cars` WHERE `price` BETWEEN 100000 AND 150000;

SELECT*FROM `cars`;

