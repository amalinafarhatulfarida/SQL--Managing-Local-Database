# SQL Server Basics: Setting up and Managing Databases Locally

This repository contains SQL queries and documentation for setting up and managing databases using SQL Server Developer Edition and SQL Server Management Studio (SSMS).

## Prerequisites

1. **SQL Server Developer Edition**:
   - Installed on your local machine to set up a server.

2. **SQL Server Management Studio (SSMS)**:
   - Downloaded and installed to manage your SQL databases.

---

## Steps Completed

### 1. Installed SQL Server Developer Edition
- Set up a local SQL Server instance for development purposes.

### 2. Created a Database
- Used SSMS to create a new database for the project:
  ```sql
  CREATE DATABASE <DatabaseName>;
  ```

### 3. Created Tables
- Created a `Customer` table with the following schema:
  ```sql
  CREATE TABLE Customer (
      CustomerID INT PRIMARY KEY,
      FirstName VARCHAR(50),
      LastName VARCHAR(50),
      City VARCHAR(50),
      Age INT
  );
  ```

- Inserted sample data into the `Customer` table:
  ```sql
  INSERT INTO Customer (CustomerID, FirstName, LastName, City, Age)
  VALUES 
      (2, 'Nurul', 'Hassan', 'Penang', 34),
      (3, 'Auni', 'Abdullah', 'Sabah', 41),
      ...
  ```

- Updated data in the `Customer` table:
  ```sql
  UPDATE Customer
  SET City = 'Selangor'
  WHERE FirstName = 'Aaron';
  ```

- Deleted specific rows from the `Customer` table:
  ```sql
  DELETE FROM Customer
  WHERE FirstName = 'Tracy';
  ```

---

### 4. Altered the `Customer` Table
- Added a new column `District`:
  ```sql
  ALTER TABLE Customer
  ADD District VARCHAR(50);
  ```

- Updated the newly added column:
  ```sql
  UPDATE Customer
  SET District = 'Bintulu'
  WHERE FirstName = 'Siti';
  ```

---

### 5. Created a `Products` Table
- Created a `Products` table with the following schema:
  ```sql
  CREATE TABLE Products (
      ProductID INT PRIMARY KEY,
      ProductName VARCHAR(50),
      Price FLOAT
  );
  ```

- Inserted sample data into the `Products` table:
  ```sql
  INSERT INTO Products (ProductID, ProductName, Price)
  VALUES
      (1, 'Roti John', 5.5),
      (2, 'Murtabak', 7.0),
      ...
  ```

---

### 6. Created an `Orders` Table with Foreign Key Relationships
- Created the `Orders` table referencing `Customer` and `Products` tables:
  ```sql
  CREATE TABLE Orders (
      OrderID INT PRIMARY KEY,
      OrderDate DATETIME,
      CustomerID INT,
      ProductID INT,
      FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
      FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
  );
  ```

- Inserted sample data into the `Orders` table:
  ```sql
  INSERT INTO Orders (OrderID, OrderDate, CustomerID, ProductID)
  VALUES
      (1, GETDATE(), 2, 1);
  ```

---

### 7. Dropped Tables (if necessary)
- Used the following commands to drop tables:
  ```sql
  DROP TABLE Customer;
  DROP TABLE Products;
  DROP TABLE Orders;
  ```

---

## Key Learnings and Observations

- **Updating Data**: The `UPDATE` statement allows modifying specific rows in a table.
- **Deleting Data**: Use the `DELETE` statement with a `WHERE` clause to remove specific rows.
- **Adding Columns**: Use `ALTER TABLE` to modify the table schema dynamically.
- **Foreign Keys**: Implemented relationships between tables using `FOREIGN KEY` constraints.

---

## Future Enhancements

- Add more complex queries (e.g., JOINS, aggregations).
- Implement stored procedures and functions for reusability.
- Create views for simplified data access.

---
