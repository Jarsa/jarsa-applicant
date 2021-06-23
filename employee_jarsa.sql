-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
);

CREATE TABLE employee_department (
);

CREATE TABLE employee_hobby (
);
ADD COLUMN first_name "char";

ADD COLUMN id bigint NOT NULL;

ADD COLUMN last_name "char";

INSERT INTO employee(first_name, last_name)
VALUES
(jorge, pinto);(rogelio,pedroza );
(pedro,gonzales );
(isac,rodriguez);

INSERT INTO employee_department(name, description)
VALUES
   (belleza, algo de belleza);
   (salud, salud y bienestar);
   (limpieza, escobeas y trapeadores);
   (gaming, videojuegos);
   (electrodomesticos, estufas y lavadoras);
   (electronica, laptops);
   (telefonia, smartphones);

-- ...
