-- Query 05: List products that have never been ordered
SELECT p.name
FROM Product p
LEFT JOIN OrderItem oi ON p.productId = oi.productId
WHERE oi.orderId IS NULL;
