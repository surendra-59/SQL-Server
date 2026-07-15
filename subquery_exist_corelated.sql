
SELECT * FROM FactInternetSales
WHERE ProductKey IN(SELECT ProductKey FROM DimProduct WHERE Color='Red')

-- Exists return True or False
SELECT * FROM FactInternetSales
WHERE EXISTS(SELECT ProductKey FROM DimProduct WHERE Color='Red')

SELECT * FROM FactInternetSales
WHERE NOT EXISTS(SELECT ProductKey FROM Dimproduct WHERE Color='Red')


-- We are refering outer table F in inner query
-- This types of subquery is called corelated subquerey

SELECT * FROM FactInternetSales F
WHERE EXISTS
(SELECT ProductKey FROM DimProduct P
WHERE F.ProductKey=P.ProductKey AND P.Color = 'Red')




