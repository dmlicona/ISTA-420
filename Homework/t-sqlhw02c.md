##### __ISTA420__ 
##### __TSQL_HW02c__

## *Denis Licona*
###### *26 Jan 2020* 
---

1. List the date/time types in T-SQL.
* DATETIME
* SMALLDATETIME
* DATE
* TIME
* DATETIME2
* DATETIMEOFFSET

2. How do you express a date/time literal in T-SQL?
* Use character-strings

3. What is the setting DATEFORMAT used for?
* Determines which language SQL Server is using to interprets the literals you enter when they are converted from a character-string type to a date and time type. 

4. Write a T-SQL snippet changing the date format to German. Read the documentation on how to do this.
* SET LANGUAGE German;
* SELECT FORMAT(@thedate, 'd', 'de-de')

5. What is the difference between CAST(), CONVERT(), and PARSE()?
* CONVERT() Converts an expression of one data type to another. Accepts any valid expression. It Returns a Value in which the 2nd argument, translated to the requested data type as provided by the 1st argument. 
* CAST() Converts an expression of one data type to another. It accepts any valid expression value. It returns a value in which the 1st argument, translated to the requested data type as provided by the 2nd argument.
* PARSE() Returns the result of an expression, translated to the requested data type in SQL Server. Accepts a string value. 

6. What function returns the current date? This is very useful in a table that maintains a log of events, such as user logins.
* SELECT GETDATE() 
* SELECT CURRENT_TIMESTAMP

7. How do you add one day to the current date? Add one week? Add one month? Add one year?
* select DATEADD(day, 1, '20200126');
* select DATEADD(week, 1, '20200126');
* select DATEADD(month, 1, '20200126');
* select DATEADD(year, 1, '20200126');

8. Write a SQL snippet to return the number of years between your birth date and today’s date.
* select (julianday('2020-01-26') - julianday('1981-09-14')) / 365;
* select datedif(year, '19810914' , '20200126');

9. How do you check a string literal to see if it represents a valid date?
* The ISDATE function accepts a character string as input and returns 1 if it is convertible to a date and time data type and 0 if it isn’t.

10. What does EOMONTH() do? Give an example of why this might be very useful.
* The EOMONTH function accepts an input date and time value and returns the respective end-of-month date as a DATE typed value. 

11. Payments are due exactly 30 days from the date of the last function. Write a select query that calculates the date of the next payment. Pretend we want to update a column in a database that contains the date of the next payment. We will do this when we write UPDATE queries.
* select datetime('now', '+30 days');
* SELECT DATETIME(createdColum, '+30 days') from database;

12. Suppose your son or daughter wants to run a query every day that tells them the number of days until their 16th birthday. Write a select query that does this.
* select julianday('birthday') - julianday('now');