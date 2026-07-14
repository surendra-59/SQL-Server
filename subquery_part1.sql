-- A subquery is a query nested inside another SQL query. 
-- It is used to retrieve data that the main query uses to filter, compare, or manipulate results.

SELECT MAX(SalesAmount) FROM FactInternetSales

SELECT * FROM FactInternetSales
WHERE SalesAmount = (SELECT MAX(SalesAmount) FROM FactInternetSales)

SELECT * FROM FactInternetSales
WHERE SalesAmount = (SELECT MIN(SalesAmount) FROM FactInternetSales)

SELECT * FROM FactInternetSales
WHERE SalesAmount = (SELECT AVG(SalesAmount) FROM FactInternetSales)



