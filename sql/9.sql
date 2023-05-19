-- 1
SELECT SUM( quantity ) AS total_products_quantity
FROM OrderItems;

-- 2
SELECT COUNT( * ) AS br01_orders_quantity
FROM OrderItems
WHERE prod_id = 'BR01';

-- 3
SELECT MAX( prod_price ) AS max_price
FROM Products
WHERE prod_price <= 10;
