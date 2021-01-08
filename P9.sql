#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dateofbirth DATE,
    design VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dateofbirth, design, salary)
VALUES
('ct01','John','1989-02-02','CTO',180000),
('ce12','Diya','1990-01-12','CEO',175000),
('cl13','Sara','1998-08-02','Clerk',55000),
('au10','Ameya','1969-04-20','Auditor',52000);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'New Jersey',280000),
(1990002,'New Jersey',295233),
(1990003,'New York',125570),
(1990004,'New York',2259083),
(1990005,'California',110090);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit 
GROUP BY branch_name;