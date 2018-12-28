-- 1) Show all information about customers who do not have cars.
SELECT cus.id,cus.name,cus.phone,cus.city FROM customer cus LEFT JOIN customer_cars cc ON  cus.id = cc.customer_id WHERE cc.customer_id IS NULL;

-- 2) Show all customer information and the total amount spent most money.
SELECT cus.id,cus.name,cus.phone,cus.city,SUM(c.price) FROM customer cus 
JOIN customer_cars cc ON cus.id = cc.customer_id 
JOIN cars c ON c.id = cc.cars_id 
GROUP BY cus.id  ORDER BY 4 DESC LIMIT 1; 

-- 3) Show “Customer Name”, “Phone”, “City”, “Car Models”, “Production Name”, “Total
-- Cost” of the client who bought the most Japanese cars.
SELECT cus.name,cus.phone,cus.city,GROUP_CONCAT(c.model),GROUP_CONCAT(DISTINCT m.name),SUM(c.price) FROM customer cus 
JOIN customer_cars cc ON cc.customer_id = cus.id 
JOIN cars c ON cc.cars_id = c.id 
JOIN manufacture m ON c.manufc_id = m.id 
WHERE m.country = "Japan" GROUP BY cus.id LIMIT 1;

-- 4) Show all information about manufacture and a list of car models that sold more
-- cars.
SELECT m.id,m.name,m.country,m.city,GROUP_CONCAT(DISTINCT c.model) FROM manufacture m 
JOIN cars c ON c.manufc_id = m.id 
JOIN customer_cars cc ON c.id = cc.cars_id 
GROUP BY m.id ORDER BY COUNT(*) DESC LIMIT 1;