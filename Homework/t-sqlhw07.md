##### __ISTA420__ 
##### __TSQL_HW07__

## *Denis Licona*
###### *11 Feb 2020* 
---
1. What is a window function?
* Operate on a set of rows and return a scalar (single) value for each row from the underlying query. Perform data analysis. 

2. What does PARTITION do?
* divides the data into parts
* restricts the rows

3. What does ORDER BY do?
* Specifies that a SQL SELECT statement returns a result set with the rows being sorted by the values of one or more columns. Determines the rows.

4. What does ROWS BETWEEN do?
* filters a frame, or a subset, of rows from the window partition between the two specified delimiters.
* it's a range rows between two points between first record and current record. 
5. What is a ranking window function? Why would you use it? Give an example.
* To rank each row in respect to the other rows. If you want to figure out how many duplicates you have you can use the RANK function to calculate difference between last order current order and next order.

6. What is an offset window function? Why would you use it? Give an example.
* To return an element from a row that is at a certain offset from the current row or at the beginning or end of a window frame.. Its for returning values that are at a certain offset. To get a previous and next value from an order.

7. What do LEAD and LAG DO
* LAG looks before the current row
* LEAD looks ahead the current row

8. What do FIRST VALUE and LAST VALUE do?
* used to return values from the first row or last row

9. What is an aggragate window function? Why would you use it? Give an example.
* You use aggregate window functions to aggregate the rows in the defined window. It uses a math operator on a window function. It's useful because you can return detailed values, like running total or total orders

10. What is a pivot table and what does it do?
* it gives a table and aggregating the categories.
* It turns rows into columns.
* Three phases: grouping, spreading, aggregation

11. In mathematical theory, what is a power set? How does this definition of power set relate to grouping sets?
* In set theory, the set of all subsets of elements that can be produced from a particular set is called the power set. Grouping gets all the possible subsets that can be defined from a power set. 
* {ABC} {AB} {BC} {AC} {A} {B} {C} {}

12. What is a bit array? How can you implement a bit array to represent a set of flags? How does the GROUPING ID() function implement a bit array?
* An array is an ordered set of elements of a single built-in data type. GROUPING ID() gives you a bit array that represent a set of flags. 

13. Read the documentation on the UNIX/Linux chmod command. How would interpret this command: chmod 755 myscript.sql?
* (7) the owner has a full permission to read, write, and execute.
* (5) the group in which the owner is in can read and execute the file.
* (5) everyone else can read and execute the file. 
