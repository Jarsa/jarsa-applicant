-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
   emp_id INT PRIMARY KEY,
   firstname VARCHAR (255) NOT NULL,
   lastname VARCHAR (255) NOT NULL,
   id_boss INT,
   FOREIGN KEY (id_boss)
   REFERENCES employee (emp_id)
   ON DELETE CASCADE
);

CREATE TABLE employee_department (
    id VARCHAR(5),
    names VARCHAR(20),
    descript VARCHAR(140)
);

CREATE TABLE employee_hobby (
    id VARCHAR(5),
    names VARCHAR(20),
    descript VARCHAR(140)
);

-- Tabla Empleado
INSERT INTO employee (
   emp_id,
   first_name,
   last_name,
   id_boss
)
VALUES
   (1, 'ALejandra', 'Moreno', NULL),
   (2, 'Peter', 'Child', 1),
   (3, 'Agustin', 'Lara', 1),
   (4, 'Karla', 'Garcia', 2),
   (5, 'MariaJ', 'Sifuentes', 2),
   (6, 'Daniel', 'Cruz', 3),
   (7, 'Sergio', 'Hernandez', 3),
   (8, 'Elizabeth', 'Rodriguez', 3);
-- ...
