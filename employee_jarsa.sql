-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_department (
	id SERIAL PRIMARY KEY,
	name VARCHAR(35),
	description VARCHAR(200)
);

CREATE TABLE employee (
	id SERIAL PRIMARY KEY,
	fisrt_name VARCHAR(30),
	last_name VARCHAR(30),
	departmentID INT REFERENCES employee_department(departmentID)
);

INSERT INTO employee_department(name,description) VALUES 
('Administration', 'Department of resource management'),
('Limpieza', 'Keeps the facilities of the organization clean'),
('Human Resources', 'Is responsible for recruitment and selection, hiring, training, administration or management of staff during the stay in the company'),
('Development', 'Development and maINTenance of platforms and applications'), ('Finance', 'Managers of the companys capital'),
('MaINTenance', 'General company maINTenance');

INSERT INTO employee(fisrt_name,last_name, departmentID) VALUES
('Cristian', 'Vallejo Limon', 3),
('Brenda Laura', 'Martell Medina', 3),
('Cesar', 'Sanchez Tapia', 2),
('Efren Eduardo', 'Lopez Ramos', 5);
Select * from employee_department;
SELECT * FROM employee;

CREATE TABLE employee_hobby (
);

-- ...
