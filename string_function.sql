SELECT * FROM DimProduct

SELECT UPPER('hello')

SELECT UPPER(EnglishProductName) FROM DimProduct

--OR
SELECT UPPER(EnglishProductName) EnglishProductNameee FROM DimProduct

SELECT EnglishProductName,
UPPER(EnglishProductName) EnglishProductName FROM DimProduct


--lower
SELECT LOWER(EnglishProductName) EnglishProductNameee FROM DimProduct

SELECT EnglishProductName,
LOWER(EnglishProductName) EnglishProductName FROM DimProduct

select LEFT('Hello',2)

SELECT EnglishProductName,
LEFT(EnglishProductName,3) EnglishProductName FROM DimProduct

SELECT EnglishProductName,
LEFT(EnglishProductName,30) EnglishProductName FROM DimProduct

--right
SELECT RIGHT('HELLO',3)

SELECT EnglishProductName,
RIGHT(EnglishProductName,3) EnglishProductName FROM DimProduct

--SUBSTRING -> IT HAVE THREE INPUT
SELECT SUBSTRING('HELLO',2,3) --START FROM 2ND CHAR AND GIVE 3 CHAR(LEN)

SELECT EnglishProductName,
SUBSTRING(EnglishProductName,3,4) EnglishProductName FROM DimProduct

--LEN -> GIVE TOTAL NO. OF CHAR INCLUDING SPACES
SELECT LEN('HEL LO')

SELECT EnglishProductName,
LEN(EnglishProductName) EnglishProductName FROM DimProduct


 --TRIM -> REMOVE LEADING AND TRAILING SPACES BUT NOT BETWEEN
SELECT TRIM('  H EL LO  ')

--LTRIM
SELECT LTRIM('  HE LL O ')

--RTRIM
SELECT RTRIM('  HE LL O ')