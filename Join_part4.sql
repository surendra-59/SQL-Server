-- we create DimProducts table from Dimproduct
-- option 1 : Prefered for ETL, data warehouses and performance-critical queries
    -- Faser and commonly used in SQL server for large tables.
SELECT
    CONCAT('P-', RIGHT('0000' + CAST(ProductKey AS VARCHAR(4)), 4)) AS ProductID,
    EnglishProductName
INTO DimProducts
FROM DimProduct;

Drop table DimProducts

-- Slower on large datasets because FORMAT() is a .NET CLR function.
SELECT 'P-' + format(ProductKey,'0000') as ProductId,
EnglishProductName into Dimproducts FROM DimProduct


SELECT * FROM DimProducts
SELECT * FROM FactInternetSales

-- returns the last 4 characters of each string.
-- The result of RIGHT() is still a string (VARCHAR/NVARCHAR).
SELECT RIGHT(ProductId,4) FROM DimProducts

-- This works because SQL Server performs an implicit data type conversion.
-- it automatically converts '0596' to an integer
-- because INT has higher data type precedence than VARCHAR.
SELECT P.ProductId,P.EnglishProductName,F.SalesAmount FROM DimProducts P JOIN FactInternetSales F
ON RIGHT(P.ProductId,4) = F.ProductKey


-- For explicit conversion:
SELECT P.ProductId,
       P.EnglishProductName,
       F.SalesAmount
FROM DimProducts P
JOIN FactInternetSales F
ON CAST(RIGHT(P.ProductId, 4) AS INT) = F.ProductKey;









