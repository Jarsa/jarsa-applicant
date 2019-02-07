-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

create table employee_department(
id int auto_increment,
namee varchar(20),
description text,
primary key(id)
);

create table employee (
id int auto_increment,
first_name varchar(30),
last_name varchar(30),
id_department int,
primary key(id),
foreign key(id_department) references employee_department(id)
);

insert into employee_department(id,namee,description) values(0,'Ventas','Creado para vender');
insert into employee_department(id,namee,description) values(0,'Compras','Creado para comprar');
insert into employee_department(id,namee,description) values(0,'RH','Creado para atender trabajadores');
insert into employee_department(id,namee,description) values(0,'Desarrollo','Creado para programar');
insert into employee_department(id,namee,description) values(0,'Planeacion','Creado para planear la produccion');
insert into employee_department(id,namee,description) values(0,'Produccion','Creado para seguir la planeacion');

insert into employee(id,first_name,last_name,id_department) values (0,'Jose','Juarez',2);
insert into employee(id,first_name,last_name,id_department) values (0,'Pedro','Perez',2);
insert into employee(id,first_name,last_name,id_department) values (0,'Maria','Saldaña',1);
insert into employee(id,first_name,last_name,id_department) values (0,'Israel','Cuevas',3);
