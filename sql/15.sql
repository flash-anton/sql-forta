-- 1
insert into customers(cust_id, cust_name)
values(1, 'Anton');

-- 2
create table orders_copy as select * from orders;
create table orderitems_copy as select * from orderitems;
