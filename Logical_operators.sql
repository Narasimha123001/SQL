/*
	Logical operators example
*/
USE TFIMovies;
SHOW TABLES;


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

USE Collections;
SELECT * FROM Movies;

-- AND operater
SELECT title, release_year, language FROM Movies WHERE release_year = 2012 AND genre = 'Action';


-- OR 

SELECT * FROM Movie WHERE  genre = 'Drama' OR rating > 7.5;

-- NOT 

SELECT title , genre ,release_year  FROM Movie WHERE NOT  release_year = 2012;


-- In

SELECT title FROm Movie WHERE genre IN ('Drama','Political');


-- between
SELECT title , release_year From Movies WHERE  release_year BETWEEN 2015 AND 2020;

-- like

SELECT * FROM Movies WHERE title LIKE 'Baahu%';
SELECT * FROM Movies WHERE title LIKE '%eddy';
SELECT * FROM Movies WHERE title LIKE '%shp%';
SELECT * FROM Movies WHERE title LIKE 'Arju_ Reddy';


-- order by ASC and desc

SELECT * FROM Movies ORDER BY release_year ASC;
SELECT * FROm Movies ORDER BY release_year DESC;

-- limit 

SELECT * FROM Movies LIMIT 5;