CREATE TABLE departments (
    dept_nom varchar   NOT NULL,
    dept_name varchar   NOT NULL,
	primary key (dept_no)
);
CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
	emp_no int  NOT NULL,
	primary key (emp_no)
	FOREIGN KEY(dept_no) REFERENCES departmnets (dept_no);
);
CREATE TABLE dept_emp (
	emp_no int  NOT NULL,
	dept_no varchar   NOT NULL,
	primary key (emp_no, dept_no)
	FOREIGN KEY(dept_no) REFERENCES departmnets (dept_no);
	FOREIGN KEY(emp_no) REFERENCES dept_manager (emp_no);
);
CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
	primary key (title)
);
CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
	birth_date varchar   NOT NULL,
	first_name varchar   NOT NULL,
	last_name varchar   NOT NULL,
	sex varchar   NOT NULL,
	hire_date varchar  NOT NULL,
	primary key (emp_no)
);
CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
	primary key (emp_no)
);
select * from dept_emp