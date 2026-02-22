CREATE TABLE EMPLOYEES1(
EmployeeID int primary key,
EmployeeName varchar(100) Not null,
DOJ datetime Not Null,
Salary float Not Null,
)

Insert into Employees1(Employeeid,employeename,doj,salary)
values(1,'Jony',2002-01-11,50000)

--Now it didnt accept null value
insert into employees1 values(2,Null,2001-01-20,60000)