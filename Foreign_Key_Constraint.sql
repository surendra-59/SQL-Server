
SELECT * FROM SalesTran

SELECT * FROM Products

SELECT * FROM SalesTran LEFT JOIN Products
ON SalesTran.ProductId = Products.ProductId


drop table Products2

CREATE TABLE Products2(
	ProductId int primary key,
	ProductName varchar(50),
	UnitPrice money
)



CREATE TABLE SalesTran2(
	ProductId int foreign key references Products2(ProductId),
	InvoiceNum varchar(10),
	Qty int,
	Sales money
)

INSERT INTO Products2 (ProductId, ProductName, UnitPrice)
VALUES
(1, 'Laptop', 80000),
(2, 'Smartphone', 50000),
(3, 'Headphones', 3000),
(4, 'Keyboard', 1500),
(5, 'Mouse', 1000);

INSERT INTO SalesTran2 (ProductId, InvoiceNum, Qty, Sales)
VALUES
(1, 'INV001', 2, 160000),   -- Laptop
(1, 'INV006', 1, 80000),    -- Laptop again
(2, 'INV002', 1, 50000),    -- Smartphone
(2, 'INV007', 3, 150000),   -- Smartphone again
(3, 'INV003', 5, 15000),    -- Headphones
(4, 'INV004', 3, 4500),     -- Keyboard
(5, 'INV005', 4, 4000),     -- Mouse
(5, 'INV008', 10, 10000);   -- Mouse again


INSERT INTO SalesTran2 (ProductId, InvoiceNum, Qty, Sales)
VALUES
(6, 'INV001', 6, 150000)
-- This insert is error primary key dont have record 6



SELECT * FROM SalesTran2 s LEFT JOIN Products2 p
ON s.ProductId = p.ProductId