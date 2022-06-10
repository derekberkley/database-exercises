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
SELECT t.title as Title, Count(*) as Total
FROM departments as d
    JOIN dept_emp as de
        ON d.dept_no = de.dept_no
        JOIN titles as t
            on de.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01' AND d.dept_no = 'd009' and t.to_date = '9999-01-01'
Group By Title
ORDER BY Total DESC;

# TODO: Find the current salary of all current managers.
SELECT d.dept_name as Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager, s.salary as Salary
FROM dept_manager as dm
    JOIN salaries as s
        ON s.emp_no = dm.emp_no
    JOIN departments as d
        ON dm.dept_no = d.dept_no
    JOIN employees as e
    ON e.emp_no = dm.emp_no
WHERE s.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
# Group By Department_Manager
ORDER BY Department_Name ASC;