
/* Like
% - Any number of unknown character
_ - One underscore means one unknown character
*/

select * from DimProduct
where EnglishProductName Like 'A%'

select * from DimProduct
where EnglishProductName Like 'AW%'

select * from DimProduct
where EnglishProductName Like '%e'

select * from DimProduct
where EnglishProductName Like '%A%'

select * from DimProduct
where EnglishProductName Like 'A%C%'

select * from DimProduct
where EnglishProductName Like 'A_C%'






