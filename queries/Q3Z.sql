--Q3. Order value Analysis 
-- find the average order value per customer who has placed more than 400 orders.
-- Return customer_name and aov(average order value) 
SELECT
	c.name as customer_name,
	AVG(o.total_amount) as aov
FROM orders as o 
JOIN Customers c on 
c.customer_id=o.customer_id
group by 1
having count(order_id)>400

