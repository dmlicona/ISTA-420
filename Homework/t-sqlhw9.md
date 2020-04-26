##### __ISTA422__ 
##### _C#_TSQL Chap. 09__

## *Denis Licona*
###### *30 Mar 2020* 

1. What is a temporal table?
- Also known as system-versioned tables, provide us with new functionality to track data changes. It allows SQL Server to maintain and manage the history of the data in the table automatically. This feature provides a full history of every change made to the data.

2. Under what circumstances would you use a temporal table? Temporal tables are in widespread use in certain kinds of businesses.
- To retrieve data from a time range and for auditing purposes.

3. What are the semantics of a temporal table? There are seven of them.
- A __primary key__
- Two columns defined as __DATETIME2__ with any precision, which are non-nullable and represent the start and end of the row’s validity period in the UTC time zone
- A __start column__ that should be marked with the option __GENERATED ALWAYS AS ROW START__
- An __end column__ that should be marked with the option __GENERATED ALWAYS AS ROW END__
- A designation of the period columns with the option __PERIOD FOR SYSTEM_TIME (<startcol>, <endcol>)__
- The table option __SYSTEM_VERSIONING__, which should be set to ON
- A linked history table (which SQL Server can create for you) to hold the past states of modified rows

4. How do you search a history table?
- Browse the object tree in Object Explorer in SQL Server Management Studio (SSMS).

5. How do you modify a history table?
- You modify only the current table with INSERT, UPDATE, DELETE, and MERGE statements.

6. How do you delete data from a history table? Why would you want to delete data from a history table?
- You never delete data from a history table. You modify the current table using a Delete statement to Delete row. Done when the data is no longer relevant or updated (delete plus insert). The changed date is then tracked in the history table. 

7. How do you search a history table?
- SELECT statement uses the FOR SYSTEM_TIME FROM TO clause to retrieve all active rows within the time range specified by the @StartTime and @EndTime values.

8. How do you query all data from both a history table and the current data?
- If you want to query the current state of the data, you simply query the current table as you would query a normal table. If you want to query a past state of the data, you still query the current table, but you add a clause called FOR SYSTEM_TIME and a sub clause that indicates the validity point or period of time you’re interested in.

9. How do you drop a temporal table?
- SYSTEM_VERSIONING OFF, DROP TABLE IF EXISTS.