-- Q.12 Customer Segmentation 
-- Segment customers into 'Gold' or 'Silver' groups based on their total spending 
-- compared to the average order value (AOV). If a customer's total spending exceeds the AOV.
-- label them as 'Gold'; otherwise , label them as 'Silver'.  
SELECT 
	customer_id,
	Round(Sum(total_amount)::NUMERIC,2) as total_spent,
	Count(order_id) as total_orders,
	CASE
		When (SUM(total_amount)/Count(order_id)) > (SELECT AVG(total_amount) From orders)Then 'Gold'
		ELSE 'Silver'
	END AS cx_category
FROM orders 
Group by 1
order by 1;

-- (SELECT AVG(total_amount) From orders) for calculating AOV 
	
