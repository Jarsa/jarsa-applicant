CREATE TABLE employee(
id int PRIMARY KEY NOT NULL,
first_name varchar(40) NOT NULL, 
last_name varchar(50) NOT NULL,
department_id int
);

CREATE TABLE employee_department (
department_id int PRIMARY KEY NOT NULL, 
name varchar(40) NOT NULL, 
description varchar(50) NOT NULL 
);

ALTER TABLE employee
ADD FOREIGN KEY (department_id) REFERENCES employee_department(department_id);

INSERT INTO employee_department VALUES ('200','Maquiladora','Confeccion de ropa');
INSERT INTO employee_department VALUES ('201','Business','Negocios internacionales');
INSERT INTO employee_department VALUES ('202','IT Business','Administracion de tecnologias de la informacion');
INSERT INTO employee_department VALUES ('203','Marketing','Publicidad');
INSERT INTO employee_department VALUES ('204','Contabilidad','Negocios');
INSERT INTO employee_department VALUES ('205','Diseno grafico','Publicidad y muchas cosas mas');
INSERT INTO employee VALUES ('100','Alejandra','Munoz','200');
INSERT INTO employee VALUES ('101','Daniel','Rocha','201');
INSERT INTO employee VALUES ('102','Benjamin','Arredondo','202');
INSERT INTO employee VALUES ('103','Liliana','Barraza','203');

CREATE TABLE employee_hobby(
id int PRIMARY KEY NOT NULL, 
name varchar(50) NOT NULL, 
description text
);

CREATE TABLE employee_employeehobby(
employee_id int,
id int
);

ALTER TABLE employee_employeehobby
ADD FOREIGN KEY (employee_id) REFERENCES employee(id);

ALTER TABLE employee_employeehobby
ADD FOREIGN KEY (id) REFERENCES employee_hobby(id);

INSERT INTO employee_hobby VALUES ('10','Natacion','Swim and swim');
INSERT INTO employee_hobby VALUES ('20','Jockey','Canada favorite sport');
INSERT INTO employee_hobby VALUES ('30','Horse Riding','Be on horse riding');

INSERT INTO employee_employeehobby VALUES ('100','10');
INSERT INTO employee_employeehobby VALUES ('100','20');
INSERT INTO employee_employeehobby VALUES ('100','30');
INSERT INTO employee_employeehobby VALUES ('101','10');
INSERT INTO employee_employeehobby VALUES ('101','20');
INSERT INTO employee_employeehobby VALUES ('101','30');
INSERT INTO employee_employeehobby VALUES ('102','30');
INSERT INTO employee_employeehobby VALUES ('102','20');
INSERT INTO employee_employeehobby VALUES ('102','10');

ALTER TABLE employee
ADD COLUMN bossId int;

ALTER TABLE employee
ADD FOREIGN KEY (bossId) REFERENCES employee(id);

UPDATE employee
SET bossId='100'
WHERE id='101';

UPDATE employee
SET bossId='100'
WHERE id='102';

UPDATE employee
SET bossId='100'
WHERE id='103';






