/* Query 3: How many cardholders are there in each library?*/
SELECT library_name,
CASE 
WHEN active_cardholder >= 100000 THEN 'High'
WHEN active_cardholder BETWEEN 50000 AND 100000 THEN 'Medium'
WHEN active_cardholder BETWEEN 10000 AND 50000 THEN 'Low'
WHEN active_cardholder BETWEEN 1 AND 10000 THEN 'Very Low'
ELSE 'No cardholders'
END AS cardholder_range
FROM libraries
ORDER BY active_cardholder DESC;
