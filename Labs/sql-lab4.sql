-- Name: Denis Licona
-- File: sql-lab4.sql
-- Date: February 3, 2020

use TSQLV4;

-- 1. What is our highest priced product? Report the product id, product name, and unit price. Use a self-contained, scalar valued subquery

select productid, productname, unitprice
from production.products
where unitprice = 
(select max(unitprice)
from production.products);

-- 2. What is our most popular product in terms of quantity sold? Report the product name and productid. Use a self-contained, scalar valued subquery.

select productid, productname
from Production.Products
where productid =
(select top 1 productid
from sales.OrderDetails
group by productid
order by sum(qty) desc);

--3. Who is our top salesperson overall? Include the employee id, title, first name, and last name. Use a self-contained, scalar valued subquery.

select empid, title, firstname, lastname
from hr.Employees
where empid =
(select Top 1 empid
from sales.orders
group by empid
order by count(orderid) desc);

--4. I want to examine the individual orders. Specifically, I want to look at each order and compare the total of each order line with the average 
--total of all order lines in the order. Report the order id, the total of each order line, and the average of all order lines for each order. 
--Use a correlated, scalar valued subquery.

select od.orderid, (od.unitprice * od.qty) as Line_total,
(select AVG(ood.unitprice * ood.qty)
from sales.OrderDetails as ood
where ood.orderid = od.orderid 
) as order_avg
from sales.orderDetails as od;

--5. What is the largest quantity ordered by a customer for every order? Report the order id, the product id, and the quantity ordered. 
--Use a correlated subquery in the WHERE clause.

select od.orderid, od.productid, od.qty
from sales.OrderDetails as od
where od.qty =
(select max(ood.qty)
from sales.OrderDetails as ood
where ood.orderid = od.orderid)
order by od.orderid;
