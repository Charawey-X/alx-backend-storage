-- creates table users if it doesn't exist, id is a primary key, id & email are non-null, email & name are strings of 255 characters

CREATE TABLE IF NOT EXISTS users (
	id INT NOT NULL AUTO_INCREMENT, 
	email VARCHAR(255) NOT NULL UNIQUE, 
	name VARCHAR(255), 
	PRIMARY KEY(id)
);
