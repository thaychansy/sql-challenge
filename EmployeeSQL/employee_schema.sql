DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;

/*
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM departments;
*/

/* PSQL Tool script to import CSV files from absoute path on local drive for MAC. 
\COPY departments FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/departments.csv' DELIMITER ',' CSV HEADER;
\COPY titles FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/titles.csv' DELIMITER ',' CSV HEADER;
\COPY employees FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/employees.csv' DELIMITER ',' CSV HEADER;
\COPY dept_emp FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/dept_emp.csv' DELIMITER ',' CSV HEADER;
\COPY dept_manager FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/dept_manager.csv' DELIMITER ',' CSV HEADER;
\COPY salaries FROM '/Users/thaychansy/Documents/sql-challenge/EmployeeSQL/data/salaries.csv' DELIMITER ',' CSV HEADER;
*/

/* PSQL Tool script to import CSV files from absoute path on local drive for Windows. 
\COPY departments FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\departments.csv' DELIMITER ',' CSV HEADER;
\COPY titles FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\titles.csv' DELIMITER ',' CSV HEADER;
\COPY employees FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\employees.csv' DELIMITER ',' CSV HEADER;
\COPY dept_emp FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\dept_emp.csv' DELIMITER ',' CSV HEADER;
\COPY dept_manager FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\dept_manager.csv' DELIMITER ',' CSV HEADER;
\COPY salaries FROM 'C:\Users\thayc\Documents\sql-challenge\EmployeeSQL\data\salaries.csv' DELIMITER ',' CSV HEADER;
*/

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yaQ5TG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "dept_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(10)   NOT NULL,
    "title" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title_id" VARCHAR(10)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(25)   NOT NULL,
    "last_name" VARCHAR(25)   NOT NULL,
    "sex" CHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(10)   NOT NULL,
    "emp_no" int   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");