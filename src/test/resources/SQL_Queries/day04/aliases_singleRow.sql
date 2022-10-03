select * from EMPLOYEES;

/*
 Aliases

 -- Rename column > Give a temporary name for column . It will nOT change anyting into database


 -- Rename table -- > Joins
 */

 -- Rename column
select FIRST_NAME from EMPLOYEES;
select FIRST_NAME as given_name from EMPLOYEES;
select FIRST_NAME as Full_Name from EMPLOYEES;

-- max salary
select max(SALARY) from EMPLOYEES;
select max(SALARY) as Highest_Salary from EMPLOYEES;

-- it will not change anything from db
select FIRST_NAME from EMPLOYEES;

-- Another to rename. It will use column name as it is . Also we can spaces as well
select FIRST_NAME as "Full_Name" from EMPLOYEES;  -- as lower case Full_name
select FIRST_NAME as Full_Name from EMPLOYEES;    -- in upper case FULL NAME
-- spaces are not allowed to rename column, it makes all UPPER CASE

/*
 String Funxctions

 -- Concat

 -IN Java -->   +  -- > first name + " " + lastname
 -IN SQL  -->   +  -- > first name || ' ' || lastname   ...NO + sign but ||

 */
-- add email to @gmail.com as domain to their full name  to display as fulll email
select FIRST_NAME , LAST_NAME from EMPLOYEES;
select EMAIL ||'@gmail.com' as full_email from EMPLOYEES;

-- another way to concat
select concat(EMAIL,'@gmail.com') as full_email from EMPLOYEES;

-- lower casing all column
select lower(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

-- upper casing ALL COLUMN
select upper(concat(EMAIL,'@gmail.com')) as full_email from EMPLOYEES;

-- INITCAP ,,,,1st letter to be UPPER CAse
select email from EMPLOYEES;
select initcap(email) from EMPLOYEES;

-- Length casing
-- It will give us the length of provided data
-- display all the employees first name and length of it in the result
select email,  length (EMAIL) from EMPLOYEES;

-- display all the employees first name and length of it in the result order them based on length
select FIRST_NAME, length(FIRST_NAME) as length_firstName from EMPLOYEES ;
-- by column aliases
select FIRST_NAME, length(FIRST_NAME) as length_firstName from EMPLOYEES  order by length(FIRST_NAME);
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES  order by length(FIRST_NAME);
select FIRST_NAME, length(FIRST_NAME) as length_firstName from EMPLOYEES  order by length_firstName;
-- by column index
select FIRST_NAME, length(FIRST_NAME) as length_firstName from EMPLOYEES  order by 2;  --
-- order them by desc
select FIRST_NAME, length(FIRST_NAME) as length_firstName from EMPLOYEES order by FIRST_NAME desc ;  --

/*
 Substr(colName, beginIndex, numberOfChar)

 = if beginIndex is 0 , it is treated as 1
 = if beginIndex is negative, it will start from backward of data
 = if numberOfChar is omitted, it works till the end
 */

-- Display all initial from employees -- Steven King  -- > S.K
select substr(FIRST_NAME,0,1) || '.' ||substr(LAST_NAME,0,1) || '.' as Short_Name from EMPLOYEES;
select substr(FIRST_NAME,1,1) || '.' ||substr(LAST_NAME,1,1) || '.' as Short_Name from EMPLOYEES;

-- Print name and salary,,,,use firstname who earns larger than  $500 . sort you result in ascending order
-- the last 3 characters in employees name,,,if 2 or more employees have names ending with same 3 charactres,
-- sort them by highest (asceding ) salaray

select FIRST_NAME, SALARY from EMPLOYEES where salary >500 and FIRST_NAME order by SALARY asc;
select FIRST_NAME, SALARY from EMPLOYEES where salary >3000 order by substr(FIRST_NAME,-3) asc, SALARY desc ;
select FIRST_NAME, SALARY from EMPLOYEES where salary >3000 order by lower(substr(FIRST_NAME,-3)) asc, SALARY desc ;
select FIRST_NAME, SALARY from EMPLOYEES where salary >3000 order by upper(substr(FIRST_NAME,-3)) asc, SALARY desc ;
-- it will order them base on last 3 chars and
-- if there is some order basee on last 3 it will ,,,,,,


select substr(FIRST_NAME, -3), SALARY from EMPLOYEES order by 1 asc ;
select lower(substr(FIRST_NAME, -3)) from EMPLOYEES order by 1 asc ;




