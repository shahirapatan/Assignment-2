CREATE DATABASE company_id;
USE company_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    designation VARCHAR(50),
    salary INT
);
INSERT INTO employees VALUES
(101, 'Ramesh', 28, 'Male', 'IT', 'Software Engineer', 45000),
(102, 'Ramya', 30, 'Female', 'HR', 'HR Manager', 50000),
(103, 'Arjun', 26, 'Male', 'IT', 'Developer', 40000),
(104, 'sonam', 32, 'Female', 'Finance', 'Accountant', 48000),
(105, 'sana', 29, 'Male', 'Sales', 'Sales Executive', 42);

SELECT * FROM employees;
SELECT * FROM employees
WHERE department = 'IT' AND salary > 42000;

SELECT * FROM employees
WHERE department = 'HR' OR department = 'Finance';

SELECT * FROM employees
WHERE NOT department = 'IT';

SELECT * FROM employees
ORDER BY salary DESC;

SELECT * FROM employees
WHERE emp_name LIKE 'M%';
SELECT * FROM employees
WHERE department LIKE '%IT%';