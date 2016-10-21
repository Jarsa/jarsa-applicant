-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id INT PRIMARY KEY,   
    first_name varchar(64),
    last_name varchar(64)
);

CREATE TABLE employee_department (
    id INT PRIMARY KEY,
    name varchar(64),
    description varchar(64)
);

CREATE TABLE employee_hobby (
);

ALTER TABLE employee ADD department_id INT REFERENCES employee_department(id);

INSERT INTO employee_department (id, name, description) VALUES
    (1, 'Sales', 'Sales Department'),
    (2, 'Purchasing', 'Purchasing Department'),
    (3, 'Marketing', 'Marketing Department'),
    (4, 'HR', 'HR Department'),
    (5, 'Technology', 'Technology Department'),
    (6, 'Accounting', 'Accounting Department');

INSERT INTO employee (id, first_name, last_name, department_id) VALUES
    (1, 'Manuel', 'Marquez', 5),
    (2, 'Pedro', 'Perez', 6),
    (3, 'Mike', 'Smith', 2),
    (4, 'John',  'Doe', 1);
-- ...
