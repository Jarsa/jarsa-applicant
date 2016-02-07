-- CREATE DATABASE employee_employee;
-- USE employee_employee;

CREATE TABLE employee(
    employeeID int PRIMARY KEY NOT NULL,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL, 
    -- departmentID int,
    -- FOREIGN KEY (departmentID) REFERENCES employee_department(departmentID),
    -- bossID varchar(40),
    -- FOREIGN KEY (bossID) REFERENCES employee(bossID)
);

CREATE TABLE employee_department(
    departmentID int PRIMARY KEY NOT NULL,  
    name varchar(30) NOT NULL, 
    description varchar(60) 
);

ALTER TABLE employee
ADD FOREIGN KEY (departmentID) REFERENCES employee_department(departmentID);

CREATE TABLE employee_hobby(
  hobbyID int PRIMARY KEY NOT NULL,
  name varchar(40) NOT NULL, 
  description varchar(60) NOT NULL
);

 CREATE TABLE employeeHobby(
  employeeID int,
  FOREIGN KEY (employeeID) REFERENCES employee(employeeID),
  hobbyID int,
  FOREIGN KEY (hobbyID) REFERENCES employee_hobby(hobbyID),
  PRIMARY KEY (employeeID, hobbyID)
);
