-- Q13.Rider  Monthly earning
--calculate each rider's total monthly earnings, assuming they earn 10% of the order amount +tip 

Select 
	d.rider_id,
	TO_CHAR(o.order_date, 'mm-yy') as month,
	Count(o.order_id) as total_orders_delivered,
	Sum(o.total_amount*0.1 + d.tip) as total_revenue
From Orders as o

Join Deliveries as d
on o.order_id = d.order_id
Group by 1,2
Order by 1,2
