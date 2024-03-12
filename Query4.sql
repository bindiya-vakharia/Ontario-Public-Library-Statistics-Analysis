/* Query 4: What is the total number of provincial and local funding received by the Public or Union Libraries that fall under the Southern Ontario Library Service region?*/
SELECT library_name, SUM(f.provincial + f.local) as total_gov_funding,
city, postal_code
FROM locations as l
INNER JOIN libraries as lib
ON l.location_id = lib.location_id
INNER JOIN fundings as f
ON lib.library_id = f.library_id
WHERE service_type = 'Public or Union Library'
GROUP BY library_name, city, postal_code, ols_region
HAVING ols_region = 'Southern Ontario Library Service'
ORDER BY total_gov_funding;