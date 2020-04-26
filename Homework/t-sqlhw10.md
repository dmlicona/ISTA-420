##### __ISTA422__ 
##### __TSQL Chap. 10__

## *Denis Licona*
###### *6 April 2020* 

1. What is the purpose of *transactions*? Why do we use transactions in SQL scripts?
- to make a single unit of work that queries and modifies data. To makes changes all at one time.

2. Briefly describe each of the ACID properties.
- __Atomicity__ - Either all changes take place, or none do. It is indivisible.
- __Consistency__ - The state of the transaction must remain consistent. The data-
base must adhere to all integrity rules that have been defined within it by constraints (such as primary keys, unique constraints, and foreign keys). Guarantees that a transaction never leaves your database in a half-finished state.
- __Isolation__ - If a current state is being used you can’t use it elsewhere. Keeps transactions separated from each other until they’re finished.
- __Durability__ - Guarantees that the database will keep track of pending changes in such a way that the server can recover from an abnormal termination. The data is kept in a transaction log. / It’s a permanent change.
 
3. What do we mean when we talk about the *granularity* of locks?
- The granularity of locks in a database refers to how much of the data is locked at one time. In theory, a database server can lock as much as the entire database or as little as one column of data. Such extremes affect the concurrency (number of users that can access the data) and locking overhead (amount of work to process lock requests) in the server. Adaptive Server supports locking at the table, page, and row level.

4. What do we mean when we talk about the modes of locks?
- Whether its exclusive locked or shared. Exclusive locked to one user. Shared can be used by another user until released.

5. In your own words, describe *blocking*, and give an example.
- As the word suggests ‘Blocking’, it’s stopping the user from accessing something. The resource maybe currently accessed by some other user, at a time only one of the user can access the resource; making other wait for the resource. 

6. What are the *properties* of locks? That is, list the column name and column type of the fields in sys.dm.tran_locks.
- Returns information about currently active lock manager resources in SQL Server 2019 (15.x). Each row represents a currently active request to the lock manager for a lock that has been granted or is waiting to be granted.
- https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-tran-locks-transact-sql?view=sql-server-2017

7. What are the *properties* of sessions? That is, list the column name and column type of the fields in sys.dm.exec_connections.
- Returns information about the connections established to this instance of SQL Server and the details of each connection. Returns server wide connection information for SQL Server. Returns current database connection information for SQL Database.
- https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-exec-connections-transact-sql?view=sql-server-2017

8. What are the *requests* of sessions? That is, list the column name and column type of the fields in sys.dm exec_requests.
- Returns information about each request that is executing in SQL Server.
- https://docs.microsoft.com/en-us/sql/relational-databases/system-dynamic-management-views/sys-dm-exec-requests-transact-sql?view=sql-server-2017

9. What is an *isolation level*? Give an example of the operation of an isolation level.
- Isolation levels determine the level of consistency you get when you interact with data.

10. (Not in the book.) What do we mean when we say that an object is *serializable*?
- It can be cataloged

11. What is a *deadlock*? Give an example of a deadlock?
- When two transactions cancel each other. A deadlock is a situation in which two or more sessions block each other. An example of a two-session deadlock is when session A blocks session B and session B blocks session A.
