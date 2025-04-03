-- Create Tables
CREATE TABLE Salesman (
    Salesmanld INT,
    Name VARCHAR(255),
    Commission DECIMAL(10, 2),
    City VARCHAR(255),
    Age INT
);

CREATE TABLE Customer (
    Salesmanld INT,
    Customerld INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT
);

CREATE TABLE Orders (
    Orderld INT,
    Customerld INT,
    Salesmanld INT,
    OrderDate DATE,
    Amount MONEY
);

-- Insert Initial Data
INSERT INTO Salesman (Salesmanld, Name, Commission, City, Age)
VALUES 
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);

INSERT INTO Customer (Salesmanld, Customerld, CustomerName, PurchaseAmount)
VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000),
    (107, 3747, 'Remona', 2700),
    (110, 4004, 'Julia', 4545);

INSERT INTO Orders (Orderld, Customerld, Salesmanld, OrderDate, Amount)
VALUES
    (5001, 2345, 101, '2021-07-01', 550),
    (5003, 1234, 105, '2022-02-15', 1500);

-- Task 1: Insert New Record into Orders
INSERT INTO Orders (Orderld, Customerld, Salesmanld, OrderDate, Amount)
VALUES (5004, 2345, 101, '2023-01-01', 1000);

-- Task 2: Add Constraints
-- Add missing Salesman records for foreign key compatibility
INSERT INTO Salesman (Salesmanld, Name, Commission, City, Age)
VALUES 
    (107, 'Unknown', 0, 'Unknown', 0),
    (110, 'Unknown', 0, 'Unknown', 0);

ALTER TABLE Salesman
ADD CONSTRAINT PK_Salesman PRIMARY KEY (Salesmanld);

ALTER TABLE Salesman
ADD CONSTRAINT DF_Salesman_City DEFAULT 'Unknown' FOR City;

ALTER TABLE Customer
ADD CONSTRAINT FK_Customer_Salesman FOREIGN KEY (Salesmanld) REFERENCES Salesman(Salesmanld);

ALTER TABLE Customer
ALTER COLUMN CustomerName VARCHAR(255) NOT NULL;

-- Task 3: Customers with Name Ending in 'N' and PurchaseAmount > 500
SELECT *
FROM Customer
WHERE CustomerName LIKE '%N' AND PurchaseAmount > 500;

-- Task 4: SET Operators for Salesmanld
-- Unique Salesmanld
SELECT Salesmanld FROM Salesman
UNION
SELECT Salesmanld FROM Customer;

-- Salesmanld in Both Tables
SELECT Salesmanld FROM Salesman
INTERSECT
SELECT Salesmanld FROM Customer;

-- Task 5: Matching Data with PurchaseAmount 500-1500
SELECT 
    o.OrderDate,
    s.Name AS SalesmanName,
    c.CustomerName,
    s.Commission,
    s.City
FROM Orders o
JOIN Customer c ON o.Customerld = c.Customerld
JOIN Salesman s ON o.Salesmanld = s.Salesmanld
WHERE c.PurchaseAmount BETWEEN 500 AND 1500;

-- Task 6: RIGHT JOIN Salesman and Orders
SELECT *
FROM Orders o
RIGHT JOIN Salesman s ON o.Salesmanld = s.Salesmanld;