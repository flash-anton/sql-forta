-- 1
update vendors
set vend_state = upper(vend_state)
where vend_country = 'USA';

update customers
set cust_state = upper(cust_state)
where cust_country = 'USA';

-- 2
delete
from customers
where cust_id = '1';
