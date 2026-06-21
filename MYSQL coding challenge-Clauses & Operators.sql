-- Clauses & Operators
CREATE DATABASE STU;
USE STU;

CREATE TABLE Students (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Department VARCHAR(50),
    Course VARCHAR(20),
    GPA DECIMAL(3,1),
    Email VARCHAR(100)
);

INSERT INTO Students VALUES
(1, 'John', 'Computer Science', 'BCA', 3.5, 'john@gmail.com'),
(2, 'Mary', 'Information Technology', 'BSc', 2.8, NULL),
(3, 'David', 'Computer Science', 'BCA', 3.9, 'david@gmail.com'),
(4, 'Sarah', 'Mathematics', 'BCom', 2.2, NULL),
(5, 'Alex', 'Information Technology', 'BSc', 3.1, 'alex@gmail.com'),
(6, 'Emma', 'Mathematics', 'BA', 3.7, 'emma@gmail.com'),
(7, 'Chris', 'Computer Science', 'BCA', 2.5, NULL),
(8, 'Sophia', 'Physics', 'BSc', 3.3, 'sophia@gmail.com');

SELECT * FROM STUDENTS;

SELECT DISTINCT DEPARTMENT FROM STUDENTS;

SELECT * FROM STUDENTS WHERE EMAIL IS NULL;

SELECT * FROM STUDENTS WHERE EMAIL IS NOT NULL;

SELECT * FROM STUDENTS WHERE COURSE IN("BCA","BSC");

SELECT * FROM STUDENTS WHERE GPA BETWEEN 3.0 AND 4.0;

SELECT * FROM STUDENTS WHERE GPA NOT BETWEEN 3.0 AND 4.0;
