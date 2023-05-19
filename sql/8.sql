-- 1
SELECT
	cust_id,
	cust_name,
	UPPER( LEFT( cust_contact, 2 ) || LEFT( cust_city, 3 ) ) AS user_login
FROM Customers;

-- 2
SELECT order_num, order_date
FROM Orders
WHERE DATE_PART( 'year', order_date ) = 2020 AND DATE_PART( 'month', order_date ) = 1
ORDER BY order_date;
