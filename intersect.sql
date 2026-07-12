SELECT * FROM tblEmps
UNION
SELECT * FROM tblEmps2


SELECT * FROM tblEmps
INTERSECT
SELECT * FROM tblEmps2


DELETE FROM tblEmps2
WHERE EMPLOYEEID IN (11, 12, 13);

-- self join
SELECT * FROM tblEmps A JOIN tblEmps B
ON A.EmployeeId = B.EmployeeId


SELECT A.* FROM tblEmps A JOIN tblEmps B
ON A.EmployeeId = B.EmployeeId AND A.ParentEmployeeId = B.ParentEmployeeId