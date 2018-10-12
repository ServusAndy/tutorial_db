USE `bp_48`;

-- 1
SELECT*FROM customer cus WHERE cus.id NOT IN (SELECT customer_id FROM customer_cars);

-- 2
SELECT t.id,t.name,t.phone,t.city,max(t.price) AS `sum of all prices`  FROM 
(SELECT cus.id,cus.name,cus.phone,cus.city,sum(c.price) AS price FROM customer cus 
JOIN customer_cars cc 
JOIN cars c ON cc.cars_id = c.id 
WHERE cus.id = cc.customer_id
GROUP BY cus.id) as t;

-- 3 
SELECT cus.name,cus.phone,cus.city,GROUP_CONCAT(c.model) AS `models`,GROUP_CONCAT(DISTINCT m.name) AS `manufc name`, SUM(c.price) AS `sum of prices` FROM customer cus  
JOIN customer_cars cc ON cc.customer_id = cus.id
JOIN cars c ON cc.cars_id = c.id 
JOIN manufacture m ON c.manufc_id = m.id WHERE m.country = 'Japan' GROUP BY cus.id LIMIT 1;

-- 4
SELECT m.id,m.name,m.country,m.city,GROUP_CONCAT(c.model) AS models 
FROM manufacture m 
JOIN cars c ON m.id = c.manufc_id 
JOIN customer_cars cc ON cc.cars_id = c.id 
GROUP BY cc.cars_id ORDER BY COUNT(*) DESC LIMIT 2;
