-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id INT PRIMARY KEY,
    first_name varchar(30),
    last_name varchar(30)
);

CREATE TABLE employee_department (
     id INT PRIMARY KEY,
     name varchar(30),
     description varchar(30)
);

CREATE TABLE employee_hobby (
    id INT PRIMARY KEY,
    name varchar(30),
    description varchar(30)
);

CREATE TABLE employee_hobbies (
    employee_id INT REFERENCES employee(id),
    hobby_id INT REFERENCES employee_hobby(id),
    PRIMARY KEY (employee_id, hobby_id)
);


ALTER TABLE employee ADD department_id INT REFERENCES employee_department(id);

INSERT INTO employee_department (id, name, description) VALUES
    (1, 'Administracion', 'Administracion'),
    (2, 'Compras', 'Compras'),
    (3, 'Ventas', 'Ventas'),
    (4, 'Almacen', 'Almacen'),
    (5, 'Recursos Humanos', 'Recursos Humanos'),
    (6, 'Operacion', 'Operacion');

INSERT INTO employee (id, first_name, last_name, department_id) VALUES
    (1, 'Luis', 'Triana', 1),
    (2, 'Alfredo', 'Gonzalez', 6),
    (3, 'Alejandra', 'Escandon', 1),
    (4, 'Paloma',  'Reyes', 3);

INSERT INTO employee_hobby (id, name, description) VALUES
    (1, 'Escribir', 'Escribir'),
    (2, 'Programar', 'Programar'),
    (3, 'Salir', 'Salir');

INSERT INTO employee_hobbies (employee_id, hobby_id) VALUES
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 1),
    (3, 3),
    (4, 1),
    (4, 3);

ALTER TABLE employee ADD boss_id INT REFERENCES employee(id);

UPDATE employee SET boss_id = 2 WHERE id = 1;
UPDATE employee SET boss_id = 3 WHERE id = 2;
UPDATE employee SET boss_id = 1 WHERE id = 3;
UPDATE employee SET boss_id = 1 WHERE id = 4;