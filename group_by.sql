# SELECT author_fname, author_lname, MIN(released_year) FROM books GROUP BY author_lname,author_fname;
# SELECT author_fname, author_lname, MAX(pages) FROM books GROUP BY author_lname, author_fname;
# SELECT author_fname, author_lname, SUM(pages) FROM books GROUP BY author_lname, author_lname;
SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;