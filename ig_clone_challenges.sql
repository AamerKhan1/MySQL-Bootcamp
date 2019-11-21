-- Challenege #1 Find ythe 5 oldest users

# SELECT 
# 	username
# FROM users
# ORDER BY created_at DESC
# LIMIT 5;

-- Challenge 7 Find users who have liked every photo on the site
SELECT 
	username,
	user_id,
	COUNT(*) total_likes
FROM likes
JOIN users
ON users.id = likes.user_id
GROUP BY likes.user_id
HAVING total_likes=(SELECT COUNT(*) FROM photos)
ORDER BY likes.user_id
;