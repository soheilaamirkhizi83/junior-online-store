-- 06_view: Displays top-selling products with total quantity sold per product
CREATE VIEW vw_TopSellingProducts AS
SELECT 
    p.productId,
    p.name AS ProductName,
    SUM(oi.quantity) AS TotalSold
FROM 
    Product p
JOIN 
    OrderItem oi ON p.productId = oi.productId
GROUP BY 
    p.productId, p.name;
