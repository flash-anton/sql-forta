
select * from vendors v
left join products p
on v.vend_id = p.vend_id;

select * from customers c
left join orders o
on c.cust_id = o.cust_id
order by c.cust_id;

select * from products p
left join orderitems o
on p.prod_id = o.prod_id
order by prod_name;



