/*

ALTER

*/

CREATE DATABASE NOTHING;
USE NOTHING;

Create Table Student_details(
	std_id INT auto_increment PRImary Key,
    Std_name varchar(20),
    Cgpa_Marks float,
    Course VARCHAR(10)
);

Create Table Score_card(
	reg_no int primary KEy,
    std_id INt,
    Telugu float,
    hindi float,
    Social float,
    MAths float,
    Science float,
    Cgpa_Marks float,
    foreign key (std_id) references Student_details(std_id) ON UPDATE CASCADE
);

INSERT INTO Student_details (std_id, Std_name, Cgpa_Marks, Course) VALUES
(1, 'Rahul', 85.6, 'B.Sc'),
(2, 'Priya', 90.1, 'B.Tech'),
(3, 'Ankit', 80.0, 'B.Com'),
(4, 'Neha', 88.5, 'BBA'),
(5, 'Suresh', 95.0, 'M.Sc');

INSERT INTO Score_card (reg_no, std_id, Telugu, Hindi, Social, Maths, Science, Cgpa_Marks) VALUES
(101,1, 85.5, 78.0, 88.0, 90.5, 86.0, 85.6),
(102,2, 92.0, 84.5, 89.0, 95.0, 90.0, 90.1),
(113,3, 75.0, 80.0, 82.0, 78.0, 85.0, 80.0),
(145,4, 88.0, 86.5, 90.0, 91.0, 87.0, 88.5),
(158,5, 95.0, 92.0, 94.0, 98.0, 96.0, 95.0);


ALTER TABLE Student_details ADD rank_std Int;

SELECT * FROM Student_details;

ALTER TABLE Student_details MODIFY Cgpa_Marks INT;

ALTER TABLE Student_details DROP COLUMN rank_std;

SHOW TABLES;

RENAME TABLE score_card TO scores;

CREATE TABLE HIGH(std_is int);
INSERT INTO HIGH  (std_is) VALUES(15);
SELECT * FROM HIGH;
TRUNCATE TABLE HIGH;


DROP TABLE HIGH;

