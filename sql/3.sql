-- 1
SELECT cust_name
FROM Customers
ORDER BY cust_name DESC;

--2
SELECT cust_id, order_num
FROM Orders
ORDER BY cust_id, order_date DESC;

-- 3
SELECT quantity, item_price
FROM OrderItems
ORDER BY quantity DESC, item_price DESC;

-- 4
SELECT vend_name
FROM Vendors
ORDER BY vend_name DESC;
