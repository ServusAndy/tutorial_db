CREATE DATABASE `db_book`;
USE `db_book`;

CREATE TABLE `tbl_topic` (
`topic_id` INT(11) NOT NULL AUTO_INCREMENT,
`topic_name` VARCHAR(100),
PRIMARY KEY(`topic_id`)
);

CREATE TABLE `tbl_books` (
`b_id` VARCHAR(17) NOT NULL,
`b_name` VARCHAR(255) NOT NULL,
`b_author` VARCHAR(255),
`b_topic` INT(11) NOT NULL,
`b_price` DECIMAL(8,2),
FOREIGN KEY (`b_topic`) REFERENCES tbl_topic(`topic_id`) ON DELETE NO ACTION ON UPDATE CASCADE
);

INSERT INTO `tbl_topic` (`topic_name`) VALUES
		('classic'),
		('liric'),
		('memuars'),
		('psychology'),
		('philosofy')
	;
	
	INSERT INTO `tbl_books` VALUES
	('ISBN','Game of throns', 'J.R.Martin',1,75),
	('ISBN','Mask of Silent', 'B.K. Brest',4,60),
	('BBCD', 'WTF', 'J.F. Busch',2,30)
	;
		
		
