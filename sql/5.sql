-- 1
SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA' AND vend_state = 'CA';

-- 2
SELECT order_num, prod_id, quantity
FROM OrderItems
WHERE quantity >= 100 AND prod_id IN ('BR01','BR02','BR03')
ORDER BY prod_id, quantity;

-- 3
SELECT prod_name, prod_price
FROM Products
WHERE prod_price >= 3 AND prod_price <= 6
ORDER BY prod_price;

-- 4
SELECT vend_name
FROM Vendors
WHERE vend_country = 'USA' AND vend_state = 'CA'
ORDER BY vend_name;
