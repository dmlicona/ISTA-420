##### __ISTA420__ 
##### __TSQL_HW03__

## *Denis Licona*
###### *27 Jan 2020* 
---

1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.
* Joins allow you to link data from two or more tables together into a single query result from one single SELECT statement. 

2. Describe in your own words the output from an inner join.
* An INNER JOIN is such type of join that returns all rows from both the participating tables where the key record of one table is equal to the key records of another table. In other words, it references a the foreign key in a table. This type of join required a comparison operator to match rows from the participating tables based on a common field or column of both the tables.

3. Describe in your own words the output from an outer join.
* All rows (both matching and nonmatching) from both tables are combined and included in the output of one table.

4. Describe in your own words the output from an cross join.
* Each row from the 1st table joins with all the rows of another table. 

5. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?
* 

6. Give an example of a composite join.
* In a composite join there is no relationship between two participating tables. I.e. customer and employees. I would use a composite join to request a result that exist within each of the tables. 

7. What is the difference between the following two queries? The business problem is “How many orders do we have from each customer?”
-- ================first query===============
___ SELECT C.custid, COUNT(*) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;
================second query===============
SELECT C.custid, COUNT(O.orderid) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid; ___ 
* The difference is that in the first query, the COUNT(*) does not specifies what to count. Table two will count the number of OrderID within the Orders table. 

8. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= ’20160101’;

* the WHERE O.orderdate is using apostrophes vice single quotation marks. 