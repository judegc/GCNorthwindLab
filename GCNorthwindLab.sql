--1. Select all the rows from the "Customers" table. 
--SELECT * FROM Customers

--2. Get distinct countries from the Customers table.
--SELECT DISTINCT Country FROM Customers

--3. Get all the rows from the table Customers where the Customer’s ID starts with “BL”.
--SELECT * FROM Customers WHERE CustomerID LIKE 'BL%'

--4. Get the first 100 records of the orders table. DISCUSS: Why would you do this? What else would you likely need to include in this query?
--SELECT TOP 100 * FROM Customers;
----Selecting a set number of rows can be good for digging into a smaller sample size of data, or for portioning out a smaller workload into a day. We would likely need to add a WHERE statement to this to work with some sort 
----of common metric

--5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
--SELECT * FROM Customers WHERE PostalCode IN ('1010', '3012', '12209', '05023')

--6. Get all orders where the ShipRegion is not equal to NULL.
--SELECT * FROM Customers WHERE Region IS NOT NULL;

--7. Get all customers ordered by the country, then by the city.
--SELECT * FROM Customers ORDER BY Country, City;

--8. Add a new customer to the customers table. You can use whatever values.
--INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
--VALUES ('ABCDE', 'Alphabet Etc.', 'Jude Davis', 'Sales Agent', '12345 Example Drive', 'Madison Heights', 'MI', '48071', 'USA', '(123) 456-7891', '(011) 121-3141')

--9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the ShipCountry is equal to France.  
--UPDATE Customers SET Region = 'Eurozone' WHERE Country = 'France'

--10. Delete all orders from OrderDetails that have quantity of 1.
--DELETE FROM [Order Details] WHERE Quantity = 1;

--11. Find the CustomerID that placed order 10290 (orders table).
--SELECT * FROM [Orders] WHERE OrderID IN ('10290')

--12. Join the orders table to the customers table.
--SELECT * FROM Customers FULL JOIN  Orders ON Customers.CustomerID = Orders.CustomerID

--13. Get employees’ firstname for all employees who report to no one.
--SELECT FirstName FROM Employees WHERE ReportsTo IS NULL

--14. Get employees’ firstname for all employees who report to Andrew.
--SELECT FirstName FROM Employees WHERE ReportsTo = 2

--Extra Challenges
--1. Calculate the average, max, and min of the quantity at the orderdetails table, grouped by the orderid. 
--SELECT AVG(Quantity) FROM [Order Details] GROUP BY OrderID
--SELECT MAX(Quantity) FROM [Order Details] GROUP BY OrderID
--SELECT MIN(Quantity) FROM [Order Details] GROUP BY OrderID


--2. Calculate the average, max, and min of the quantity at the orderdetails table.
--SELECT AVG(Quantity) FROM [Order Details]
--SELECT MAX(Quantity) FROM [Order Details]
--SELECT MIN(Quantity) FROM [Order Details]

--3. Find all customers living in London or Paris
--SELECT * FROM Customers WHERE City IN ('London', 'Paris')

--4. Do an inner join, left join, right join on orders and customers tables. 
--SELECT * FROM Customers INNER JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
--SELECT * FROM Customers LEFT JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
--SELECT * FROM Customers RIGHT JOIN  Orders ON Customers.CustomerID = Orders.CustomerID


--5. Make a list of cities where customers are coming from. The list should not have any duplicates or nulls.
--SELECT DISTINCT City from Customers WHERE City IS NOT NULL

--6. Show a sorted list of employees’ first names.
--SELECT FirstName FROM Employees ORDER BY FirstName Desc 

--7. Find total for each order
--SELECT OrderID,SUM(UnitPrice * Quantity) AS order_price  FROM [Order Details] GROUP BY OrderID  

--8. Get a list of all employees who got hired between 1/1/1994 and today
--SELECT * FROM Employees WHERE year(HireDate) BETWEEN 1994 AND GETDATE()

--9. Find how long employees have been working for Northwind (in years!)
--Select Year(HireDate) - Year(GETDATE()) FROM Employees

--10. Get a list of all products sorted by quantity (ascending and descending order)
--SELECT * FROM Products ORDER BY QuantityPerUnit ASC
--SELECT * FROM Products ORDER BY QuantityPerUnit DESC

--11. Find all products that are low on stock (quantity less than 6)
--SELECT * FROM Products WHERE UnitsInStock < 6

--12. Find a list of all discontinued products. 
--SELECT * FROM Products WHERE Discontinued = 1

--13. Find a list of all products that have Tofu in them.
--SELECT * FROM Products WHERE ProductName LIKE '%Tofu%'

--14. Find the product that has the highest unit price. 
--SELECT * FROM Products WHERE unitPrice = (SELECT MAX(UnitPrice) FROM Products);

--15. Get a list of all employees who got hired after 1/1/1993
--SELECT * FROM Employees WHERE year(HireDate) >= 1993

--16. Get all employees who have title : “Ms.” And “Mrs.”
--SELECT * FROM Employees WHERE TitleOfCourtesy = 'Ms.' OR TitleOfCourtesy = 'Mrs.'

--17. Get all employees who have a Home phone number that has area code 206
--SELECT * FROM Employees Where HomePhone Like '(206)%'
