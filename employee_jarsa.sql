-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

--employee
CREATE TABLE employee (id serial primary key, first_name varchar(50), last_name varchar(50)
);
INSERT INTO employee (first_name, last_name) values
	('Pedro', 'Ramirez'),('Mario', 'Perez'),('Jorge', 'Estrada'),('Alberto', 'Guzman'),
	('Raul', 'Soto'),('Carmen', 'Osorio'),('Laura', 'Estrada');

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

--employee_has_department
CREATE TABLE employee_has_department (emp_id int references employee(id),
	dep_id int references employee_department(id)
);
INSERT INTO employee_has_department (emp_id, dep_id) values
	(1,1),(2,2),(3,2),(4,3),
	(5,1),(6,2),(7,3);

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

--boss
CREATE TABLE boss (id serial primary key, emp_id int references employee(id)
);
INSERT INTO boss (emp_id) values (5),(6),(7);

--boss_has_employee
CREATE TABLE boss_has_employees (boss_id int references boss(id), emp_id int references employee(id)
);
INSERT INTO boss_has_employees (boss_id, emp_id) values
	(1,1),(2,2),(2,3),(3,4);

SELECT * from employee;
SELECT * from employee_department;
SELECT * from employee_has_department;
SELECT * from employee_hobby;
SELECT * from employee_has_hobbies;
SELECT * from boss;
SELECT * from boss_has_employees;

-- ...
