# ABC Fashion SQL Project

This project implements the SQL tasks for the ABC Fashion Sales Order Processing System, a retailer managing customer orders and sales interactions.

## Files

- `01_create_tables.sql`: Creates the `Salesman`, `Customer`, and `Orders` tables.
- `02_insert_data.sql`: Inserts initial data into the tables and adds a new record for task 1.
- `03_constraints.sql`: Adds constraints as per task 2.
- `04_queries.sql`: Contains queries for tasks 3 to 6.

## Setup Instructions

1. Create a new database in your SQL environment (e.g., SQL Server, MySQL, or PostgreSQL).
2. Execute the scripts in order:
   - `01_create_tables.sql`
   - `02_insert_data.sql`
   - `03_constraints.sql`
3. Run the queries in `04_queries.sql` as needed to perform tasks 3 to 6.

## Notes

- The `Customer` table includes `SalesmanId` values (107 and 110) not present in the `Salesman` table. Dummy records for these IDs are inserted in `02_insert_data.sql` to satisfy the foreign key constraint in task 2.
- The scripts assume a SQL Server environment (e.g., `MONEY` data type, `INTERSECT` support). For other databases like MySQL, adjustments may be needed (e.g., use `DECIMAL` instead of `MONEY`, replace `INTERSECT` with a join).
- The `Customer` table has duplicate `CustomerId` values (e.g., 2345), which may reflect multiple transactions rather than unique customers.
# abc-fashion-sql
