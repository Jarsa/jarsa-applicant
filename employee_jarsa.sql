-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id int NOT NULL,
    first_name char(35) NOT NULL,
    last_name char(35) NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (id)
);

CREATE TABLE employee_department (
    id int NOT NULL,
    name char(35) NOT NULL,
    description char (100) NOT NULL,
    employee_id int NOT NULL DEFAULT 0 
);
ALTER TABLE employee_department ADD CONSTRAINT pk_employee_department FOREIGN KEY (employee_id) REFERENCES employee(id);

INSERT INTO employee (id, first_name,last_name) values (1, 'Oscar Ulises', 'Garza Cordova');
INSERT INTO employee (id, first_name,last_name) values (1, 'Luis ', 'Perez Lopez');
INSERT INTO employee (id, first_name,last_name) values (1, 'Mariana', 'Garcia Sarabia');
INSERT INTO employee (id, first_name,last_name) values (1, 'Gisela', 'Zapata Belmontes');

INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Ventas', 'Departamento que se encarga de gestionar las ventas de la empresa',1);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Compras', 'Departamento que se encarga de gestionar las compras de la empresa',2);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Bebes', 'Departamento con ropa, comida y accesorios para bebes',3);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Abarrotes', 'Departamento con abarrotes generales para el hogar',4);
INSERT INTO employee_department (id,name,description) values (1, 'Caballeros', 'Departamento con ropa y accesorios para caballeros');
INSERT INTO employee_department (id,name,description) values (1, 'Damas', 'Departamento con ropa y accesorios para damas');
CREATE TABLE employee_hobby (
);

-- ...
