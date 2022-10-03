select * from EMPLOYEES;

/*
 subquery :
 -Query inside query
 - Inner queries will run first
 */
--- Displey all info. from employees who are making highest salary in company "
select max(SALARY) from EMPLOYEES;

select * from EMPLOYEES where SALARY =24000 ;  -- Hardcoded, what if salary will change

--let's make it dynamic
select max(SALARY) from EMPLOYEES; -- hardcoded
select * from EMPLOYEES where SALARY=(select max(salary) from EMPLOYEES);
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where SALARY=(select max(salary) from EMPLOYEES);
select FIRST_NAME from EMPLOYEES where SALARY=(select max(salary) from EMPLOYEES);

--- display all info who is making 2nd highest salary

select SALARY from EMPLOYEES;
select max(SALARY) from EMPLOYEES;   -- 1st highest
select max(SALARY) from EMPLOYEES where SALARY <24000;   -- 2nd highest

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES where salary = (select max(SALARY) from EMPLOYEES where SALARY <24000);

--- find info about second highest salary
select * from EMPLOYEES where SALARY =17000;
select * from EMPLOYEES where salary =(select max (SALARY) from Employees where salary < (select max(salary) from EMPLOYEES));

--- DISPLAY ALL INFO who is getting more than avg salary
select SALARY from EMPLOYEES order by SALARY asc ;
select round(avg(SALARY)) from EMPLOYEES ;  -- 6462
select * from EMPLOYEES where SALARY >6462; -- hardcoded,,,1st
select sum(SALARY) from EMPLOYEES where SALARY >6462; -- hardcoded,,,1st
select * from EMPLOYEES where SALARY > (select round(avg(SALARY)) from EMPLOYEES) ; -- dynamic ...2nd way







