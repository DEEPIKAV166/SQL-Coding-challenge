--  Functions

USE student;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    join_date DATE
);

INSERT INTO students VALUES
(1, 'arun', 'kumar', 'arun@gmail.com', '2020-06-15'),
(2, 'PRIYA', 'sharma', 'priya@gmail.com', '2021-08-20'),
(3, 'Karthik', 'RAJ', 'karthik@gmail.com', '2019-01-10'),
(4, 'divya', 'menon', 'divya@gmail.com', '2022-03-05');

SELECT * FROM students;

SELECT first_name,UPPER(first_name) Upper_Name FROM students;

SELECT first_name,LOWER(first_name) Low_Name FROM students;

SELECT first_name,SUBSTRING(first_name,1,3) Short_name FROM students;

SELECT CONCAT(first_name," ",last_name) Full_Name FROM students;

 -- FUNCTION

Delimiter $$
CREATE FUNCTION full_name(fname varchar(50),lname varchar(50))
RETURNS varchar(50)
DETERMINISTIC
BEGIN
DECLARE result varchar(50);
SET result = CONCAT(fname, ' ', lname);
RETURN result;
END $$
Delimiter ;

SELECT full_name(first_name, last_name) AS full_name
FROM students;

-- Date Functions

SELECT First_Name,YEAR(join_date) JOIN_YEAR FROM students;

SELECT First_Name,join_date,DATEDIFF(NOW(),join_date) DATEDIFF FROM students;

SELECT first_name,ROUND(DATEDIFF(NOW(), join_date)/365, 2) AS tenure_years
FROM students;









