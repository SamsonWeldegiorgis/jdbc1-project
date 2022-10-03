-- 1. display full addresses from locations table in a single column
select * from LOCATIONS;
select STREET_ADDRESS ||'-'||POSTAL_CODE ||'-'||CITY||'-'||COUNTRY_ID as full_Address from LOCATIONS;
select STREET_ADDRESS ||'-'||POSTAL_CODE ||'-'||CITY||'-'||COUNTRY_ID as "Full Address" from LOCATIONS;

--concat  -- (param1, param2 ) --return string
select concat(STREET_ADDRESS,concat(POSTAL_CODE,concat( city, COUNTRY_ID))) as Full_Address from LOCATIONS;

-- 2. display all informations of the employee who has the minimum salary  in employees table
select min(SALARY) from EMPLOYEES; -- 2100
select * from EMPLOYEES where SALARY=(select min(SALARY) from EMPLOYEES);

-- 3. display the second minimum salary from the employees
select SALARY from EMPLOYEES order by SALARY asc ;   --2200
select min(SALARY) from EMPLOYEES order by SALARY asc ;   --2100
select min(SALARY) from EMPLOYEES where SALARY > 2100 ;   --2100
select * from EMPLOYEES where SALARY = 2200 ;   --2100
select min(SALARY) from EMPLOYEES where SALARY < (select min(SALARY) from EMPLOYEES where SALARY > 2100);
select * from EMPLOYEES where SALARY < (select min(SALARY) from EMPLOYEES where SALARY > 2100); -- all his info
select * from EMPLOYEES
where SALARY =(select min(salary) from employees
where salary > (select min(salary)  from employees ));


-- 5. list all the employees who are making above the average salary;
-- find avg
select round(avg(SALARY)) from EMPLOYEES;   --6462
        -- find info abt these employees
select SALARY from EMPLOYEES where SALARY > (6462) order by SALARY asc ;

        -- make it dynamic
select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);

select SALARY from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);


-- 6. list all the employees who are making less than the average salary
select count(*) from EMPLOYEES
where SALARY > (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES);

select JOB_ID,  count(*) from EMPLOYEES
where SALARY > (SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES) GROUP BY JOB_ID;

-- 6. list all the employees who are making less than the average salary

select * from EMPLOYEES
    where SALARY < (select round(avg(SALARY)) from EMPLOYEES);

-- 7. display manager name of 'Neena'
SELECT MANAGER_ID FROM EMPLOYEES WHERE FIRST_NAME='Neena';

--manager name fofo neeeena
select FIRST_NAME, min(MANAGER_ID) from EMPLOYEES
    where  MANAGER_ID=100 group by FIRST_NAME;

select FIRST_NAME  from EMPLOYEES
    where EMPLOYEE_ID = (select MANAGER_ID from EMPLOYEES
        where FIRST_NAME='Ismel');

-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc ; --140000

-- make it dynamic
select min(salary) from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where ROWNUM <4;


-- 12. find the 3rd minimum salary from the employees table (do not  include duplicates)
--sort saslary in asc order
select distinct SALARY from EMPLOYEES order by SALARY asc ; -- 2400
---  make it daynamic
select max(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY asc ) where ROWNUM <4;
--Tasks

-- Display How many country we have in each region_ID
select REGION_ID, count(*) from COUNTRIES group by REGION_ID;

-- Display How many country we have in each region_name
select REGION_NAME  , count(*) from REGIONS group by REGION_NAME;

select * from REGIONS  ;
select * from COUNTRIES;

select REGION_NAME, COUNt(*) from COUNTRIES c inner join Regions r  on c.REGION_ID = r.REGION_ID group by  REGION_NAME;

select REGION_NAME,COUNTRY_NAME, COUNt(*) from COUNTRIES c inner join Regions r
    on c.REGION_ID = r.REGION_ID group by  (REGION_NAME , COUNTRY_NAME);


-- Display How many country we have in Europe
--  with where
select REGION_NAME, COUNT(*) from COUNTRIES c inner join REGIONS r on c.REGION_ID = r.REGION_ID
where  REGION_NAME ='Europe' group by REGION_NAME;

-- havvinig
select REGION_NAME, COUNT(*) from COUNTRIES c inner join REGIONS r on c.REGION_ID = r.REGION_ID
group by  REGION_NAME having REGION_NAME='Europe';

select * from REGIONS r join COUNTRIES c on r.REGION_ID = c.REGION_ID where REGION_Name ='Europe';

select REGION_NAME ,  count(*) from REGIONS r join COUNTRIES c on r.REGION_ID = c.REGION_ID where REGION_Name ='Europe'
group by REGION_NAME;


-- Display region names where they have more than 5 country
select REGION_NAME , count(*) from COUNTRIES c inner join REGIONS r on r.REGION_ID = c.REGION_ID
 group by REGION_NAME having count(*) >5 order by 2 ;


