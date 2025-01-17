/*
GROUP BY
*/

USE tfimovies;
SHOW TABLES FROM tfimovies;

SELECT * FROM Movies;

INSERT INTO Movies (title, release_year, genre, language, duration_minutes, rating, director_id) VALUES
('i love you', 2015, 'Action', 'Hindi', 159, 8.1, 1),('i hate you', 2015, 'Action', 'Hindi', 125, 5.1, 1);


SELECT * FROM box_office;

INSERT INTO Box_Office (movie_id, budget, box_office_collection, domestic_collection, international_collection) VALUES
(11, 18000000, 600000, 4000000, 2000000),
(12, 2500000, 1000000, 6000000, 4000000);

SELECT language, SUM(box_office_collection) AS toal_collections FROM Movies m JOIN Box_Office b ON m.movie_id=b.movie_id GROUP BY language ;


/*
HAVING 
 */
SELECT language, SUM(box_office_collection) AS toal_collections FROM Movies m JOIN Box_Office b ON m.movie_id=b.movie_id GROUP BY language HAVING SUM(box_office_collection) > 500000000;