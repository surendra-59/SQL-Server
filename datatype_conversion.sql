SELECT 'ab' + 'xy'

SELECT 10 + 20

SELECT '10' + '20'

-- SQL SEVER FORMS AN IMPLICIT CONVERSION
SELECT '10' + 20	-- O/P = 30

SELECT 20 + 'X'	-- ERROR

-- EXPLICIT CONVERSION
SELECT CAST('20' AS INT)

-- datatypes would be anythings.
-- In SQL Server, money is a built-in data type used to store currency values.

/* If you display it in SQL Server Management Studio, it may appear with four decimal places 
because the money type has a fixed scale of 4 decimal places.

About the money data type
Stores currency values.
Occupies 8 bytes.
Range: -922,337,203,685,477.5808 to 922,337,203,685,477.5807.
Fixed precision with 4 digits after the decimal point.
*/

/*
CAST(expression AS money) → converts a value to the money data type.
CAST(expression AS decimal(p,s)) → converts to a decimal with specified precision and scale.
CAST(expression AS int) → converts to an integer (truncates the decimal part).
*/

-- CAST does not add a currency symbol ($, ₹, etc.). It only changes the data type.

SELECT CAST(ListPrice AS money) FROM DimProduct

-- CONVERT FUNCTION IS SPECIFIC TO SQL SERVER. WHEREAS CAST WORKS IN ANY SQL DBMS
SELECT CONVERT(INT,'20')

SELECT CONVERT(INT,ListPrice) FROM DimProduct



