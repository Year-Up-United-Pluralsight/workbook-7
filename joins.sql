-- Question 1
SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
	ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- Question 2
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers
	ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- Question 3
SELECT ProductID, ProductName, UnitPrice, CategoryName, CompanyName
FROM Products
JOIN Categories
	ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers
	ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;

-- Question 4
SELECT ProductName, CategoryName
FROM Products
JOIN Categories
	ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice)
				   FROM Products);
                   
-- Question 5
SELECT OrderID, ShipName, ShipAddress, CompanyName
FROM Orders
JOIN Suppliers
	ON ShipVia = SupplierID
WHERE ShipCountry = 'Germany';

-- Question 6
SELECT Orders.OrderID, OrderDate, ShipName, ShipAddress
FROM Orders

-- Connects Order Details to Orders via OrderID
JOIN `Order Details`
	ON Orders.OrderID = `Order Details`.OrderID

-- Specifics ProductID of "Sasquatch Ale"
WHERE ProductID =  (SELECT ProductID
					FROM Products
					WHERE ProductName = 'Sasquatch Ale');

