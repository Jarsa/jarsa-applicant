
CREATE DATABASE employee_employee;

CREATE TABLE employee(
    employeeID int NOT NULL PRIMARY KEY,
    first_name varchar(30) NOT NULL,
    last_name varchar(30) NOT NULL, 
    departmentID int FOREIGN KEY REFERENCES employee_department(departmentID),
    bossID varchar(40) FOREIGN KEY REFERENCES employee(bossID)
);

CREATE TABLE employee_department(
    departmentID int PRIMARY KEY NOT NULL,  
    name varchar(30) NOT NULL, 
    description(60) NOT NULL
);

CREATE TABLE employee_hobby(
  hobbyID int NOT NULL PRIMARY KEY,
  name varchar(40) NOT NULL, 
  description varchar(60) NOT NULL
);

 CREATE TABLE employeeHobby(
  employeeID int REFERENCES employee(employeeID),
  hobbyID int REFERENCES employee_hobby(hobbyID),
  PRIMARY KEY (employeeID, hobbyID)
);
