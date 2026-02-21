-- Queries for Data Retrieval

-- Query 1
-- Retrieve customers who have pending orders
SELECT C.CustomerID, C.Name, C.Phone, O.Status
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.Status = 'Pending'
ORDER BY C.Name;


-- Query 2
-- Calculate total revenue from completed orders
SELECT O.Status, SUM(O.TotalAmount) AS TotalRevenue
FROM Orders O
WHERE O.Status = 'Completed'
GROUP BY O.Status;


-- Query 3
-- List available menu items and total quantities sold
SELECT M.ItemName, SUM(OD.Quantity) AS TotalSold
FROM MenuItems M
JOIN OrderDetails OD ON M.ItemID = OD.ItemID
WHERE M.Availability = 'Y'
GROUP BY M.ItemName;


-- Query 4
-- Retrieve customers who made reservations (Subquery)
SELECT CustomerID, Name
FROM Customers
WHERE CustomerID IN (
    SELECT DISTINCT CustomerID
    FROM Reservations
);
