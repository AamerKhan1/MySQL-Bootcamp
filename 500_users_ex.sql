-- Earliest date a user joined? May 2nd 2016
# SELECT 
# 	DATE_FORMAT(created_at, '%b %D %Y')
# FROM users 
# ORDER BY created_at ASC LIMIT 1;

-- Find email, created_at of first earliest user

# SELECT 
# 	email,
# 	created_at
# FROM users
# WHERE created_at=(SELECT created_at FROM users ORDER BY created_at ASC LIMIT 1);

-- Users according to month joined (month, count)

# SELECT 
# 	MONTHNAME(created_at) AS month,
# 	COUNT(*) AS 'count'
# FROM users
# GROUP BY month ASC;

-- Count the number of users with yahoo emails

# SELECT
# 	COUNT(email) AS yahoo_users
# FROM users
# WHERE email LIKE '%@yahoo.com';

-- Count total number of users per email host (provider, total_users)
# SELECT 
# 	CASE
# 		WHEN email LIKE '%gmail%' THEN 'gmail'
# 		WHEN email LIKE '%yahoo%' THEN 'yahoo'
# 		WHEN email LIKE '%hotmail%' THEN 'hotmail'
# 		ELSE 'other'
# 	END AS provider,
# 	COUNT(*) AS total_users
# FROM users 
# GROUP BY provider;


# SELECT * 
# FROM users 
# WHERE email NOT LIKE '%yahoo%' 
# AND email NOT LIKE '%gmail%' 
# AND email NOT LIKE '%hotmail%';
	
	
	
	
	
	
	
