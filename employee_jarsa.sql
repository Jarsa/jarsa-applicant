-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_hobby(id serial PRIMARY KEY, name VARCHAR (50), 
description VARCHAR (50));


INSERT INTO employee_hobby (name, description) VALUES 
('basketball','shoot balls into a basket'),
('chess','really old game'),
('woodworking','building furniture');

CREATE TABLE employee_hobbies(employee_id int 
REFERENCES employee (id) ON UPDATE CASCADE ON 
DELETE CASCADE, hobby_id int REFERENCES 
employee_hobby (id) ON UPDATE CASCADE, 
CONSTRAINT employee_hobby_id_pkey PRIMARY KEY 
(employee_id, hobby_id));

INSERT INTO employee_hobbies (employee_id, hobby_id) 
VALUES ('1','1'),('1','2'),('2','2'),('2','3'),('3','2'),
('3','3'),('4','1'),('4','3');

-- ...
