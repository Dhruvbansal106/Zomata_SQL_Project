--Q17.Monthly Sales Trends:
--Identify sales trends by comparing each month's to the previous months.
SELECT 
	TO_CHAR(order_date, 'mm-yy') as month,
	
	Lag(ROUND(SUM(TOTAL_AMOUNT):: NUMERIC,2)) OVER(ORDER BY TO_CHAR(order_date, 'mm-yy')) AS PREV_MONTH_SALES,
	ROUND(SUM(TOTAL_AMOUNT):: NUMERIC,2) AS crn_month_SALES
from orders
Group by 1

