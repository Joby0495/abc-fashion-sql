-- Task 3: Fetch customers where name ends with 'N' and PurchaseAmount > 500
SELECT *
FROM Customer
WHERE CustomerName LIKE '%N'
AND PurchaseAmount > 500;

-- Task 4: SET operators for SalesmanId
-- Unique SalesmanId from Salesman and Customer tables
SELECT SalesmanId FROM Salesman
UNION
SELECT SalesmanId FROM Customer;

-- SalesmanId present in both tables (duplicates)
SELECT SalesmanId FROM Salesman
INTERSECT
SELECT SalesmanId FROM Customer;

-- Task 5: Display OrderDate, SalesmanName, CustomerName, Commission, City 
-- where PurchaseAmount is between 500 and 1500
SELECT o.OrderDate, s.Name AS SalesmanName, c.CustomerName, s.Commission, s.City
FROM Orders o
JOIN Customer c ON o.CustomerId = c.CustomerId
JOIN Salesman s ON o.SalesmanId = s.SalesmanId
WHERE c.PurchaseAmount BETWEEN 500 AND 1500;

-- Task 6: Right join to fetch all results from Salesman and Orders
SELECT *
FROM Orders o
RIGHT JOIN Salesman s ON o.SalesmanId = s.SalesmanId;
