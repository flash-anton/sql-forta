-- 1
select prod_id, quantity
from orderitems
where quantity = 100
union
select prod_id, quantity
from orderitems
where left(prod_id,4) = 'BNBG'
order by prod_id, quantity;

-- 2
select prod_id, quantity
from orderitems
where quantity = 100
   or prod_id like 'BNBG%'
order by prod_id, quantity;

-- 3
select prod_name
from products
union
select cust_name
from customers
order by prod_name;

-- 4
select cust_name, cust_contact, cust_email
from customers
where cust_state = 'MI'
-- order by cust_name; -- лишняя строка
union
select cust_name, cust_contact, cust_email
from customers
where cust_state = 'IL'
order by cust_name;
