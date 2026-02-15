select * from DimProduct
	order by color

select * from DimProduct
	order by color ASC

select * from DimProduct
	order by color desc

select ProductKey,EnglishProductName,ModelName,ListPrice,Color from DimProduct
		order by Color,EnglishProductName

		
select ProductKey,EnglishProductName,ModelName,ListPrice,Color from DimProduct
		order by Color,EnglishProductName DESC


select ProductKey,EnglishProductName,ModelName,ListPrice,Color from DimProduct
		order by Color DESC,EnglishProductName DESC

--order by first column

select ProductKey,EnglishProductName,ModelName,ListPrice,Color from DimProduct
		order by 1 DESC

select ProductKey,EnglishProductName,ModelName,ListPrice,Color from DimProduct
		order by 2,3 DESC


/* Multiline
comment
*/