##### __ISTA420__ 
##### __TSQL_HW02b__

## *Denis Licona*
###### *21 Jan 2020* 
---

1. *What is a data type? Why do we have data types?*
* A data type is an attribute that specifies the type of data that the object can hold: integer data, character data, monetary data, date and time data, binary strings, and so on. We need to have data types because it defines the type of value that can be stored in a table column. 
2. *What is a collation? Name four elements of a collation.*
* Collation refers to a set of rules that determine how data is sorted and compared. Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more. 
3. *How would you strip whitespace from a string? For example, suppose you had “ Dave ” but wanted only “Dave”.*
* If you want to remove the white spaces at both the beginning and end of the string then you can simply apply both LTRIM and RTRIM to the string.
4. *Suppose you wanted to make a list of every college and university that was called an Institute from the college table. Write the query.*
* select university from college where university like n'Institue';
* select from college where college =
5. *How would you find the number of the index of the first space in a string? For example, the index of the first space in “Barack Hussein Obama” would be 7.*
* select charindex(' ', 'barack hussein obama');
* select instr("Charles Carter", " ");   ---> sqlite
6. *How would you select just the first name in a list of the presidents. Each record looks like the: ”George Washington”, ”John Adams”, ”Thomas Jefferson”. First names can be an arbitrary length, from “Cal” to “Benjamin.” (e.g., Cal College, Benjamin Harrison)*
* select substr("John Adams", 1, 3);
* select substr("John Adams", 1, instr("John Adams", " "));
7. *What is the order of precedence for the logical operators?*
* NOT
* AND
* ALL, ANY, BETWEEN, IN, LIKE, OR
8. *What is the order of precedence for the math operators?*
* Parenthesis ( )
* DIVISION (/), MULTIPLICATION(*)
* ADDITION (+), SUBSTRACTION(-)
9. *What is the difference between a simple and a searched CASE expression?;*
* The simple CASE expression compares an expression to a set of simple expressions to determine the result. The searched CASE expression evaluates a set of Boolean expressions to determine the result.
10. *How would you turn a list of names like this: “LASTNAME, FIRSTNAME”, to a list like this: “FIRSTNAME LASTNAME”?*
* By concatenating strings via the CONCAT function. 
* select FIRSTNAME + N',' + LASTNAME AS fullname from table; 
11. *How would you turn a list of names like this: “FIRSTNAME LASTNAME”, to a list like this: “LASTNAME, FIRSTNAME”?*
* By using the STRING_SPLIT table function.
* select substr("Adams, John", 1, instr("Adams, John", ",") -1);
