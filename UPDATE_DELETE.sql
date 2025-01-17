/*
UPDATE DELETE
*/
SELECT * FROM Movies;

SET SQL_SAFE_UPDATES = 0;

UPDATE Movies SET rating = 9.0 WHERE title = 'Arjun Reddy';


-- delete

CREATE TABLE Icecream 
	(Flavaor VARCHAR(10) ,Price INT);
    
    
INSERT INTO Icecream (Flavaor,Price) VALUES('vanila',120),('butter' ,150),('STawBerry' , 100);


SELECT * FROM Icecream;

DELETE FROM Icecream WHERE Flavaor = 'vanila';

SELECT * FROM Icecream;

