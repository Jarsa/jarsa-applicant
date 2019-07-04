-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id VARCHAR(5),
    firstname VARCHAR(50),
    lastname VARCHAR(50)
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
INSERT INTO employee (id, firstname, lastname) 
VALUES (1, 'Alejandra', 'Moreno'), 
(2, 'Daniel', 'Cruz'), 
(3, 'MariaJ', 'Sifuentes'),
(4, 'Karla', 'Garcia'),
(5, 'Agustín', 'Lara'),
(6, 'Peter', 'Child');

-- Tabla Departamentos
INSERT INTO employee_department (id, names, descript) 
VALUES (1, 'Gerencia', 'Principal'), 
(2, 'Comedor', 'Lugar para descanso'), 
(3, 'Vigilancia', 'Seguridad de la empresa'),
(4, 'Almacen', 'Recibimiento de inventario'),
(5, 'Contabilidad', 'Llevar a cabo la cuenta monetaria'),
(6, 'Sistemas', 'Encargados del sistema principal');

INSERT INTO employee_hobby (id, names, descript) 
VALUES (1, 'Deporte', 'Jugar Futbol'), 
(2, 'Ocio', 'Ver peliculas'), 
(3, 'Arte', 'Pintar cuadros');



-- ...
