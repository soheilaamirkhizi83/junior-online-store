-- 02_view: count total orders per customer
CREATE VIEW vw_CustomerOrderCount AS
SELECT c.customerId, c.fullName, COUNT(o.orderId) AS TotalOrders
FROM Customer c
JOIN Orders o ON c.customerId = o.customerId
GROUP BY c.customerId, c.fullName;
