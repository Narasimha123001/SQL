CREATE DATABASE EXAMPLE;

USE EXAMPLE;

CREATE TABLE MOVIES(
	movie_id INT,
    movie_name VARCHAR(20),
    director_id INT
);

CREATE TABLE DIRECTOR(
	director_id Int,
    diect_name VARCHAR(15)
);
ALTER TABLE DIRECTOR CHANGE direct_name diect_name VARCHAR(15);


INSERT INTO MOVIES
(movie_id ,movie_name ,director_id) VALUE 
(1,'pushpa',104),
(2,'KGF',102),
(3,'RRR',101);

INSERT INTO DIRECTOR
(director_id , diect_name)value
(101,'ssrajamouli'),
(102,'Prasanth Neel'),
(109,'srinu');

-- INNER JOIN 

SELECT * FROM MOVIES m INNER JOIN DIRECTOR d ON m.director_id = d.director_id;
SELECT movie_name, diect_name FROM MOVIES m INNER JOIN DIRECTOR d ON m.director_id = d.director_id;

-- LEFT JOIN 

SELECT movie_name, diect_name FROM MOVIES m LEFT JOIN DIRECTOR d ON m.director_id = d.director_id;

-- right join

SELECT movie_name, diect_name FROM MOVIES m RIGHT JOIN DIRECTOR d ON m.director_id = d.director_id;

-- FULL JOIN

-- SELECT m.movie_name , d.diect_name FROM MOVIES m FULL JOIN DIRECTOR d ON m.director_id = d.director_id;

-- CROSS JOIN

SELECT movie_name , diect_name FROM MOVIES m CROSS JOIN DIRECTOR d;

SHOW TABLES ;

CREATE DATABASE UNIONTABLE;

use UNIONTABLE;

CREATE TABLE TELUGU_MOVIES(
	movie_id INT,
    movie_name VARCHAR(10),
    lang VARCHAR(10)
);

CREATE TABLE HINDI_MOVIES(
	movie_id INT,
    movie_name VARCHAR(10),
    lang VARCHAR(10)
);

INSERT INTO TELUGU_MOVIES (movie_id, movie_name, lang) VALUES
(1, 'RRR', 'Telugu'),
(2, 'Baahubali', 'Telugu'),
(3, 'Pushpa', 'Telugu');


INSERT INTO HINDI_MOVIES (movie_id, movie_name, lang) VALUES
(1, 'Dangal', 'Hindi'),
(2, 'PK', 'Hindi'),
(3, 'Sholay', 'Hindi');
INSERT INTO HINDI_MOVIES (movie_id, movie_name, lang) VALUES
(4, 'RRR', 'Telugu');
 
-- UNION -> not include duplicate
SELECT movie_name, lang FROM TELUGU_MOVIES
UNION
SELECT movie_name, lang FROM HINDI_MOVIES;

-- UNION ALL -> include duplicate
SELECT movie_name, lang FROM TELUGU_MOVIES
UNION ALL
SELECT movie_name, lang FROM HINDI_MOVIES;


