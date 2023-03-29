--Retrieve the top 10 most expensive products in the 'Product' table.

select top 10 ProductID, ListPrice from Production.Product
order by ListPrice desc

select distinct top 10 ListPrice 
from Production.Product
order by ListPrice desc

--Find the total number of products for each product subcategory.
select ProductSubcategoryID, count (*) as 'Total'
from Production.Product 
group by ProductSubcategoryID

--List all products that have a standard cost between $100 and $500
select StandardCost, ProductID from Production.Product
where StandardCost between '100' and '500'
order by StandardCost

--Retrieve the top 5 product subcategories with the highest average list price
select top 5 ProductSubcategoryID, avg (ListPrice) as 'Totally'from Production.Product
group by ProductSubcategoryID
order by avg (ListPrice) desc

--Find the total number of discontinued products
select count (*) as 'Total'
from Production.Product
where DiscontinuedDate is not null 
group by DiscontinuedDate