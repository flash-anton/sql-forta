-- 1
SELECT
	vend_id,
	vend_name    AS vname,
	vend_address AS vaddress,
	vend_city    AS vcity
FROM Vendors
ORDER BY vname;

-- 2
SELECT
	prod_id,
	prod_price,
	prod_price*0.9 AS sale_price
FROM Products;
