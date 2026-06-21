-- Constraints
-- PRIMARY KEY & FOREIGN KEY
CREATE DATABASE online_bookstore;
USE online_bookstore;

CREATE TABLE books(
book_id INT,
book_title VARCHAR(50),
author VARCHAR(50),
price INT
);

ALTER TABLE books
ADD primary key(BOOK_ID);

ALTER TABLE books
MODIFY COLUMN book_id DECIMAL(10,2);

ALTER TABLE books
MODIFY COLUMN book_id int;

ALTER TABLE books
MODIFY COLUMN price DECIMAL(10,2);

CREATE TABLE orders(
order_id int primary key,
customer_name varchar(50),
book_id int,
order_date date,
foreign key(book_id) references books(book_id)
);

ALTER TABLE books
ADD COLUMN ISBN BIGINT UNIQUE;

INSERT INTO BOOKS VALUES
(101,'The Alchemist','Paulo Coelho',499,9780062315007),
(102,'Atomic Habits','James Clear',699,9780735211292),
(103,'Rich Dad Poor Dad','Robert Kiyosaki',599,9781612680194),
(104,'Ikigai','Hector Garcia',450,9780143130727),
(105,'Think and Grow Rich','Napoleon Hill',550,9781585424337);
SELECT * FROM BOOKS;

INSERT INTO orders VALUES 
(1, 'John', 101, '2025-06-01'),
(2, 'Sarah', 103, '2025-06-02'),
(3, 'David', 102, '2025-06-03'),
(4, 'Emma', 105, '2025-06-04'),
(5, 'Michael', 104, '2025-06-05');

SELECT * FROM ORDERS;
SELECT * FROM BOOKS;

DELETE FROM ORDERS WHERE CUSTOMER_NAME="EMMA";
DELETE FROM BOOKS WHERE BOOK_TITLE="Rich Dad Poor Dad";
DELETE FROM ORDERS WHERE ORDER_DATE>"2025-06-02";

TRUNCATE TABLE ORDERS;








