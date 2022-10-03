
/*
 Order BY
 - it allowws to sory your data based on provided columun/ index
 - As a default it orders ASC (a-z or 0-9)
 - If you wanna order them into Desc , we eneed to specify after column/index
 */

-- get me all  info from employees who is making low salary to high
select * from EMPLOYEES
order By SALARY ;
select * from EMPLOYEES order By 8 ;
select * from EMPLOYEES order By 3 ;
select EMAIL from EMPLOYEES order By 1 ;
select EMAIL,FIRST_NAME from EMPLOYEES order By 2 ;
select EMAIL,FIRST_NAME, LAST_NAME from EMPLOYEES order By 3 ;  -- by column
select EMAIL,FIRST_NAME, LAST_NAME from EMPLOYEES order By 1 ;  -- by column
select EMAIL from EMPLOYEES ;

-- ascending
select * from EMPLOYEES order By SALARY asc  ;
-- descending
select * from EMPLOYEES order By SALARY desc  ;



-- get me all info where employees_id  < 120 and order them baseed on alphabetical order
select * from EMPLOYEES where EMPLOYEE_ID <120 order by 1; -- based on emplid ,,,1st column
select * from EMPLOYEES where EMPLOYEE_ID <120 order by FIRST_NAME; --or -- based on emplid ,,,1st column
select * from EMPLOYEES where EMPLOYEE_ID <120 order by 2; -- based on firstname ,,,2nd column
select * from EMPLOYEES where EMPLOYEE_ID <120 order by 3; -- based on lastname ,,,3rd column

-- get me all info from employees based on firstname asc and lasname asc
select * from EMPLOYEES order by FIRST_NAME ;
select * from EMPLOYEES order by FIRST_NAME asc ;
select * from EMPLOYEES order by FIRST_NAME asc , LAST_NAME desc ;
select * from EMPLOYEES order by FIRST_NAME asc , LAST_NAME asc ;


