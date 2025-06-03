-- Question 1
SHOW TABLES LIKE '%Products%';

-- Question 2
SELECT ProductID, ProductName, UnitPrice
FROM Products;

-- Question 3
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;

-- Question 4
SELECT ProductName
FROM Products
WHERE UnitPrice <= 7.50;

-- Question 5
SELECT ProductName
FROM Products
WHERE QuantityPerUnit >= 100
ORDER BY UnitPrice DESC;

-- Question 6
SELECT ProductName
FROM Products
WHERE QuantityPerUnit >= 100
ORDER BY UnitPrice DESC, ProductName ASC;

-- Question 7
SELECT ProductName
FROM Products
WHERE QuantityPerUnit = 0 AND (UnitsOnOrder >= 1)
ORDER BY ProductName;

-- Question 8
SHOW TABLES LIKE '%Categories%';

-- Question 9
SELECT *
FROM Categories;

-- Gets CategoryID of Seafood category
SELECT CategoryID
FROM Categories
WHERE CategoryName = "Seafood";

-- Question 10
SELECT ProductName
FROM Products
WHERE CategoryID = 8;

-- Question 11
SELECT FirstName, LastName
FROM Employees;

-- Question 12
SELECT FirstName, LastName
FROM Employees
WHERE Title LIKE '%Manager%';

-- Question 13
SELECT DISTINCT(Title)
FROM Employees;

-- Question 14
SELECT FirstName, LastName
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;

-- Question 15
SELECT *
FROM Suppliers;

-- Question 16

-- Gets the supplier ID of the company named "Tokyo Traders"
SELECT SupplierID
FROM Suppliers
WHERE CompanyName = "Tokyo Traders";

-- Filters products using that supplier ID (4)
SELECT ProductName, SupplierID
FROM Products
WHERE SupplierID = 4;








