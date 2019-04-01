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
-- ...
