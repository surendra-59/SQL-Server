select * from DimProduct
	where ListPrice <= 3399.9

-- retrive all but not this number
select * from DimProduct
	where ListPrice <> 9.50

select * from DimProduct
	where color <> 'Red'

select * from DimProduct
	where color = 'Red'

select * from DimProduct
	where color = 'Red' OR color = 'Silver'

select * from DimProduct
	where color = 'Red' AND color = 'Silver'

-- Equall to is used to compare one item.
-- For more than one item we use in(item1,item2,....)

select * from DimProduct
	where color in('Red','Silver','White')


select * from DimProduct
	where color = 'Red' AND ListPrice > 1000

select * from DimProduct
	where ListPrice < 2000 AND ListPrice > 1000

-- or
-- between = <= and >=
select * from DimProduct
	where ListPrice Between 1000 AND 2000



