-- 1
create view CustomersWithOrders as
select distinct c.*
from customers c
inner join orders o on c.cust_id = o.cust_id;

select *
from CustomersWithOrders;

-- 2
create view OrderItemsExpanded as
select order_num,
       prod_id,
       quantity,
       item_price,
       quantity*item_price as expanded_price
from orderitems
order by expanded_price; -- недопустимо в некоторых СУБД, в PostgreSQL - можно.
