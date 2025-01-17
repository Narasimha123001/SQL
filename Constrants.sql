/*
Constrants - Primay key NOT nUll
*/

CREATE DATABASE Emp;
USE Emp;
CREATE TABLE employee(
	emp_Id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2)
);

INSERT INTO employee(emp_Id,name,salary) VALUES (1,'NARASIMHA',5000000);
INSERT INTO employee(emp_Id,name) VALUES(2,'SAI');


SELECT * FROM employee;

-- UNIQUE
CREATE TABLE INSTAGRAM (
	insta_Id VARCHAR(100) UNIQUE,
    followers BIGINT
);

INSERT INTO INSTAGRAM(insta_id,followers) VALUES ('naraSimha_01' , 1500000);
INSERT INTO INSTAGRAM(insta_id,followers) VALUES ('naraSimha_01' , 2500000);  -- Duplicate entry 
SELECT * FROM INSTAGRAM;

-- Default values
CREATE TABLE Orders(
	Order_id INT PRIMARY KEy,
    Order_date DATE DEFAULT '2025-01-13'
); 

INSERT INTO Orders(Order_id, Order_date) VALUES (100, '2025-01-12');
INSERT INTO Orders(Order_id) VALUES (1000);
SELECT * FROM Orders;


-- check

CREATE TABLE PRODUCTS(
		Product_id INT PRIMARY KEY,
        Price int,
        Quantity INT CHECK (Quantity>0)
);

INSERT INTO PRODUCTS(Product_id,Price,Quantity) VALUES (100,12365,1);
INSERT INTO PRODUCTS(Product_id,Price,Quantity) VALUES (10,1584,10);

SELECT * FROM PRODUCTS;


-- Where constrats

CREATE TABLE Movies (
movie_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
release_year YEAR NOT NULL,
genre VARCHAR(100) NOT NULL,
language VARCHAR(50) DEFAULT 'Telugu',
duration_minutes INT NOT NULL,
rating decimal(3,1),
director_id INT
);

INSERT INTO Movies (title, release_year, genre, language, duration_minutes, rating, director_id) VALUES
('Baahubali: The Beginning', 2015, 'Action', 'Telugu', 159, 8.1, 1),
('Baahubali: The Conclusion', 2017, 'Action', 'Telugu', 171, 8.2, 1),
('Ala Vaikunthapurramuloo', 2020, 'Drama', 'Telugu', 165, 7.3, 2),
('Pushpa: The Rise', 2021, 'Action', 'Telugu', 179, 7.6, 3),
('Bharat Ane Nenu', 2018, 'Political', 'Telugu', 173, 8.0, 4),
('Arjun Reddy', 2017, 'Romance', 'Telugu', 186, 8.5, 7),
('Gabbar Singh', 2012, 'Action', 'Telugu', 152, 7.2, 8),
('Nenokkadine', 2014, 'Thriller', 'Telugu', 170, 7.9, 5),
('Temper', 2015, 'Action', 'Telugu', 147, 7.4, 7),
('Atharintiki Daaredi', 2013, 'Comedy', 'Telugu', 180, 8.0, 2);


SELECT * FROM Movies WHERE release_year = 2015;
SELECT title , release_year  FROM Movies WHERE release_year > 2015;