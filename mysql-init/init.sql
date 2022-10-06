CREATE DATABASE IF NOT EXISTS appDB2;
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'password';
GRANT SELECT,UPDATE,INSERT ON appDB2.* TO 'user'@'%';
FLUSH PRIVILEGES;
set names 'utf8';
CREATE TABLE IF NOT EXISTS users (user varchar(191) not null, passwd varchar(191), primary key (user));
INSERT INTO users VALUE ('holz', '{SHA}fCIvspJ9goryL1khNOiTJIBjfA0='); 

CREATE TABLE `orders` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(200),
	`type` VARCHAR(200),
	PRIMARY KEY (`id`)
);
INSERT INTO orders VALUE (NULL, 'Вася', 'смузи'); 
INSERT INTO orders VALUE (NULL, 'Ваня', 'экспрессо'); 
INSERT INTO orders VALUE (NULL, 'Вантандер', 'чай'); 
INSERT INTO orders VALUE (NULL, 'Вагизов', 'кофе'); 
INSERT INTO orders VALUE (NULL, 'Валёк', 'coffe'); 