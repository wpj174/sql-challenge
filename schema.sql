CREATE TABLE title (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

CREATE TABLE employee (
	emp_no INT PRIMARY KEY,
	title_id VARCHAR,
	birth_date date,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date date,
	FOREIGN KEY (title_id) REFERENCES title(title_id)
);

CREATE TABLE department (
	dept_id VARCHAR PRIMARY KEY,
	dept VARCHAR
);

CREATE TABLE dept_mgr (
	dept_id VARCHAR,
	emp_no INT,
	PRIMARY KEY (dept_id, emp_no),
	FOREIGN KEY (dept_id) REFERENCES department(dept_id),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INT,
	dept_id VARCHAR,
	PRIMARY KEY (emp_no, dept_id),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

CREATE TABLE salary (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);
