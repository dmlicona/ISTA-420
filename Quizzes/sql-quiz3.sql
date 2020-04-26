--ISTA420
--TSQL_Quiz03
--Denis Licona
--4 Feb 2020

USE Northwind;

-- 1. Write a report giving the employee id, first name, last name, and the average amount of all orders by that employee.

select o.EmployeeID, e.FirstName, e.LastName, avg(od.UnitPrice * od.Quantity) as average_sales
from Employees as E
join Orders as O
on o.EmployeeID = e.EmployeeID
join [Order Details] as OD
on od.OrderID = o.OrderID
group by o.EmployeeID, e.LastName, e.FirstName
order by average_sales desc;

-- 2. Write a report that lists our product categories and the average price of all products of that category. Include the category id, the category name, and the average price.

select p.CategoryID, cat.CategoryName, AVG(p.UnitPrice)
from Products as p
join Categories as cat
on p.CategoryID = cat.CategoryID
group by p.CategoryID, cat.CategoryName

-- 3. In some cities, we have customers, suppliers, and employees. Write a report that lists the customer's contact name, the supplier's contact name, 
-- the employee's name, and the city in which all three are located.

select c.ContactName as Customer_Contact, s.ContactName as supplier_contact, (e.FirstName + ' ' + e.LastName) as Employee_Name, e.City
from customers as C
join Employees as E
on c.City = e.City
join Suppliers as S
on s.City = e.City
where e.City = 'London'
and c.City = 'London'
and s.City = 'London'
