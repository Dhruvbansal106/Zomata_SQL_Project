--Q4. High value customers
-- List the customers who have spent more than 22K in total on food orders.
-- return customer_name customer_id
SELECT
	c.name as customer_name,
	SUM(o.total_amount) as total_spent
FROM orders as o 
JOIN Customers c on 
c.customer_id=o.customer_id
group by 1
having sum(total_amount)>22000;