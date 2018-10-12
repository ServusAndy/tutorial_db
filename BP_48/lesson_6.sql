ALTER TABLE `cars`
ADD FOREIGN KEY(`manufc_id`)
REFERENCES `manufacture`(`id`);

INSERT INTO `cars` VALUES
(18,'HND','Accord',220000,1000);

DELETE FROM `manufacture`
WHERE `id` = 1;


CREATE TABLE `customer`(
`id` INT UNSIGNED AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
`phone` VARCHAR(12),
`city` VARCHAR(50),
PRIMARY KEY(`id`),
KEY(`name`)
);

CREATE TABLE `customer_cars`
(
`customer_id` INT UNSIGNED,
`cars_id` INT UNSIGNED,
FOREIGN KEY(`customer_id`) REFERENCES `customer`(`id`),
FOREIGN KEY(`cars_id`) REFERENCES `cars`(`id`),
PRIMARY KEY(`customer_id`,`cars_id`)
);

INSERT INTO `customer` VALUES
(1,'Vasya','0554546789','Haifa'),
(2,'Andrey','0536787889','Haifa')
;

INSERT INTO `customer_cars` VALUES
(2,12),
(1,5);


SELECT cus.name, model, m.name
FROM customer cus
JOIN customer_cars cc ON cus.id = cc.customer_id
JOIN cars c ON c.id = cc.cars_id
JOIN manufacture m ON c.manufc_id = m.id
WHERE cus.name = 'Vasya';



















