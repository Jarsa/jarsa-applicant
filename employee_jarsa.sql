-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee(
id serial PRIMARY KEY,
first_name varchar(50) NOT NULL, 
last_name varchar(50) NOT NULL,
dep_id int
);

CREATE TABLE employee_department (
id serial PRIMARY KEY, 
name varchar(50) NOT NULL, 
description varchar(50) NOT NULL 
);


ALTER TABLE employee
ADD FOREIGN KEY (department_id) REFERENCES employee_department(id);

INSERT INTO employee_department (name, description)
VALUES ('Accounting','Handles the money'),
('HR', 'Human Resources'),
('Management', 'Manages everyone'),
('Manufacturing', 'Produces the product'),
('RD', 'Research and Development'),
('Tech', 'Technical Department');

INSERT INTO employee (first_name, last_name, dep_id)
VALUES ('John','Doe','2'),
('Jane', 'Doe', '3'),
('Fulano', 'Mangano','2'),
('Fulana', 'Mangana', '1');

CREATE TABLE employee_hobby(
id serial PRIMARY KEY, 
name varchar(50) NOT NULL, 
description text
);

CREATE TABLE employee_hobbies(
employeeid int,
id int
);

ALTER TABLE employee_hobbies
ADD FOREIGN KEY (employeeid) REFERENCES employee(id);

ALTER TABLE employee_hobbies
ADD FOREIGN KEY (id) REFERENCES employee_hobby(id);

INSERT INTO employee_hobby (name, description)
VALUES ('Woodworking','Building furniture mantel pieces etc...'),
('Bowling', 'Rolling a ball to knock down pins'),
('Basketball','Shooting a ball into a hoop');

INSERT INTO employee_hobbies (employeeid, id)
VALUES ('1','3'),
('1', '2'),
('2','2'),
('2','1'),
('3','1'),
('3','3'),
('4','2'),
('4','1');


ALTER TABLE employee ADD COLUMN bossid INT DEFAULT NULL;

UPDATE employee SET bossid = 1 WHERE id = 1;
UPDATE employee SET bossid = 1 WHERE id = 2;
UPDATE employee SET bossid = 1 WHERE id = 3;
UPDATE employee SET bossid = 1 WHERE id = 4;
-- ...
