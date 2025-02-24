--Q1. 
-- Write a querry to find the top 5 most frequently ordered dishes by customer called "David Smith "
-- Solution
SELECT 
	c.customer_id,
	c.name,
	o.Items as dishes,
	COUNT(*) AS total_orders
FROM orders as o
JOIN
customers as c 
on c.customer_id = o.customer_id
Where c.name='David Smith'
Group by 1,2,3
order by 1,4 desc
limit 5;
