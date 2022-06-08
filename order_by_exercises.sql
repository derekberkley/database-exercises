use employees;

# -------------------
# Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
# -------------------


# Part One
# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# Find all employees whose last name starts with 'E' — 7,330 rows.
SELECt * FROM employees WHERE last_name LIKE 'E%';
# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees where last_name LIKE '%q%';


# Part Two
# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
                                                                                                                                                                                        SELECT * FROM employees WHERE (first_name = 'Irena'
                                                                                                                                                                                                                   OR first_name = 'Vidya'
                                                                                                                                                                                                                   OR first_name = 'Maya');
# Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');
# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE (last_name LIKE 'E%'
    OR last_name LIKE '%E');
# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE (last_name LIKE 'E%'
                          AND last_name LIKE '%E');
# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE (last_name LIKE '%Q%'
    AND last_name NOT LIKE '%qu%');


# Modify your first query to order by first name. The first result should be Irena Pelz
# and the last result should be Vidya Awdeh.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

# Update the query to order by first name and then last name. The first result should now be
# Irena Acton and the last should be Vidya Zweizig.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

# Change the ORDER BY clause so that you order by last name before first name. Your first result should
# still be Irena Acton but now the last result should be Maya Zyda.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

# Update your queries for employees with 'e' in their last name to sort the results by their employee number.
# Make sure the employee numbers are in the correct order.
SELECT first_name, last_name, emp_no
FROM employees
WHERE first_name Like ('%e%')
ORDER BY emp_no ASC;

# Now reverse the sort order for both queries and compare results.
SELECT first_name, last_name, emp_no
FROM employees
WHERE first_name Like ('%e%')
ORDER BY emp_no DESC;
