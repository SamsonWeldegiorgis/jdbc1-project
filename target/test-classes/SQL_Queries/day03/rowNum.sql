/*
 ROWNUM :
 - It limits data that you wanna do into resulst as a row
 - It works with < and <=
 */

---display only 10 rows from employees
select * from EMPLOYEES where ROWNUM<5;
select * from EMPLOYEES where ROWNUM<11;

---display all info who is getting first 5 highest salary
-- Bad practice and wrong,,,,
-- first it gets data without order tham and cut the list from line 5 then order them based salary
--asc
select SALARY from EMPLOYEES  where ROWNUM <6 order by Salary desc;
select * from EMPLOYEES  where ROWNUM <6 order by Salary desc;

--COrrect
select  SALARY from Employees order by salary  desc;
select * from (select  * from Employees order by salary  desc ) where ROWNUM <6;


-- display all info from employee getting 5th highest salary  == 13000
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM  <6;

-- display all info from employee getting 15th highest salary  == 13000
select FIRST_NAME,  SALARY from EMPLOYEES order by SALARY desc ;  -- 10000  ---hardcoded
select FIRST_NAME,  SALARY from EMPLOYEES where SALARY=11500 ;  -- 11500  ---hardcoded
select FIRST_NAME, SALARY from EMPLOYEES where SALARY =( select min(SALARY) from EMPLOYEES where SALARY=11500);  -- 10000  ---hardcoded

select FIRST_NAME, SALARY from EMPLOYEES  where ROWNUM <17 order by Salary desc ;
select min(SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM  <16;
select SALARY from(select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM  <15;

-- display all info from employee getting 213th highest salary  == 13000
select SALARY from(select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM  <214;---this is just a samle from IQ's

-- display all info who si making 5th highest salary
select FIRST_NAME, SALARY from EMPLOYEES where  SALARY=13000;
-- to make it dynamiic
select FIRST_NAME, LAST_NAME,  SALARY from EMPLOYEES where salary =(select min(SALARY) from EMPLOYEES where  SALARY=13000);



