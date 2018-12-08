/*Practice 1*/
--q3
SELECT last_name, job_id, salary as Sal
FROM EMPLOYEES;

--q4 F no table called job_grades

-- q5  no as 

---q6
DESCRIBE DEPARTMENTS;
select *
from DEPARTMENTS;

--q7
describe EMPLOYEES;
select EMPLOYEE_ID, last_name,job_ID,HIRE_DATE as StartDate
  FROM employees;
  
--q8

select job_id
from EMPLOYEES;

--q9

select EMPLOYEE_ID as Emp#, last_name as Employee,job_ID as Job,HIRE_DATE as HireDate
  FROM employees;

--q10

select last_name || job_id as "Employee and Title"
from EMPLOYEES;

--q11

select employee_id ||','|| first_name||','||last_name||','||email||','||PHONE_NUMBER||','||HIRE_DATE||','||job_id||','||SALARY||','||COMMISSION_PCT||','||MANAGER_ID||','||DEPARTMENT_ID as "The Output"
from employees;

/*Practice 2*/

--q1
select last_name, salary
from EMPLOYEES
where salary >12000;

--q2

select last_name, department_id as Department_ID
from EMPLOYEES
where employee_id=176;

--q3
select last_name, salary
from EMPLOYEES
where salary >= 5000 and  SALARY <=12000;

--q4
select last_name, job_id, hire_date 
from employees
where hire_date between '01-FEB-2005' and '01-MAY-2005'
order by hire_date;


select hire_date
from EMPLOYEES;

--q5
select last_name ,DEPARTMENT_ID
from EMPLOYEES
where DEPARTMENT_ID in (20,50);

--q6
select last_name as "Employee", salary as "Monthy Salary"
from EMPLOYEES
where salary >= 5000 and  SALARY <=12000 and DEPARTMENT_ID in (20,50);

--q7
select last_name, hire_date 
from employees
where hire_date between '01-JAN-2005' and '31-DEC-2005'
order by hire_date asc;

--q8
select last_name, job_id
from EMPLOYEES
where MANAGER_ID is null;

--q9
select last_name, salary,COMMISSION_PCT
from EMPLOYEES
where COMMISSION_PCT is not null
order by SALARY,COMMISSION_PCT desc;

--q10
select last_name 
from employees
where substr(last_name,3,1)='a';

select last_name 
from employees
where last_name like'__a%';

--q11
select last_name,salary
from EMPLOYEES
where last_name like '%a%' and  last_name like '%e%';

--q12
select last_name ,job_id, salary
from employees 
where job_id ='ST_CLERK' or job_id='SA_REP'
and SALARY !=2500 or SALARY !=3500 or salary !=7000;

--q13
select last_name as "Employee" , salary as "Monthy Salary", COMMISSION_PCT
from employees 
where COMMISSION_PCT ='0.20';


/*----------------------------------------------------*/
/*                     part 3      
/*----------------------------------------------------*/

--q1
SELECT TO_CHAR
    (SYSDATE, 'MM-DD-YYYY') "Date"
     FROM DUAL;
     

--q2

select employee_id, last_name,salary, 
round((salary*0.15)+salary) as "New Salary"
from employees;

--q4
select employee_id, last_name,salary, 
round((salary*0.15)+salary) as "New Salary", 
round(salary*0.15) as "Increase"
from employees;

--q5

select initcap(last_name) as "Name" , length(last_name) as "Length"
from employees
where substr(last_name,1,1)='J' or substr(last_name,1,1)='A' or substr(last_name,1,1)='M';

--q6
select last_name,round(MONTHS_BETWEEN(SYSDATE,hire_date)) as "Months Worked"
from EMPLOYEES;

--q7

select last_name || ' earns $' || salary || ' monthly but wants $' || salary*3 as "Dream Salaries"
from EMPLOYEES;

--q8 Lpad 
select last_name, LPAD(salary,15,'$')
from EMPLOYEES;

--q9 fmDay

select last_name, hire_date, to_char(next_day(add_months(hire_date,6),'Monday'), 'fmDay, Month DDth, YYYY') as  "Review"
from EMPLOYEES
order by hire_date;

--q10
select last_name, hire_date, to_char(hire_date,'fmDay') as "DAY"
from EMPLOYEES
order by hire_date;

--q11
select last_name, NVL(to_char(commission_pct),'No Commision') as "Comm"
from employees;

--q12
select last_name , rpad(salary, to_char(salary)/300,'*')
from EMPLOYEES;

--q13
select job_id ,decode(job_id, 
'AD_PRES', 'G',
'ST_MAN', 'B',
'IT_PROG', 'C',
'SA_REP','D',
'ST_CLERK','E',NVL('0', job_id)) as "G"
from employees;

--q14
select job_id,
Case 
when job_id ='AD_PRES' then 'G'
when job_id ='ST_MAN' then 'B'
when job_id ='IT_PROG' then 'C'
when job_id ='SA_REP' then 'D'
when job_id ='ST_CLERK' then 'E'
else '0'
end
from employees;

/* Part 4*/

--Q1


SELECT last_name, employees.department_id,department_name
FROM employees, departments
where  employees.department_id=departments.DEPARTMENT_ID;


--02
SELECT employees.JOB_ID, departments.LOCATION_ID
FROM employees, departments
WHERE employees.department_id=departments.DEPARTMENT_ID 
and employees.department_id=90;

--q3
select employees.last_name,DEPARTMENTS.DEPARTMENT_NAME,locations.LOCATION_ID,locations.CITY
from EMPLOYEES,DEPARTMENTS,locations
where DEPARTMENTS.LOCATION_ID =locations.LOCATION_ID
and EMPLOYEES.COMMISSION_PCT is not null;

--q4
select employees.last_name, DEPARTMENTS.DEPARTMENT_NAME
from EMPLOYEES, DEPARTMENTS
WHERE employees.department_id=departments.DEPARTMENT_ID 
and employees.last_name like '%a%';

--q5
select e.last_name,e.job_id, d.department_id, d.DEPARTMENT_NAME
from employees e, departments d, locations l
where d.location_id = l.location_id
and l.city='Toronto'
order by e.LAST_NAME;

--q6

select e.LAST_NAME as "Employee" ,e.employee_id "Emp#", m.last_name as "Manager",m.employee_id as "Mangr#"
from EMPLOYEES e JOIN employees m
On e.MANAGER_ID=m.MANAGER_ID;

--q7
select e.LAST_NAME as "Employee" ,e.employee_id "Emp#", m.last_name as "Manager",m.employee_id as "Mangr#"
from EMPLOYEES e LEFT Outer JOIN employees m
On e.MANAGER_ID=m.MANAGER_ID
order by e.EMPLOYEE_ID;

--q8

select e.DEPARTMENT_ID "Department" , e.LAST_NAME "Employee", c.last_name "Colleague"
from EMPLOYEES e  join  employees c 
on e.DEPARTMENT_ID = c.department_id 
where e.EMPLOYEE_ID !=  c.EMPLOYEE_ID
order by c.DEPARTMENT_ID;

--q9
select e.LAST_NAME, e.JOB_ID, d.DEPARTMENT_NAME,e.SALARY
from EMPLOYEES e join Departments d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
order by e.LAST_NAME;

--10
select e.last_name ,e.hire_date
from EMPLOYEES e join EMPLOYEES d
on (d.last_name='Davies')
where d.hire_date < e.hire_date;


--q11
select e.LAST_NAME "Employee",e.HIRE_DATE, m.LAST_NAME "Manager", m.HIRE_DATE "Hire Date"
from EMPLOYEES e, EMPLOYEES m
where e.MANAGER_ID =m.MANAGER_ID
and e.HIRE_DATE <m.HIRE_DATE;