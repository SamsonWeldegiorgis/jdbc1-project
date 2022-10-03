select * from EMPLOYEES;

-- display job_ids whre their avg salary is more than 5000
select * from EMPLOYEES;
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES group by JOB_ID having avg(SALARY) > 5000 ;

--correct result
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES group by JOB_ID having avg(SALARY) > 5000 ;
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES group by JOB_ID having avg(SALARY) > 5000  order by JOB_ID asc ;

---bad practice and NOT Correct
select JOB_ID, avg(SALARY), count(*) from EMPLOYEES where SALARY > 5000  group by JOB_ID ;

--- get me dept_id where employees count bigger than 5
select * from EMPLOYEES;
select DEPARTMENT_ID, count(*) from EMPLOYEES group by DEPARTMENT_ID having count(*) >5;
select DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID having count(*) >5;
select DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID having count(*  ) <5;
select DEPARTMENT_ID , count(*) from EMPLOYEES where DEPARTMENT_ID is not null group by DEPARTMENT_ID having count(DEPARTMENT_ID ) <5;


-- IQ -- display duplicate names from employees table
select FIRST_NAME , count(*) from EMPLOYEES group by FIRST_NAME having count(*)>1;
select FIRST_NAME ,  count(*) from EMPLOYEES having count(*)>1 group by (FIRST_NAME);
