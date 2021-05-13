-- Creating tables to hold csv data
--dates are initially input as varchar to match csv formatting

CREATE TABLE Employees (
    emp_no integer NOT NULL PRIMARY KEY,
    birth_date varchar(10) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    gender char(1) NOT NULL,
    hire_date varchar(10) NOT NULL
);

CREATE TABLE Titles (
    emp_no integer NOT NULL,
    title varchar(50) NOT NULL,
    from_date varchar(10) NOT NULL,
    to_date varchar(10) NOT NULL,
	PRIMARY KEY (emp_no, title),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date varchar(10) NOT NULL,
    to_date varchar(10) NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Departments (
    dept_no char(4) NOT NULL PRIMARY KEY,
    dept_name varchar(50) NOT NULL
);

CREATE TABLE Dept_emp (
    emp_no integer NOT NULL,
    dept_no char(4) NOT NULL,
    from_date varchar(10) NOT NULL,
    to_date varchar(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

CREATE TABLE Dept_manager (
    dept_no char(4) NOT NULL,
    emp_no integer NOT NULL,
    from_date varchar(10) NOT NULL,
    to_date varchar(10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);