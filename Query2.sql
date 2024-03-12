/* Query 2: 2.	How many products from the catalogue does the libraries with at least 100,000 active cardholders offer to the people visiting the library?*/
SELECT l.library_number, c.library_name, SUM(c.print_title + c.print_volume) as total_prinbooks_held,
SUM(c.ebook_title + c.ebook_copy) as total_ebooks_held,
SUM(c.audiobook_title + c.audiobook_copy) as total_audiobooks_held,
SUM(c.cd_dvd_title + c.cd_dvd_copy) as total_cd_dvds_held
FROM catalogues as c
INNER JOIN  libraries as l
ON c.library_name = l.library_name
WHERE c.library_name IN ('Toronto','Ottawa','London','Mississauga','Hamilton','Burlington','Markham','Brampton')
GROUP BY c.library_name, l.library_number;