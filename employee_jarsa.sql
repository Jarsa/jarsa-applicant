-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLESPACE eployee OWNER root LOCATION '/root/etc/dbs';

CREATE DATABASE employee_epmloyee OWNER root TABLESPACE eployee ENCODING 'LATIN1' TEMPLATE template0;

CREATE TABLE employee (
id int PRIMARY KEY,
first_name varchar(25) not null,
last_name varchar(25) not null,
is_active int default 1,
is_incatice int default null,
is_manager int default null,
added_date timestamp not null,
user_mod int default null,
mod_date timestamp default null
);

CREATE TABLE employee_department (
id int PRIMARY KEY,
name varchar(10) not null,
description varchar(25) not null
);

CREATE TABLE employee_hobby (
id int PRIMARY KEY,
name varchar(25),
description varchar(40)
);

CREATE TABLE rel_emp_dep (
id int PRIMARY KEY,
id_emp int not null,
id_dep int not null,
);
CREATE TABLE rel_emp_hob(
id int PRIMARY KEY,
id_emp int not null,
id_hobb int not null
);

CREATE TABLE rel_dep_manager (
id int PRIMARY KEY,
id_emp int not null,
id_dep int not null,
added_date timestamp not null,
user_mod int default null,
mod_date timestamp default null,
);
-- ...
