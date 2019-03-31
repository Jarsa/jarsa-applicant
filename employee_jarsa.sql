-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
CREATE TABLE boss(id serial PRIMARY KEY, employee_id int 
REFERENCES employee(id);

INSERT INTO boss (employee_id) VALUES ('1'),('3');

ALTER TABLE employee ADD COLUMN boss_id int REFERENCES boss (id);


-- ...
