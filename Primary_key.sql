
-- In a table there is one Primary Key
CREATE TABLE EMPLOYEES(
EmployeeID int primary key,
EmployeeName varchar(100),
DOJ datetime,
Salary float
)

SELECT * FROM EMPLOYEES

INSERT INTO EMPLOYEES(EmployeeID,EmployeeName,DOJ,Salary)
VALUES(1,'JACK','2022-11-24',30000)

--Now entering same EmployeeID again
INSERT INTO EMPLOYEES(EmployeeID,EmployeeName,DOJ,Salary)
VALUES(1,'Logan','2022-11-24',30000)


INSERT INTO EMPLOYEES(EmployeeID,EmployeeName,DOJ,Salary)
VALUES(2,'JACK','2022-11-24',30000)

-- PK Doesnot allow null value 
INSERT INTO EMPLOYEES(EmployeeID,EmployeeName,DOJ,Salary)
VALUES(1,'JACK','2022-11-24',30000)








