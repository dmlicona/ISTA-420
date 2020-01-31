USE Northwind;

-- 1. Rank employee IDs by sales, showing their IDs
select * from orders; 
select employeeID from orders;

select EmployeeID
	from Orders
	group by EmployeeID;

select EmployeeID, COUNT(employeeID)
	from Orders
	group by EmployeeID;

select EmployeeID, 
		COUNT(employeeID) as TotalSales
	from Orders
	group by EmployeeID
	order by TotalSales desc;

-- 2. I want to look at the average discounts taken by all customers for products that cost more than $50.00. 
-- Specifically, I want to know the average discount of all orders for each product from the highest price to the lowest price.

select * from [Order Details];

select * from [Order Details]
	where UnitPrice > 50.0;

select productID
	from [Order Details]
	where UnitPrice > 50.0
	group by ProductID; 

select productID, sum(discount), count(discount), count(productid)
	from [Order Details]
	where UnitPrice > 50.0
	group by ProductID; 

select productID, 
	avg(discount) as avgDiscount
	from [Order Details]
	where UnitPrice > 50.0
	group by ProductID; 

select productID, Unitprice, 
	avg(discount) as avgDiscount
	from [Order Details]
	where UnitPrice > 50.0
	group by ProductID, UnitPrice;

-- 3. I am doing an analysis of which shippers ship to each country, and I need a report showing the number of orders each shipper delivered to each country 
-- and the nuber of orders. I don’t need the data where the number of orders is ten or less, but I need the report listed by country and the number of orders
-- shipped to that country.

select ShipCountry, ShipVia, OrderId 
	from Orders;

Select ShipCountry,
	Count(OrderID) as Quantity
	from Orders
	group by ShipCountry
	having count(OrderID) > 10
	order by Quantity desc;

-- 4. For each order, what was the time lag between the order date and the ship date?
select OrderDate, ShippedDate,
datediff(D, OrderDate, ShippedDate) as lag
from orders;

-- 5. Continuing with the previous query, I need the average time lag for each shipper.
Select ShipVia, AVG(datediff(D, OrderDate, ShippedDate)) as AvgTimeLag
from Orders group by ShipVia;

-- 6. I am doing inventory, and I need to know the total price of each product on hand, that is, the price of
-- each product line, sorted alphabetically by product name.

select ProductID, 
UnitsInStock * UnitPrice as TotalProductValue
from Products
where UnitsInStock > 0
order by ProductName asc; 

-- 7. What is the dollar total we have tied up in inventory?
select sum(UnitsInStock * UnitPrice) as TotalProductValue
from Products; 

--8. We have discovered that some customers favor certain employees. I need to know this information. I need a report of the most common employee/customer pairs, 
-- the nuber of times the employee took orders from the customer, and the number of orders. Alphabetize this by customer id. 
--Omit customer/employee pairs whre the number of orders is less than five.
select CustomerID, EmployeeID, -- 4
count(CustomerID) as NumbOfTimes -- 4
from Orders -- 1
group by CustomerID, EmployeeID -- 2
Having count(CustomerID) > 4 -- 3
order by CustomerID; --5

-- 9. How many days were in the service (if you are a veteran), or how many days will you serve (assuming you know your ETS date)?
Select datediff_big(NS, '1990-08-20', getdate());
select datediff(d, '1999-11-30', GETDATE());

-- 10. Answer these questions using the built in time and date function.
-- What is today’s date?
-- What was the first day of the month?
-- What will be the first day of the next month?
-- What is the last day of this month?

SELECT getdate();
SELECT DATEADD(DAY,-DAY(GETDATE())+1, CAST(GETDATE() AS DATETIME));
SELECT DATEADD(DAY, 1, EOMONTH(getdate()));
SELECT DATEADD(DAY, -1, EOMONTH(getdate()));