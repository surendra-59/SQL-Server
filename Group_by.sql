select distinct Productkey from factinternetsales

select distinct Productkey,SalesAmount from factinternetsales



SELECT SUM(SalesAmount) TotalSales
FROM FactInternetSales

select Productkey,salesamount from FactInternetSales
where Productkey = 528

SELECT Productkey,SUM(SalesAmount) TotalSales
FROM FactInternetSales
GROUP BY Productkey

SELECT Productkey,SUM(SalesAmount) TotalSales,
AVG(SalesAmount) AVGSales
FROM FactInternetSales
GROUP BY Productkey  


SELECT Productkey,Customerkey, sum(SalesAmount) TotalSales
From FactInternetSales
Group By Productkey,CustomerKey



