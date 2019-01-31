use employees;

select * from employees.dept_manager;

-- shows each department along with the name of the current manager for that department.

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM employees
JOIN dept_manager
  on dept_manager.emp_no = employees.emp_no
JOIN departments
  on departments.dept_no = dept_manager.dept_no
  WHERE dept_manager.to_date LIKE '9999-%'
  ORDER BY departments.dept_name;


  --Find the name of all departments currently managed by women.
  SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM employees
JOIN dept_manager
  on dept_manager.emp_no = employees.emp_no
JOIN departments
  on departments.dept_no = dept_manager.dept_no
  WHERE dept_manager.to_date LIKE '9999-%'
  AND gender = 'F'
  ORDER BY departments.dept_name;


-- Find the current titles of employees currently working in the Customer Service department.
 SELECT title AS 'Title', COUNT(*) AS 'Count'
FROM titles
JOIN dept_emp
  ON titles.emp_no = dept_emp.emp_no
JOIN departments
  ON departments.dept_no = dept_emp.dept_no
 WHERE titles.to_date = '9999-01-01'
 AND departments.dept_name = 'customer service'
GROUP BY title ;


-- Find the current salary of all current managers
SELECT departments.dept_name as 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Name', salaries.salary AS 'Salary'
FROM employees
JOIN dept_manager
  ON dept_manager.emp_no = employees.emp_no
JOIN salaries
  ON salaries.emp_no = dept_manager.emp_no
JOIN departments
  ON departments.dept_no = dept_manager.dept_no
WHERE salaries.to_date LIKE '9999-%'
AND dept_manager.to_date LIKE '9999-%'
ORDER BY departments.dept_name;

--BONUS: Find the names of all current employees, their department name, and their current manager's name.
SELECT CONCAT(emp_table.first_name, ' ', emp_table.last_name) AS 'Employee Name', departments.dept_name AS 'Department Name', CONCAT(manager.first_name, ' ', manager.last_name) AS 'Manager Name'
FROM employees AS emp_table
JOIN dept_emp
  ON dept_emp.emp_no = emp_table.emp_no
JOIN departments
  ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager
  ON dept_manager.dept_no = departments.dept_no
JOIN employees AS manager
  ON dept_manager.emp_no = manager.emp_no
WHERE dept_emp.to_date LIKE '9999-%'
AND dept_manager.to_date LIKE '9999-%'
  ORDER BY emp_table.last_name;



select * from dept_manager
LIMIT 10  ;








