/*Part 6 - Sub Queries*/


--q1

select last_name, hire_date
from EMPLOYEES
where DEPARTMENT_ID =(select DEPARTMENT_ID
                    from EMPLOYEES
                    WHERE LAST_NAME='Zlotkey')
and last_name <> 'Zlotkey';


--q2
select EMPLOYEE_ID,LAST_NAME,salary
from EMPLOYEES
where salary > (select avg(salary)
                from employees)
                
order by SALARY desc;

--q3
select employee_id, last_name 
from EMPLOYEES
where DEPARTMENT_ID in  ( select department_id
                         from EMPLOYEES
                         where last_name like '%u%')
order by employee_id;

--q4
select last_name, department_id, job_id
from EMPLOYEES
where DEPARTMENT_ID in ( select department_id
                        from DEPARTMENTS
                        where location_ID =1700);
                        
--q5
select last_name, salary
from EMPLOYEES
where MANAGER_ID in (select EMPLOYEE_ID
                from EMPLOYEES
                where last_name='King');
                
--q6
select department_id , last_name, job_id
from EMPLOYEES
where DEPARTMENT_ID = (select DEPARTMENT_id
from DEPARTMENTS
where department_name='Executive');
         
         
--q7

select employee_id, last_name ,salary
from EMPLOYEES
where DEPARTMENT_ID in  ( select department_id
                         from EMPLOYEES
                         where last_name like '%u%' )
                        and  salary > (select  avg(salary)
                         from EMPLOYEES);
                             






