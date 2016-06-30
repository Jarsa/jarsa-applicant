-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id int NOT NULL,
    first_name char(35) NOT NULL,
    last_name char(35) NOT NULL,
    department_id int NOT NULL
);
ALTER TABLE employee ADD CONSTRAINT pk_employee PRIMARY KEY (id);

CREATE TABLE employee_department (
    id int NOT NULL,
    name char(35) NOT NULL,
    description char (100) NOT NULL
 );
ALTER TABLE employee_department ADD CONSTRAINT pk_employee_department PRIMARY KEY (id);

ALTER TABLE employee ADD CONSTRAINT fk_employee_department FOREIGN KEY (department_id) REFERENCES employee_department(id);


INSERT INTO employee_department values (1, 'Ventas', 'Departamento que se encarga de gestionar las ventas de la empresa');
INSERT INTO employee_department values (2, 'Compras', 'Departamento que se encarga de gestionar las compras de la empresa');
INSERT INTO employee_department values (3, 'Bebes', 'Departamento con ropa, comida y accesorios para bebes');
INSERT INTO employee_department values (4, 'Abarrotes', 'Departamento con abarrotes generales para el hogar');
INSERT INTO employee_department values (5, 'Caballeros', 'Departamento con ropa y accesorios para caballeros');
INSERT INTO employee_department values (6, 'Damas', 'Departamento con ropa y accesorios para damas');

INSERT INTO employee values (1, 'Oscar Ulises', 'Garza Cordova' , 1);
INSERT INTO employee values (2, 'Luis ', 'Perez Lopez',3);
INSERT INTO employee values (3, 'Mariana', 'Garcia Sarabia',4);
INSERT INTO employee values (4, 'Gisela', 'Zapata Belmontes',6);

CREATE TABLE employees_hobbies (
    employee_id int NOT NULL,
    employee_hobby_id int NOT NULL
);

ALTER TABLE employees_hobbies ADD CONSTRAINT fk_employees_employees_hobbies FOREIGN KEY (employee_id) REFERENCES employee(id);

ALTER TABLE employees_hobbies ADD CONSTRAINT fk_employee_hobby_employees_hobbies FOREIGN KEY (employee_hobby_id) REFERENCES employee_hobby(id);

INSERT INTO employee_hobby (id, name,description) values (1, 'Leer', 'Leer todo tipo de literatura tanto pasada como contemporánea');
INSERT INTO employee_hobby (id, name,description) values (2, 'Escuchar Música', 'Escuchar música del agrado del empleado');
INSERT INTO employee_hobby (id, name,description) values (3, 'Jugar Ajedrez', 'Jugar ajedrez con personas cercanas al empleado');

INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (1, 1);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (1, 2);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (2, 1);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (2, 3);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (3, 2);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (3, 3);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (4, 2);
INSERT INTO employees_hobbies (employee_id,employee_hobby_id) values (4, 3);

ALTER TABLE employee ADD COLUMN boss_id int default NULL;
ALTER TABLE employee ADD CONSTRAINT fk_employees_employees_boss FOREIGN KEY (boss_id) REFERENCES employee(id);

UPDATE employee SET boss_id = 1 WHERE id = 1;
UPDATE employee SET boss_id = 1 WHERE id = 2;
UPDATE employee SET boss_id = 1 WHERE id = 3;
UPDATE employee SET boss_id = 1 WHERE id = 4;

-- ...