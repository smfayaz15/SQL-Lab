#1
CREATE TABLE employee (
   code VARCHAR(4) NOT NULL  PRIMARY KEY ,
   name VARCHAR(10) NOT NULL,
   designation VARCHAR(30) NOT NULL,
   dob DATE NOT NULL,
   salary INT NOT NULL);
  
#2
INSERT INTO employee (code, name, designation, dob, salary)
VALUES ('e1', 'Rex', 'Analyst  ', '1996-02-12', '9000'),
       ('e2', 'Tony', 'Consultant  ', '1990-07-22', '5000');

#3
SELECT * FROM employee;

#4
UPDATE employee SET salary= 10000 WHERE code = 'e1';

SELECT * FROM employee;

#5
DELETE FROM employee
WHERE code = 'e2';

SELECT * FROM employee;


