/*CreateView 3*/
CREATE VIEW lib_funding
AS (SELECT l.library_name, l.library_id, provincial, local
   FROM libraries as l
   INNER JOIN fundings as f
   ON l.library_id = f.library_id)