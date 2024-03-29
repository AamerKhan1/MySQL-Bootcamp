# SELECT title FROM books WHERE title LIKE '%stories%';
# SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
# SELECT CONCAT(title,' - ',released_year) AS Summary FROM books ORDER BY released_year DESC LIMIT 3;
# SELECT DISTINCT title, author_lname FROM books WHERE author_lname LIKE '% %';
# SELECT DISTINCT title, released_year, stock_quantity FROM books ORDER BY stock_quantity ASC LIMIT 3;
# SELECT DISTINCT title, author_lname FROM books ORDER BY author_lname, title;
# SELECT CONCAT('MY FAVORITE AUTHOR IS ',UPPER(author_fname),' ',UPPER(author_lname),'!')AS yell FROM books ORDER BY author_lname;
# SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
SELECT author_lname COUNT(*) FROM books GROUP BY author_lname;