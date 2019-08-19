-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee (id int not null, first_name text not null, last_name text not null, primary key(id));

CREATE TABLE employee_department (id int not null, name text not null, description text not null, primary key(id));

ALTER TABLE `employee_employee`.`employee` 
ADD COLUMN `department_ID` int(11) NOT NULL;

ALTER TABLE `employee_employee`.`employee` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `department_ID`) ;


ALTER TABLE `employee_employee`.`employee` 
ADD INDEX `employee_department_fk_1_idx` (`department_ID` ASC);

ALTER TABLE `employee_employee`.`employee` 
ADD CONSTRAINT `employee_department_fk_1`
  FOREIGN KEY (`department_ID`)
  REFERENCES `employee_employee`.`employee_department` (`id`);
  
CREATE TABLE employee_hobby (id int not null, name text NOT NULL, description text not null, primary key(id));


ALTER TABLE `employee_employee`.`employee` 
ADD COLUMN `Hobby_1_ID` INT(11) NOT NULL,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `department_ID`, `Hobby_1_ID`);

ALTER TABLE `employee_employee`.`employee` 
ADD COLUMN `Hobby_2_ID` INT(11) NOT NULL,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `department_ID`, `Hobby_2_ID`);


ALTER TABLE `employee_employee`.`employee` 
ADD CONSTRAINT `employee_hobby_fk_1`
  FOREIGN KEY (`Hobby_1_ID`)
  REFERENCES `employee_employee`.`employee_hobby` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `employee_employee`.`employee` 
ADD CONSTRAINT `employee_hobby_fk_2`
  FOREIGN KEY (`Hobby_2_ID`)
  REFERENCES `employee_employee`.`employee_hobby` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;




INSERT INTO `employee_employee`.`employee_hobby` (`id`, `description`, `name`) VALUES ('1', 'arts', 'painting');
INSERT INTO `employee_employee`.`employee_hobby` (`id`, `description`, `name`) VALUES ('2', 'cooking', 'cooking');
INSERT INTO `employee_employee`.`employee_hobby` (`id`, `description`, `name`) VALUES ('3', 'sports', 'exercising');

INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('1', 'H.R.', 'Human resources');
INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('2', 'Sales', 'Sales');
INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('3', 'Development', 'Software development');
INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('4', 'Technical support', 'Technical support');
INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('5', 'Front Desk', 'Front desk');
INSERT INTO `employee_employee`.`employee_department` (`id`, `name`, `description`) VALUES ('6', 'Warehouse', 'Warehouse, supplies');


INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('1', 'Aldo', 'Serrano', '1', '2', '1');
INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('2', 'Marcela', 'Luna', '3', '3', '1');
INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('3', 'isai', 'rodriguez', '1', '1', '2');
INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('4', 'marcos', 'sanchez', '1', '2', '1');
INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('5', 'helena', 'perez', '2', '2', '3');
INSERT INTO `employee_employee`.`employee` (`id`, `first_name`, `last_name`, `department_ID`, `Hobby_1_ID`, `Hobby_2_ID`) VALUES ('6', 'fabiola', 'torres', '3', '3', '2');

