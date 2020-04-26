-- Name: Denis Licona
-- File: tsql-lab05.sql
-- Date: February 4, 2020

use TSQLV4;

-- 1. Write a report returning the order id, the shipper name, the order date and the city shipped to using a derived table.

select so.orderid, so.companyname as shipperName, so.orderdate, so.shipcity
from (
select s.companyname, s.shipperid, o.orderid, o.orderdate, o.shipcity
from sales.Orders as o
join sales.Shippers as s
on o.shipperid = s.shipperid
) as so;

-- 2. I need a report showing how many orders each customer made during each year. Return the customer id, the year, and the number of orders the customer placed during that year. 
-- Use a derived table.

select r.custid, cust_year, total_orders
from (
select o.custid, year(o.orderdate) as cust_year, count(o.orderid) as total_orders
from sales.Orders as o
group by o.custid, year(o.orderdate))
as r
order by r.custid;

-- 3. What is the growth or decline in the number of orders taken year by year? Your report should contain the year, this years order’s, last year’s orders, 
-- and the difference between the two. Join two derived tables.

select this_year, cur_orders, prev_orders, (cur_orders - prev_orders) as diff
from ( 
(select year(orderdate) as this_year, count(orderid) as cur_orders 
from sales.Orders
group by year(orderdate)) as cy
left join 
(select year(orderdate) as last_year, count(orderid) as prev_orders 
from sales.Orders
group by year(orderdate)) as py
on cy.this_year = py.last_year + 1
);

-- 6. Create a view that aggregates the number of orders per customer per year. Then run a query against the view sorting the customers by customer id. 
-- Don’t forget to drop the view if one exists before you create it. Use the DBO schema.

drop view if exists dbo.bob;
go
create view dbo.bob
as 
select custid, year(orderdate) as custYear, COUNT(orderid) as custOrders 
from sales.Orders
group by custid, year(orderdate);
go


-- 7. Create a view similar to the Production.Products table, but include the category name as a column.
-- Use the DBO schema. This is an example of denormalizing a database table. After going to all the
-- trouble of normalizing a database, can you think of a good reason to denormalize it?

drop view if exists dbo.prodcat;
go
create view dbo.prodcat
as
select p.productid, p.productname, p.unitprice, c.categoryname
from Production.Products as p
join Production.Categories as c
on p.categoryid = c.categoryid;
go
select * from dbo.prodcat