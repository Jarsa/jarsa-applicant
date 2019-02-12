CREATE TABLE employee_department (
     id Integer primary key not null,
     name varchar(50),
     description varchar(50)
);

CREATE TABLE employee (
     id Integer,
     first_name varchar(50),
     last_name varchar(50),
     employee_department_id Integer,
     PRIMARY KEY (id),
     FOREIGN KEY (employee_department_id) REFERENCES employee_department(id)
);

-- Your sql code in this file
--Departaments
INSERT INTO employee_department VALUES (1,'Ventas','Vendedor');
INSERT INTO employee_department VALUES (2,'Contabilidad','Contador');
INSERT INTO employee_department VALUES (3,'Recursos Humanos','RH');
INSERT INTO employee_department VALUES (4,'Gerente General','Gerente');
INSERT INTO employee_department VALUES (5,'Administracion','Administrativo');
INSERT INTO employee_department VALUES (6,'Soporte','Atencion a Clientes');

--employees
INSERT INTO employee VALUES (1,'Hugo','Manuel',1);
INSERT INTO employee VALUES (2,'Mario','Delgado',2);
INSERT INTO employee VALUES (3,'Emanuel','Jimenez',4);
INSERT INTO employee VALUES (4,'Victor','Trujillo',1);
