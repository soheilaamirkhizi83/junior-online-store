-- 03_view: summarize total quantity sold and total sales amount per product
CREATE VIEW vw_ProductSalesSummary AS
SELECT 
  p.productId,
  p.name,
  SUM(oi.quantity) AS TotalQuantitySold,
  SUM(oi.quantity * p.price) AS TotalSalesAmount
FROM Product p
JOIN OrderItem oi ON p.productId = oi.productId
GROUP BY p.productId, p.name;
