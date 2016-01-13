-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department(
  id int primary key,
  name varchar(50),
  description varchar(80)
);

-- Crear tabla hobby
CREATE TABLE employee_hobby (
  id int primary key,
  name varchar(50),
  description varchar(80)
);

-- Crear tabla empleado
CREATE TABLE employee(
  id int primary key,
  id_dep int references employee_department(id),
  first_name varchar(40),
  last_name varchar(40)
);

-- Crear tabla asignar hobbies a empleados
CREATE TABLE employee_hobby_assign(
  id_emp int references employee(id),
  id_hobby int references employee_hobby(id)
);

-- Crear 6 departamentos
INSERT INTO employee_department values
(1, 'HR', 'Recursos humanos'),
(2, 'Ventas', 'Aqui vendemos'),
(3, 'Compras', 'Aqui compramos'),
(4, 'Sistemas', 'Aqui trabajamos'),
(5, 'Direccion', 'Aqui solo cobramos'),
(6, 'Contabilidad', 'Aqui lloras al ver tu cheque');

-- Crear 3 hobbies
INSERT INTO employee_hobby values
(1, 'Futbol', '22 weyes detras de un balon'),
(2, 'Basketball', '10 weyes detras de un balon'),
(3, 'Golf', 'Un wey con lana detras de una pelota');

-- Crear 4 empleados
INSERT INTO employee values
(1, 1, 'hola', 'que hace'),
(2, 2, 'ola', 'ke ase'),
(3, 3, 'manuna', 'soy asesina'),
(4, 4, 'pelon', 'enojon');

-- Assignar dos hobbies a empleados
INSERT INTO employee_hobby_assign values
(1, 1),
(1, 2),
(2, 3),
(2, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2);
-- ...
