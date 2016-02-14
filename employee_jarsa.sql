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