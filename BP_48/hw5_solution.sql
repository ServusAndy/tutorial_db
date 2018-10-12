-- 1
SELECT carCode,
    model,
    price,
    name,
    country,
    city
FROM cars c
JOIN manufacture m ON c.manufc_id = m.id
WHERE m.name = 'Toyota';

-- 2
SELECT SUM(price) AS `Total Cost`
FROM cars c
JOIN manufacture m ON c.manufc_id = m.id
WHERE m.name IN ('Toyota','Honda');

-- 3
SELECT CAST(AVG(price) AS DECIMAL(9,2)) AS AGV,
    name
FROM cars c
JOIN manufacture m ON c.manufc_id = m.id
GROUP BY m.name;

-- 4
SELECT name AS `Manufacture Name`,
    country AS `Manufacture Country`,
    GROUP_CONCAT(model)
FROM cars c
JOIN manufacture m ON c.manufc_id = m.id
GROUP BY m.id
ORDER BY COUNT(*) DESC LIMIT 1;

-- 5
SELECT name, country, price, model
FROM cars c
JOIN manufacture m ON c.manufc_id = m.id
ORDER BY 3 ASC LIMIT 1;