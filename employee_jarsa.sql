CREATE TABLE employee (
employee_id int PRIMARY KEY NOT NULL,
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



