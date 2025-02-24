-- Q15. Order frequency by day :
--  Anlyse order frequency per day of the week and identify the peak day for each restaurant

Select *
From (
SELECT 
r.name,
r.restaurant_id,
--o.order_date,
To_char(o.order_date, 'Day')as Peak_day,
Count(o.order_id) as total_orders,
RANK() OVER(PARTITION BY r.restaurant_id order by Count(o.order_id) Desc) as Rank
FROM orders as o
Join Restaurants as r on
r.restaurant_id=o.restaurant_id
Group by 1,2,3
order by 1,2) as t
Where rank=1
