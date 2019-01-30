use employees;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
 AND gender = 'm'
 ORDER BY last_name, first_name;

SELECT CONCAT(first_name, ' ', last_name) from employees
where first_name like 'e%e'
ORDER BY emp_no DESC;



select DATEDIFF(NOW(), hire_date) from employees
where hire_date between '1989-12-31' and '2000-01-01'
and birth_date like '%-12-25';

-- walkthrough answer OF last answer:
select emp_no, CONCAT(first_name, ' ', last_name) as full_name,
datediff(curdate(), hire_date) as days_employed
from employees
where hire_date between '1989-12-31' and '2000-01-01'
and birth_date like '%-12-25'
ORDER BY hire_date desc, birth_date;

