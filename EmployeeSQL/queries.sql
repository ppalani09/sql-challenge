-- Question 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary
FROM employees
LEFT JOIN salary ON employees.emp_no = salary.emp_no;

-- Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question 3
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_no, departments.dept_name
FROM department_managers
LEFT JOIN employees ON department_managers.emp_no = employees.emp_no
LEFT JOIN departments ON department_managers.dept_no = departments.dept_no;

-- Question 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
LEFT JOIN employees ON department_employees.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = department_employees.dept_no


-- Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND LEFT(last_name, 1) = 'B';

-- Question 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
LEFT JOIN employees ON department_employees.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = department_employees.dept_no
WHERE dept_name = 'Sales'';

-- Question 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM department_employees
LEFT JOIN employees ON department_employees.emp_no = employees.emp_no
LEFT JOIN departments ON departments.dept_no = department_employees.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- Question 8
SELECT last_name,
COUNT(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
