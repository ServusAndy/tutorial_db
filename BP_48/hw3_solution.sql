USE `bp_48`;

SELECT * FROM `cars`;

INSERT INTO `cars` VALUES
(100,'TDI','Golf','Germany','Volkswagen',60000),
(101,'TDI','Passat','Germany','Volkswagen',70000),
(102,'TDI','Polo','Germany','Volkswagen',75000);

SELECT * FROM `cars`;

UPDATE `cars` SET `price` = `price` * 1.15
WHERE `price` < 120000;

SELECT * FROM `cars`;

UPDATE `cars` SET `price` = `price` * 0.7
WHERE `id` < 8 AND `price` > 140000;

-- test
SELECT * FROM `cars`;

DELETE FROM `cars`
WHERE `price` BETWEEN 100000 AND 150000;

SELECT * FROM `cars`;