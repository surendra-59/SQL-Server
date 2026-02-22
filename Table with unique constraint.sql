CREATE TABLE EMPLOYEES3(
EmployeeID int primary key,
EmployeeName varchar(100),
DOJ datetime,
Salary float,
Email varchar(100) unique
)

-- Remember you have 999 unique constraint

insert into Employees3(Employeeid,EmployeeName,DOJ,Salary,Email)
values(1,'Kerl',2002-01-01,70000,'kerl1@gmail.com')

-- not executed because of duplicate email
insert into Employees3(Employeeid,EmployeeName,DOJ,Salary,Email)
values(2,'Kerl1',2002-01-01,70000,'kerl1@gmail.com')

--entering null value
insert into Employees3(Employeeid,EmployeeName,DOJ,Salary,Email)
values(2,'Kerl1',2002-01-01,70000,null)

-- now null is not accepted because of duplicate
insert into Employees3(Employeeid,EmployeeName,DOJ,Salary,Email)
values(3,'Kerl1',2002-01-01,70000,null)

select * from employees3

