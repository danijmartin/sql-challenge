-- Join Employees and Salaries to see salaries for each person:

SELECT emp_no, last_name, first_name, gender, salary
FROM Employees
JOIN Salaries
USING (emp_no);

-- Find employees hired in 1986

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';