CREATE DATABASE TFIMovies;

USE TFIMovies;

-- creating tables
CREATE TABLE Movies (
movie_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
release_year YEAR NOT NULL,
genre VARCHAR(100) NOT NULL,
language VARCHAR(50) DEFAULT 'Telugu',
duration_minutes INT NOT NULL,
rating decimal(3,1),
director_id INT,
FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

CREATE TABLE Directors (
director_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
dod DATE,
nationality VARCHAR(100),
awards TEXT
);


CREATE TABLE Actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    dob DATE,
    gender CHAR(1),
    nationality VARCHAR(100),
    debut_year YEAR
);


CREATE TABLE Movie_Cast (
    movie_id INT,
    actor_id INT,
    role_name VARCHAR(255),
    screen_time_minutes INT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id),
    PRIMARY KEY (movie_id, actor_id)
);


CREATE TABLE Box_Office (
    movie_id INT,
    budget BIGINT,
    box_office_collection BIGINT,
    domestic_collection BIGINT,
    international_collection BIGINT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    PRIMARY KEY (movie_id)
);

CREATE TABLE Movies (
movie_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
release_year YEAR NOT NULL,
genre VARCHAR(100) NOT NULL,
language VARCHAR(50) DEFAULT 'Telugu',
duration_minutes INT NOT NULL,
rating decimal(3,1),
director_id INT,
FOREIGN KEY (director_id) REFERENCES Directors(director_id)
);

show tables;

-- INSERTING THE VALUES

-- directors

INSERT INTO Directors (name, dod, nationality, awards) VALUES
('S. S. Rajamouli', NULL, 'Indian', 'Padma Shri, Nandi Award'),
('Trivikram Srinivas', NULL, 'Indian', 'Nandi Award, SIIMA Award'),
('Sukumar', NULL, 'Indian', 'Filmfare Award, Nandi Award'),
('Koratala Siva', NULL, 'Indian', NULL),
('Boyapati Srinu', NULL, 'Indian', 'Nandi Award'),
('Gautham Menon', NULL, 'Indian', 'Filmfare Award'),
('Puri Jagannadh', NULL, 'Indian', 'Nandi Award'),
('Harish Shankar', NULL, 'Indian', NULL),
('V. V. Vinayak', NULL, 'Indian', 'Nandi Award'),
('Srinu Vaitla', NULL, 'Indian', NULL);


DESCRIBE Directors;

SELECT * FROM Directors;

-- Movies

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

-- Actors

INSERT INTO Actors (name, dob, gender, nationality, debut_year) VALUES
('Prabhas', '1979-10-23', 'M', 'Indian', 2002),
('Allu Arjun', '1983-04-08', 'M', 'Indian', 2003),
('Mahesh Babu', '1975-08-09', 'M', 'Indian', 1999),
('Anushka Shetty', '1981-11-07', 'F', 'Indian', 2005),
('Rashmika Mandanna', '1996-04-05', 'F', 'Indian', 2016),
('Vijay Deverakonda', '1989-05-09', 'M', 'Indian', 2011),
('Nithya Menen', '1988-04-08', 'F', 'Indian', 2006),
('Pawan Kalyan', '1971-09-02', 'M', 'Indian', 1996),
('Ram Charan', '1985-03-27', 'M', 'Indian', 2007),
('Samantha Ruth Prabhu', '1987-04-28', 'F', 'Indian', 2010);

-- movies cast

INSERT INTO Movie_Cast (movie_id, actor_id, role_name, screen_time_minutes) VALUES
(1, 1, 'Amarendra Baahubali', 120),
(1, 4, 'Devasena', 45),
(2, 1, 'Mahendra Baahubali', 125),
(2, 4, 'Devasena', 50),
(3, 2, 'Bantu', 140),
(4, 5, 'Srivalli', 90),
(5, 3, 'Bharat', 160),
(6, 6, 'Arjun Reddy', 170),
(7, 8, 'Gabbar Singh', 120),
(10, 10, 'Anasuya', 80);

-- BOX-OFFICE

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

SELECT * FROM Movies;
SELECT * FROM Box_Office;
SELECT * FROM Actors;
SELECT * FROM Movie_Cast;

SELECT name, dob FROM Actors;

