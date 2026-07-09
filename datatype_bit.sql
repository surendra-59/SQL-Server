CREATE TABLE tblemps(
	empid int,
	empname varchar(100),
	isactive bit	-- if it active we flag it off with somevalue and if it is
	-- inactive we flag it off with another value. 1 'True' and 0 'False' takes 1 bytes of space.
)

insert into tblemps(empid,empname,isactive) values(1,'john',1)

insert into tblemps(empid,empname,isactive) values(1,'jack',0)

select * from tblemps

insert into tblemps(empid,empname,isactive) values(1,'Suresh','True')

insert into tblemps(empid,empname,isactive) values(1,'Doffle','True')
-- still insert true and false as 1 and 0.

