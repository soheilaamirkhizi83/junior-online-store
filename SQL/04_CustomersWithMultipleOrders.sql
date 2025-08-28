-- Query 04 - Customers with more than one order
SELECT c.Fullname, COUNT(o.orderId) AS TotalOrders
FROM Customer c
JOIN Orders o ON c.customerId = o.customerId
GROUP BY c.Fullname
HAVING COUNT(o.orderId) > 1;
