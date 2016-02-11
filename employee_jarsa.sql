-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id integer NOT NULL PRIMARY KEY,
	first_name character varying(40) NOT NULL,
	last_name character varying(40) NOT NULL,
	department_id integer
);

CREATE TABLE employee_department (
     	id integer NOT NULL,
     	name character varying(40) NOT NULL,
     	description text
);


ALTER TABLE employee
ADD FOREIGN KEY(department_id) REFERENCES employee_department(id);



INSERT INTO employee_department VALUES('100', 'The Technical Office', 'perform administrative tasks that help keep an office running smoothly');

INSERT INTO employee_department VALUES('101', 'IT DEPT', 'This is the department for Information Technology');

INSERT INTO employee_department VALUES('102', 'Finance & Accounting Dept', 'The functions of the accounting and finance department');

INSERT INTO employee_department VALUES('200', 'H.R. Dept', 'Human Resources Department');

INSERT INTO employee_department VALUES('201', 'Contracts Dept', 'The Department of Contracts falls within the portfolio');

INSERT INTO employee_department VALUES('202', 'Purchasing Dept', 'The organization attempting to acquire goods or services');

INSERT INTO employee VALUES('1000', 'Juan', 'Perez', '102');

INSERT INTO employee VALUES('1001', 'Roberto', 'Gonzalez', '101');

INSERT INTO employee VALUES('1002', 'Julio', 'Cesar', '101');

INSERT INTO employee VALUES('1003', 'Andres', 'Hernandez', '202');


CREATE TABLE employee_hobby (
id int NOT NULL PRIMARY KEY,
name varchar(40),
description text
);

CREATE TABLE employee_employee_hobby(
employee_id int,
hobby_id int
);

ALTER TABLE employee_employee_hobby
ADD FOREIGN KEY(employee_id) REFERENCES employee(id);

ALTER TABLE employee_employee_hobby
ADD FOREIGN KEY(hobby_id) REFERENCES employee_hobby(id);

INSERT INTO employee_hobby VALUES('3', 'Socializing', 'The employee enjoys spending time with his/her friends whenever possible?');

INSERT INTO employee_hobby VALUES('2', 'Video Games', 'The employee frecuently play video games?');

INSERT INTO employee_hobby VALUES ('1', 'Exercise', 'The employee likes running or goes to the gym on his/her free time?');

INSERT INTO employee_employee_hobby VALUES(1001,3);

INSERT INTO employee_employee_hobby VALUES(1001,2);

INSERT INTO employee_employee_hobby VALUES(1002,1);

INSERT INTO employee_employee_hobby VALUES(1002,3);

INSERT INTO employee_employee_hobby VALUES(1003,1);

INSERT INTO employee_employee_hobby VALUES(1003,2);

INSERT INTO employee_employee_hobby VALUES(1003,3);

---SQL3: Make the necessary changes in the database to assign employees a boss.

ALTER TABLE employee
ADD COLUMN boss int;

ALTER TABLE employee
ADD FOREIGN KEY(boss) REFERENCES employee(id);

UPDATE employee
SET boss='100'
WHERE id='101';

UPDATE employee
SET boss='100'
WHERE id='102';

UPDATE employee
SET boss='100'
WHERE id='103';

-- ...:
