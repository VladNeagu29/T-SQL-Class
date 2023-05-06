--1. UPPER 

SELECT UPPER(FirstName) AS UppercaseName FROM Person.Person;

--2. LOWER 

SELECT LOWER(FirstName) AS LowercaseName FROM Person.Person;

--3. LEN

SELECT LEN(FirstName) AS NameLength FROM Person.Person;

--4. RIGHT 

SELECT RIGHT(FirstName, 3) AS Last3Chars FROM Person.Person;

--5. LEFT

SELECT LEFT(FirstName, 3) AS First3Chars FROM Person.Person;

--6. DATEDIFF 

SELECT DATEDIFF(day, '1994-08-29', GETDATE()) AS DateDiff;

--7. CONCAT

SELECT CONCAT(FirstName, ' ', LastName) AS FullName FROM Person.Person;

--8. ROUND 

SELECT ROUND(ListPrice, 2) AS RoundedPrice FROM Production.Product;

--9. SUM

SELECT SUM(OrderQty) AS TotalQuantity FROM Sales.SalesOrderDetail;

--10. MIN

SELECT MIN(ListPrice) AS MinimumPrice FROM Production.Product;

--11. MAX 

SELECT MAX(ListPrice) AS MaximumPrice FROM Production.Product;

--12. COUNT

SELECT COUNT(*) AS TotalProducts FROM Production.Product;

--13. AVG

SELECT AVG(ListPrice) AS AveragePrice FROM Production.Product;

--14. DATEADD

SELECT DATEADD(year, 1, HireDate) AS 'NewHireDate'
FROM HumanResources.Employee
WHERE BusinessEntityID = 2;

--15. CAST

SELECT CAST(OrderDate AS date) as OrderDateOnly
FROM Sales.SalesOrderHeader

--16. REPLACE

SELECT REPLACE('John Doe', 'Doe', 'Smith') AS 'Nume nou'

--17. GETDATE

SELECT GETDATE() AS CurrentDateTime;

--18. DAY

SELECT DAY(DueDate) AS DueDay FROM Production.WorkOrder;

--19. MONTH

SELECT MONTH(OrderDate) AS OrderMonth FROM Sales.SalesOrderHeader;

--20. YEAR

SELECT YEAR(HireDate) AS HireYear FROM HumanResources.Employee;

