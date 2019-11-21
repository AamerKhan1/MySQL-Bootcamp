# CREATE TABLE students (
# id INT AUTO_INCREMENT PRIMARY KEY,
# first_name VARCHAR(100)
# );


# CREATE TABLE papers (
# title VARCHAR(100),
# grade INT,
# student_id INT,
# FOREIGN KEY (student_id) REFERENCES students(id)
# ON DELETE CASCADE
# );

-- INSERT THE DATA

# INSERT INTO students (first_name) VALUES 
# ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

# INSERT INTO papers (student_id, title, grade ) VALUES
# (1, 'My First Book Report', 60),
# (1, 'My Second Book Report', 75),
# (2, 'Russian Lit Through The Ages', 94),
# (2, 'De Montaigne and The Art of The Essay', 98),
# (4, 'Borges and Magical Realism', 89);

-- CREATE FIRST SUMMARY TABLE (first_name, title, grade) INNER JOIN or JOIN

# SELECT 
# first_name,
# title,
# grade
# FROM students
# JOIN papers
# ON students.id=papers.student_id
# ORDER BY grade DESC;

-- CREATE 2nd TABLE (first_name,title, grade) LEFT JOIN
# SELECT 
# first_name,
# title,
# grade
# FROM students
# LEFT JOIN papers
# ON students.id=papers.student_id
# ;


-- CREATE 3nd TABLE (first_name,title, grade) LEFT JOIN BUT ass IFNULL for NULL values
# SELECT 
# first_name,
# IFNULL(title,'Missing'),
# IFNULL(grade,0)
# FROM students
# LEFT JOIN papers
# ON students.id=papers.student_id
# ;

-- CREATE 4th TABLE (first_name, average) MAYBE LEFT JOIN WITH GROUP BY ?
# SELECT 
# 	first_name,
# 	IFNULL(AVG(grade),'0') AS average
# FROM students
# LEFT JOIN papers
# ON students.id=papers.student_id
# GROUP BY students.id
# ORDER BY average DESC;


-- CREATE 5th TABLE Add PASS/FAIL Col 
SELECT 
	first_name,
	IFNULL(AVG(grade),'0') AS average,
CASE
	WHEN AVG(grade) IS NULL THEN 'FAILING'
	WHEN AVG(grade) BETWEEN 75 AND 100 THEN 'PASSING'
	ELSE 'FAILING'
END AS passing_status
FROM students
LEFT JOIN papers
ON students.id=papers.student_id
GROUP BY students.id
ORDER BY average DESC;


