/*
Joins are used to combine rows from two or more tables based on a related column.

Join Type	Returns
INNER JOIN	Only matching rows
LEFT JOIN	All left rows + matching right rows
RIGHT JOIN	All right rows + matching left rows
FULL OUTER JOIN	All rows from both tables
CROSS JOIN	Every possible combination
SELF JOIN	A table joined with itself
*/



	CREATE TABLE SalesTran(
		ProductId int,
		InvoiceNum varchar(10),
		Qty int,
		Sales money
	)

INSERT INTO SaLesTran(ProductId, InvoiceNum, Qty, Sales) VALUES
	(1,'SOB982',10,3000),
	(2,'SOB983',10,2000),
	(3,'SOB984',10,1000),
	(4,'SOB985',10,2400),
	(5,'SOB986',10,4000),
	(6,'SOB987',10,840)

INSERT INTO SaLesTran(ProductId, InvoiceNum, Qty, Sales) VALUES
	(1,'SOB982',10,3000),
	(2,'SOB983',10,2000)

CREATE TABLE Products (
    ProductId INT,
    ProductName VARCHAR(50),
    UnitPrice MONEY
);

INSERT INTO Products (ProductId, ProductName, UnitPrice)
VALUES
(1, 'ABC Logo Cap', 300),
(2, 'Real Beanie', 500),
(3, 'Towel', 75),
(4, 'GPS', 850),
(5, 'Bike', 200);

SELECT * FROM SalesTran

SELECT * FROM Products

-- cross join
SELECT * FROM SalesTran, Products

-- Inner Join or Equi Join
-- Always gives matching record
SELECT * FROM SalesTran JOIN Products
ON SalesTran.ProductId = Products.ProductId

-- Doesn't matter if we switch table
SELECT * FROM Products JOIN SalesTran
ON SalesTran.ProductId = Products.ProductId

-- SAME
SELECT * FROM SalesTran INNER JOIN Products
ON SalesTran.ProductId = Products.ProductId

-- only show product or SalesTran table of that join table
SELECT Products.* FROM SalesTran INNER JOIN Products
ON SalesTran.ProductId = Products.ProductId

SELECT SalesTran.* FROM SalesTran INNER JOIN Products
ON SalesTran.ProductId = Products.ProductId


-- you can also rename
SELECT * FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId = P.ProductId

SELECT S.* FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId = P.ProductId

SELECT P.ProductId, P.ProductName, S.InvoiceNum, S.Qty, S.Sales
FROM SalesTran AS S INNER JOIN Products AS P
ON S.ProductId = P.ProductId

-- AS is not compulsory
SELECT P.ProductId, P.ProductName, S.InvoiceNum, S.Qty, S.Sales
FROM SalesTran S INNER JOIN Products P
ON S.ProductId = P.ProductId



-- Left Join
SELECT * FROM SalesTran LEFT JOIN Products
ON SalesTran.ProductId = Products.ProductId

-- Orientation matter
SELECT * FROM Products LEFT JOIN SalesTran
ON SalesTran.ProductId = Products.ProductId

-- Right Join
SELECT * FROM SalesTran RIGHT JOIN Products
ON SalesTran.ProductId = Products.ProductId

