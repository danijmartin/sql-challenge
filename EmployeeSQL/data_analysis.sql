-- Join Employees and Salaries to see salaries for each person:

SELECT emp_no, last_name, first_name, gender, salary
FROM Employees
JOIN Salaries
USING (emp_no);

