use employees;

select * from employees
where (first_name in ('Irena', 'Vidya')
 OR first_name = 'Maya')
 AND gender = 'm';

select * from employees
where last_name like 'e%'
or last_name like '%e' ;

select * from employees
where last_name like 'e%'
AND last_name like '%e' ;

-- select * from employees
-- where hire_date < '2000-01-01'
-- and hire_date > '1989-12-31';

-- query above using between:
--select * from employees
-- where hire_date between '1989-12-31' and '2000-01-01';

-- select * from employees
-- where birth_date like '%-12-25';


select * from employees
where hire_date between '1989-12-31' and '2000-01-01'
and birth_date like '%-12-25';


select * from employees
where last_name like '%q%'
and last_name not like '%qu%';

