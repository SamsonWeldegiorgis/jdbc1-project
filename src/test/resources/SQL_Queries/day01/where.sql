/*
 we will use where keyword to filter requested result
 */
 -- get me first name , last name, salary from employees table where firstname is David

select FIRST_NAME, LAST_NAME, SALARY from  EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';

-- whateever you put in sigle quote , it is Case sensitive,,,

select * from  EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Lee';

-- get me all information from employee who is makaing more salary than 6000

select  * from EMPLOYEES
where SALARY >6000;

-- get me all information from employee who is makaing equal salary than 6000

select  * from EMPLOYEES
where SALARY =6000;

-- get me all information from employee who is makaing salary equal or less than than 6000

select  * from EMPLOYEES
where SALARY <=6000;

-- get me firsname, salary from employees who is making more than 6000 and dept id=80

select FIRST_NAME , DEPARTMENT_ID , SALARY from EMPLOYEES where SALARY > 6000 and DEPARTMENT_ID =80;

-- Between lowe and Upper

select FIRST_NAME , DEPARTMENT_ID, SALARY  from EMPLOYEES where SALARY between 6000 and 10000;

--get me all info who is workng as IT_Programmer and sales_rep and FI_ACCOUNT

select FIRST_NAME, LAST_NAME, SALARY, JOB_ID from EMPLOYEES where JOB_ID='IT_PROG' or JOB_ID='FI_ACCOUNT' or JOB_ID='SA_REP';

select *  from EMPLOYEES;

select * from EMPLOYEES where JOB_ID IN('IT_PROG', 'SA_REP','FI_ACCOUNT');

--get me all info who is workng NOT as IT_Programmer and sales_rep and FI_ACCOUNT

select * from EMPLOYEES where JOB_ID NOT IN ('IT_PROG', 'SA_REP','FI_ACCOUNT');

-- all location from locations table where city is Rome and Tokyo

select * from LOCATIONS where city IN ('Roma', 'Tokyo');

-- get me all info from Employees wher id are equals 113, 145, 124, 122

select * from EMPLOYEES where EMPLOYEE_ID in ('113','145','124', '122');

-- null and not null

select * from EMPLOYEES where DEPARTMENT_ID is NULL;

select * from EMPLOYEES where DEPARTMENT_ID is NOT NULL ;

select  * from DEPARTMENTS;
select DEPARTMENT_NAME from DEPARTMENTS ;
select DEPARTMENT_NAME , DEPARTMENT_ID from DEPARTMENTS;
select * from EMPLOYEES;
select * from DEPARTMENTS ;

select * from EMPLOYEES, DEPARTMENTS;
select EMPLOYEES.EMPLOYEE_ID , DEPARTMENTS.DEPARTMENT_ID from EMPLOYEES, DEPARTMENTS;

/*
 distinct keyword :
 */

 select distinct DEPARTMENT_ID from DEPARTMENTS ;

select  SALARy from EMPLOYEES;
select distinct SALARy from EMPLOYEES;

select distinct MAX_SALARY from jobs;
select  MAX_SALARY from jobs;














