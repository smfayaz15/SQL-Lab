create table employee
(
empid int,
name char(40),
age int,
sex char(10),
foreign key(empid) references employeedetails(empid)
);
create table employeedetails
(
empid int primary key,
dname varchar(20),
place char(20)

);
insert into employee
values
(1,"Dev",19,"Male"),
(2,"Steffan",21,"Female"),
(3,"Rex",18,"Male"),
(4,"Marco",20,"Male"),
(5,"Chiara",19,"Female");

insert into employeedetails(empid,dname,place)
values
(1,"ABC","Paris"),
(2,"DEF","New Jersey"),
(3,"GHI","California");

select * from employee;
select * from employeedetails;

-- Q2 
SELECT * FROM employee as e1
WHERE EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);
-- Q3
SELECT * FROM employee as e1
WHERE not EXISTS
(
   SELECT * FROM employeedetails as e2
   WHERE e2.empid = e1.empid
);