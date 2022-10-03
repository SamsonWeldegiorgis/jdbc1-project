select * from LOCATIONS;
/*
 Functions are :
 Multi-row  / aggregate / grouping func
    count :
    max
    min
    avg
    sum
 it will take multiple row and gives single output


 */

select * from   DEPARTMENTS;
-- how many departments do we have ?
select count(*) from DEPARTMENTS;

-- how many d/t names we have ?
select FIRST_NAME from EMPLOYEEs;
select distinct FIRST_NAME from EMPLOYEEs;
select distinct FIRST_NAME from EMPLOYEEs;
select count(FIRST_NAME ) from EMPLOYEEs;
select count(distinct FIRST_NAME ) from EMPLOYEEs;

-- how many employees we have workng as IT programmer or sales rep ?
select * from EMPLOYEES ;
select * from EMPLOYEES where JOB_ID ='IT_PROG' OR JOB_ID ='SA_REP';
select * from EMPLOYEES where JOB_ID IN ( 'IT_PROG' , 'SA_REP');
select COUNT(*) FROM EMPLOYEES where JOB_ID IN ( 'IT_PROG' , 'SA_REP');
select FIRST_NAME ,  LAST_NAME, JOB_ID FROM EMPLOYEES where JOB_ID IN ( 'IT_PROG' , 'SA_REP');

-- NOTE : If you wanna count your result usee * to  get correct answer :

-- how many employees we  have as dept_id is null
select * from EMPLOYEES;
select * from EMPLOYEES where DEPARTMENT_ID is null ; -- all detail of the nll person
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID is null ;
select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is null ;
select count(DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID is not null ;-- total of non nulls in 1 number
select count(*) from EMPLOYEES where DEPARTMENT_ID is not null ; -- total of non nulls in 1 number
select DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID is not null ; -- total of non nulls in group in detail
select FIRST_NAME, DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID is null ;  -- total of nulls only 1

-- max : get me max salary from emplyees
select max(SALARY) from EMPLOYEES ;

-- min : get me max salary from emplyees
select min(SALARY) from EMPLOYEES ;

-- sum : get me total salary from emplyees
select sum(SALARY) from EMPLOYEES ;

-- avg : get me avg salary from emplyees
select avg(SALARY) from EMPLOYEES ;

--- round   -- it is not Aggregate function. It is numberic function
select round(avg(SALARY)) from EMPLOYEES;
select round(avg(SALARY), 3) from EMPLOYEES;


