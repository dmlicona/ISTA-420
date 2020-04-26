1. What is dynamic SQL?
2. In executing dynamic SQL, what are the differences between using the EXEC command and thesp executesp stored procedure?
3. What is a SQL injection attack? Give an example of an attack.
- SQL injection is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database.

4. How do you execute the EXEC command? Write a complete example using the TSQLV4 database.
- The EXEC command accepts a character string in parentheses as input and executes the batch of code within the character string.
- DECLARE @sql AS VARCHAR(100);
SET @sql = 'PRINT ''This message was printed by a dynamic SQL batch.'';';
EXEC(@sql);

5. Describe the use of input parameters and output parameters for the sp executesql stored procedure.
- 

6. What are the three kinds of routines that T-SQL recognizes?
- user defined, stored procedure and trigger.

7. What is the difference between a stored procedure, a user defined function, and a trigger?
- A Function must return a value but in Stored Procedures it is optional: a procedure can return 0 or n values. Functions can have only input parameters for it, whereas procedures can have input/output parameters. A trigger is a SQL procedure that initiates an action. A trigger is a special kind of stored procedure—one that cannot be executed explicitly  

8. What is the primary function of a UDF? This is not specifically stated in the book but is clear from the context of the discussion n the book.
- A user-defined function (UDF) in SQL Server is a programming construct that accepts parameters, does work that typically makes use of the accepted parameters, and returns a type of result.

9. (Not in book.) What are side effects, and why are they dangerous?
- Anything that is not explicit is a side effect. It is dangerous because it can execute unplanned and unawared actions. 

10. What is the principle distinction between a UDF and a stored procedure?
- 

11. Given that you cannot execute a trigger explicitly, what is the advantage of using triggers?
12. In using error handling in T-SQL, can you mimic a finally block? If so, how?
13. Write a user defined function that returns a Booleans as to whether a customer may purchase alcohol
as of the instant that the function runs.
14. Write a trigger that places a customer in the OFF LIMITS table if he attempt to purchase alcohol
when he is underage.
15. Write a stored procedure that deletes customers from the OFF LIMITS table when they have reached
their 21st birthday.
