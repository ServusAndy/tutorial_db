USE `db_48`;

CREATE TABLE `users` (
`email` VARCHAR(50) /* NOT NULL UNIQUE */,
`password` VARCHAR(12),
`name` VARCHAR(15),
-- KEY(`email`)
PRIMARY KEY(`email`)
)

INSERT INTO `users` VALUES 
('vasya@mail.com','123456','Vasya'),
('petya@mail.com','123456','Petya'),
('dima@mail.com','123456','Dima'),
('sofa@mail.com','123456','Sofa');

INSERT INTO `users` VALUES 
(NULL, '123456','Vasya');

INSERT INTO `users` (`password`, `name`) VALUES
('123456','Vasya');

