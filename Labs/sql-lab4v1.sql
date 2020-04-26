--ISTA420
--TSQL_Lab04
--Denis Licona
--3 Feb 2020


--1. What is our highest priced product? Report the product id, product name, and unit price. 
--Use a self-contained, scalar valued subquery.

select max(unitprice) 
    from Production.Products;

select productid, productname, unitprice
from production.products
where unitprice =
(select max(unitprice) 
    from Production.Products);

--2. What is our most popular product in terms of quantity sold? Report the product name and productid. 
--Use a self-contained, scalar valued subquery.

select p.productname, p.productid
from Production.Products as P
where p.productid = 
(select top 1 OD.productid
    from sales.OrderDetails as OD
    group by od.productid
    order by sum(od.qty) desc);

--3. Who is our top salesperson overall? Include the employee id, title, rst name, and last name. Use a self-contained, scalar valued subquery.

select empid, title, firstname, lastname
from hr.Employees
where empid = 
(select top 1 empid
from sales.orders
group by empid
order by count(orderid) desc);

--4. I want to examine the individual orders. Specically, I want to look at each order and compare the total of each order line with the average total of all order lines in the order. 
--Report the order id, the total of each order line, and the average of all order lines for each order. Use a correlated, scalar valued subquery.


select od.orderid, (od.unitprice * od.qty) as Line_total,
(select AVG(ood.unitprice * ood.qty)
from sales.OrderDetails as ood
where ood.orderid = od.orderid 
) as order_avg
from sales.orderDetails as od;

--5. What is the largest quantity ordered by a customer for every order? Report the order id, the product id, and the quantity ordered. Use a correlated subquery in the WHERE clause.


select od.orderid, od.productid, od.qty
from sales.OrderDetails as od
where od.qty =
(select max(ood.qty)
from sales.OrderDetails as ood
where ood.orderid = od.orderid)
order by od.orderid;


