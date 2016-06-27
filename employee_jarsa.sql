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
INSERT INTO employee (id, first_name,last_name) values (2, 'Luis ', 'Perez Lopez');
INSERT INTO employee (id, first_name,last_name) values (3, 'Mariana', 'Garcia Sarabia');
INSERT INTO employee (id, first_name,last_name) values (4, 'Gisela', 'Zapata Belmontes');

INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Ventas', 'Departamento que se encarga de gestionar las ventas de la empresa',1);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Compras', 'Departamento que se encarga de gestionar las compras de la empresa',2);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Bebes', 'Departamento con ropa, comida y accesorios para bebes',3);
INSERT INTO employee_department (id,name,description,employee_id) values (1, 'Abarrotes', 'Departamento con abarrotes generales para el hogar',4);
INSERT INTO employee_department (id,name,description) values (1, 'Caballeros', 'Departamento con ropa y accesorios para caballeros');
INSERT INTO employee_department (id,name,description) values (1, 'Damas', 'Departamento con ropa y accesorios para damas');

CREATE TABLE employee_hobby (
    id int NOT NULL,
    name char(35) NOT NULL,
    description char (100) NOT NULL,
    CONSTRAINT pk_employee_hobby PRIMARY KEY (id)
);

CREATE TABLE employees_hobbies (
    id int NOT NULL,
    employee_id int NOT NULL,
    employee_hobby_id int NOT NULL
);
ALTER TABLE employees_hobbies ADD CONSTRAINT pk_employees_employees_hobbies FOREIGN KEY (employee_id) REFERENCES employee(id);

ALTER TABLE employees_hobbies ADD CONSTRAINT pk_employee_hobby_employees_hobbies FOREIGN KEY (employee_hobby_id) REFERENCES employee_hobby(id);

INSERT INTO employee_hobby (id, name,description) values (1, 'Leer', 'Leer todo tipo de literatura tanto pasada como contemporánea');
INSERT INTO employee_hobby (id, name,description) values (2, 'Escuchar Música', 'Escuchar música del agrado del empleado');
INSERT INTO employee_hobby (id, name,description) values (3, 'Jugar Ajedrez', 'Jugar ajedrez con personas cercanas al empleado');

INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (1, 1, 1);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (2, 1, 2);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (3, 2, 1);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (4, 2, 3);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (5, 3, 2);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (6, 3, 3);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (7, 4, 2);
INSERT INTO employees_hobbies (id,employee_id,employee_hobby_id) values (8, 4, 3);
-- ...

ALTER TABLE employee ADD COLUMN boss_id int default NULL;
ALTER TABLE employee ADD CONSTRAINT fk_employees_employees_boss FOREIGN KEY (boss_id) REFERENCES employee(id);

UPDATE employee SET boss_id = 1 WHERE id = 1;
UPDATE employee SET boss_id = 1 WHERE id = 2;
UPDATE employee SET boss_id = 1 WHERE id = 3;
UPDATE employee SET boss_id = 1 WHERE id = 4;