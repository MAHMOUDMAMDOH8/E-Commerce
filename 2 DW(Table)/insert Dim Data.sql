USE EcomDW;
INSERT INTO [dbo].[Dimcastomers] (CustomerID, Name, gender)
SELECT E.customer_id, E.fname + ' ' + E.lname, E.gender
FROM [E-Commerce].[dbo].[customers] E
where E.fname is not null

INSERT INTO [dbo].[Dimlocation] ([zip code], Country, City)
SELECT DISTINCT(E.zip_code), E.country, E.city
FROM [E-Commerce].[dbo].[customers] E
WHERE E.zip_code IS NOT NULL;


insert into [dbo].[DimStor] (SorID,StorName,Rejion)
select S.Store_ID,S.Store_name,S.region
from [E-Commerce].[dbo].[Store] S

insert into [dbo].[DimBrand](BrandID,BrandName,[brand country],[Start Date])
select B.Brand_ID,B.brand_name,B.brand_country,B.start_date
from [E-Commerce].[dbo].[Brand] B

insert into [dbo].[DimDate] (orderDate,year,Quarter,month)
select distinct(O.order_date),DATEPART(year, O.order_date) ,DATEPART(QUARTER, O.order_date),DATEPART(MONTH,O.order_date) 
from [E-Commerce].[dbo].[orders] O