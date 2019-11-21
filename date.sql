# CURDATE() - gives current date
# CURTIME() - gives current time
# NOW() - gives current datetime

# INSERT INTO people (name,birthdate,birthtime,birthdt) VALUES ('Microwave',CURDATE(),CURTIME(),NOW());
# DELETE FROM people WHERE name='Microwave';
# UPDATE people SET name='Larry' WHERE name='Harry';
# SELECT birthdt, birthdt + INTERVAL 10 MONTH - INTERVAL 25 SECOND FROM people;
# CREATE TABLE comments (
# 	content VARCHAR(100),
# 	created_at TIMESTAMP DEFAULT NOW()
# );


# CREATE TABLE comments2 (
#     content VARCHAR(100),
#     changed_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
# );


# CREATE TABLE comments3 (
# content VARCHAR(100),
# 	chnaged_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()

# );

CREATE TABLE comments4 (
id INT AUTO_INCREMENT PRIMARY KEY,
	content VARCHAR(100),
	chnaged_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);





