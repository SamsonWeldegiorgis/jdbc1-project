select * from EMPLOYEES;

--find the 3rd maximum salary from the employees table (donot include duplicate)
select distinct SALARY from EMPLOYEES order by SALARY desc ;

--first sort salary in descending order
select distinct SALARY from EMPLOYEES order by SALARY desc ;
-- cut the list form the line 4 to get 1st 3
select * from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM <4 ;
-- use min salary to find 3 maximum
select min (SALARY) from(select distinct SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM <4;

-- full info...
select * from EMPLOYEES where SALARY =(select min(salary)from (select distinct salary from EMPLOYEES order by
Salary desc) where ROWNUM <4);

-- find the 3rd min salary from the emploee table ( not duplicacte )
select distinct SALARY from EMPLOYEES;
-- fist sort all  salary in asc order
select distinct salary from EMPLOYEES order by SALARY asc;
-- use max salary to find 3 maximum
select max(salary) from (select distinct salary from employees order by salary asc) where ROWNUM<4;


-- 1-3 min salary
select salary from (select distinct salary from employees order by salary asc) where ROWNUM<4 ;
-- how can we get full info about that employee *(3rd min)
select * from EMPLOYEES
where salary =(select max(salary) from (select distinct salary from employees order by salary asc) where ROWNUM<4);
-- we have 2 results in here. We already used distinct to make salary unique
  -- 3rd min query will return one value at 2400.....
  -- but we are looking for who has that salary
  -- 2 employees have some salary that's why it return 2 result...


-- how can we get full info about that employee *(10th min)
select * from EMPLOYEES
where salary =(select max(salary) from (select distinct salary from employees order by salary asc) where ROWNUM<11);

