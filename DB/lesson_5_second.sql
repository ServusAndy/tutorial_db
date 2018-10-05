CREATE TABLE `cars` (
`id` INT(4) UNSIGNED AUTO_INCREMENT,
`carCode` CHAR(3) NOT NULL,
`model` VARCHAR(10) NOT NULL DEFAULT ' ',
`price` DECIMAL(11,2),
`manufc_id` INT(4) UNSIGNED,
PRIMARY KEY(id)
);

CREATE TABLE `manufacture` (
`id` INT(4) UNSIGNED AUTO_INCREMENT,
`name` VARCHAR(25) NOT NULL,
`country` VARCHAR(25) NOT NULL,
`city` VARCHAR(25) NOT NULL,
PRIMARY KEY(id) 
);

INSERT INTO `cars`
VALUES (1,'HND','Accord',220000,0),
	(2,'TYT','Corola',170000,0),
	(3,'HND','Civic',180000,0),
	(4,'HND','Odyssey',120000,0),
	(5,'FRD','Schelby',235000,0),
	(6,'OPL','Kadet',130000,0),
	(7,'KIA','Caratto',190000,0),
	(8,'NSX','Skyline',160000,0);

INSERT INTO `manufacture` VALUES
(1,'Honda','Japan','Kyoto'),
	(2,'Toyota','Japan','Yokohama'),
	(3,'Ford','USA','Sietl'),
	(4,'Opel','Germany','Berlin');
	
UPDATE `cars` SET `manufc_id` = 1;

SELECT * FROM `cars`, `manufacture` `m` WHERE `cars`.`manufc_id` = `m`.`id`; -- `m` psevdanim `manufacture`

SELECT `c`.`id`,`model`,`country`,`price` FROM `cars` `c`, `manufacture` `m` WHERE `c`.`manufc_id` = `m`.`id`; 

SELECT `c`.`id`,`model`,`country`,`price` FROM `cars` `c` JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id`; 

SELECT `c`.`id`,`model`,`country`,`price` FROM `cars` `c` LEFT JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id`;

UPDATE `cars` SET `manufc_id` = 1000 WHERE id = 8;

SELECT `c`.`id`,`model`,`country`,`price` FROM `cars` `c` LEFT JOIN `manufacture` `m` ON `c`.`manufc_id` = `m`.`id` WHERE `country` IS NULL;
