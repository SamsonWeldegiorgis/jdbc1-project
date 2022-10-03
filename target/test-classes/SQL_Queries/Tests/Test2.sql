-- 1. display full addresses from locations table in a single column
select LOCATION_ID ||',' || STREET_ADDRESS ||',' || POSTAL_CODE ||',' || city ||',' || STATE_PROVINCE ||',' ||  COUNTRY_ID as "Full-Address" from LOCATIONS;
SELECT STREET_ADDRESS || ','|| CITY||','||'POSTAL_CODE' ||','||'COUNTRYID' as "full_address" from LOCATIONS;
select * from REGIONS;
select REGION_id || '- ' || REGION_NAME as "Full - Region Info" from REGIONS;

select * from LOCATIONS;


--2. display all informations of the employee who has the minimum salary in employees table
select min(SALARY) from EMPLOYEES  ; --2100
select SALARY from EMPLOYEES order by SALARY asc ;
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES);
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES );
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES );


-- 3. display the second minimum salary from the employees
select min(SALARY) from EMPLOYEES where SALARY=2200;
select min(SALARY) from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) );
select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES );

-- 4. display all informations of the employee who has the second minimum salary
select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES where SALARY >(select min(SALARY) from
    EMPLOYEES ));

select * from EMPLOYEES where SALARY = (select min(SALARY) from EMPLOYEES where SALARY > (select min(SALARY) from EMPLOYEES) );

-- 5. list all the employees who are making above the average salary;
select round(avg(SALARY),2) from EMPLOYEES ;
select SALARY from EMPLOYEES where SALARY > (select avg(SALARY) from EMPLOYEES) order by SALARY asc ;
select * from EMPLOYEES where SALARY > (select avg(SALARY) from EMPLOYEES) order by SALARY asc ;

-- 6. list all the employees who are making less than the average salary
select round(avg(SALARY),2) from EMPLOYEES;  -- 6461
select SALARY from EMPLOYEES where SALARY < (select round(avg(SALARY),2) from EMPLOYEES ) order by SALARY desc ;
select * from EMPLOYEES where SALARY < (select round(avg(SALARY),2) from EMPLOYEES ) order by SALARY desc ;

-- 7. display manager name of 'Neena'+
select FIRST_NAME , LAST_NAME, MANAGER_ID from EMPLOYEES where FIRST_NAME='Neena' order by FIRST_NAME asc ;
select first_name,last_name from employees where employee_id in (select manager_id
 from employees  where first_name = 'Neena') ;
-- 8. find the 3rd maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by salary desc ; --14000
select min(SALARY) from (select distinct SALARY from employees order by SALARY desc ) where ROWNUm <4;
select * from EMPLOYEES where SALARY =( select max(SALARY) from EMPLOYEES where  SALARY < (select max(SALARY) from EMPLOYEES));
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM <4 ;
select (SALARY) from EMPLOYEES;
select distinct SALARY from EMPLOYEES order by SALARY desc ; -- 14,000
select min(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc ) where ROWNUM <4;

-- 9. find the 5th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc;   -- 13000
select min(SALARY) from (select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM <6;

-- 10. find the 7th maximum salary from the employees table (do not include duplicates)
select distinct SALARY from EMPLOYEES order by SALARY desc ;   --- 12,000
select min(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 8;


select (SALARY) from EMPLOYEES order by SALARY desc ;
-- 11. find the 10th maximum salary from the employees table (do not include duplicates) -- 10500
select SALARY from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 11;
select min(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 11;

-- 12. find the 3rd minimum salary from the employees table (do not include duplicates) -- 2400
select SALARY from EMPLOYEES order by SALARY asc ;
select max(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY asc) where ROWNUM < 4;

-- 13. find the 5th minimum salary from the employees table (do not include duplicates) -- 2600
select max(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY asc ) where ROWNUM < 6;

-- 14. find the 7th maximum salary from the employees table (do not include duplicates) --12000
select SALARY from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 8;
select min(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 8;

-- 15. find the 10th maximum salary from the employees table (do not include duplicates)--10500
select (SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 11;
select min(SALARY) from ( select distinct SALARY from EMPLOYEES order by SALARY desc) where ROWNUM < 11;