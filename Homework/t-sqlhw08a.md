##### __ISTA420__ 
##### __TSQL_HW08a__

## *Denis Licona*
###### *16 Feb 2020* 
---

1. When using INSERT, is the list of columns necessary? Why or why not?
* No, the list of column is not necessary because when you don't SQL utilizes the default value if one is defined and null if not defined. However, if the column does not allow null, the INSERT statement will fail. 

2. When using INSERT SELECT, do you use a subquery (derived table)? Under what circumstances do you not use a subquery?
* yes. select info from one table and inserts it into anther table. You don't use the subquery when you decide the rely on the default values of Null in SQL, however, if null is not allowed, it will fail. 

3. What is the operand for the INSERT EXEC statement?
* Exec (short for execute) - very common

4. How would you use the INSERT INTO statement?
* You would INSERT INTO (parameters) as described previously under INSERT SELECT.

5. What are the parameters to the BULK INSERT statement?
* You specify the target table, the source file, and the options DATAFILETYPE, FIELDTERMINATOR (separates the columns) AND ROWTERMINATOR (what the rows end with). 

6. Does IDENTITY guarantee uniqueness? If not, how do you guarantee uniqueness?
* The identity property itself DOES NOT enforce uniqueness in the column. If you need to guarantee uniqueness in an identity column, make sure you also define a primary key or a unique constraint on that column.

7. How do you create a SEQUENCE object?
* To create a sequence object, use the CREATE SEQUENCE command. The minimum required
information is just the sequence name, but note that the defaults for the various properties in such a
case might not be what you want. If you don’t indicate the data type, SQL Server will use BIGINT by
default. If you want a different type, indicate AS <type>. The type can be any numeric type with a scale
of zero. For example, if you need your sequence to be of an INT type, indicate AS INT.

8. How do you use a SEQUENCE object?
* By using the CREATE SEQUENCE command to create the sequence and being explicit about the type to avoid the default BIGINT. 

9. How do you alter a SEQUENCE object?
* You can change any of the sequence properties except the data type with the ALTER SEQUENCE
command (MINVAL <val>, MAXVAL <val>, RESTART WITH <val>, INCREMENT BY <val>, CYCLE | NO
CYCLE, or CACHE <val> | NO CACHE).

10. What is the difference between DELETE and TRUNCATE?
* DELETE deletes records one by one and makes an entry for each and every deletion in the transaction log, whereas TRUNCATE de-allocates pages and makes an entry for de-allocation of pages in the transaction log. With DELETE you declare a FROM clause and a WHERE clause. Only subset of rows for which the predicate evaluates to TRUE will be deleted. TRUNCATE deletes ALL rows from a table, without logging the individual row deletions. TRUNCATE is DDL (which specifies the DB schema or structure.) DELETE is DML (which is used to access, modify or retrieve data from a DB.)

11. What is the difference between DELETE and DROP TABLE?
* The DROP table query removes one or more table definitions and all data, indexes, triggers, constraints, and permission specifications for those tables on the database. DROP is DDL, where as DELETE is DML. 
