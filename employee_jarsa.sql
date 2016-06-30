-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id int NOT NULL PRIMARY KEY, 
  first_name char(60) NOT NULL,
  last_name char(60)NOT NULL,
  id_department int
);
CREATE TABLE employee_department (
  id int NOT NULL PRIMARY KEY, 
  name char(50) NOT NULL, 
  description char(50) NOT NULL
);
ALTER TABLE employee ADD CONSTRAINT fk_employee_department FOREIGN KEY(id_department) REFERENCES employee_department(id);

INSERT INTO employee VALUES(1,'Miguel','Guzman RUiz',1);
INSERT INTO employee VALUES(2,'Monica','Guzman RUiz',2);
INSERT INTO employee VALUES(3,'Micaela','Ruiz Gomez',3);
INSERT INTO employee VALUES(4,'Isabel','Esparza',4);

INSERT INTO employee_department VALUES(1, 'Tesoreria', 'Se encarga de los ingresos y egresos de la empresa');
INSERT INTO employee_department VALUES(2, 'CxP', 'Se encarga de las cuentas por pagar');
INSERT INTO employee_department VALUES(3, 'CxC', 'Se encarga de las cuentas por cobrar');
INSERT INTO employee_department VALUES(4, 'Sistemas', 'Se encarga de gestionar los sistemas de la empresa');
INSERT INTO employee_department VALUES(5, 'Redes', 'Se encarga de las redes de comunicacion');
INSERT INTO employee_department VALUES(6, 'Atn al Cliente', 'Se encarga de la atencion y trato al cliente');

-- ...
