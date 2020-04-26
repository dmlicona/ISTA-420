##### __ISTA420__ 
##### __TSQL_HW05__

## *Denis Licona*
###### *3 Feb 2020* 
---

1. What is a table expression? Can you give a technical definition of a table expression?
* A table expression is a named query expression that represents a valid relational table. In other words, it is a temporary result set which you can then use in a SELECT statement.  It becomes a convenient way to manage complicated queries.

2. In what SQL clause are derived tables (table valued subqueries) located?
* Derived tables are defined in the *FROM* clause of an __outer query__. 

3. Why can you refer to column aliases in an outer query that you defined in an inner table valued subquery?
* Because it was assigned in the SELECT clause of the inner query. Subqueries are ran first, allowing the outer query to reference it.

4. What SQL key word defines a common table expression?
* CTEs are defined by using a *WITH* statement. 

5. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?
* Yes

6. Can a main query refer to a previously defined common table expression by multiple aliases?
* Yes it can. 

7. In SQL, is a view a durable object?
* Yes, views can be reused as they provide security to a table by restricting the viewing of certain data within a table. Views are virtual tables. 

8. In a view, what does WITH CHECK OPTION do? Why is this important?
* The purpose of CHECK OPTION is to prevent modifications through the view that conflict with the view’s filter.

9. In a view, what does SCHEMABINDING do? Why is this important?
* The SCHEMABINDING binds the schema of referenced objects and columns to the schema of the referencing object. It indicates that referenced objects cannot be dropped and that referenced columns cannot be dropped or altered. Prevents inconsistency with the view and the underlining table.  

10. What is a table valued function?
* A table-valued function is a user-defined function that returns data of a table type. The return type of a table-valued function is a table, therefore, you can use the table-valued function just like you would use a table.

11. What does the APPLY operator do?
* The APPLY operator allows us to invoke a table-valued function for each row returned by an outer table expression of a query. The APPLY operator allows us to join two table expressions; the right table expression is processed every time for each row from the left table expression.

12. What are the two forms of the APPLY operator? Give an example of each.
* APPLY: CROSS APPLY and OUTER APPLY. Like a cross join, the *CROSS APPLY* applies the right table to each row from the left table and produces a result table with the unified result sets.