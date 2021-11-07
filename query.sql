-- Queries

-- 1. List the following details of each employee: employee number, last name, first name, sex,
--    and salary.
SELECT
	employee.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	sex AS "Sex",
	salary AS "Salary"
FROM employee
INNER JOIN salary on employee.emp_no = salary.emp_no;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	hire_date AS "Hire Date"
FROM employee
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


-- 3. List the manager of each department with the following information: department number,
--    department name, the manager's employee number, last name, first name.
SELECT
	dept_mgr.dept_id AS "Department Number",
	dept AS "Department Name",
	dept_mgr.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name"
FROM dept_mgr
INNER JOIN employee ON dept_mgr.emp_no = employee.emp_no
INNER JOIN department ON dept_mgr.dept_id = department.dept_id;


-- 4. List the department of each employee with the following information: employee number,
--    last name, first name, and department name.
SELECT
	employee.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	dept_emp.dept_id
FROM employee
INNER JOIN dept_emp ON dept_emp.emp_no = employee.emp_no
INNER JOIN department ON department.dept_id = dept_emp.dept_id;

-- There is a problem with the data: the dept_emp table has ~ 30k records with duplicated
-- emp_no and different dept_id's.  As if the employees were transferred to another department,
-- their old dept_emp record wasn't deleted.


-- 5. List first name, last name, and sex for employees whose first name is "Hercules"
--    and last names begin with "B."
SELECT
	first_name AS "First Name",
	last_name AS "Last Name",
	sex AS "Sex"
FROM employee
WHERE
	first_name = 'Hercules'
	AND
	last_name LIKE 'B%';


-- 6. List all employees in the Sales department, including their employee number, last name,
--    first name, and department name.
SELECT
	dept_emp.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	dept AS "Department Name"
FROM dept_emp
INNER JOIN employee ON employee.emp_no = dept_emp.emp_no
INNER JOIN department ON department.dept_id = dept_emp.dept_id
WHERE dept = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number,
--    last name, first name, and department name.
SELECT
	dept_emp.emp_no AS "Employee Number",
	last_name AS "Last Name",
	first_name AS "First Name",
	dept AS "Department Name"
FROM dept_emp
INNER JOIN employee ON employee.emp_no = dept_emp.emp_no
INNER JOIN department ON department.dept_id = dept_emp.dept_id
WHERE dept_emp.dept_id IN ('d005', 'd007');


-- 8. In descending order, list the frequency count of employee last names, i.e., how many
--    employees share each last name.

