--Q20. Rank each restaurant based on the total revenue for the year 2023.

SELECT 
	r.restaurant_id,
	r.name,
	Round(SUM(total_amount)::NUMERIC,2) as total_revenue,
	Rank()OVER(ORDER BY SUM(total_amount)DESC) AS RESTAURANT_RANK
fROM orders as o
Join Restaurants as r on
r.restaurant_id=o.restaurant_id
Group by 1
-- End of Project