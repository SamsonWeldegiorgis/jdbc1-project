select * from DEPARTMENTS;
select * from DEPARTMENTS where MANAGER_ID is not null ;

/*
 LIKE
Percent ( %)      -->  for matching any sequence of characters.
Underscore ( _ )  -->  for matching any single character.

  - contains
  - startwith
  - endswith

 */

 --get me all employees whose firstname starts with B
select * from EMPLOYEES where FIRST_NAME like 'B%'; -- starts with

--get me all employees whose firstname starts with B and has 5 letters
select * from EMPLOYEES where FIRST_NAME like 'B______';

--get me  5 letters name where the middle char is z
select * from EMPLOYEES where FIRST_NAME like '__z__'; -- central is  z
select * from EMPLOYEES where FIRST_NAME like '%z%';  -- containing z

--get me  first name where 2nd char is a
select * from EMPLOYEES where FIRST_NAME like '__a%';
select * from EMPLOYEES where FIRST_NAME like '%a';  -- ends with

--get me all info whose firstname ends with r 2nd char is a
select * from EMPLOYEES where FIRST_NAME like '%r';

--get me any job title infor enddswith manager from job table
select * from JOBS where JOB_TITLE like '%Manager';


-- how many employee we ahve  with (get me any job title infor enddswith manager from job table)
select count(*) from JOBS where JOB_TITLE like '%Manager';



