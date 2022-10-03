/*
 wher clause : used as the filtetr option
 select column(s) from Table(s) where conditions
 operators :
  >, < , >= , <= , = , != , or, and
 */

select * from EMPLOYEES where SALARY <5000;

select  * from EMPLOYEES where SALARY <5000 and MANAGER_ID=114;

/*
 between statement  : used for specifying the range of the condition
            value b/n lowest and highest
 */
select * from DEPARTMENTS where LOCATION_ID between 1800 and 2400;
select * from EMPLOYEES where SALARY between  3500 and 5000;
select SALARY from EMPLOYEES where SALARY between  3500 and 5000;

/*
 in statement  : used for specifying the range of the condition
 */
 select * frOm EMPLOYEES WHERE DEPARTMENT_ID IN (60,30,110);
select * from COUNTRIES where REGION_ID in(1,4);
