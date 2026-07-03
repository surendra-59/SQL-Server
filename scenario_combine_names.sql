select Employeekey, FirstName,MiddleName,LastName FROM DimEmployee

select FirstName + ' ' + LastName FROM DimEmployee

select FirstName + SPACE(1) + MiddleName + space(1) + LastName FROM DimEmployee
-- when we have no middlename we have an it give null

select isnull(NULL,1) -- 1
select isnull(100,1) -- 100

select firstname + space(1) + isnull(middlename,'') + space(1) + lastname from DimEmployee
-- but when no middlename it add two space between first and last name

select concat(firstname,space(1),middlename,space(1),lastname) from dimemployee


-- here we dont have to repeat operator
select concat_ws(space(1),Firstname,Middlename,Lastname) from DimEmployee
select concat_ws('-',Firstname,Middlename,Lastname) from DimEmployee


select employeekey,firstname,middlename,lastname, 
concat_ws(space(1),firstname,middlename,lastname) FullName
from DimEmployee


select employeekey, firstname, middlename,lastname
into employeesBk
from DimEmployee


select * from employeesBk

alter table employeesBk
ADD Fullname varchar(50)

update employeesBk
set fullname = CONCAT_WS(space(1),firstname,middlename,lastname)

