CREATE VIEW lib_items
AS(SELECT library_name, print_title, print_volume, ebook_title, ebook_copy,
   cd_dvd_title, cd_dvd_copy, audiobook_title, audiobook_copy
	   FROM catalogues);