SELECT ProductId,InvoiceNum,OrderDate,City,Qty
FIRST_VALUE(Qty) OVER(ORDER BY OrderDate) FirstVal
FROM Orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty
LAST_VALUE(Qty) OVER(ORDER BY OrderDate) LastVal
FROM Orders

select * from orders

SELECT ProductId,InvoiceNum,OrderDate,City,Qty
LAST_VALUE(Qty) OVER(PARTITION BY CITY ORDER BY (SELECT 0)) LastVal
FROM Orders
