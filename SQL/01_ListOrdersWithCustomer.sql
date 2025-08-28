-- Query 01: List all orders with customer full name
SELECT o.orderId, o.orderDate, c.Fullname
FROM Orders o
JOIN Customer c ON o.customerId = c.customerId;
