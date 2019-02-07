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

create table employee_hobby(
id int auto_increment,
namee varchar(20),
description text,
primary key (id)
);

create table employeexhobby(
id int auto_increment,
id_employee int,
id_hobby int,
primary key (id)
);

insert into employee_hobby(id,namee,description) values (0,'Tocar instrumentos','Tocar algun instrumento musical');
insert into employee_hobby(id,namee,description) values (0,'Cantar','Musica ranchera');
insert into employee_hobby(id,namee,description) values (0,'Hacer deporte','Practicar box,calistenia,crossfit,etc.');

insert into employeexhobby(id,id_employee,id_hobby) values(0,1,1);
insert into employeexhobby(id,id_employee,id_hobby) values(0,1,3);
insert into employeexhobby(id,id_employee,id_hobby) values(0,2,1);
insert into employeexhobby(id,id_employee,id_hobby) values(0,2,2);
insert into employeexhobby(id,id_employee,id_hobby) values(0,3,3);
insert into employeexhobby(id,id_employee,id_hobby) values(0,3,2);
insert into employeexhobby(id,id_employee,id_hobby) values(0,4,2);
insert into employeexhobby(id,id_employee,id_hobby) values(0,4,1);

alter table employee add column id_boss int;

update employee set id_boss = 2 where id = 1;
update employee set id_boss = 4 where id = 2;
update employee set id_boss = 2 where id = 3;
update employee set id_boss = 1 where id = 4;
