-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id serial PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    employee_department INTEGER REFERENCES employee_department (department_id)
);

CREATE TABLE employee_department (
    department_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(200) NOT NULL
);

CREATE TABLE employee_hobby (
);

-- ...

INSERT INTO employee (first_name, last_name, employee_department)
VALUES(
    'Mr meow',
    'whiskers',
    1
),
(
    'Terry',
    'Crews',
    2
),
(
    'John',
    'Smith',
    2
),
(
    'Oliver',
    'Khan',
    5
);

INSERT INTO employee_department(name, description)
VALUES(
    'Department of Justice',
    'Justiciary branch of the federal government tasked with uplholding the land'
),
(
    'Supreme Court',
    'Maximum court of appeals in the land, tasked with the most rigorous of cases and judging their constitunionality'
),
(
    'Department Store',
    'Sale of everyday groceries and necessities, over the counter medicine, etc.'
),
(
    'Souvenir Store',
    'Memorabila, trinkets, mementos and other miscellaneous items to remember your trip!'
),
(
    'Fire Fighters Union',
    'Worker rights group for the brave men and women that firefight'
),
(
    'IT',
    'Department in charge of all information technologies and their implementations'
);