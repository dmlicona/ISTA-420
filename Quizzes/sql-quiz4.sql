-- Name: Denis Licona
-- File: tsql-quiz04.sql
-- Date: February 10, 2020

use tsqlv4;

-- I need a report giving the customer ID, customer name, and customer contact of all customers who did
-- not make an order in 2014, but made orders in 2015 and 2016. You will need to use a subquery in the
-- WHERE clause that uses a set operator. You do not need to use a JOIN.

select custid, companyname, contactname
from sales.customers
where custid IN
((select custid
from sales.Orders
where orderdate like '2015-%-%')
UNION
(select custid
from sales.Orders
where orderdate like '2016-%-%')
EXCEPT
(select custid
from sales.Orders
where orderdate like '2014-%-%'))