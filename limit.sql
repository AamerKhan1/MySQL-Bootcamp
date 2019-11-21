# SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 1,3;
# SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';
# SELECT * FROM books WHERE stock_quantity LIKE '____';SOURCE 
# SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';