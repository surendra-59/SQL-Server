select fullname from employeesBk

select fullname ,
left(fullname,3)
from employeesBk

select fullname, TRIM(left(fullname,charindex(' ',fullname))) Firstname
from employeesBk
-- charindex return no of char along with space in Guy R it return 4 and trim
-- trim trim the space.
--or

select fullname, left(fullname,charindex(' ',fullname)-1 ) Firstname
from employeesBk

select fullname, left(fullname,charindex(' ',fullname)-1 ) Firstname
from employeesBk


select fullname,Right(Fullname,
len(fullname)-charindex(' ',Fullname,charindex(' ',fullname)+1))
lastname from employeesbk
 

select fullname, charindex(' ',fullname,8)
from employeesbk
--' ': This is what you are looking for (a single space).
--fullname: This is the column where the search happens.
--8: This is the start location. The function will skip the first 7 characters and only start looking for a space from the 8th character onward.

select fullname, left(fullname,charindex(' ',fullname)-1 ) Firstname,
Right(Fullname,
len(fullname)-charindex(' ',Fullname,charindex(' ',fullname)+1))
lastname from employeesbk