-- 1
SELECT cust_id
FROM Orders
WHERE order_num IN
(
	SELECT order_num
	FROM OrderItems
	WHERE item_price >= 10
);

-- 2
SELECT cust_id, order_date
FROM Orders
WHERE order_num IN
(
	SELECT order_num
	FROM OrderItems
	WHERE prod_id = 'BR01'
)
ORDER BY order_date;

-- 3
SELECT cust_email
FROM Customers
WHERE cust_id IN
(
	SELECT cust_id
	FROM Orders
	WHERE order_num IN
	(
		SELECT order_num
		FROM OrderItems
		WHERE prod_id = 'BR01'
	)
)
ORDER BY cust_email;

-- 4 -- different from book solution
SELECT
	cust_id,
	SUM( order_summa ) AS total_ordered
FROM
(
	SELECT
		cust_id,
		(
			SELECT SUM( quantity * item_price )
			FROM OrderItems
			WHERE OrderItems.order_num = Orders.order_num
		) AS order_summa
	FROM Orders
) AS OrdersSummas
GROUP BY cust_id
ORDER BY total_ordered DESC;

-- 5
SELECT
	prod_name,
	(
		SELECT SUM( quantity )
		FROM OrderItems
		WHERE OrderItems.prod_id = Products.prod_id
	) AS quant_sold
FROM Products;
