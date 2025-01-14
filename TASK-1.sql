/*
Create a table named books with the following columns 
book_id, title, author, genre, price, published-year , m_stock

->insert few random values 
-> Display title , pushished_year columns
*/

Create DATABASE BOOK;
Create TABLE Books (
book_id INT,
title VARCHAR(225),
author VARCHAR(100),
genre VARCHAR(500),
price FLOAT,
published_year YEAR,
stock INT
);

INSERT INTO Books (book_id, title, author, genre, price, published_year, stock) VALUES
(1, 'I Love You', 'Narasimha', 'Love, Sad', 300.58, 2024, 50),
(2, 'The Art of Coding', 'James Smith', 'Education, Technology', 450.75, 2021, 120),
(3, 'Mysteries of the Universe', 'Jane Doe', 'Science, Mystery', 600.00, 2020, 30),
(4, 'Cooking Made Easy', 'Rachel Green', 'Cooking, Lifestyle', 250.00, 2023, 200),
(5, 'The Silent Observer', 'Arjun Reddy', 'Thriller, Crime', 320.99, 2022, 70),
(6, 'Adventures of the Mind', 'Sophia Brown', 'Philosophy, Self-Help', 400.00, 2019, 90),
(7, 'The Eternal Bond', 'Meera Sharma', 'Romance, Drama', 350.50, 2024, 60),
(8, 'AI Revolution', 'John Connor', 'Technology, Future', 500.00, 2025, 40);

SELECT * FROM books;

SELECT title, published_year FROM books;