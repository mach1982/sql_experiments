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

select employee_id, last_name,salary, round((salary*0.15)+salary) as "New Salary"
from employees;

--q4
select employee_id, last_name,salary, round((salary*0.15)+salary) as "New Salary", round(salary*0.15) as "Increase"
from employees;

--q5

select last_name , length(last_name) as "Length"
from employees
where substr(last_name,1,1)='J' or substr(last_name,1,1)='A' or substr(last_name,1,1)='M';


