
SELECT * FROM tblEmps

SELECT * FROM tblEmps2

SELECT * into tblEmps2 FROM tblEmps

-- Combine rows from tables and duplicate rows
-- also sort the data
SELECT * FROM tblEmps
UNION
SELECT * FROM tblEmps2

-- Combine rows from tables and preserve duplicate
-- not sort the data
SELECT * FROM tblEmps
UNION ALL
SELECT * FROM tblEmps2

-- To perform union
	-- Tables should have same number of columns
	-- Sequence of column also have to be same
		-- if sequence is not same you rearrange sequence

		-- This is how you rearrange
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps
UNION ALL
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2

-- if there is no column in table 1 you can pass null
SELECT EmployeeId,EmployeeName,NULL Title,Salary FROM tblEmps
UNION ALL
SELECT EmployeeId,EmployeeName,Title,Salary FROM tblEmps2




