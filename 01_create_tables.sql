-- Create Salesman Table
CREATE TABLE Salesman (
    SalesmanId INT,
    Name VARCHAR(255),
    Commission DECIMAL(10, 2),
    City VARCHAR(255),
    Age INT
);

-- Create Customer Table
CREATE TABLE Customer (
    SalesmanId INT,
    CustomerId INT,
    CustomerName VARCHAR(255),
    PurchaseAmount INT
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderId INT,
    CustomerId INT,
    SalesmanId INT,
    OrderDate DATE,
    Amount MONEY
);
