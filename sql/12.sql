-- 1-1
select cust_name, order_num
from customers c, orders o
where c.cust_id = o.cust_id
order by cust_name, order_num;

-- 1-2
select cust_name, order_num
from customers c
inner join orders o on c.cust_id = o.cust_id
order by cust_name, order_num;

-- 2-1
select
    cust_name,
    order_num,
    (
        select sum( quantity * item_price ) OrderTotal
        from orderitems oi
        where oi.order_num = o.order_num
    ) OrderTotal
from customers c, orders o
where c.cust_id = o.cust_id
order by cust_name, order_num;

-- 2-2
select
    cust_name,
    o.order_num,
    sum( quantity * item_price ) OrderTotal
from customers c
inner join orders o on c.cust_id = o.cust_id
inner join orderitems oi on o.order_num = oi.order_num
group by cust_name, o.order_num
order by cust_name, order_num;

-- 3
select cust_id, order_date
from orders o, orderitems oi
where o.order_num = oi.order_num
  and prod_id = 'BR01'
order by order_date;

-- 4
select cust_email
from customers c
inner join orders o on c.cust_id = o.cust_id
inner join orderitems oi on o.order_num = oi.order_num
where prod_id = 'BR01'
order by cust_email;

-- 5-1
select
    cust_name,
    sum( quantity * item_price ) orders_price
from customers c, orders o, orderitems oi
where c.cust_id = o.cust_id
  and o.order_num = oi.order_num
group by cust_name
having sum( quantity * item_price ) >= 1000
order by cust_name;

-- 5-2
select
    cust_name,
    sum( quantity * item_price ) orders_price
from customers c
inner join orders o on c.cust_id = o.cust_id
inner join orderitems oi on o.order_num = oi.order_num
group by cust_name
having sum( quantity * item_price ) >= 1000
order by cust_name;

