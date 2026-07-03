CREATE TABLE EMPLOYEES_AUTOINCREMENT(
	EMPLOYEEID	INT Primary key identity(1,1),
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)

-- when you add identity, it means values are automatically incremented

INSERT INTO EMPLOYEES_AUTOINCREMENT(EmployeeName,DOJ,Salary)
values('JACK',2002-01-02,80000)

select * from EMPLOYEES_AUTOINCREMENT

INSERT INTO EMPLOYEES_AUTOINCREMENT(EmployeeName,DOJ,Salary)
values('Paul',2002-01-02,80000)

-- You can start by 100 and increment by 1.

CREATE TABLE EMPLOYEES_AUTOINCREMENT1(
	EMPLOYEEID	INT Primary key identity(100,1),
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)

DROP table EMPLOYEES_AUTOINCREMENT1

INSERT INTO EMPLOYEES_AUTOINCREMENT1(EmployeeName,DOJ,Salary)
values('JACK',2002-01-02,80000)

select * from EMPLOYEES_AUTOINCREMENT1


CREATE TABLE EMPLOYEES_AUTOINCREMENT1(
	EMPLOYEEID	INT Primary key identity(100,5),
	EmployeeName varchar(100),
	DOJ datetime,
	Salary float
)

 