create table employees5(
	employeeid int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float check(salary>=10000),
	Gender char(1) check(Gender = 'M' or Gender = 'F' or Gender = 'O')
	-- or
	-- Gender char(1) check(Gender IN('M','F','O'))
)


insert into employees5 values(1,'Riya',2002-01-01,15000,'F')

create table employees7(
	employeeid int,
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float check(salary>=10000),
	Gender char(1) check(Gender = 'M' or Gender = 'F' or Gender = 'O'),
	Holiday char(3) check(Holiday = 'Sun' or Holiday = 'Mon' or Holiday = 'Tue')
)

insert into employees7 values(1,'Dave',2001-01-01,50000,'M','Tue')

