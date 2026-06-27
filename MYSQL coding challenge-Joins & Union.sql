-- JOINS

CREATE DATABASE STUJOINS;
USE STUJOINS;

CREATE TABLE Students (
    Student_ID INT,
    Student_Name VARCHAR(50)
);

INSERT INTO Students VALUES
(1,'John'),
(2,'Mary'),
(3,'David'),
(4,'Sarah'),
(5,'Alex');

CREATE TABLE Courses (
    Course_ID INT,
    Course_Name VARCHAR(50)
);

INSERT INTO Courses VALUES
(101,'SQL'),
(102,'Python'),
(103,'Power BI'),
(104,'Excel');

CREATE TABLE Enrollments (
    Student_ID INT,
    Course_ID INT
);

INSERT INTO Enrollments VALUES
(1,101),
(1,102),
(2,103),
(3,101),
(4,104);

SELECT * FROM STUDENTS;
SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;

-- INNER JOIN

SELECT S.STUDENT_NAME,C.COURSE_NAME FROM STUDENTS S
INNER JOIN enrollments e 
ON s.student_id=e.student_id
INNER JOIN courses c
ON c.course_id=e.course_id;

-- LEFT & RIGHT JOIN

SELECT S.STUDENT_NAME,C.COURSE_NAME FROM STUDENTS S
LEFT JOIN enrollments e 
ON s.student_id=e.student_id
LEFT JOIN courses c
ON e.course_id = c.course_id;

SELECT S.STUDENT_NAME,C.COURSE_NAME FROM STUDENTS S
RIGHT JOIN enrollments e 
ON s.student_id=e.student_id
RIGHT JOIN courses c
ON e.course_id = c.course_id;

-- UNION vs UNION ALL
-- Create Students Table

CREATE TABLE current_students (
    student_id INT,
    student_name VARCHAR(50)
);

-- Insert Data

INSERT INTO current_students VALUES
(1, 'Arun'),
(2, 'Priya'),
(3, 'Karthik');

-- Create Old Students Table

CREATE TABLE old_students (
    student_id INT,
    student_name VARCHAR(50)
);

-- Insert Data

INSERT INTO old_students VALUES
(2, 'Priya'),
(4, 'Divya'),
(5, 'Rahul');

SELECT * FROM current_students
UNION
SELECT * FROM old_students;

SELECT * FROM current_students
UNION ALL
SELECT * FROM old_students;





