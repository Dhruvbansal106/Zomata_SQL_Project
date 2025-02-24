--Q9. Cancellation Rate:
-- Calculate the order cancellation rate for each restaurant between the curreent 

Select t.restaurant_id,
		t.total_orders,
		t.not_delivered,
		Round(t.not_delivered::NUMERIC/t.total_orders,2)*100 as  Cancellation_rate 
FROM(
		 Select 
			o.restaurant_id,
			COUNT(o.order_id) as total_orders,
			COUNT(CASE WHEN o.status ='Not Delivered' then 1 END) not_delivered
		FROM orders as o
		Group by 1
		Order by 3 desc) AS t
	