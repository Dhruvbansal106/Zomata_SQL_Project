--Q11. Monthly Restaurant Growth Ratio:
-- Calculate each restaurant's growth rate based on the total no. of delivered orders since its joining
SELECT t.restaurant_id,t.Month,t.prev_month_orders,t.cr_month_orders,
		ROUND(
		(t.cr_month_orders::NUMERIC - t.prev_month_orders::NUMERIC)/t.prev_month_orders::NUMERIC*100,2)
		AS GROWTH_RATE
FROM(
		SELECT 
			o.restaurant_id,
			TO_CHAR(o.order_date,'mm-yy') as Month,
			COUNT(o.order_id) as cr_month_orders,
			LAG(COUNT(o.order_id),1) OVER(PARTITION BY o.restaurant_id
			ORDER BY TO_CHAR(o.order_date,'mm-yy'))as prev_month_orders
		FROM orders as o
		WHERE o.status='Delivered'
		Group by 1,2
		Order by 1,2) AS t;
