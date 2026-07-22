

DROP TABLE EMPLOYEES


CREATE TABLE EMPLOYEES(
	EmployeeId int primary key identity(1,1), -- IDENTITY(seed, increment)
	EmpName varchar(100),
	City varchar(30),
	Department varchar(50),
	Salary money
)

INSERT INTO EMPLOYEES (EmpName, City, Department, Salary)
VALUES
('John', 'NYC', 'IT', 40000),
('Amanda', 'Dubai', 'Sales', 40000),
('Michael', 'Chicago', 'HR', 45000),
('Sophia', 'NYC', 'Finance', 36000),
('David', 'Dubai', 'Marketing', 40000),
('Emma', 'Chicago', 'IT', 60000),
('James', 'NYC', 'Operations', 60000),
('Olivia', 'Dubai', 'Sales', 30000),
('Daniel', 'Chicago', 'Finance', 30000),
('Isabella', 'Chicago', 'HR', 30000);


select * from EMPLOYEES


SELECT EmpName, city, Department, Salary,
ROW_NUMBER() OVER(ORDER BY EmpName) RowNum
FROM EMPLOYEES

SELECT EmpName, city, Department, Salary,
100+ROW_NUMBER() OVER(ORDER BY EmpName) RowNum
FROM EMPLOYEES


-- Partition By is optional for ROW_NUMBER()
SELECT EmpName, city, Department, Salary,
100+ROW_NUMBER() OVER(PARTITION BY Department ORDER BY EmpName) RowNum
FROM EMPLOYEES


