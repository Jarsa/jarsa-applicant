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
);

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
