--Q6. Restaurant revenue ranking:
-- Rank restaurants by their total revenue , including their name , city , total revenue and rank them
SELECT 
	RANK() OVER(ORDER BY Sum(o.total_amount)dESC),
	r.name  as Restaurant_name,
	r.location as City,
	Round(Sum(o.total_amount)::NUMERIC,2) as revenue
from orders as o
JOIN Restaurants as r on
r.restaurant_id=o.restaurant_id
Group by 2,3
