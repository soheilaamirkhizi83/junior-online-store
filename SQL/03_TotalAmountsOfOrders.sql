-- Query 03 - Calculate total amount for each order
SELECT o.orderID, SUM(oi.quantity * p.price) AS TotalAmount
FROM Orders o
JOIN OrderItem oi ON o.orderID = oi.orderID
JOIN Product p ON oi.productID = p.productID
GROUP BY o.orderID;
