-- Question 1
create table department(
code varchar(6) primary key,
title char(10),
D_name varchar(10) unique,
D_id varchar(10),
salary int check (salary >2000)
);
insert into department(code,title,D_name,D_id,salary)
values
(1,"X","EE","EE100",4000),
(2,"Y","EC","EC121",50000),
(3,"Z","CS","CS145",6000);
select * from department;

-- Question 2 
create table instructor(
name char(20) not null,
code varchar(6) primary key,
id varchar(6) default 'XYZ'
);
insert into instructor(name,code)
values
("Rony","CS145"),
("Jacob","EE100"),
("Johny","EC121");


select * from instructor;

