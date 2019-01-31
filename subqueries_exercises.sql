use employees;

-- Find all the employees with the same hire date as employee 101010 using a sub-query.
-- 69 Rows
SELECT *
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles
select title
from titles
where emp_no in (
  select emp_no
  from employees
  where first_name in ('aamod'))

-- Find all the current department managers that are female.
select first_name, last_name
from employees
 where emp_no in (
   select emp_no
   from dept_manager
   where emp_no in (
     select emp_no
     from employees
     where gender ='F'
 )
 and to_date > now()
)

-- Find all the current department managers that are female- USING JOIN!
SELECT first_name, last_name
from employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
WHERE to_date > now()
AND gender = 'F';

-- Find all the department names that currently have female managers.
select dept_name
from departments
where dept_no in (
select dept_no
from dept_manager
 where to_date > now()
  and emp_no in (
   select emp_no
   from employees
     where gender ='F'
 )
);

--  the first and last name of the employee with the highest salary.
select first_name, last_name
from employees
where emp_no in (
select emp_no
from salaries
where salary in (
select max(salary)
from salaries
)
)

