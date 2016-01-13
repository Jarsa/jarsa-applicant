-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department(
  id int primary key,
  name varchar(50),
  description varchar(80)
);

CREATE TABLE employee(
  id int primary key,
  id_dep int references employee_department(id),
  first_name varchar(40),
  last_name varchar(40)
);

-- Crear 4 empleados y 6 departamentos
INSERT INTO employee_department values
(1, 'HR', 'Recursos humanos'),
(2, 'Ventas', 'Aqui vendemos'),
(3, 'Compras', 'Aqui compramos'),
(4, 'Sistemas', 'Aqui trabajamos'),
(5, 'Direccion', 'Aqui solo cobramos'),
(6, 'Contabilidad', 'Aqui lloras al ver tu cheque');

INSERT INTO employee values
(1, 1, 'hola', 'que hace'),
(2, 2, 'ola', 'ke ase'),
(3, 3, 'manuna', 'soy asesina'),
(4, 4, 'pelon', 'enojon');

CREATE TABLE employee_hobby (
);

-- ...
