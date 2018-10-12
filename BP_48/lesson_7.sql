-- Sub SELECT

SELECT * FROM `cars`
WHERE `cars`.`id` NOT IN (1,2,4,17,9,12,15,5,11);

SELECT DISTINCT cars_id FROM customer_cars;

SELECT * FROM `cars`
WHERE `cars`.`id` NOT IN (SELECT DISTINCT cars_id FROM customer_cars);

