-- 05_view: show order summary with item count
CREATE VIEW vw_OrderSummaryWithItems
AS
SELECT 
    o.orderId,
    c.fullName,
    o.orderDate,
    COUNT(oi.orderItemId) AS itemCount,
    o.totalAmount
FROM Orders o
JOIN Customer c ON o.customerId = c.customerId
JOIN OrderItem oi ON o.orderId = oi.orderId
GROUP BY o.orderId, c.fullName, o.orderDate, o.totalAmount;
