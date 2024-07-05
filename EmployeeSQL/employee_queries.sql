SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM titles;
SELECT * FROM departments;

SELECT e.first_name, e.last_name, d.dept_no
FROM employees as e
INNER JOIN dept_emp as d
ON e.emp_no = d.emp_no;

SELECT e.first_name, e.last_name, t.title
FROM employees as e
INNER JOIN titles as t
ON e.emp_title_id = t.title_id;

SELECT count(e.emp_no), t.title
FROM employees AS e
INNER JOIN titles AS t 
ON e.emp_title_id = t.title_id
GROUP BY t.title;


-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM employees AS e
INNER JOIN salaries AS s
ON e.emp_no = s.emp_no;



