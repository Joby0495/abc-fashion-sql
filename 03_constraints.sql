-- Add primary key to SalesmanId in Salesman
ALTER TABLE Salesman ADD CONSTRAINT PK_Salesman PRIMARY KEY (SalesmanId);

-- Add default constraint for City in Salesman
ALTER TABLE Salesman ADD CONSTRAINT DF_City DEFAULT 'Unknown' FOR City;

-- Add foreign key for SalesmanId in Customer
ALTER TABLE Customer ADD CONSTRAINT FK_Customer_Salesman 
    FOREIGN KEY (SalesmanId) REFERENCES Salesman(SalesmanId);

-- Add not null constraint for CustomerName in Customer
ALTER TABLE Customer ALTER COLUMN CustomerName VARCHAR(255) NOT NULL;
