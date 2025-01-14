/*
Arithematic operations
*/

CREATE DATABASE Collections;
CREATE TABLE Box_Office (
    movie_id INT PRIMARY KEY,
    budget BIGINT,
    box_office_collection BIGINT,
    domestic_collection BIGINT,
    international_collection BIGINT
);


INSERT INTO Box_Office (movie_id, budget, box_office_collection, domestic_collection, international_collection) VALUES
(1, 1800000000, 6000000000, 4000000000, 2000000000),
(2, 2500000000, 10000000000, 6000000000, 4000000000),
(3, 100000000, 3000000000, 2000000000, 1000000000),
(4, 170000000, 3500000000, 2500000000, 1000000000),
(5, 150000000, 3000000000, 2000000000, 1000000000),
(6, 40000000, 510000000, 400000000, 110000000),
(7, 30000000, 750000000, 500000000, 250000000),
(8, 60000000, 920000000, 700000000, 220000000),
(9, 50000000, 850000000, 600000000, 250000000),
(10, 25000000, 560000000, 420000000, 140000000);

SELECT * FROM Box_Office;

SELECT movie_id , box_office_collection - budget AS profit_or_loss FROM Box_Office;


-- Multiplications

SELECT movie_id, budget * 2 AS double_budget FROM Box_Office; 




/*
Comparison operators example : =,!=,>,<
*/

CREATE TABLE Movie (
movie_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
release_year YEAR NOT NULL,
genre VARCHAR(100) NOT NULL,
language VARCHAR(50) DEFAULT 'Telugu',
duration_minutes INT NOT NULL,
rating decimal(3,1),
director_id INT
);

INSERT INTO Movie (title, release_year, genre, language, duration_minutes, rating, director_id) VALUES
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


-- = equal
SELECT title, release_year  FROM Movie WHERE release_year = 2013;

-- != not equal
SELECT title , genre FROM Movie WHERE genre != 'Comedy';

-- >  Greter then
SELECT title ,duration_minutes FROM Movie WHERE duration_minutes > 150;

-- < less then
SELECT title , rating FROM Movie WHERE rating < 5.0;




