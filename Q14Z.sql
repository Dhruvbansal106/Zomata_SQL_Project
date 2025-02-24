-- Q14. categorise each rider based on riders rating 
-- if riders ratings is greater than 4.5 then label them as very Good Rider
-- if riders ratings is between 4 and  4.5 then label them as  good Rider
-- if riders ratings is between 3.5  and 4 then label them as average Rider
-- if riders ratings is less than or equal to  3.5 then label them as Poor Rider
SELECT 
	rider_id,
	rider_name,
	rider_rating,
	CASE
		WHEN rider_rating > 4.5 then 'very Good '
		WHEN rider_rating > 4 AND rider_rating <= 4.5  then 'Good '
		WHEN rider_rating > 3.5 AND rider_rating <= 4 then 'Average '
	ELSE 'Poor'
	END AS Riders_category
FROM Riders
		