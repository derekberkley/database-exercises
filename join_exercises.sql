use employees;

# TODO: Using the example in the Associative Table Joins section as a guide, write a query that shows each
#  department along with the name of the current manager for that department.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS Department_Name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY  Department_Name ASC;

# TODO: Find the name of all departments currently managed by women.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, d.dept_name AS Department_Name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY  Department_Name ASC;

# TODO: Find the current titles of employees currently working in the Customer Service department.
SELECT t.title as title, Count(*) as Total
FROM employees as e
         JOIN titles as t
              ON t.emp_no = de.emp_no
         JOIN dept_emp as de
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY  Department_Name ASC;