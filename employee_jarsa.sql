-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department (
id serial PRIMARY KEY, name VARCHAR (50), 
description VARCHAR(50)
);

CREATE TABLE employee (
id serial PRIMARY KEY, first_name VARCHAR (50),
last_name VARCHAR (50), dep_id serial,
FOREIGN KEY (dep_id) REFERENCES employee_department
(id)
);

INSERT INTO employee_department (name, description) 
VALUES ('accounting', 'takes care of all company accounts'),
('hr','human resources'),('manufacturing','builds the product'),
('sales','sells the product'),('management','manages activities'),
('programers','build the software');

INSERT INTO employee (first_name, last_name, dep_id) 
VALUES ('John', 'Doe', '2'),
('Jane','Doe', '2'),('Fulano','Mangado', '1'),
('Fulana','Mangada', '5');



-- ...
