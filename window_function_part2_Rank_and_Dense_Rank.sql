

SELECT EmployeeId, EmpName, City, Department, Salary,
RANK() OVER(ORDER BY SaLARY DESC)
FROM EMPLOYEES

-- in rank n-1 is skip. if 1 1 1 three same then 3-1=2 so 2,3 are skip and start from 4

SELECT EmployeeId, EmpName, City, Department, Salary,
RANK() OVER(PARTITION BY CITY ORDER BY Salary DESC) Ranks
FROM EMPLOYEES


-- Dense rank should not be skiped

SELECT EmployeeId, EmpName, City, Department, Salary,
DENSE_RANK() OVER(ORDER BY SaLARY DESC)
FROM EMPLOYEES




