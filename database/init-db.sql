CREATE DATABASE IF NOT EXISTS ece140;

USE ece140;

-- DUMP EVERYTHING... YOU REALLY SHOULDN'T DO THIS!
DROP TABLE IF EXISTS users;

-- 1. Create the users table
CREATE TABLE IF NOT EXISTS users (
  id        INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name  VARCHAR(20) NOT NULL,
  email      VARCHAR(50) NOT NULL UNIQUE,
  student_id VARCHAR(8)  NOT NULL,
  user_name  VARCHAR(20) NOT NULL UNIQUE,
  password   VARCHAR(50) NOT NULL
);

-- 2. Insert initial seed records into the table
-- [INSERT CODE HERE]

INSERT INTO users (first_name, last_name, email, student_id, user_name, password) 
VALUES ("Elon", "Musk", "elon@musk.com", "12345678", "elonguy99", "test123"),
       ("Jeff", "Bezos", "jeff@amazon.com", "12345678", "jeffman88", "test123"),
       ("Tim", "Hensen", "tim@polyphia.com", "12345678", "guitarguy12", "test123"),
       ("Gordon", "Freeman", "freeman@blackmesa.com", "12345678", "halflife", "test123");
