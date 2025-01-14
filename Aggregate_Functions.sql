/*
	Aggregate Function:
*/

USE TFIMovies;

SHOW TABLES;

SELECT * FROM box_office;

-- Count 
SELECT COUNT(*) FROM Movies;
-- 10

-- MAX
SELECT MAX(budget) FROM box_office;
-- 2500000000

-- MIN 
SELECT MIN(rating) FROM Movies;
-- 7.2

-- SUM
SELECT SUM(budget) FROM  box_office;
-- 52468

-- AVg
SELECT AVG(rating) FROM Movies;
-- 7.82000

