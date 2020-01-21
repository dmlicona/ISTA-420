1. How does the book describe the difference between imperative and declarative languages?
With declarative language, you simply specify what you want to get, whereas imperative language requires the how to get it. 

2. List three categories of command statements in SQL.
-Data Definition language (DDL): Create / Alter / Drop
-Data Manipulation Language (DML): allows you to query and modify; Select / insert / update / delete / truncate / Merge
-Data Control Language(DCL): deals with permissions; Grant / Revoke

3. Give an informal definition of database as used in the expression “relational database management system.” Give an informal definition of database as used in the expression “Human Resources database.”
-An RDBMS is a DBMS designed specifically for relational databases. Therefore, RDBMSes are a subset of DBMSes. A relational database refers to a database that stores data in a structured format, using rows (set of tuples) and columns (set of attributes).
-Human Resources Database is where transactions relating to payroll processing, position management, time and attendance, recruitment, benefits, and other human resources data are recorded, stored and retrieved in a variety of ways.

4. How does SQL implement three-valued predicate logic?
-SQL implements three-valued predicate logic by supporting the NULL marker to signify the generic concept of a missing value.

5. How does SQL enforce entity integrity? What is entity integrity?
-Entity integrity is concerned with ensuring that each row of a table has a unique and non-null primary key value; this is the same as saying that each row in a table represents a single instance of the entity type modelled by the table
-SQL enforces entity integrity via candidate keys which is a key defined on one or more attributes that prevents more than one occurrence of the same tuple (row in SQL) in a relation.

6. How does SQL enforce referential integrity? What is referential integrity?
-Referential integrity is a property of data stating that all its references are valid. In the context of relational databases, it requires that if a value of one attribute of a relation references a value of another attribute, then the referenced value must exist. 
-In SQL, foreign keys enforce referential integrity as the foreign key should reference an existing primary key from another table. 

7. What is a relation as defined in the textbook? A one word answer to this question is sufficient.
-Table

8. Is this table in first normal form? Why or why not? If it is not, how would you change it?
-No it is not because even though each of the tuples (rows) in the relation (table) are unique, the attributes are not atomic. FacName can be furthed divided into FacFname and FacLname. FacCred will need to brokend down as well.
create table faculty (
	facID int primary key,
	facFirstName text, 
	facLastName text)
	
create table credential (
	CredsId int primary key,
	CredsName text)
	
create table FacCred
	facID int foreign key,
	CredID int foreign key)

9. Is this table in second normal form? Why or why not? If it is not, how would you change it?
-No because every nonkey attribute is not fully functionally dependent on the entire primary key. I would create two tables. 
create table owner (
	ownerID int primary key,  
	ownerFirstName text,
	ownerLastName text)
	
create table pet (
	petID int primary key,
	petName text,  
	petType text, 
	ownerId int foreign key)
	

10. Is this table in third normal form? Why or why not? If it is not, how would you change it?
NOT. City and State depend on the zip code. Separate into two tables. Create a table with a zip code as the primary key. 

11. List the components of a four-part object name.
1. Server Name – Database server name or server alias name.
2. Database Name – Database name.
3. Schema Name – Owner of the object.
4. Object Name – Name of the object. 

12. What is the difference between declarative data integrity and procedural data integrity?
-Declaring constraints to the columns (like PK,UNIQUE,FK,DEFAULT, CHECK) of a table is said to be Declarative Data Integrity. Enforcing the same rule by using Script, Procedure and Triggers is said to be Procedural Data Integrity.
-Data type and nullability choices for attributes and even the data model itself are examples of declarative data integrity constraints. 
-Examples of declarative constraints: primary key, unique, foreign key, check, and default constraints. 
-You can define such constraints when creating a table as part of the CREATE TABLE statement, or you can define them for already-created tables by using an ALTER TABLE statement.

Homework Exercises
1. Install SQL Server Express on a personal computer. See the appendix of the book, Getting Started, if
you run into problems. Please, please check the system requirements before you do this. You cannot
install SQL Server on a hand held device or an internet appliance. This may take a couple of hours
but you can read the text book while you are waiting.

2. Install SQL Server Management Studio on a personal computer. See the cautions above. This may
take a long time as well.

3. We will be downloading and installing the database the text uses. Read the Introduction. This can be
obtained from http://aka.ms/T-SQLFund3e/downloads.

