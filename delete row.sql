--This will delete entire table
DROP table Dimproduct_Bkup

select * into Dimproduct_Bkup from Dimproduct

select * from Dimproduct_Bkup

-- This will empty data(delete all row)
Delete from Dimproduct_Bkup

--Specific row
Delete from Dimproduct_bkup 
WHERE COLOR = 'RED'

-- Another way to Truncate Table

-- Truncate is faster then delete
TRUNCATE table Dimproduct_Bkup

-- You can't do this or it give error
TRUNCATE table Dimproduct_Bkup
WHERE COLOR = 'RED'


CREATE TABLE EMPLOYEES_AUTOINCREMENT2(
	EMPLOYEEID	INT Primary key identity(1,1),
	EmployeeName varchar(100),
	Salary float,
)

select * from EMPLOYEES_AUTOINCREMENT2

Insert into EMPLOYEES_AUTOINCREMENT2(EmployeeName,Salary)
values('Suresh',40000)

-- when you delete some row then employee id wont restart increment 
Delete From EMPLOYEES_AUTOINCREMENT2
Where employeeid = 2

Delete From EMPLOYEES_AUTOINCREMENT2


--But increment is restart when you use trancate
TRUNCATE TABLE EMPLOYEES_AUTOIncrement2
