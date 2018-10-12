-- 1) Show all information about customers who do not have cars.
SELECT `c`.`name` AS `Customer Name`,
	`c`.`phone` AS `Phone`,
	`c`.`city` AS `City`
	FROM `customer` c
LEFT JOIN `customer_cars` cc ON `c`.`id` = `cc`.`customer_id`
WHERE `cc`.`customer_id` IS NULL;


-- 2) Show all customer information and the total amount spent most money.
SELECT `c`.`name`, `c`.`phone`, `c`.`city`, SUM(`cars`.`price`)
FROM customer c
JOIN `customer_cars` cc ON `c`.`id` = `cc`.`customer_id`
JOIN `cars` ON `cars`.`id` = `cc`.`cars_id`
GROUP BY 2
ORDER BY 4 DESC LIMIT 1;

-- 3) Show “Customer Name”, “Phone”, “City”, “Car Models”, “Production Name”, “Total
-- Cost” of the client who bought the most Japanese cars.
SELECT `c`.`name` AS `Customer Name`,
	`c`.`phone` AS `Phone`,
	`c`.`city` AS `City`,
	GROUP_CONCAT(`cars`.`model`) `Car Models`,
	GROUP_CONCAT(DISTINCT `m`.`name`) AS `Production Name`,
	SUM(`cars`.`price`) AS `Total Cost`
	FROM `customer` c
JOIN `customer_cars` cc ON `c`.`id` = `cc`.`customer_id`
JOIN `cars` ON `cars`.`id` = `cc`.`cars_id`
JOIN `manufacture` m ON `cars`.`manufc_id` = `m`.`id`
WHERE `m`.`country` = 'Japan'
GROUP BY `c`.`id`
ORDER BY 6 DESC
LIMIT 1;

-- 4) Show all information about manufacture and a list of car models that sold more
-- cars.
SELECT `m`.`name`,
	`m`.`country`,
	`m`.`city`,
	GROUP_CONCAT(DISTINCT `cars`.`model`) AS `List of cars`
FROM `manufacture` m
JOIN `cars` ON `cars`.`manufc_id` = `m`.`id`
JOIN `customer_cars` cc ON `cc`.`cars_id` = `cars`.`id`
GROUP BY `m`.`id`
ORDER BY COUNT(*) DESC
LIMIT 1;

