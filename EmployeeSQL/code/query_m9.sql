-- -- List the employee number, last name, first name, sex, and salary of each employee
-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM employees AS e
-- LEFT JOIN salaries AS s 
-- ON e.emp_no = s.emp_no
-- ORDER BY e.emp_no 

-- -- List the first name, last name, and hire date for the employees who were hired in 1986
-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
-- ORDER BY emp_no

-- -- List the manager of each department along with their department number, department name, employee number, last name, and first name
-- SELECT d.dept_no, d.dept_name, dma.emp_no, e.first_name, e.last_name
-- FROM departments AS d
-- JOIN dept_manager AS dma
-- ON d.dept_no = dma.dept_no
-- JOIN employees AS e
-- ON dma.emp_no = e.emp_no

-- -- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
-- SELECT d.dept_no, d.dept_name, dem.emp_no, e.last_name, e.first_name
-- FROM departments AS d
-- JOIN dept_emp AS dem
-- ON d.dept_no = dem.dept_no 
-- JOIN employees AS e
-- ON dem.emp_no = e.emp_no

-- -- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
-- SELECT first_name, last_name, sex
-- FROM employees
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

-- -- List each employee in the Sales department, including their employee number, last name, and first name
-- SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
-- FROM employees AS e, departments AS d
-- WHERE dept_name = 'Sales'

-- -- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
-- SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
-- FROM employees AS e, departments AS d
-- WHERE dept_name = 'Sales' OR dept_name = 'Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT last_name, COUNT(*) AS frequency_counts
FROM employees
GROUP BY last_name
ORDER BY frequency_counts DESC
