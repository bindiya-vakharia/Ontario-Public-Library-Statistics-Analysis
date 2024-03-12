/* Query 1: 1.	How many libraries have at least 100,000 active cardholders and where are they situated?*/
SELECT library_name, active_cardholder, city
FROM libraries as lib
INNER JOIN locations as l
ON lib.location_id = l.location_id
WHERE active_cardholder IN (
SELECT active_cardholder
FROM libraries
WHERE active_cardholder >= 100000)
ORDER BY active_cardholder DESC;