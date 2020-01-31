 select distinct r.RegionDescription, e.LastName, e.FirstName, s.CompanyName, p.ProductName
    from dbo.Suppliers as S
    join dbo.Products as P   
    on s.SupplierID = p.SupplierID    
    join dbo.[Order Details] as OD
    on p.ProductID = OD.ProductID
    join dbo.Orders as O
    on o.OrderID = OD.OrderID
    join dbo.Employees as E
    on e.EmployeeID = o.EmployeeID
    join EmployeeTerritories as ET
    on et.EmployeeID = e.EmployeeID
    join dbo.Territories as T
    on t.TerritoryID = et.TerritoryID
    join dbo.region as R
    on r.RegionID = t.RegionID
    where s.Country = 'Germany';        