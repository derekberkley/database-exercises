use employees;

# -------------------
# TODO: Create a new file called order_by_exercises.sql and copy and paste the contents of your where_exercises.sql.
# -------------------
# -------------------
# TODO: Copy the order_by_exercises.sql script and save it as functions_exercises.sql.
# -------------------

# Part One
# TODO: Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
# TODO: Find all employees whose last name starts with 'E' — 7,330 rows.
SELECt * FROM employees WHERE last_name LIKE 'E%';
# TODO: Find all employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees where last_name LIKE '%q%';


# Part Two
# TODO: Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
                                                                                                                                                                                           SELECT * FROM employees WHERE (first_name = 'Irena'
                                                                                                                                                                                                                      OR first_name = 'Vidya'
                                                                                                                                                                                                                      OR first_name = 'Maya');
# TODO: Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE gender = 'M' AND (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya');
# TODO: Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE (last_name LIKE 'E%'
    OR last_name LIKE '%E');
# TODO: Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE (last_name LIKE 'E%'
                          AND last_name LIKE '%E');
# TODO: Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE (last_name LIKE '%Q%'
    AND last_name NOT LIKE '%qu%');


# TODO: Modify your first query to order by first name. The first result should be Irena Pelz
#  and the last result should be Vidya Awdeh.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC;

# TODO: Update the query to order by first name and then last name. The first result should now be
#  Irena Acton and the last should be Vidya Zweizig.
    SELECT first_name, last_name
  FROM employees
  WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  ORDER BY first_name ASC, last_name ASC;

# TODO: Change the ORDER BY clause so that you order by last name before first name. Your first result should
#  still be Irena Acton but now the last result should be Maya Zyda.
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC, first_name ASC;

# TODO: Update your queries for employees with 'e' in their last name to sort the results by their employee number.
    # Make sure the employee numbers are in the correct order.
        SELECT first_name, last_name, emp_no
  FROM employees
  WHERE first_name Like ('%e%')
  ORDER BY emp_no ASC;

# TODO: Now reverse the sort order for both queries and compare results.
SELECT first_name, last_name, emp_no
FROM employees
WHERE first_name Like ('%e%')
ORDER BY emp_no DESC;

# ---------------------------------------------------------------------
# TODO: Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and
#  last name together as a single column in your results.
SELECT first_name, last_name, CONCAT (first_name, ' ', last_name)
    AS fullname
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

# TODO: Find all employees born on Christmas — 842 rows.
SELECT first_name, last_name, birth_date
from employees
WHERE month(birth_date) = 12
and day(birth_date) = 25;

# TODO: Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT first_name, last_name, birth_date
from employees
WHERE (month(birth_date) = 12
  and day(birth_date) = 25)
AND year(hire_date) BETWEEN 1990 and 1999;

# TODO: Change the query for employees hired in the 90s and born on Christmas such that the first result
#  is the oldest employee who was hired last. It should be Khun Bernini.
SELECT first_name, last_name, birth_date, hire_date
from employees
WHERE (month(birth_date) = 12
    and day(birth_date) = 25)
  AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY birth_date ASC, hire_date desc;

# TODO: For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many
#  days they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT first_name, last_name, birth_date, hire_date, CONCAT(DATEDIFF(CURDATE(), hire_date), 'days')
    as daysHired
from employees
WHERE (month(birth_date) = 12
    and day(birth_date) = 25)
  AND year(hire_date) BETWEEN 1990 and 1999
ORDER BY birth_date ASC, hire_date desc;