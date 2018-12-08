CREATE TABLE MY_EMPLOYEE
(ID  NUMBER(4) CONSTRAINT MY_EMPLOYEE_ID_NN   NOT NULL,
 LAST_NAME  VARCHAR2(25),
 FIRST_NAME VARCHAR2(25),
 USERID     VARCHAR2(8),
 SALARY     NUMBER(9,2)
);

DESCRIBE MY_EMPLOYEE;


INSERT INTO MY_EMPLOYEE 
VALUES (1,'Patel','Ralph','rpatel',895);

insert into MY_EMPLOYEE(id,last_name,first_name,userid,salary)
VALUES(2,'Dancs','Betty','bdance',860);

select*
from MY_EMPLOYEE;

insert into  MY_EMPLOYEE 
values(&id,'&last_name','&first_name', lower(substr('&first_name',1,1) ||substr('&last_name',1,7)),&salary);


DELETE 
from my_employee
where id =7;

commit;

insert into MY_EMPLOYEE(id,last_name,first_name,userid,salary)
VALUES(7,'Potter','Harry','hpotter',1000);


update MY_EMPLOYEE 
set userid='tbwl'
where id =7;

insert into  MY_EMPLOYEE (id,last_name,first_name,salary)
values(&id,'&last_name','&first_name','&salary');

update MY_EMPLOYEE 
set userid= lower(substr(first_name,1,1)||substr(last_name,1,7))
where id =&id;


update MY_EMPLOYEE
set last_name='Drexler'
where id =3;

update MY_EMPLOYEE
set salary =1000
where salary < 900;
ROLLBACK;

DELETE 
from my_employee
where first_name ='Betty';


commit;


create table copy_em as 
SELECT *
FROM employees;

SELECT *
FROM COPY_EM;

DELETE 
from my_employee
where last_name ='Potter';

ROLLBACK;


