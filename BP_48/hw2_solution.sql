
-- 1
SELECT `model`, `manufc` FROM `cars` WHERE carCode = 'TYT';

-- 2
SELECT `model` FROM `cars` WHERE `manufc` LIKE '%Honda%';

-- 3
SELECT `model`, `manufc` FROM `cars`
WHERE `manufc` LIKE '%a%' AND `price` > 150000;

-- 4
SELECT `model`, `manufc`, `country` FROM `cars`
WHERE `price` BETWEEN 100000 AND 150000
ORDER BY `country`;

-- 5
SELECT * FROM `cars`
WHERE `price` = 80000 OR `price` = 130000 OR `price` = 170000;


SELECT * FROM `cars`
WHERE `price` IN(80000,130000,170000);


-- 6
SELECT `model`, `country`, `price` FROM `cars`
ORDER BY `price` DESC
LIMIT 3;