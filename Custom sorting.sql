SELECT EmployeeKey,FirstName,DepartmentName FROM DimEmployee
ORDER BY DepartmentName DESC


SELECT EmployeeKey,FirstName,DepartmentName FROM DimEmployee
ORDER BY CASE DepartmentName
	WHEN 'Sales' THEN 1
	WHEN 'Finance' THEN 2
	WHEN 'Engineering' THEN 3
	WHEN 'Marketing' THEN 4
	ELSE 5
END
DESC

SELECT DISTINCT DepartmentName FROM DimEmployee
ORDER BY DepartmentName
