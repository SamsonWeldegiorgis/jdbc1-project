ZOOM
Part 1 -- Select - Distinct - Where - Order By - Like - Group By - Having
-- 1. List all the employees first and last name with their salary in employees
select FIRST_NAME, LAST_NAME , SALARY from EMPLOYEES;
-- 2. How many employees have salary less than 5000?
select count(*) from EMPLOYEES where SALARY < 5000;
select FIRST_NAME, LAST_NAME , SALARY from EMPLOYEES where SALARY < 5000;
-- 3. How many employees have salary between 6000 and 7000?
select count(*) from EMPLOYEES where salary in (6000 , 7000);
select FIRST_NAME, LAST_NAME , SALARY from EMPLOYEES where salary in (6000 , 7000);
-- 4. List all the different region_ids in countries table
select REGION_ID from COUNTRIES;
-- 5. display the salary of the employee Grant Douglas (lastName: Grant,
select * from EMPLOYEES where LAST_NAME='Grant' and FIRST_NAME='Douglas';
select SALARY from EMPLOYEES where LAST_NAME='Grant' and FIRST_NAME='Douglas';
-- 6. display all department information from departments table
select * from DEPARTMENTS;
-- if the department name values are as below

-- IT , Public Relations , Sales , Executive
select DEPARTMENT_NAME from DEPARTMENTS where DEPARTMENT_NAME in ('IT' , 'Public Relations' , 'Sales' , 'Executive');
    -- 7. display the maximum salary in employees table
    select max(SALARY) from EMPLOYEES;
-- 8. display the the minimum salary in employees table
select min(SALARY) from EMPLOYEES;
-- 9. display the average salary of the employees;
select round(avg(SALARY)) from EMPLOYEES;
-- 10. count the total numbers of the departments in departs table
select distinct count(DEPARTMENT_NAME)  from DEPARTMENTS;
select *  from DEPARTMENTS;
-- 11. sort the start_date in ascending order in job_history's table
select START_DATE from JOB_HISTORY order by START_DATE asc ;
-- 12. sort the start_date in descending order in job_history's table
select START_DATE from JOB_HISTORY order by START_DATE desc ;
-- 13. display all records whose last name contains 2 lowercase 'a's
select LAST_NAME from EMPLOYEES where LAST_NAME like '%a%a%';
-- 14. display all the employees whose first name starts with 'A'
select FIRST_NAME from EMPLOYEES where FIRST_NAME like 'A%';
-- 15. display all the employees whose job_ID contains 'IT'
select  JOB_ID from JOB_HISTORY where JOB_ID like '%IT%';
-- 16. display all  unique job_id that end with CLERK in employee table
select JOB_ID from EMPLOYEES where JOB_ID like '%CLERK%';
-- 17.display all  employees first name starts with A and have exactly 4 characters
select FIRST_NAME from EMPLOYEES where FIRST_NAME like 'A___';

-- 18. display all the employees whose department id in 50, 80, 100
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID in (50,80,100);
-- 19. display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID in (60,90,100,120,130);
-- 20. divide employees into groups by using thier job id
select JOB_ID  from EMPLOYEES group by JOB_ID;
select * from EMPLOYEES ;
-- 1 display the maximum salaries in each groups
select max(SALARY) , JOB_ID from EMPLOYEES group by JOB_ID;
-- 2 display the minium salaries in each groups
select min(SALARY) from  EMPLOYEES group by JOB_ID;
-- 3 display the average salary of each group
select round(avg(SALARY)) from  EMPLOYEES group by JOB_ID;
-- 4 how many employees are there in each group that have minimum salary of 5000 ?
select count(*), JOB_ID, SALARY from EMPLOYEES  where salary > 5000 group by JOB_ID, SALARY order by  SALARY asc ;
-- 5 display the total budgests of each groups
select sum(SALARY) , JOB_ID from EMPLOYEES group by JOB_ID;
-- 21. display all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
select JOB_ID, round(avg(SALARY)) from EMPLOYEES where JOB_ID in('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP') group by JOB_ID;
-- 22.display max salary  for each department
select max(SALARY) , DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;
-- 23. display total salary for each department except department_id 50, and where total salary >30000
select sum(SALARY) , DEPARTMENT_ID  from EMPLOYEES group by DEPARTMENT_ID having  DEPARTMENT_ID !=50 and sum(SALARY) >30000 ;
