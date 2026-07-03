create table employees9(
	employeeid int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float check(salary>=10000),
	City varchar(30) default 'London'
)

insert into employees9(employeeid,EmployeeName,DOJ,Salary) values(1,'Ram',2002-01-01,40000)

insert into employees9(employeeid,EmployeeName,DOJ,Salary,City) 
values(1,'Ram',2002-01-01,40000,'Kathmandu')

select * from employees9 