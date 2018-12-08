/* Part 5*/

--Q4

select max(SALARY) Maximum, min(SALARY) Minimum,round(sum(SALARY)) Sum, round(avg(SALARY),0) Average
from EMPLOYEES;

--q5
select JOB_ID,max(SALARY) Maximum, min(SALARY) Minimum,round(sum(SALARY),0) Sum, round(avg(SALARY)) Average
from EMPLOYEES
Group by JOB_ID
order by JOB_ID;

--q6

select job_id, count(job_id)
from EMPLOYEES
group by job_id;

--q7
select count( DISTINCT manager_id) as  "Number of Managers"
from EMPLOYEES;

--q8
select max(salary)-min(salary) as DIFFERENCE
from EMPLOYEES;

--q9
select MANAGER_ID, min(SALARY)
from employees
where manager_id is not null
having min(SALARY) > 6000
group by MANAGER_ID
order by min(salary) desc ;

--q10

select d.department_name "Name" , d.location_id "Location" , count(*) "Number of peopel", round(avg(e.salary),2) "Salary"
from departments d, employees e
where d.DEPARTMENT_ID= e.DEPARTMENT_ID
group by d.department_name, d.location_id;
order by d

--q11
select count(*) Total 
, sum(decode((to_char(hire_date, 'yyyy')),2004,1,0)) "2004"
,sum(decode((to_char(hire_date, 'yyyy')),2005,1,0)) "2005"
,sum(decode((to_char(hire_date, 'yyyy')),2006,1,0)) "2006"
,sum(decode((to_char(hire_date, 'yyyy')),2007,1,0)) "2007"
from employees;

select hire_date
from employees;

--q12
select job_id "Job",
sum(decode(DEPARTMENT_ID,20,SALARY)) "Dept 20",
sum(decode(DEPARTMENT_ID,50,SALARY) ) "Dept 50",
sum(decode(DEPARTMENT_ID,80,SALARY))  "Dept 80",
sum(decode(DEPARTMENT_ID,90,SALARY)) "Dept 90",
sum(SALARY)
from employees "Total"
group by job_id;










    


