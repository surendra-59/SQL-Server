CREATE TABLE tblEmps(
	EmployeeId int primary key,
	ParentEmployeeId int,
	EmployeeName varchar(100),
	Title varchar(100),
	Salary money
)

INSERT INTO tblEmps(EmployeeId, ParentEmployeeId, EmployeeName, Title, Salary)
VALUES
(1, null, 'John smith', 'Founder', 1000000),
(2, 1, 'Sam Cook', 'CEO', 500000),
(3, 2, 'Amanda Johnson', 'Senior VP', 1000000),
(4, 3, 'Michael Chang', 'VP of Engineering', 300000),
(5, 3, 'Sarah Jenkins', 'VP of Sales', 300000),
(6, 4, 'David Lee', 'Engineering Manager', 200000),
(7, 6, 'Emily Chen', 'Senior Developer', 150000),
(8, 6, 'Raj Patel', 'Developer', 120000),
(9, 5, 'Jessica Williams', 'Sales Manager', 180000),
(10, 9, 'Tom Davies', 'Account Executive', 110000),
(11, 9, 'Brian Adams', 'Account Executive', 110000),
(12, 3, 'Alice Wonderland', 'VP of Marketing', 250000),
(13, 12, 'Robert Builder', 'Marketing Director', 160000);


select * from tblEmps


SELECT A.EmployeeId,A.ParentEmployeeId,A.EmployeeName,A.Title
FROM tblEmps A JOIN tblEmps B
ON A.ParentEmployeeId = B.EmployeeId


select * from tblEmps

SELECT A.EmployeeId,A.EmployeeName,
B.EmployeeName AS ManagerName,A.Salary,B.Salary
FROM tblEmps A LEFT JOIN tblEmps B
ON A.ParentEmployeeId = B.EmployeeId
WHERE A.Salary>B.Salary


