variable low_date  = 01/01/2005
variable high_date = 01/01/2007
SELECT last_name , jobe_id ,hire_date
FROM Employees
WHERE hire_date between to_date(low_date,'MM/DD/YY') and to_date(high_date, 'MM/DD/YYYY') ;


