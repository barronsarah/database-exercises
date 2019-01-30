USE EMPLOYEES;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) as full_name, birth_date as DOB
from employees
-- GROUP BY full_name
ORDER BY emp_no
LIMIT 10;