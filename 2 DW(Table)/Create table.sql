use EcomDW 
create table Dimproduct
(
  productID  int primary key ,
  productName  varchar(50) not null,
  price float not null ,
  category  varchar(25) not null ,
  ['sub-category'] varchar(35) not null
)
create table DimStor
(
  SorID int primary key ,
  StorName varchar(20) not null,
  Rejion varchar(26) not null
)
create table Dimcastomers 
(
  CustomerID int primary key ,
  Name varchar(60) not null ,
  Gender varchar(1)
)
create table DimBrand
(
  BrandID  int primary key ,
  BrandName varchar(10) not null,
  [brand country] varchar(15) not null,
  [Start Date] Date not null
)
create table Dimlocation 
(
  Zipcaode int primary key ,
  Country varchar(10) not null ,
  City varchar(25) not null
)
create table DimDate 
(
  DateId int identity(1,1) primary key ,
  orderDate Date not null,
  year int not null ,
  Quarter int not null ,
  month int not null ,
)
create table FOrder
(
  [Order ID] int primary key ,
  Zipcaode int not null,
  BrandID  int not null,
  CustomerID int not null,
  SorID int not null ,
  productID  int not null,
  [sub_total]  int not null ,
  [total_tax] int not null,
  [total_freight] int not null ,
  [total_price]  int not null ,
  Quantity int not null
)

