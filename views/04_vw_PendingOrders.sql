-- 04_view: show all pending (not shipped) orders with customer info
create view vw_PendingOrders as
select Orders.orderId, Customer.fullname, orders.orderDate, Orders.status
from Orders
join Customer on Customer.customerId = Orders.customerId
where status <> 'Shipped';
