.echo on
.headers on

-- Name: Denis Licona
-- File: sql-lab2a.sql
-- Date: January 21, 2020

-- 1. What are the regions?
select * from region;

-- 2. What are the cities?
select territorydescription from territories;

-- 3. What are the cities in the Southern region?
select territorydescription, regionid from territories where regionid = 4;

-- 4. How do you run this query with the fully qualified column name?
select territories.territorydescription, territories.regionid from territories where regionid = 4;

-- 5. How do you run this query with a table alias?
select t.territorydescription, t.regionid from territories t where regionid = 4;

-- 6. What is the contact name, telephone number, and city for each customer?
select contactname, phone, city from customers;

-- 7. What are the products currently out of stock?
select productid, productname, unitsinstock from products where unitsinstock = 0;

-- 8. What are the ten products currently in stock with the least amount on hand?
select productid, productname, unitsinstock from products where unitsinstock > 0 order by unitsinstock limit 10;

-- 9. What are the five most expensive products in stock?
select productid, productname, unitprice from products order by unitprice desc limit 5;

-- 10. How many products does Northwind have? How many customers? How many suppliers?
select count(*) from products;
select count(*) from customers;
select count(*) from suppliers;