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
USING (emp_no);

-- Same query as above restricted to find the last/current manager:

SELECT dept_no, dept_name, emp_no, last_name, first_name
FROM Dept_manager
JOIN Departments
USING (dept_no)
JOIN Employees
USING (emp_no)
WHERE to_date = '9999-01-01';

-- (Inner) Join Employees, Dept_emp, and Departments tables to query employee departments:

SELECT emp_no, last_name, first_name, dept_name
FROM Employees
JOIN Dept_emp
USING (emp_no)
JOIN Departments
USING (dept_no)
ORDER BY emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" 
-- and last names begin with "B."

SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules' AND last_name like 'B%'
ORDER BY last_name;

-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.

SELECT emp_no, last_name, first_name, dept_name
FROM Dept_emp
JOIN Departments
USING (dept_no)
JOIN Employees
USING (emp_no)
WHERE dept_name = 'Sales'
ORDER BY emp_no





