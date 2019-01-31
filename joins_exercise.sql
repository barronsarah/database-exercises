use employees;

select * from employees.dept_manager;

--
-- SELECT d.dept_name as Department_Name, CONCAT(e.dept_manager.first_name, ' ', e.dept_manager.last_name) AS Department_Manager
-- FROM employees as e
-- JOIN dept_emp as de
--   ON de.emp_no = e.emp_no
-- JOIN departments as d
--   ON d.dept_no = de.dept_no
-- JOIN dept_manager
--  ON dept_manager.emp_no = e.emp_no;

SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM employees
JOIN dept_manager
  on dept_manager.emp_no = employees.emp_no
JOIN departments
  on departments.dept_no = dept_manager.dept_no
  WHERE dept_manager.to_date LIKE '9999-%'
  ORDER BY departments.dept_name;


  --
  SELECT departments.dept_name as 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) as 'Department Manager'
FROM employees
JOIN dept_manager
  on dept_manager.emp_no = employees.emp_no
JOIN departments
  on departments.dept_no = dept_manager.dept_no
  WHERE dept_manager.to_date LIKE '9999-%'
  AND gender = 'F'
  ORDER BY departments.dept_name;

 SELECT title AS 'Title', COUNT(*) AS 'Count'
FROM titles
JOIN dept_emp
  ON titles.emp_no = dept_emp.emp_no
JOIN departments
  ON departments.dept_no = dept_emp.dept_no
 WHERE titles.to_date = '9999-01-01'
 AND departments.dept_name = 'customer service'
GROUP BY title ;


select * from DEPARTMENTS
LIMIT 10  ;








