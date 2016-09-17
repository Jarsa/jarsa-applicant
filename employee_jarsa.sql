-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE employee (
	 id int primary key,
	 first_name varchar (30) not null,
	 last_name varchar (30) not null,
	 id_department int not null
);
CREATE TABLE employee_department (
	id int primary key,
	name varchar(40) not null,
	description varchar(30) not null
);


ALTER TABLE employee ADD CONSTRAINT fk_employee_department FOREIGN KEY(id_department) REFERENCES employee_department(id);

insert INTO employee_department VALUES (1, 'RH','RECURSOS HUMANOS');
insert INTO employee_department  VALUES(2, 'CALIDAD','CALIDAD');
insert INTO employee_department  VALUES(3, 'SISTEMAS','SIS');
insert INTO employee_department  VALUES (4, 'DISEÑO','D');
insert INTO employee_department  VALUES(5, 'VENTAS','VTAS');
insert INTO employee_department  VALUES (6, 'COMPRAS','COMPRAS');

insert into employee VALUES (4, 'Martha', 'Esparza Arg',1);
insert into employee VALUES (2, 'Abraham', 'Avila Esparza',2);
insert into employee VALUES (3, 'Abigail', 'Avila Esparza',3);
insert into employee VALUES (4, 'Ana', 'Esparza Arg',3);

CREATE TABLE employee_hobby (
	id int primary key,
	name varchar(40) not null,
	description varchar(30) not null
);

CREATE TABLE employees_h(
 id_employee int NOT NULL, 
 id_employee_h INT
);

ALTER TABLE employees_h ADD CONSTRAINT fk_employee_employee_h FOREIGN KEY(id_employee) REFERENCES employee(id);
ALTER TABLE employees_h ADD CONSTRAINT fk_employeehobby_employeesh FOREIGN KEY(id_employee_h) REFERENCES employee_hobby(id);


insert INTO employee_hobby  VALUES (1, 'TKD','PRACTICE');
insert INTO employee_hobby  VALUES (2, 'DANCE','PRACTICE');
insert INTO employee_hobby  VALUES (3, 'PLAY GUITAR','PRACTICE');


insert INTO employees_h  VALUES (1,2);
insert INTO employees_h  VALUES (1,3);
insert INTO employees_h  VALUES (2,2);
insert INTO employees_h  VALUES (2,3);
insert INTO employees_h  VALUES (3,1);
insert INTO employees_h  VALUES (3,3);
insert INTO employees_h  VALUES (4,2);
insert INTO employees_h  VALUES (4,1);


ALTER TABLE employee ADD COLUMN idboss INT DEFAULT NULL;
UPDATE employee SET idboss = 1 WHERE id = 1;
UPDATE employee SET idboss = 1 WHERE id = 2;
UPDATE employee SET idboss = 1 WHERE id = 3;
UPDATE employee SET idboss = 1 WHERE id = 4;