-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_department(
	id serial not null primary key,
	name varchar(50) not null,
	description text not null
);


CREATE TABLE employee (
	id serial not null primary key,
	first_name varchar(25),
	last_name varchar(25),
	department int not null,
	foreign key(department) references employee_department(id)
);


INSERT INTO employee_department(name, description) VALUES ('General Managment','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Marketing','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Operations','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Finance','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Sales','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Purchase','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi');

INSERT INTO employee(first_name, last_name, department) VALUES ('Jaziel Abisai','Rodriguez Hernandez', 1),
('Joshua Isaí','Salas Saavedra',2),
('Ana Lizeth','Ramirez Rivas',4),
('Blanca Yessenia','Gaeta Talamantes',6);

CREATE TABLE employee_hobby (
	id serial not null primary key,
	name varchar(50) not null,
	description text not null
);


CREATE TABLE employee_hobby_detail(
	id_employee int,
	foreign key(id_employee) references employee(id),
	id_hobby int,
	foreign key(id_hobby) references employee_hobby(id)
);


INSERT INTO employee_hobby(name, description) VALUES ('Play Guitar','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Play Videogames','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi'),
('Play basketball','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto non quasi');


INSERT INTO employee_hobby_detail(id_employee, id_hobby) VALUES (1,1),
(1,2),
(1,3),
(2,1),
(2,2),
(2,3),
(3,1),
(3,2),
(3,3),
(4,1),
(4,2),
(4,3);