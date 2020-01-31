##### __ISTA220__ 
##### __TSQL_HW02a__

## *Denis Licona*
###### *17 Jan 2020* 
---
  
1. *List the order of execution of a SQL query.*
* FROM 
* WHERE
* GROUP BY
* HAVING
* SELECT
* ORDER BY
2. *What does the __from__ clause do?*
* It specifies the names of the tables you want to query and table operators that operate on those tables.

3. *What does the __where__ clause do?*
* It is a rows filter. It specifies predicate or logical expression to filter the rows returned by the FROM phase.
4. *What does the __group by__ clause do?*
* You can use the GROUP BY phase to arrange the rows returned by the previous logical query processing phase in groups.
5. *What does the __having__ clause do?*
* The HAVING clause is a group filter. Only groups for which the HAVING predicate evaluates to TRUE are returned by the HAVING phase to the next logical query processing phase.
6. *What does the __select__ clause do?*
* The SELECT clause is where you specify the attributes (columns) you want to return in the result table of the query.
7. *What does the __distinct_ keyword do?*
* The DISTINCT keyword is a way to remove duplicates and handle only distinct occurrences in a table. 
8. *What does the __order by__ clause do?*
* You use the ORDER BY clause to sort the rows in the output for presentation purposes. 
9. *What does the __limit__ clause do?*
* The LIMIT clause is used to set an upper limit on the number of tuples returned by SQL.
10. *What does the __top__ clause do?*
* The TOP filter is a proprietary T-SQL feature you can use to limit the number or percentage of rows your query returns.
11. *What do the __offset...fetch__ clause do?*
* With the OFFSET clause you indicate how many rows to skip, and with the FETCH clause you indicate how many rows to filter after the skipped rows.



