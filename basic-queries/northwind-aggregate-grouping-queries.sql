-- Question 1
SELECT COUNT(SupplierID)
FROM Suppliers;

-- Question 2
SELECT SUM(Salary)
FROM Employees;

-- Question 3
SELECT MIN(UnitPrice)
FROM Products;

-- Question 4
SELECT AVG(UnitPrice)
FROM Products;

-- Question 5
SELECT MAX(UnitPrice)
FROM Products;

-- Question 6

-- Check how many ProductIDs have the same SupplierID
SELECT SupplierID, COUNT(ProductID)
FROM Products
GROUP BY SupplierID;

-- Question 7
SELECT CategoryID, AVG(UnitPrice)
FROM Products
GROUP BY CategoryID;

-- Question 8
SELECT SupplierID, COUNT(ProductID)
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5;

-- Question 9
SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName;







