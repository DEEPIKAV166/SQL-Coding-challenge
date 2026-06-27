-- Procedures & Views

USE employees;

-- Stored Procedure

Delimiter $$
CREATE PROCEDURE Details(IN e_id INT,OUT e_name VARCHAR(50),OUT Dept VARCHAR(50),OUT SAl INT)
BEGIN
SELECT Emp_Name,Department,Salary FROM emp WHERE Emp_ID=e_id;
END $$
Delimiter ;

SELECT * FROM emp;
call Details(101,@e_name,@dept,@sal);


-- VIEW 

CREATE VIEW Empdet AS
SELECT Emp_Name,Department FROM emp;

SELECT * FROM Empdet;

USE employee;

CREATE VIEW EmpDetls AS
SELECT e.employee_name,d.department_name,e.salary FROM employees e
JOIN departments d
ON e.department_id=d.department_id;

SELECT  * FROM EmpDetls;
