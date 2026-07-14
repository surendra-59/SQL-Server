-- we will find the product sold which are red from FactInternetSales but it dont have
-- color column. We use DimProduct. We can solve this using subquery


SELECT * FROM FactInternetSales F JOIN DimProduct P
ON F.ProductKey = P.ProductKey
WHERE P.Color = 'Red'

SELECT * FROM FactInternetSales
WHERE ProductKey IN(SELECT ProductKey FROM DimProduct WHERE COLOR = 'Red')

SELECT * FROM FactInternetSales
WHERE ProductKey NOT IN(SELECT ProductKey FROM DimProduct WHERE COLOR = 'Red')





