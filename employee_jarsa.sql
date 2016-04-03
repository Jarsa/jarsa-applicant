-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id serial PRIMARY KEY,
    first_name varchar(30),
    last_name varchar(30),
    department_id integer,
    FOREIGN KEY (department_id) REFERENCES employee_department(id)
);

CREATE TABLE employee_department (
    id serial PRIMARY KEY,
    name varchar(30),
    description varchar(200)
);

CREATE TABLE employee_hobby (
);

INSERT INTO employee VALUES (1, 'Paola', 'García Cabrales', 6);
INSERT INTO employee VALUES (2, 'Sarahí', 'Flores Hernández', 4);
INSERT INTO employee VALUES (3, 'Brenda', 'Dueñas Zermeño', 2);
INSERT INTO employee VALUES (4, 'Noemí', 'Citlali Gabriela', 1);

INSERT INTO employee_department VALUES (1, 'Contabilidad y Finanzas', 'El departamento de contabilidad se encarga de...');
INSERT INTO employee_department VALUES (2, 'Compras', 'El departamento de compras se encarga de...');
INSERT INTO employee_department VALUES (3, 'Recursos Humanos','El departamento de recursos humanos se encarga de...');
INSERT INTO employee_department VALUES (4, 'Manufactura', 'El departamento de manufactura se encarga de...');
INSERT INTO employee_department VALUES (5, 'IDS', 'El departamento de investigación y desarrollo de software se encarga de ...');
INSERT INTO employee_department VALUES (6, 'Ventas', 'El departamento de ventas se encarga de ...');

-- ...
