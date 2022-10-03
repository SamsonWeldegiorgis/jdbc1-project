select * from EMPLOYEES;
select * from DEPARTMENTS;

select DEPARTMENT_ID from EMPLOYEES union  select DEPARTMENT_ID from DEPARTMENTS;
select DEPARTMENT_ID from EMPLOYEES union all  select DEPARTMENT_ID from DEPARTMENTS; -- like Full Join
select d.DEPARTMENT_ID from EMPLOYEES e full join DEPARTMENTS d on e.DEPARTMENT_ID= d.DEPARTMENT_ID;
select DEPARTMENT_ID from EMPLOYEES intersect  select DEPARTMENT_ID from DEPARTMENTS;
select DEPARTMENT_ID from EMPLOYEES minus  select DEPARTMENT_ID from DEPARTMENTS;

select SALARY from (Select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 4 group by SALARY;

select count(*) , FIRST_NAME from EMPLOYEES  having (count (FIRST_NAME )>1) group by  FIRST_NAME;
select round(avg(SALARY)) from EMPLOYEES;

select * from EMPLOYEES where SALARY < (select round(avg(SALARY)) from EMPLOYEES);
select (SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc ) where ROWNUM < 4;
SELECT COUNT(FIRST_NAME) FROM EMPLOYEES GROUP BY FIRST_NAME HAVING COUNT(FIRST_NAME)> 1;

SELECT SALARY FROM (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES ) ORDER BY SALARY;
SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES ;
SELECT * FROM EMPLOYEES WHERE SALARY < (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES );

SELECT * FROM DEVELOPERS
UNION
SELECT * FROM TESTERS;

-- UNION : removes the duplicate row , ascending, and Sorts
SELECT NAMES FROM DEVELOPERS
UNION
SELECT NAMES FROM TESTERS;

--UNION ALL :  does NOT remove duplicate row, does NOT sort
SELECT NAMES FROM DEVELOPERS
UNION ALL
SELECT NAMES FROM TESTERS;

select * from DEPARTMENTS union select * from EMPLOYEES;

--Minus ALL :  returns the 1st queries rows that are not matching the 2nd rows
SELECT NAMES FROM DEVELOPERS
minus
SELECT NAMES FROM TESTERS;

SELECT DEPARTMENT_ID FROM EMPLOYEES
minus
SELECT DEPARTMENT_ID FROM DEPARTMENTS;



--Intersect ALL : returns the matching rows from 2 queries  ONLY
SELECT NAMES FROM DEVELOPERS
intersect
SELECT NAMES FROM TESTERS;