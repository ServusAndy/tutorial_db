USE `bp_48`;

-- 1
SELECT * FROM `cars` `c` JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id` WHERE `m`.`name` = 'Toyota';
-- 2
SELECT SUM(`price`) AS `Total Cost: Honda,Toyota` FROM `cars` `c` 
INNER JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id` WHERE `m`.`name` IN ('Toyota','Honda');
-- 3
SELECT `m`.`name`,CAST(AVG(`price`) AS DECIMAL(9,2)) AS `avg` FROM `cars` `c` 
JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id` GROUP BY  `m`.`name`;
-- 4
SELECT `m`.`name`, `m`.`country`,GROUP_CONCAT(DISTINCT `c`.`model` SEPARATOR ' - ') AS Models,
COUNT(`c`.`model`) AS `counts` FROM `manufacture` `m` JOIN `cars` `c` ON `c`.`manufc_id` = `m`.`id` GROUP BY  `m`.`name` ORDER BY `counts` DESC LIMIT 1; 
-- 5
SELECT `m`.`name`, `m`.`country`, `c`.`price` FROM `manufacture` `m` 
JOIN `cars` `c`ON `c`.`manufc_id` = `m`.`id` WHERE `price` =  ( SELECT MIN(`c`.`price`) FROM `cars` `c`);




