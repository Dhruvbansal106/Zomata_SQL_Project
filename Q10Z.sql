-- Q10 Rider Average delivery time:
-- Determine each rider's average delivery time.
SELECT 
	rider_id,
	count(delivery_id)as total_deliveries,
	sum(delivery_time - pickup_time) as Total_delivery_hours,
	AVG(delivery_time - pickup_time) as Avg_delivery_time
FROM 
	Deliveries
group by 1
Order by 2 desc;