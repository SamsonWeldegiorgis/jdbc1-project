

--Part 1 -- Select - Distinct - Where - Order By - Like - Group By - Having

-- 1. List all the employees first and last name with their salary in employees
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

-- 2. How many employees have salary less than 5000?
select count(*) from EMPLOYEES where SALARY <5000;

-- 3. How many employees have salary between 6000 and 7000?
select * from EMPLOYEES;
select count(*)from EMPLOYEES where SALARY < 7000 and SALARY < 5000 group by (FIRST_NAME , SALARY) ;
select count(*) , SALARY from EMPLOYEES where SALARY between 6000 and 7000 group by SALARY;

-- 4. List all the different region_ids in countries table
select * from COUNTRIES;
select REGION_ID, COUNTRY_ID from COUNTRIES group by (REGION_ID ,COUNTRY_ID);
select distinct * from COUNTRIES ;
select distinct REGION_ID from COUNTRIES;
select count(distinct REGION_ID) from COUNTRIES;

-- 5. display the salary of the employee Grant Douglas (lastName: Grant, firstName: Douglas)
select SALARY from EMPLOYEES where FIRST_NAME='Douglas' and LAST_NAME='Grant';

-- 6. display all department information from departments table
select * from DEPARTMENTS;
select DEPARTMENT_ID from DEPARTMENTS;

-- if the department name values are as below

-- IT , Public Relations , Sales , Executive
select  * from DEPARTMENTS where DEPARTMENT_NAME in ('IT' , 'Public Relations' , 'Sales' , 'Executive') ;--------

-- 7. display the maximum salary in employees table
select max(SALARY) from EMPLOYEES;

-- 8. display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;

-- 9. display the average salary of the employees;
select (avg(SALARY)) from EMPLOYEES; -- 6461.831775700
select round(avg(SALARY),2) from EMPLOYEES; -- 6461.83
select round(avg(SALARY),-2) from EMPLOYEES;--- 6500
select round(avg(SALARY)) from EMPLOYEES;; --- 6462
select floor(avg(SALARY)) from EMPLOYEES; -- rounding lower number
select ceil(avg(SALARY)) from EMPLOYEES;  -- rounding to larger number


-- 10. count the total numbers of the departments in departs table
select Count(*), DEPARTMENT_NAME from DEPARTMENTS group by DEPARTMENT_NAME;
select Count(*) from DEPARTMENTS ;
select Count(DEPARTMENT_NAME) from DEPARTMENTS ;

-- 11. sort the start_date in ascending order in job_history's table
select * from JOB_HISTORY order by START_DATE asc;
select START_DATE from JOB_HISTORY order by START_DATE asc;

-- 12. sort the start_date in descending order in job_history's table
select * from JOB_HISTORY order by START_DATE desc ;

-- 13. display all records whose last name contains 2 lowercase 'a's
select * from EMPLOYEES where LAST_NAME like'%a%a%';

select LAST_NAME from EMPLOYEES where LAST_NAME like '%aa%';
select * from EMPLOYEES where LAST_NAME like '%aa%';
select * from EMPLOYEES where LAST_NAME like '%a%a%';

-- 14. display all the employees whose first name starts with 'A'
select * from EMPLOYEES where FIRST_NAME like 'A%';

-- 15. display all the employees whose job_ID contains 'IT'
select * from EMPLOYEES where JOB_ID like '%IT%';


-- 16. display all  unique job_id that end with CLERK in employee table
select * from EMPLOYEES where JOB_ID like '%CLERK';
select JOB_ID from EMPLOYEES where JOB_ID like '%CLERK';

-- 17.display all  employees first name starts with A and have exactly 4 characters Total
select * from EMPLOYEES where FIRST_NAME like 'A____';
select * from EMPLOYEES where FIRST_NAME like 'A%';

-- 18. display all the employees whose department id in 50, 80, 100
select * from EMPLOYEES where DEPARTMENT_ID  in (50,80,100);
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID  in (50,80,100);

-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select * from EMPLOYEES where DEPARTMENT_ID not in(60,90,100,130,120);
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID not in(60,90,100,130,120);

-- 20. divide employees into groups by using thier job id

-- 1 display the maximum salaries in each groups
select MAX(SALARY) from EMPLOYEES group by SALARY;

-- 2 display the minium salaries in each groups
select min(SALARY), DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;

-- 3 display the average salary of each group
select round(avg(SALARY)), DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;

-- 4 how many employees are there in each group that have minimum salary of 5000 ?
select count(*), DEPARTMENT_ID employees from EMPLOYEES where SALARY <5000 group by DEPARTMENT_ID;
select  JOB_ID ,  count(*) from EMPLOYEES where SALARY >=5000 group by JOB_ID;
select * from EMPLOYEES where JOB_ID ='IT_PROG';


-- 5 display the total budgests of each groups

select job_id, sum(salary) from employees group by job_id ;

select MAX(SALARY), min(SALARY), avg(SALARY), JOB_ID , count(EMPLOYEE_ID) ,sum(SALARY) from EMPLOYEES group by JOB_ID
having count(SALARY <5000) ;

select SALARY, DEPARTMENT_ID from EMPLOYEES ;
select sum(SALARY), JOB_ID from EMPLOYEES group by JOB_ID;
select sum(SALARY), JOB_ID , count (*) from EMPLOYEES group by JOB_ID;

-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, AD_VP
select JOB_ID AS "JOB ID", avg(SALARY) AS "AVERAGE SALARY" from EMPLOYEES
where JOB_ID  in ('IT_PROG' , 'SA_REP' , 'FI_ACCOUNT' , 'c','AD_VP')
group by JOB_ID;

select job_id, avg(salary) as "average salary"
from employees group by job_id
having job_id IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

-- 22.display max salary  for each department
select max(SALARY), DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;
select max(SALARY), DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID is not null group by DEPARTMENT_ID ;
select max(salary), department_id  from employees group by department_id;

-- 23. display total salary for each department except department_id 50, and where total salary >30000
select department_id, sum(salary) from employees group by department_id having sum(salary) > 30000 and department_id != 50; ---no 50 no 30000
select department_id, sum(salary) from employees group by department_id having sum(salary) > 30000; ---no 50 no 30000
select department_id, sum(salary) from employees group by department_id having department_id != 50; ---no 50 no 30000

