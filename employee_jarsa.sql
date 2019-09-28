-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
    id serial PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    employee_department_id INTEGER REFERENCES employee_department (id)
    --employee_hobby_id INTEGER REFERENCES employee_hobby (id) in case we want single hobby constraint
    employee_hobbies_id INTEGER [] --primary key constraint not supported for integers afaik
);

CREATE TABLE employee_department (
    id serial PRIMARY KEY,
    deparment_name VARCHAR(100) NOT NULL,
    department_description VARCHAR(200) NOT NULL
);

CREATE TABLE employee_hobby (
    id serial PRIMARY KEY
    empHobby_name VARCHAR(50) NOT NULL,
    empHobby_description VARCHAR (200) NOT NULL 
);

-- ...

INSERT INTO employee (first_name, last_name, employee_department_id, employee_hobbies_id )
VALUES(
    'Mr meow',
    'whiskers',
    1,
    '{1,2}'
),
(
    'Terry',
    'Crews',
    2,
    '{1,2,3}'
),
(
    'John',
    'Smith',
    2,
    '{2,3}'
),
(
    'Oliver',
    'Khan',
    5,
    '{1,2,3}'
);

INSERT INTO employee_department(department_name, department_description)
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

INSERT INTO employee_hobby(empHobby_name, empHobby_description)
VALUES(
    'Napping',
    'Likes to take naps.'
),
(
    'Soccer',
    'Sport played mostly with your feet.'
),
(
    'Basketball',
    'Sport where you gotta jump a lot.'
)