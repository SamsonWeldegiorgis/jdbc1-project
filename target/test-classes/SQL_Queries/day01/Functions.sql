/*
 Aggregate functions :
    min () : selects the min value from the column
                   : selects min (columName ) from the column;
     max () : selects the max value from the column
                   : selects max (columName ) from the column;
     avg () : selects the avg value from the column
                   : selects avg (columName ) from the column;
     sum () : returns the sum of all values
                   : selects sum (columName ) from the TableName ;

 count () :
   selects count (countName) from TableName where condition;
 Round () : used for decimals formatting
    selectst Round (avg(columName) , 2) from TableName
 */


 ---min () : selects the min value from the column
select LOCATION_ID from DEPARTMENTS;
select min(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID = 1400;
select * from DEPARTMENTS where LOCATION_ID = (select min(LOCATION_ID) from DEPARTMENTS);

---max () : selects the max value from the column
select max(LOCATION_ID) from DEPARTMENTS;
select * from DEPARTMENTS where LOCATION_ID =2700 ;
select * from DEPARTMENTS where LOCATION_ID =(select max(LOCATION_ID) from DEPARTMENTS);
select max(SALARY) from EMPLOYEES;
select * from EMPLOYEES where SALARY = (select max(SALARY) from EMPLOYEES);
select * from EMPLOYEES where SALARY = (Select min(SALARY) from EMPLOYEES);


---avg () : selects the avg value from the column
select avg(SALARY) from EMPLOYEES;
select round(avg(SALARY) , 2) from EMPLOYEES;  ---decimal
select round(avg(SALARY) , 3) from EMPLOYEES;  ---decimal


---     sum () : returns the sum of all values
select sum(SALARY) from EMPLOYEES ;

--- count () : selects count (countName) from TableName where condition;
select * from EMPLOYEES where MANAGER_ID = 100 ;
select count(*) from EMPLOYEES where MANAGER_ID = 100 ;
select  * from EMPLOYEES where SALARY   < 10000 ; -- number of employees with salary < 100000
select count(*) from EMPLOYEES where SALARY   < 10000 ; -- number of employees with salary < 100000
