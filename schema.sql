create table title (
	id varchar primary key,
	title varchar
);

create table employee (
	id integer primary key,
	title_id varchar,
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date date,
	foreign key (title_id) references title(id)
);

create table department (
	id varchar primary key,
	name varchar
);

create table department_manager (
	dept_id varchar,
	emp_id integer,
	primary key (dept_id, emp_id),
	foreign key (dept_id) references department(id),
	foreign key (emp_id) references employee(id)
);

create table department_employee (
	emp_id integer,
	dept_id varchar,
	primary key (emp_id, dept_id),
	foreign key (emp_id) references employee(id),
	foreign key (dept_id) references department(id)
);

create table salary (
	emp_id integer primary key,
	salary integer,
	foreign key (emp_id) references employee(id)
);
