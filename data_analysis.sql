-- List the employee number, last name, first name, sex, and 
-- salary of each employee.
SELECT employees.emp_no, first_name, last_name, sex, salary 
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
-- List the first name, last name, and hire date for 
-- the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
where hire_date like '%1986'
-- List the manager of each department along with their department number,
-- department name, employee number,last name, and first name.
SELECT employees.emp_no, first_name, last_name, dept_emp.dept_no, 
departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_nom
-- List the department number for each employee along with that employee’s
-- employee number,last name, first name, and department name.
SELECT employees.emp_no, first_name, last_name, dept_emp.dept_no, 
departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no = departments.dept_nom
-- List first name, last name, and sex of each employee whose first name is
-- Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees
where first_name = 'Hercules' and last_name like 'B%'
-- List each employee in the Sales department, including their employee number,
-- last name, and first name.
select emp_no, first_name, last_name
from employees
where emp_no in(
	(select emp_no
	from dept_emp
	where dept_no in(
		select dept_nom 
		from departments
		where dept_name = 'Sales')))
-- List each employee in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
select employees.emp_no, first_name, last_name, departments.dept_name
from employees
left join dept_emp
on employees.emp_no = dept_emp.emp_no
left join departments
on dept_emp.dept_no = departments.dept_nom
where employees.emp_no in(
	(select emp_no
	from dept_emp
	where dept_no in(
		select dept_nom 
		from departments
		where dept_name = 'Sales'
		or dept_name = 'Development')))
-- List the frequency counts, in descending order, of all the employee 
-- last names (that is, how many employees share each last name).
SELECT last_name, count(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" desc;