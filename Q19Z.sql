-- Q19. Order item Popularity
-- track the popularity of specific order items over time and identify seasonal demand spikes.
Select 
 	items,
	seasons,
	COUNT(order_id) as total_orders
FROM
(
SELECT
	*,
	CASE
		WHEN EXTRACT(MONTH FROM order_date) BETWEEN 4 AND 6 THEN 'SUMMER'
		WHEN EXTRACT(MONTH FROM order_date) BETWEEN 7 AND 9 THEN 'SPRING'
		ELSE 'WINTER'
	END AS seasons
from orders
) as t1
Group by 1,2
order by 1,3 desc
		
		
	