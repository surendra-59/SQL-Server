SELECT * FROM DimProduct

SELECT * FROM FactInternetSales

SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey

SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P LEFT JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey

SELECT P.ProductKey, P.EnglishProductName, F.SalesAmount
FROM DimProduct P LEFT JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
WHERE F.ProductKey IS NULL

-- Left Anti join: we only include columns from left table.
SELECT P.ProductKey, P.EnglishProductName
FROM DimProduct P LEFT JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
WHERE F.ProductKey IS NULL

-- using group by
SELECT P.EnglishProductName, SUM(F.SalesAmount) TotalSales
FROM DimProduct P JOIN FactInternetSales F
ON P.ProductKey = F.ProductKey
GROUP BY P.EnglishProductName



