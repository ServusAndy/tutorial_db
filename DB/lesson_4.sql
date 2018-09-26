SELECT DISTINCT `country` FROM `cars`;

SELECT DISTINCT `country`,`manufc` FROM `cars`;

-- AGGREGATION 

SELECT COUNT(*) FROM `cars`;

SELECT `model`, COUNT(*) FROM `cars`;

SELECT COUNT(*), MAX(`price`),MIN(`price`), CAST(AVG(`price`) AS DECIMAL(9,2)) AS avg, SUM(`price`) FROM `cars`;

SELECT `country`, COUNT(*), SUM(`price`) FROM `cars` GROUP BY `country` WITH ROLLUP;

SELECT `country`, COUNT(*) AS Count FROM `cars` GROUP BY `country` HAVING Count > 3; 


SELECT GROUP_CONCAT(`country`) FROM `cars`;

SELECT GROUP_CONCAT(DISTINCT `country` SEPARATOR ' - ') AS Countries, SUM(`price`) AS Total FROM `cars`;