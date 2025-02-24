--Q8 Customer Churn
-- Find customers who haven't paced an order in upper half of the year but did in 2nd half 

SELECT DISTINCT customer_id from orders 
where
	EXTRACT(MONTH FROM order_date) > 6 
	AND 
	customer_id NOT IN 
						(SELECT DISTINCT customer_id from orders
						Where EXTRACT(MONTH FROM order_date) < 6 )