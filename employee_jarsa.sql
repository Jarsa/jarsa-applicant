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

alter table employee add constraint fk_employee_department_id foreign key(employee_department_id) references employee_department(id) 
on delete cascade
on update cascade;

insert into employee_department (name,description) values ('Human Resources', 'in charge about the admin of human resourse');
insert into employee_department (name,description) values ('Systems', 'in carge about the informatic systems in the enterprise');
insert into employee_department (name,description) values ('Administration', 'Administrates the life time of proyects');
insert into employee_department (name,description) values ('Design', 'In charge of design the system UI ');
insert into employee_department (name,description) values ('Finances', 'In charge about the enterprise finances');
insert into employee_department (name,description) values ('Production', 'In charge about see that thing are done in a right way');

insert into employee (first_name, last_name, employee_department_id) values ('Hector','Camacho',2);
insert into employee (first_name, last_name, employee_department_id) values ('Alberto','Campos',1);
insert into employee (first_name, last_name, employee_department_id) values ('Jose','Almendraris',2);
insert into employee (first_name, last_name, employee_department_id) values ('Luis','Suarez',4);

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

select * from employee_hobby;

insert into hobby (name,description) values ('Dance','Dance around the house');
insert into hobby (name,description) values ('Crossfit','Excercise yout body');
insert into hobby (name,description) values ('Collector','Collector of different things');
insert into hobby (name,description) values ('Run','Run in the park on the afternoon');

alter table employee add constraint fk_boss_id foreign key(id) references employee(id) on delete cascade on update cascade;
