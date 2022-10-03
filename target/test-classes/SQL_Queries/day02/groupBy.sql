select * from EMPLOYEES;
select JOB_ID from EMPLOYEES;

-- Display avg for IT_prog
select avg(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';
select avg(SALARY), min(SALARY),sum(SALARY) , max(SALARY) from EMPLOYEES where JOB_ID='IT_PROG';

-- Display avg for SA_REP
select avg(SALARY) from EMPLOYEES where JOB_ID='SA_REP';
select avg(SALARY), min(SALARY),sum(SALARY) , max(SALARY) from EMPLOYEES where JOB_ID='SA_REP';

-- Display avg for MK_MAN
select avg(SALARY) from EMPLOYEES where JOB_ID='MK_MAN';
select avg(SALARY), min(SALARY),sum(SALARY) , max(SALARY) from EMPLOYEES where JOB_ID='MK_MAN';

select * from EMPLOYEES ;
select JOB_ID , count(*) , sum(SALARY) , avg(SALARY),min(SALARY) ,  max(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID,avg(SALARY),min(SALARY),max(SALARY),sum(SALARY) from EMPLOYEES group by JOB_ID;

---- get me sum(salary) of each department in Employees table
select DEPARTMENT_ID,  sum(SALARY), count(*) from EMPLOYEES group by DEPARTMENT_ID; -- with null

select DEPARTMENT_ID, sum(SALARY), count(*) , min(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null group by DEPARTMENT_ID order by DEPARTMENT_ID;

select JOB_ID ,  sum(SALARY)  from EMPLOYEES group by JOB_ID;


select * from DEPARTMENTS ;
select LOCATION_ID,MANAGER_ID from DEPARTMENTS group by MANAGER_ID, LOCATION_ID;
select LOCATION_ID from DEPARTMENTS group by LOCATION_ID;

-- get me how many depts we have in each location
select DEPARTMENT_ID from DEPARTMENTS group by DEPARTMENT_ID;

-- get me how many locations we have in each country
select COUNTRY_ID from LOCATIONS ;
select count(*) from LOCATIONS group by COUNTRY_ID;
select COUNTRY_ID, count(*) from LOCATIONS group by COUNTRY_ID;
select COUNTRY_ID, count(*) from LOCATIONS group by COUNTRY_ID order by COUNTRY_ID asc;
select COUNTRY_ID, count(*) from LOCATIONS group by COUNTRY_ID order by 2 asc;  -- to sort them based on number of locations
select count(*) COUNTRY_ID from COUNTRIES;

-- get me how many countries wer have in each region
select * from COUNTRIES ;
select REGION_ID ,count(*) from COUNTRIES group by REGION_ID;
select REGION_ID ,count(*) from COUNTRIES group by REGION_ID order by REGION_ID;
select COUNTRY_NAME, REGION_ID from COUNTRIES order by REGION_ID;


-- get me how many employees working for each manager
select MANAGER_ID ,  count(*)  from EMPLOYEES group by MANAGER_ID;
select MANAGER_ID ,  count(*)  from EMPLOYEES where MANAGER_ID is not null group by MANAGER_ID; -- not nulls
select  count(*)  from EMPLOYEES order by MANAGER_ID asc ;

-- get me how many employees working for each manager more than 1 manager,,,having
select * from EMPLOYEEs;
select MANAGER_ID ,  count(*)  from EMPLOYEES where MANAGER_ID is not null group by MANAGER_ID
having count(*) >5 order by MANAGER_ID asc ; -- not nulls and more than 5 numbers and ascending

select MANAGER_ID ,  count(*)  from EMPLOYEES where MANAGER_ID is not null group by MANAGER_ID
having count(*) >5 order by 2 asc ; -- not nulls and more than 5 numbers and ascending

