--Problem 1: List all products and their suppliers.
--ProductID  ProductName              SupplierName
--1          Adjustable Race          Litware, Inc.
--879        All-Purpose Bike Stand   Green Lake Bike Company
--712        AWC Logo Cap             Integrated Sport Products
--2          Bearing Ball          Wood Fitness
--877        Bike Wash - Dissolver    Green Lake Bike Company

[Production].[Product][Purchasing].[ProductVendor][Purchasing].[Vendor]

select pp.ProductID, pp.Name AS ProductName, pv.name as SupplierName
from Production.Product pp
join Purchasing.ProductVendor ppv
on pp.ProductID = ppv.ProductID
join Purchasing.Vendor pv
on ppv.BusinessEntityID = pv.BusinessEntityID

/*Problem 2: List all orders placed by a specific customer
(e.g., CustomerID = 29825) along with the order details.*/
--SalesOrderID    OrderDate    ProductID    ProductName    OrderQty    UnitPrice    LineTotal
--43659    2011-05-31 00:00:00.000    776    Mountain-100 Black, 42    1    2024.994    2024.994000
--43659    2011-05-31 00:00:00.000    777    Mountain-100 Black, 44    3    2024.994    6074.982000
--43659    2011-05-31 00:00:00.000    778    Mountain-100 Black, 48    1    2024.994    2024.994000
--43659    2011-05-31 00:00:00.000    771    Mountain-100 Silver, 38    1    2039.994    2039.994000
--43659    2011-05-31 00:00:00.000    772    Mountain-100 Silver, 42    1    2039.994    2039.994000

[Sales].[SalesOrderDetail][Sales].[SalesOrderHeader][Production].[Product]

select top 2 * from Sales.SalesOrderDetail
select top 2 * from Sales.SalesOrderHeader
select top 2 * from Production.Product

select ssod.SalesOrderID, ssoh.OrderDate, pp.name as ProductName, ssod.OrderQty, ssod.UnitPrice, ssod.LineTotal
from Sales.SalesOrderDetail ssod
join Sales.SalesOrderHeader ssoh
on ssod.SalesOrderID = ssoh.SalesOrderID
join Production.Product pp
on pp.ProductID = ssod.ProductID

-- Problem 3: List all customers and their respective sales territories.
--CustomerID    FirstName    LastName    TerritoryName
--29485    Catherine    Abel    Southwest
--29486    Kim    Abercrombie    Central
--29487    Humberto    Acevedo    Northeast
--29484    Gustavo    Achong    Southeast
--29488    Pilar    Ackerman    Australia

[Sales].[Customer][Person].[Person][Sales].[SalesTerritory]
select top 2 * from Sales.Customer
select top 2 * from Person.Person
select top 2 * from Sales.SalesTerritory

select sc.CustomerID, pp.FirstName, pp.LastName, sst.name as TerritoryName 
from Sales.Customer sc
join Sales.SalesTerritory sst
on sc.TerritoryID = sst.TerritoryID
join Person.Person pp
on pp.BusinessEntityID = sc.PersonID

-- Problem 4: List all products with their subcategories and categories.
-- ProductID    ProductName    SubcategoryName    CategoryName
-- 680    HL Road Frame - Black, 58    Road Frames    Components
-- 706    HL Road Frame - Red, 58    Road Frames    Components
-- 707    Sport-100 Helmet, Red    Helmets    Accessories
-- 708    Sport-100 Helmet, Black    Helmets    Accessories
-- 709    Mountain Bike Socks, M    Socks    Clothing

[Production].[ProductSubcategory][Production].[ProductCategory][Production].[Product]
select top 2 * from Production.ProductSubcategory
select top 2 * from	Production.ProductCategory
select top 2 * from Production.Product

select pp.ProductID, pp.Name as ProductName, pps.name as SubcategoryName, ppc.Name as CategoryName
from Production.Product pp
join Production.ProductSubcategory pps
on pp.ProductSubcategoryID = pps.ProductSubcategoryID
join Production.ProductCategory ppc
on pps.ProductCategoryID = ppc.ProductCategoryID

-- Problem 5: List all vendors and their respective purchase order approvers.
-- BusinessEntityID    VendorName    FirstName    LastName    EmailAddress
-- 1492    Australia Bike Retailer    Annette    Hill    annette0@adventure-works.com
-- 1492    Australia Bike Retailer    Arvind    Rao    arvind0@adventure-works.com
-- 1492    Australia Bike Retailer    Ben    Miller    ben0@adventure-works.com
-- 1492    Australia Bike Retailer    Eric    Kurjan    eric2@adventure-works.com
-- 1492    Australia Bike Retailer    Erin    Hagens    erin0@adventure-works.com

[Purchasing].[PurchaseOrderHeader]/[Purchasing].[Vendor]/[Person].[Person]/[Person].[EmailAddress]
select top 2 * from Purchasing.PurchaseOrderHeader
select top 2 * from Purchasing.Vendor
select top 2 * from Person.Person
select top 2 * from Person.EmailAddress

select distinct pv.BusinessEntityID, pv.Name as VendorName, pp.FirstName, pp.LastName, pea.EmailAddress
from Purchasing.PurchaseOrderHeader ppoh
join Purchasing.Vendor pv
on ppoh.VendorID = pv.BusinessEntityID
join Person.Person pp
on pp.BusinessEntityID = ppoh.EmployeeID
join Person.EmailAddress pea
on pp.BusinessEntityID = pea.BusinessEntityID