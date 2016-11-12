-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--employee_department
CREATE TABLE employee_department (dep_id serial primary key, name varchar(60), description varchar(250)
);
INSERT INTO employee_department (name, description) values
	('Sistemas', 'Area de programadores e innovaciones tecnologicas'),
	('Administracion', 'Area de papeleo y documentacion de la empresa'),
	('Recursos Humanos', 'Area de reclutaciones y contrataciones'),
	('Finanzas', 'Area de movimiento de dinero'),
	('Recursos', 'Area de control de instalaciones, etc'),
	('Produccion', 'Area de empleados en produccion');

--employee
CREATE TABLE employee (id serial primary key, first_name varchar(50), last_name varchar(50),
	dep_id int references employee_department(dep_id)
);
INSERT INTO employee (first_name, last_name, dep_id) values
	('Pedro', 'Ramirez', 1),('Mario', 'Perez', 2),('Jorge', 'Estrada', 2),('Alberto', 'Guzman', 3);

/*CREATE TABLE employee_hobby (
);*/

SELECT * from employee_department;
SELECT * from employee;

-- ...
