-- Query 02: Show product names and quantities in each order
SELECT o.orderId, p.name, oi.quantity
FROM Orders o
JOIN OrderItem oi ON o.orderId = oi.orderId
JOIN Product p ON oi.productId = p.productId;
