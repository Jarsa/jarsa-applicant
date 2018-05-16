-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    boss_employee INT NULL
);

CREATE TABLE employee_department (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(350)
);

CREATE TABLE employee_department_rel (
    id SERIAL PRIMARY KEY,
    id_employee SERIAL NOT NULL UNIQUE,
    id_department SERIAL NOT NULL
);

-- Inserts of employee's
INSERT INTO employee(first_name,last_name) VALUES("Jhon","Wheek");
INSERT INTO employee(first_name,last_name) VALUES("Gabriel","Roler");
INSERT INTO employee(first_name,last_name) VALUES("Mariel","Hook");
INSERT INTO employee(first_name,last_name) VALUES("Dinerin","Strel");

-- Inserts of deparment's
INSERT INTO employee_department(name, description) VALUES("Department 1","Department 1 for...");
INSERT INTO employee_department(name, description) VALUES("Department 2","Department 2 for...");
INSERT INTO employee_department(name, description) VALUES("Department 3","Department 3 for...");
INSERT INTO employee_department(name, description) VALUES("Department 4","Department 4 for...");
INSERT INTO employee_department(name, description) VALUES("Department 5","Department 5 for...");
INSERT INTO employee_department(name, description) VALUES("Department 6","Department 6 for...");

-- Inserts of assign an employee to a department
INSERT INTO employee_department_rel(id_employee,id_department) VALUES(1,1);
INSERT INTO employee_department_rel(id_employee,id_department) VALUES(1,3);
INSERT INTO employee_department_rel(id_employee,id_department) VALUES(1,5);
INSERT INTO employee_department_rel(id_employee,id_department) VALUES(1,6);

CREATE TABLE employee_hobby (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    description VARCHAR(350)
);

INSERT INTO employee_hobby(name, description) VALUES("VideoGames","Play videogames with the friends");
INSERT INTO employee_hobby(name, description) VALUES("See TV","See the TV");
INSERT INTO employee_hobby(name, description) VALUES("Football","Play FootBall with other colegues");

CREATE TABLE employee_hobby_rel (
    id SERIAL PRIMARY KEY,
    id_employee SERIAL NOT NULL,
    id_hobby SERIAL NOT NULL
);

INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(1,1);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(1,3);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(2,2);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(2,3);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(3,1);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(3,2);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(4,1);
INSERT INTO employee_hobby_rel(id_employee,id_hobby) VALUES(5,3);

-- ...
