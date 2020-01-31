select companyName, contactname, country from customers where country = "Poland";

-- List the order Id, the order date, and the destination city of all orders shipped to Berlin.
select orderID, OrderDate, ShipCity from orders where ShipCity = "Berlin";

-- 3. How many boxes of Filo Mix do we have in stock?
select ProductID, ProductName, UnitsInStock from products where ProductID = 52;

-- 4. List the telephone numbers of all of our shippers.
select companyName, phone from shippers;

-- 5. Who is our oldest employee? Who is our youngest employee?
select LastName, FirstName, BirthDate, (julianday('now') - julianday(birthdate)) / 365 from employees order by (julianday('now') - julianday(birthdate)) / 365;

-- 6. List the suppliers where the owner of the supplier is also the sales contact
select companyName, ContactName, ContactTitle from suppliers where contacttitle like "%Owner%";