CREATE TABLE title (
	emp_title_id VARCHAR(5),
	title TEXT NOT NULL,
	PRIMARY KEY (emp_title_id)
	);


CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(5),
	birth_date DATE NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	sex TEXT NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES title(emp_title_id)
	);


CREATE TABLE salary (
	emp_no INT,
	salary INT NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);


CREATE TABLE departments (
	dept_no VARCHAR(4),
	dept_name TEXT NOT NULL,
	PRIMARY KEY (dept_no)
	);
	
	
CREATE TABLE department_managers (
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
	

CREATE TABLE department_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR(5) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);