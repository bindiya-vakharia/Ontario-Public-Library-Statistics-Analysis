/* Create View 1*/
CREATE VIEW lib_info
AS (SELECT library_number, library_name, website, service_type, ols_region
   FROM libraries);