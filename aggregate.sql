select sum(salesamount) from FactInternetSales

select avg(salesamount) from FactInternetSales

select Min(salesamount) from FactInternetSales

-- AS -> For rename
select Max(salesamount) AS Min_value from FactInternetSales

-- AS is optional you can rename without AS
select Max(salesamount) Min_value from FactInternetSales

-- What if we wanna give space. But it is not good practice ok, always use _ for separation.
select Max(salesamount) AS [Min value] from FactInternetSales

select SUM(salesamount) AS Min_value,
avg(salesamount) AS avg_sales
from FactInternetSales

-- Total number of rows
select count(*) from 
