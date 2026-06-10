# SQL DDL Commands Assignment

## Overview

This assignment demonstrates the use of SQL Data Definition Language (DDL) commands such as CREATE, ALTER, RENAME, TRUNCATE, and DROP. 
The scenarios are based on a hospital management system where patient information is maintained in a database.

---

## SQL Question 1: CREATE Table

### Scenario

You are a data analyst at City Hospital. Management wants to create a new table to store patient details.

### Task

Create a table named `Patients` with the following fields:

* PatientID
* PatientName
* Age
* Gender
* AdmissionDate

### SQL Query

```sql
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(50),
    Age INT,
    Gender CHAR(10),
    AdmissionDate DATE
);
```

### Expected Output

A new table `Patients` is created successfully in the database.

---

## SQL Question 2: ALTER – Add Column

### Scenario

The hospital decides to store the doctor assigned to each patient.

### Task

Add a new column `DoctorAssigned` of type `VARCHAR(50)` to the `Patients` table.

### SQL Query

```sql
ALTER TABLE Patients
ADD DoctorAssigned VARCHAR(50);
```

### Expected Output

The `Patients` table now contains an additional column named `DoctorAssigned`.

---

## SQL Question 3: ALTER – Modify Column

### Scenario

Some patient names are longer than 50 characters.

### Task

Modify the `PatientName` column from `VARCHAR(50)` to `VARCHAR(100)`.

### SQL Query

```sql
ALTER TABLE Patients
MODIFY PatientName VARCHAR(100);
```

### Expected Output

The `PatientName` column now allows up to 100 characters.

---

## SQL Question 4: RENAME Table

### Scenario

For better clarity, the hospital wants to rename the table.

### Task

Rename the table `Patients` to `Patient_Info`.

### SQL Query

```sql
RENAME TABLE Patients TO Patient_Info;
```

### Expected Output

The table name is successfully changed to `Patient_Info`.

---

## SQL Question 5: TRUNCATE vs DROP

### Scenario

At year-end, all patient records need to be removed while keeping the table structure.
Later, the table itself must be deleted permanently.

### Task

### TRUNCATE Query

```sql
TRUNCATE TABLE Patient_Info;
```

### DROP Query

```sql
DROP TABLE Patient_Info;
```

### Expected Output

* `TRUNCATE` removes all records from the table while preserving the table structure.
* `DROP` permanently removes the table and its structure from the database.

---

## Key Concepts Covered

* CREATE TABLE
* ALTER TABLE ADD COLUMN
* ALTER TABLE MODIFY COLUMN
* RENAME TABLE
* TRUNCATE TABLE
* DROP TABLE

## Tools Used

* MySQL
* MySQL Workbench

## Learning Outcome

By completing this assignment, you will understand how to create, modify, rename, and delete database objects using SQL DDL commands.
