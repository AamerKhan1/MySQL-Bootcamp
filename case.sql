# # SELECT *, 
# # CASE
# # 	WHEN released_year >= 2000 THEN 'Modern Lit'
# # 	ELSE '20th Century Lit'
# # END AS Genre
# # FROM books;


# SELECT title, stock_quantity, 
# CASE
# 	WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
# 	WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
# 	ELSE '***'
# END AS 'Visual Stock QTY'
# FROM books ORDER BY stock_quantity;

# SELECT * FROM books WHERE released_year < 1980;

# SELECT * FROM books WHERE author_lname IN ('Eggers','Chabon');

# SELECT * FROM books WHERE author_lname='Lahiri' && released_year > 2000;

# SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

# SELECT * FROM books WHERE author_lname LIKE'C%' OR author_lname LIKE 'S%';

# SELECT *,
# CASE
# 	WHEN title LIKE '%stories%' THEN 'Short Stories'\
# 	WHEN title LIKE '%Just Kids%' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
# 	ELSE 'Novel'
# END AS Type
# FROM books;


SELECT  title, author_lname,
CASE
	WHEN COUNT(author_lname) BETWEEN 0 AND 1 THEN CONCAT(COUNT(author_lname),' ','book')
	WHEN COUNT(author_lname) > 1 THEN CONCAT(COUNT(author_lname),' ','books')
END AS Count
FROM books GROUP BY author_lname;
















