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
    id INT PRIMARY KEY,
    name varchar(64),
    description varchar(64)
);

CREATE TABLE employee_hobbies (
    employee_id INT REFERENCES employee(id),
    hobby_id INT REFERENCES employee_hobby(id),
    PRIMARY KEY (employee_id, hobby_id)
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

INSERT INTO employee_hobby (id, name, description) VALUES
    (1, 'Development', 'Develop apps.'),
    (2, 'Read', 'Read technical ebooks.'),
    (3, 'Play', 'Play with my children.');

INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 3),
    (4, 1),
    (4, 2);

ALTER TABLE employee ADD boss_id INT REFERENCES employee(id);

UPDATE employee SET boss_id = 4 WHERE id = 1;
UPDATE employee SET boss_id = 4 WHERE id = 2;
UPDATE employee SET boss_id = 4 WHERE id = 3;
-- ...
