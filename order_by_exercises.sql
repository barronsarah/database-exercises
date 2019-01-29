use employees;

select * from employees
where first_name in ('Irena', 'Vidya', 'Maya')
 AND gender = 'm'
 ORDER BY last_name, first_name;

select * from employees
where last_name like 'e%e'
ORDER BY emp_no DESC;


select * from employees
where hire_date between '1989-12-31' and '2000-01-01'
and birth_date like '%-12-25'
ORDER BY birth_date, hire_date DESC;


-- select * from employees
-- where last_name like '%q%'
-- and last_name not like '%qu%';

