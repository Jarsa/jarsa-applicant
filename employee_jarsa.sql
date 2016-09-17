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

