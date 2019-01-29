USE EMPLOYEES;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name from employees
ORDER BY last_name DESC
LIMIT 10;

select first_name, last_name from employees
where hire_date LIKE '%199%'
and birth_date like '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5 OFFSET 45;
