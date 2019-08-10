-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id int,
	first_name varchar(30),
	last_name varchar(30)
);

CREATE TABLE employee_department (
    id int,
	name varchar(30),
	description varchar(50)
);

-- ...
ALTER TABLE employee ADD PRIMARY KEY(id);
ALTER TABLE employee_department ADD PRIMARY KEY(id);

ALTER TABLE employee ADD COLUMN id_employee_department int;

ALTER TABLE employee ADD FOREIGN KEY(id_employee_department) REFERENCES employee_department(id);

INSERT INTO employee_department values
(1, 'Headquarters', 'X'),
(2, 'Head Office', 'X'),
(3, 'Sales Department', 'X'),
(4, 'Human Resources', 'X'),
(5, 'Account Department', 'X'),
(6, 'Finance Department', 'X');

INSERT INTO employee values
(1, 'Edgar Ulises', 'Toral Torres', 1),
(2, 'Smith', 'Xamas Souns', 3),
(3, 'John', 'Martinez Loto', 5),
(4, 'Ana Martha', 'Lucas Luna', 3);