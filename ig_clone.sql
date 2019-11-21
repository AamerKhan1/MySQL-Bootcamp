-- CREATE DATABASE FIRST 
# CREATE DATABASE ig_clone;
# USE ig_clone;


# CREATE TABLE users (
# 	id INTEGER AUTO_INCREMENT PRIMARY KEY,
# 	username VARCHAR(255) UNIQUE NOT NULL,
# 	created_at TIMESTAMP DEFAULT NOW()
# );


# INSERT INTO users (username) VALUES 
# ('BlueTheCat'),
# ('CharlieBrown'),
# ('ColtSteele');


-- CREATE Photos Table
# CREATE TABLE photos (
# 	id INTEGER AUTO_INCREMENT PRIMARY KEY,
# 	image_url VARCHAR(255) NOT NULL,
# 	user_id INTEGER NOT NULL,
# 	created_at TIMESTAMP DEFAULT NOW(),
# 	FOREIGN KEY (user_id) REFERENCES users(id)
# );


-- INSERT test data into table 
# INSERT INTO photos (image_url,user_id) VALUES
# ('www.photo_url1.com',1),
# ('www.photo_url2.com',2),
# ('www.photo_url3.com',2);


-- Try out a inner join on users and photos.
# SELECT 
# 	username,
# 	image_url
# FROM users
# JOIN photos
# ON users.id=photos.user_id;

-- Create Comments Table 
CREATE TABLE comments (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	comment_text VARCHAR(255) NOT NULL,
	user_id INTEGER NOT NULL,
	photo_id INTEGER NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (photo_id) REFERENCES photos(id)
);


INSERT INTO comments (comment_text,user_id,photo_id) VALUES
('Meow!',1,2),
('Amazing Shot!',3,2),
('I <3 This!',2,1);


SELECT 
	username,
	image_url,
	comment_text
FROM users
INNER JOIN comments
ON users.id=comments.user_id
INNER JOIN photos
ON photos.id=comments.photo_id;


CREATE TABLE likes (
	user_id INTEGER NOT NULL,
	photo_id INTEGER NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (photo_id) REFERENCES photos (id),
	PRIMARY KEY (user_id,photo_id)
);


INSERT INTO likes (user_id,photo_id) VALUES
(1,1),
(2,1),
(1,2),
(1,3),
(3,3);


-- CREATE FOLLOWS table

CREATE TABLE follows (
	follower_id INTEGER NOT NULL,
	followee_id INTEGER NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (follower_id) REFERENCES users(id),
	FOREIGN KEY (followee_id) REFERENCES users(id),
	PRIMARY KEY (follower_id,followee_id)
);


-- INSERT dummy data into FOLLOWS table

INSERT INTO follows (follower_id,followee_id)VALUES
(1,2),
(1,3),
(3,1),
(2,3);


-- Create Photo_tags Table
CREATE TABLE photo_tags (
	photo_id INT NOT NULL,
	tag_id INT NOT NULL,
	FOREIGN KEY (photo_id) REFERENCES photos(id),
	FOREIGN KEY (tag_id) REFERENCES tags(id),
	PRIMARY KEY (photo_id,tag_id)
);



-- Create Table for Tags
CREATE TABLE tags (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	tag_name VARCHAR(255) UNIQUE,
	created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO tags (tag_name) VALUES 
('adorable'),
('cute'),
('sunrise');

INSERT INTO photo_tags (photo_id,tag_id) VALUES
(1,1),
(1,2),
(2,3),
(3,2);







