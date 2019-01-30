USE EMPLOYEES;

SELECT DISTINCT title FROM titles;

select first_name, last_name
from employees
where last_name like 'e%e'
GROUP BY first_name, last_name;

select COUNT(DISTINCT last_name)
 from employees
where last_name like '%q%'

select COUNT(gender), gender
 from employees
where first_name in ('Irena', 'Vidya', 'Maya')
 GROUP BY gender;

-- EXAMPLES FROM CURICULLUM
-- SELECT CONCAT(first_name, ' ', last_name) AS full_name
-- FROM employees
-- GROUP BY full_name
-- -- ORDER BY last_name
-- LIMIT 25;

-- SELECT hire_date, COUNT(*) as number_hired
-- FROM employees
-- GROUP BY hire_date
-- ORDER BY number_hired DESC
-- LIMIT 10;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees AS emp
-- GROUP BY full_name
ORDER BY last_name
LIMIT 25;

