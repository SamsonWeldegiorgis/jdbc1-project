
-- 1. display full addresses from locations table in a single column
select EMPLOYEE_ID || ',' || FIRST_NAME ||',' ||LAST_NAME ||','|| EMAIL ||','|| PHONE_NUMBER ||','||HIRE_DATE from EMPLOYEES;
select * from EMPLOYEES;
-- 2. display all informations of the employee who has the minimum salary in employees table
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES );
-- 3. display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES where SALARY =(select min(SALARY)from EMPLOYEES where SALARY > (select min(SALARY)
    from EMPLOYEES)); -- 2200

select max(salary ) from (select distinct (SALARY) from EMPLOYEES order by SALARY asc) where rowNum <3;

select distinct (SALARY) from EMPLOYEES order by  SALARY asc ;

-- 4. display all informations of the employee who has the second minimum salary
select * from EMPLOYEES where SALARY = ( select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY)
    from EMPLOYEES));
-- 5. list all the employees who are making above the average salary;
select round(avg(SALARY)) from EMPLOYEES;
select SALARY from EMPLOYEES where SALARY > (select round(avg(SALARY)) from EMPLOYEES) order by SALARY asc ;
-- 6. list all the employees who are making less than the average salary
select SALARY from EMPLOYEES where SALARY < (select round(avg(SALARY))from EMPLOYEES) ;

-- 7. display manager name of 'Neena'
select FIRST_NAME,LAST_NAME from EMPLOYEES where EMPLOYEE_ID in (select MANAGER_ID from EMPLOYEES where FIRST_NAME='Neena');


-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc) where rownum <4;



















-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY  from EMPLOYEES order by SALARY desc ) where rownum < 6;
select distinct SALARY  from EMPLOYEES order by SALARY desc ; -- 13000
select distinct SALARY  from EMPLOYEES order by SALARY desc ; -- 13000

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by  SALARY desc ) where rownum  < 8; -- 12000
-- 11. find the 10th maximum salary from the employees table (do not include duplicates)
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc ) where rownum < 11; -- 10500


-- 12. find the 3rd minimum salary from the employees table (do not include duplicates)
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc ) where rownum < 4;

-- 13. find the 5th minimum salary from the employees table (do not include duplicates)
select max (SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc ) where rownum < 6;
-- 14. find the 7th maximum salary from the employees table (do not include duplicates)
-- 15. find the 10th maximum salary fr
--
-- m the employees table (do not include duplicates