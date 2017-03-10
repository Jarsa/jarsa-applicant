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
	departmentID INT REFERENCES employee_department(id)
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

CREATE TABLE hobby(
	id SERIAL PRIMARY KEY,
	name VARCHAR(30),
	description VARCHAR(150)
);

CREATE TABLE employee_hobby (
	id SERIAL PRIMARY KEY,
	employeeID INT REFERENCES employee(id),
	hobbyID INT REFERENCES hobby(id),
	UNIQUE(employeeID,hobbyID)
);

INSERT INTO hobby(name, description) VALUES 
('Board Game', 'Play board-games'),
('Read', 'Reading books, magazines and articles of any kind'),
('Programming', 'Develop web and mobile applications');
SELECT * FROM hobby;

INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(1,1);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(2,3);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(3,1);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(4,3);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(1,2);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(2,2);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(3,2);
INSERT INTO employee_hobby(employeeID,hobbyID) VALUES(4,1);
SELECT * FROM employee_hobby;

CREATE TABLE boss(
	id SERIAL PRIMARY KEY,
    employeeID INT REFERENCES employee(id),
    UNIQUE(employeeID)
);

INSERT INTO boss(employeeID) VALUES(1);
INSERT INTO boss(employeeID) VALUES(2);

CREATE TABLE employeeBoss(
    id SERIAL PRIMARY KEY,
    employeeID INT REFERENCES employee(id),
    bossID INT REFERENCES boss(id),
    UNIQUE(employeeID)
);

INSERT INTO employeeBoss(employeeID,bossID) VALUES(1,2);
INSERT INTO employeeBoss(employeeID,bossID) VALUES(2,1);
INSERT INTO employeeBoss(employeeID,bossID) VALUES(3,1);
INSERT INTO employeeBoss(employeeID,bossID) VALUES(4,1);

-- ...
