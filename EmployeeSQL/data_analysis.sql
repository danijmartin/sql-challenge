-- Join Employees and Salaries to see salaries for each person:

SELECT emp_no, last_name, first_name, gender, salary
FROM Employees
JOIN Salaries
USING (emp_no);

-- Find employees hired in 1986:

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- (Inner) Join Employees, Dept_manager, and Departments tables to query manager information:

SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM Dept_manager
JOIN Departments
USING (dept_no)
JOIN Employees
USING (emp_no)

-- Same query as above restricted to find the last/current manager:

SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM Dept_manager
JOIN Departments
USING (dept_no)
JOIN Employees
USING (emp_no)
WHERE to_date = '9999-01-01'