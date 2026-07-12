SELECT ProductKey, EnglishProductName,Color FROM DimProduct

SELECT IIF(10=11,'OK','NOT OK')

SELECT IIF(10=10,1,0)

SELECT Productkey, EnglishProductName,Color,
IIF(Color = 'Red','Rd','na') Code
FROM DimProduct

SELECT Productkey, EnglishProductName,Color,
IIF(Color = 'Red','Rd',IIF(Color = 'Silver','Sl','na')) Code
FROM DimProduct

SELECT ProductKey,EnglishProductName,ListPrice,
IIF(ListPrice>3000,'High',IIF(ListPrice>2000,'AVG','Low')) Category
FROM DimProduct



