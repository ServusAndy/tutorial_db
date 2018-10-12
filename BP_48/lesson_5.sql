CREATE TABLE `users`(
`email` VARCHAR(50) /* NOT NULL UNIQUE */,
`password` VARCHAR(12),
`name` VARCHAR(15),
-- UNIQUE KEY(`email`)
PRIMARY KEY(`email`)
);

INSERT INTO `users` VALUES
('vasya@mail.com','12346','Vasya'),
('petya@mail.com','12346','Petya'),
('sofa@mail.com','12346','Sofa'),
('dima@mail.com','12346','Dima')
;

INSERT INTO `users` VALUES
(NULL,'12346','Vasya');

INSERT INTO `users` (`password`,`name`) VALUES
('12346','Vasya');

INSERT INTO `users` VALUES
('vasya@mail.com','12346','Vasya');

CREATE TABLE `cars`(
`id` INT(4) UNSIGNED AUTO_INCREMENT,
`carCode` CHAR(3) NOT NULL,
`model` VARCHAR(10) NOT NULL DEFAULT '',
`price` DECIMAL(11,2),
`manufc_id` INT(4) UNSIGNED,
PRIMARY KEY(id)
);

CREATE TABLE `manufacture`(
`id` INT(4) UNSIGNED AUTO_INCREMENT,
`name` VARCHAR(25) NOT NULL,
`country` VARCHAR(25) NOT NULL,
`city` VARCHAR(25) NOT NULL,
PRIMARY KEY(id)
);


INSERT INTO `cars` VALUES
(1,'HND','Accord',220000,0),
(2,'HND','Civic',170000,0),
(3,'TYT','Corola',180000,0),
(4,'TYT','Auris',140000,0),
(5,'VAZ','2106',70000,0),
(6,'OPL','Kaddet',80000,0),
(7,'KIA','Ceratto',130000,0),
(8,'NSX','Skyline',190000,0)
;

INSERT INTO `manufacture` VALUES
(1,'Honda','Japan','Kyoto'),
(2,'Toyota','Japan','Yokohama'),
(3,'VAZ','Russia','Taliati'),
(4,'Opel','Germany','Berlin'),
(5,'Kia','Korea','Seul'),
(6,'Nissan','Japan','Tokyo')
;

UPDATE `cars` SET `manufc_id` = 1;


SELECT * FROM `cars` `c`, `manufacture` `m`
WHERE `c`.`manufc_id` = `m`.`id`;

SELECT `c`.`id`, `model`, `country`, `price`
FROM `cars` `c`, `manufacture` `m`
WHERE `c`.`manufc_id` = `m`.`id`;


SELECT `c`.`id`, `model`, `country`, `price`
FROM `cars` `c`
JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id`;

SELECT `c`.`id`, `model`, `country`, `price`
FROM `cars` `c`
LEFT JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id`
WHERE `country` IS NULL;











