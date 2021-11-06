-- Queries

-- 1. List the following details of each employee: employee number, last name, first name, sex,
-- and salary.
select
	id as "Employee Number",
	last_name as "Last Name",
	first_name as "First Name",
	sex as "Sex",
	salary as "Salary"
from employee
join salary on employee.id = salary.emp_id;


-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employee
where date_part('year', hire_date) = 1986;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

