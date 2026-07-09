select NEWID()
-- 'ECC689F0-8D48-47B8-A91A-ADAA51FBF162'

CREATE TABLE tblEmployees(
	Employeeid uniqueidentifier,
	Empname varchar(100)
)

insert into tblEmployees(Employeeid, Empname) values(
	newid(), 'john')

select * from tblEmployees

-- another way

CREATE TABLE tblEmployees1(
	Employeeid uniqueidentifier default newid(),
	Empname varchar(100)
)

insert into tblEmployees1(Empname) values('john')
insert into tblEmployees1(Empname) values('Shyam')

select * from tblEmployees1