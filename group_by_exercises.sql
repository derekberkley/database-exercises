use employees;

# TODO: In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
from employees.titles;

# TODO: Find your query for employees whose last names start and end with 'E'. Update the
#  query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name
FROM employees
WHERE (last_name LIKE 'E%'
    AND last_name LIKE '%E')
GROUP BY last_name;

# TODO: Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
SELECT CONCAT(first_name, ' ', last_name)
as fullname
FROM employees
WHERE (last_name LIKE 'E%'
    AND last_name LIKE '%E')
GROUP BY fullname;

# TODO: Find the unique last names with a 'q' but not 'qu'.
SELECT last_name
FROM employees
WHERE (last_name LIKE '%Q%'
    AND last_name NOT LIKE '%qu%')
GROUP BY last_name;

# TODO: Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(last_name), last_name
FROM employees
WHERE (last_name LIKE '%Q%'
    AND last_name NOT LIKE '%qu%')
GROUP BY last_name;

# TODO: Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each
#  gender with those names.
# SELECT COUNT(*), gender, first_name
# FROM employees
# WHERE first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name;

SELECT COUNT(*), gender, first_name
FROM employees
WHERE (gender = 'M' AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'))
OR (gender = 'F' AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya'))
GROUP BY first_name, gender
ORDER BY gender, first_name;
