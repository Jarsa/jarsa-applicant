-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--employee_department
CREATE TABLE employee_department (id serial primary key, name varchar(60), description varchar(250)
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
	dep_id int references employee_department(id)
);
INSERT INTO employee (first_name, last_name, dep_id) values
	('Pedro', 'Ramirez', 1),('Mario', 'Perez', 2),('Jorge', 'Estrada', 2),('Alberto', 'Guzman', 3);

--hobbies
CREATE TABLE employee_hobby (id serial primary key, name varchar(60), description varchar(250)
);
INSERT INTO employee_hobby (name, description) values
	('Ajedrez', 'Juego de mesa'),('Futbol', 'Deporte tradicional'),('Arte', 'Cualquiera tipo de arte');

--employee_has_hobbies
CREATE TABLE employee_has_hobbies (emp_id int references employee(id), hob_id int references employee_hobby(id)
);
INSERT INTO employee_has_hobbies (emp_id, hob_id) values
	(1,1),(1,2),(2,1),(2,3),(3,2),(3,3),(4,1),(4,3);

SELECT * from employee_department;
SELECT * from employee;
SELECT * from employee_hobby;
SELECT * from employee_has_hobbies;

-- ...
