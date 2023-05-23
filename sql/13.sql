-- 1
select cust_name, order_num
from customers c
inner join orders o on c.cust_id = o.cust_id
order by cust_name;

-- 2
select cust_name, order_num
from customers c
left outer join orders o on c.cust_id = o.cust_id
order by cust_name;

-- 3
select prod_name, order_num
from products p
left outer join orderitems oi on p.prod_id = oi.prod_id
order by prod_name, order_num;

-- 4
select prod_name, count(order_num) orders_count
from products p
left outer join orderitems oi on p.prod_id = oi.prod_id
group by prod_name
order by prod_name;

-- 5
select v.vend_id, count(prod_id)
from vendors v
left outer join products p on v.vend_id = p.vend_id
group by v.vend_id
order by vend_id;
