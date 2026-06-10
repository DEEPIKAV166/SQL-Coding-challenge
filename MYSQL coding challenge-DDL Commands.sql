-- Coding Challenge DDL Commands

create database city_hospital;
use city_hospital;

-- CREATE Table
create table patients(
patient_id int,
patient_name varchar(30),
age int,
gender char(10),
admission_date date
);

-- ALTER – Add Column
alter table patients
add column doctorassigned varchar(50);

-- ALTER – Modify Column
alter table patients
modify column doctorassigned varchar(100);

-- RENAME Table
rename table patients to patient_info;

-- TRUNCATE & DROP
truncate table patient_info;
drop table patient_info;
drop database city_hospital;

















