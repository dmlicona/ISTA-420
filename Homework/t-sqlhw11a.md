##### __ISTA422__ 
##### __TSQL Chap. 11a__

## *Denis Licona*
###### *13 April 2020* 

1. Why do we use variables in T-SQL? How do you declare and initialize T-SQL variables? Can you declare and initialize a variable in a single step?
- You use variables to temporarily store data values for later use in the same batch in which they were declared. Use a DECLARE statement to declare one or more variables, and use a SET statement to assign a value to a single variable. You can declare and initialize a variable in the same statement, like this: DECLARE @i AS INT = 10; or like this: DECLARE @i AS INT; SET @i = 10;

2. Why is the assignment SET method for setting a variable safer than the assignment SELECT method?
- The SET statement is safer than the assignment SELECT because it requires you to use a scalar subquery to pull data from a table.A scalar subquery is a subquery that selects only one column or expression and returns one row.

3. Describe what is meant by a batch file in T-SQL? What is the difference between batches and transactions?
- A batch is one or more T-SQL statements sent by a client application to SQL Server for execution as a single unit. A transaction is an atomic unit of work.

4. Can a transaction be split between multiple batches? Can a batch be split between multiple transactions? Explain.
- A batch can have multiple transactions, and a transaction can be submitted in parts as multiple batches.

5. What is meant when the book says that “a batch is a unit of resolution?” Explain binding.
- A batch is a unit of resolution (also known as binding). This means that checking the existence of objects and columns happens at the batch level. When you apply schema changes to an object and try to manipulate the object data in the same batch, SQL Server might not be aware of the schema changes yet and fail the data- manipulation statement with a resolution error.

6. What is the scope of variables with respect to T-SQL batches?
- The batch itself unless you have global variables. Variables are temporary and the scope is limited to only the current batch. 

7. Give a practical example of the use of the GO n operator that is not in the book.
- The GO command is used to group SQL commands into batches which are sent to the server together. The commands included in the batch, that is, the set of commands since the last GO command or the start of the session, must be logically consistent. The GO _n_ command supports an argument indicating how many times you want to execute the batch.

8. How to you delimit if ...else constructions that contain multiple statements?
- If you need to run more than one statement in the IF or ELSE sections, you need to use a statement block. You mark the boundaries of a statement block with the BEGIN and END keywords.

9. Does T-SQL provide a SWITCH ...CASE type of construct? See chapter 2 if you don’t recall. If it exists, is it interchangeable with the if ...else construct?
- The CASE statement goes through conditions and returns a value when the first condition is met (like an IF-THEN-ELSE statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause. If there is no ELSE part and no conditions are true, it returns NULL.

10. What is the difference between a _relation_ and a _cursor_?
- A relation is table composed of unique items (sets). A cursor is a temporary work area created in the system memory when a SQL statement is executed. A cursor contains information on a select statement and the rows of data accessed by it. This temporary work area is used to store the data retrieved from the database, and manipulate this data.

11. What are the specific steps to use a cursor? List the steps.
- Declare the cursor based on a query.
- Open the cursor.
- Fetch attribute values from the first cursor record into variables.
- As long as you haven’t reached the end of the cursor (while the value of a function called @@FETCH_STATUS is 0), loop through the cursor records; in each iteration of the loop, perform the processing needed for the current row, and then fetch the attribute values from the next row into the variables.
- Close the cursor.
- Deallocate the cursor.

12. What is the scope of a local temporary table?
- the scope is limited to only the current session. The syntax begins with a _#_ symbol. 

13. When are global temporary tables destroyed? What is the main difference between local temporary tables and global temporary tables?
- Local temporary tables are deleted after the user disconnects from the instance of SQL Server. Global temporary tables are visible to any user and any connection after they are created, and are deleted when all users that are referencing the table disconnect from the instance of SQL Server.

14. Under what conditions would you use a table variable instead of a local temporary table? Why would
you refer to use a local temporary table instead of a table variable?
- Use a table variable if for a very small quantity of data (thousands of bytes)
- Use a temporary table for a lot of data

15. What is a table type? What is the syntax for creating a table type? What is the syntax for using a
table type?
- You can use a table type to preserve a table definition as an object in the database. Later you can reuse it as the table definition of table variables and input parameters of stored procedures and user-defined functions. Table types are required for table-valued parameters (TVPs).
- DROP TYPE IF EXISTS dbo.OrderTotalsByYear;
CREATE TYPE dbo.OrderTotalsByYear AS TABLE
(
orderyear INT NOT NULL PRIMARY KEY,
qty INT NOT NULL
);