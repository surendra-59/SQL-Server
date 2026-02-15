create table employees(
	employeeid int,
	employeeName varchar(100),
	DOJ datetime,
	Salary float
)

insert into employees values(1,'John','2001-02-11',50000)

--Next method recommended
insert into employees(employeeName,employeeid,DOJ,Salary)
	values('Mohan',3,'1990-01-25',6000)
insert into employees(employeeName,employeeid,DOJ,Salary)
	values('Harry',2,'1990-01-20',60000)
insert into employees(employeeName,employeeid,DOJ,Salary)
	values('Ram',4,'1990-01-25',60000)
insert into employees(employeeName,employeeid,DOJ,Salary)
	values('Kartik',5,'1990-01-25',60000)

insert into employees(employeeName,employeeid,DOJ,Salary)
	values('Harry',7,'1990-01-25',60000),
		('Toran',6,'2001-01-02',40000),
		('Toran',8,'2001-01-02',40000)

select * from employees