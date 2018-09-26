USE bp_48;
SELECT*FROM `cars`;
-- 1
INSERT INTO `cars` 
VALUES (6,'OPL','Adam','Germany','Opel',75000),
				(7,'RLT','Frigat','UnitedKingdom','Renault',70000),
				(8,'FIT','Dino','Italian','Fiat',60000)
;
SELECT*FROM `cars`;
-- 2
UPDATE `cars` SET `price` = `price` + (`price`/100*15) WHERE `price` < 120000;
SELECT*FROM `cars`;
-- 3
UPDATE `cars` SET `price` = `price` - (`price`/100*30) WHERE `id` < 8 AND `price` > 140000;
SELECT*FROM `cars`;
-- 4
DELETE FROM `cars` WHERE `price` BETWEEN 100000 AND 150000;
SELECT*FROM `cars`;


