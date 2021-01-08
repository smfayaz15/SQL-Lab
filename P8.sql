#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('ce101','Captian Harry','1959-11-06','Captain',55000),
('of101','Ken','1977-12-10','Cheif Officer',48000),
('of102','Jack','1983-01-09','Inspector',37000),
('cl101','Tina','1986-03-15','Clerk',24000);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;