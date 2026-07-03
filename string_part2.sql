-- Replace
SELECT REPLACE('hello','e','xy')

SELECT REPLACE('hello','el','x')

SELECT REPLACE('hello','e','')

SELECT REPLACE('hello','e',' ')


--Reverse
SELECT REVERSE('HELLO') 

SELECT REVERSE(EnglishProductName) FROM DimProduct

-- STUFF -> insert char at particular position

-- Now it remove 3 char from place 2 and insert x
-- it is used for position based replacement
select stuff('hello',2,3,'x')

select Replace('hello','l','x')

select stuff('hello',4,1,'x')




