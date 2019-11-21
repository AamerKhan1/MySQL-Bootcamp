CREATE TABLE tweets (
content VARCHAR(100),
	usrename CHAR(20),
	created_at TIMESTAMP DEFAULT NOW()
)