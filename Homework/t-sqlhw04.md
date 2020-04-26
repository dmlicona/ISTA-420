##### __ISTA420__ 
##### __TSQL_HW04__

## *Denis Licona*
###### *3 Feb 2020* 
---

1. In your own words, what is a subquery?
* It is a query inside another query. Like in mathematics, it is a value to be used to calculate a total value. It is the inner query for an outer query. 

2. In your own words, what is a self contained subquery?
* are queries written as standalone queries, without any dependencies on the outer query. It passes its results to the outer query. 

3. In your own words, what is a correlated subquery?
* These queries reference one or more columns from the outer query and therefore, depend on the outer query. They cannot be run separately from the outer query. 

4. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
* A scalar subquery is a subquery that returns a single value. Such a subquery can appear anywhere in the outer query where a single-valued expression can appear (such as WHERE or SELECT).
* SELECT orderid, orderdate, empid, custid
* FROM Sales.Orders
* WHERE orderid = (SELECT MAX(O.orderid)
* FROM Sales.Orders AS O);

5. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
* The form of the *IN* predicate is
<scalar_expression> IN (< multivalued subquery >)
* When the expected return will have more than one result. 
* Returning a column from a table. 

6. Give an example of a subquery that returns table values. When would you use this kind of subquery?
* Table value subqueries. Used when I want to return an entire table. 

7. What does the exists predicate do? Give an example.
* T-SQL supports a predicate called EXISTS that accepts a list subquery as input and returns TRUE if the subquery returns any rows and FALSE otherwise.

8. What happens if we use the not operator before a predicate? Give an example.
* It negates the predicate, providing the opposite result of the query, i.e. everything but this. 

9. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
* It returns two values, either true or false. There is no unknown. 

10. How would you use a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.
* Running aggregates are aggregates that accumulate values based an aggregation of subqueries.