		SELECT t.name,t.phone,t.city,GROUP_CONCAT(t.model),GROUP_CONCAT(t.manufc_name), MAX(t.price) 
		FROM(SELECT cus.name,cus.phone,cus.city,c.model AS model, m.name AS manufc_name,SUM(c.price) AS price FROM customer cus 
		JOIN customer_cars cc ON cus.id = cc.customer_id
		JOIN cars c ON cc.cars_id = c.id
		JOIN manufacture m ON m.id = c.manufc_id WHERE m.country = 'Japan' GROUP BY cus.id) AS t;