-- Insert initial data into Salesman
INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age) VALUES
    (101, 'Joe', 50, 'California', 17),
    (102, 'Simon', 75, 'Texas', 25),
    (103, 'Jessie', 105, 'Florida', 35),
    (104, 'Danny', 100, 'Texas', 22),
    (105, 'Lia', 65, 'New Jersey', 30);

-- Insert dummy Salesman records for foreign key consistency
INSERT INTO Salesman (SalesmanId, Name, Commission, City, Age) VALUES
    (107, 'Unknown', 0, 'Unknown', 0),
    (110, 'Unknown', 0, 'Unknown', 0);

-- Insert initial data into Customer
INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount) VALUES
    (101, 2345, 'Andrew', 550),
    (103, 1575, 'Lucky', 4500),
    (104, 2345, 'Andrew', 4000),
    (107, 3747, 'Remona', 2700),
    (110, 4004, 'Julia', 4545);

-- Insert initial data into Orders
INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount) VALUES
    (5001, 2345, 101, '2021-07-04', 550),
    (5003, 1234, 105, '2022-02-15', 1500);

-- Task 1: Insert a new record into Orders
INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount) VALUES
    (5004, 2345, 101, '2023-01-01', 1000);
