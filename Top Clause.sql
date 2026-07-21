

SELECT TOP 100 * FROM DimProduct

SELECT TOP 10 ProductKey,EnglishProductName,ListPrice FROM DimProduct

SELECT TOP 10 * FROM DimProduct
ORDER BY ProductKey DESC

SELECT * FROM(
SELECT TOP 10 * FROM DimProduct
ORDER BY ProductKey DESC)T
ORDER BY ProductKey


-- Get 10% of Total
SELECT TOP 10 PERCENT * FROM DimProduct






