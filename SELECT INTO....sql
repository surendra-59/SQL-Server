select * from DimProduct

-- It create copy of DimProduct. Make sure DimProduct_BK doesn't exist
select * INTO DimProduct_BK FROM DimProduct

select * from DimProduct_BK2

select * INTO DimProduct_BK2 FROM DimProduct
where Color = 'Red'


select Productkey,Englishproductname,Listprice
into Dimproduct_BK4 from Dimproduct

select * from Dimproduct_BK4