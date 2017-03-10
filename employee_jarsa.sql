-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
  id serial not null,
  first_name varchar(50),
  last_name varchar(50),
  employee_department_id int not null,
  primary key(id)
  );
  
  CREATE TABLE employee_department (
 id serial not null,
 name varchar(40),
 description varchar(200),
 primary key (id)
  );

CREATE TABLE employee_hobby (
   id serial not null,
   employee_id int not null,
   hobby_id int not null,
   primary key(id)
);

CREATE TABLE hobby (
   id serial not null,
   name varchar(60),
   description varchar(200) 
);

alter table employee_hobby add constraint fk_employee_id foreign key(employee_id) references employee(id) on delete cascade on update cascade;
alter table employee_hobby add constraint fk_hobby_id foreign key(hobby_id) references hobby(id) on delete cascade on update cascade;

insert into hobby (name,description) values ('Dance','Dance many rithms');
insert into hobby (name,description) values ('Collector','Collector of different things');
insert into hobby (name,description) values ('Run','Running in many places');

insert into employee_hobby(employee_id, hobby_id) values (1,1);
insert into employee_hobby(employee_id, hobby_id) values (1,2);
insert into employee_hobby(employee_id, hobby_id) values (2,2);
insert into employee_hobby(employee_id, hobby_id) values (2,3);
insert into employee_hobby(employee_id, hobby_id) values (3,1);
insert into employee_hobby(employee_id, hobby_id) values (3,2);
insert into employee_hobby(employee_id, hobby_id) values (4,2);
insert into employee_hobby(employee_id, hobby_id) values (4,3); 

-- ...
alter table employee add constraint fk_employee_department_id foreign key(employee_department_id) references employee_department(id) 
 on delete cascade
 on update cascade;
 
 insert into employee_department (name,description) values ('Human Resources', 'in charged about the admin of human resourse');
 insert into employee_department (name,description) values ('Systems', 'in carged about the TI area in the enterprise');
 insert into employee_department (name,description) values ('Administration', 'Administrates the life time of proyects');
 insert into employee_department (name,description) values ('UI Design', 'In charged of designing the system UI ');
 insert into employee_department (name,description) values ('Finances', 'In charged about the enterprise finances');
 insert into employee_department (name,description) values ('Production', 'In charged about see production statics');
  
 --- ...
 insert into employee (first_name, last_name, employee_department_id) values ('Antonio','Mares',2);
 insert into employee (first_name, last_name, employee_department_id) values ('Victor','Vucio',1);
 insert into employee (first_name, last_name, employee_department_id) values ('Luis','Batres',2);
 insert into employee (first_name, last_name, employee_department_id) values ('Luis','Hernandez',4);
--- ...
 alter table employee add constraint fk_boss_id foreign key(id) references employee(id) on delete cascade on update cascade;
