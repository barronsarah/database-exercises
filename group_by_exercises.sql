USE EMPLOYEES;

SELECT DISTINCT title FROM titles;

select first_name, last_name
from employees
where last_name like 'e%e'
GROUP BY first_name, last_name;

select COUNT(DISTINCT last_name)
 from employees
where last_name like '%q%'

select COUNT(gender) from employees
where first_name in ('Irena', 'Vidya', 'Maya')
 GROUP BY gender;
