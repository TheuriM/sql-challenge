--Creating employee table

CREATE TABLE employees (
    emp_no INT PRIMARY KEY,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender CHAR(5) NOT NULL,
    hire_date DATE NOT NULL
);

SELECT * FROM EMPLOYEES

-- Creating titles table
	
CREATE TABLE titles (
    title_id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

SELECT * FROM titles;

-- Creating departments table
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(40) NOT NULL UNIQUE
);
SELECT * FROM departments;

--Creating the dept_emp table

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no CHAR(4),
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

--Creating emp_title table
CREATE TABLE emp_title (
    emp_no INT,
    title_id INT,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    PRIMARY KEY (emp_no, title_id, from_date),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (title_id) REFERENCES titles(title_id)
);
SELECT * FROM emp_title;

--Importing data

COPY employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
FROM 'C:\\Users\\TheuriM\\BootCamp\\Challenges\\sql-challenge\\EmployeeSQL\\Starter Code\\employees.csv'
DELIMITER ',' 
CSV HEADER;

COPY employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
FROM 'C:\\Users\\TheuriM\\BootCamp\\Challenges\\sql-challenge\\EmployeeSQL\\Starter Code\\employees.csv'
DELIMITER ',' 
CSV HEADER;

\copy employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
FROM 'C:\\Users\\TheuriM\\BootCamp\\Challenges\\sql-challenge\\EmployeeSQL\\Starter Code\\employees.csv'
DELIMITER ',' 
CSV HEADER;









