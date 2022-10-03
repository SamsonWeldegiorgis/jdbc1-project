/*
 view :
 create view :
        create view ViewName as Statement

 replace view :
    create or replace view View as statement ;

 drop view :
    drop view Viewname;
 */

 select * from EMPLOYEES;

select LAST_NAME|| ' '|| FIRST_NAME as FullName from EMPLOYEES;

create view EmployeeInfo1 as select LAST_NAME|| ' '|| FIRST_NAME as FullName from EMPLOYEES;
select * from EmployeeInfo1 ;

select LAST_NAME|| ' '|| FIRST_NAME as FullName, lower(email) as Email from EMPLOYEES;
select LAST_NAME|| ' '|| FIRST_NAME as FullName, lower(email || '@cybertek.com') as Email from EMPLOYEES;

create or replace view EmployeeInfo as select LAST_NAME|| ' '|| FIRST_NAME as FullName, lower(email || '@cybertek.com') as Email from EMPLOYEES;

select * from EmployeeInfo;

drop view EmployeeInfo;