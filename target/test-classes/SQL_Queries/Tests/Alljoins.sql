---------------------------inner join-------------------------------------
-- Getting the intersection part ,,,,matching part
select * from CUSTOMER c inner join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;

--or
select  a.ADDRESS_ID , FIRST_NAME, LAST_NAME,c.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS1 A on c.ADDRESS_ID = a.ADDRESS_ID;

select * from CUSTOMER c inner join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;

--2.-- only matching results,,
select * from LOCATIONS l inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

-- matching country name with its city
select c.COUNTRY_NAME, l.city from LOCATIONS l inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

-- inner jioin : returns only the matching records

---------------------------left outer join-------------------------------------
-- matching + the nulls with out Foreign key,s + exluding the righ side unmatching parts,,, ,,,,
select  *
from CUSTOMER c left outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;


--left outer join : returnns the matching records, and left table none matching records
select c.CUSTOMER_ID , c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE
from CUSTOMER c left outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;

-- only the nulls of the right side
-- left join with whrere : returns the none matching records from left table
select c.CUSTOMER_ID , c.FIRST_NAME, c.LAST_NAME, a.ADDRESS_ID, a.PHONE
from CUSTOMER c left outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null;


select * from CUSTOMER c left outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;

---------------------------Right outer join-------------------------------------

-- right outer join wih whwere :: displays the matcing record and non matching record  from right table
select * from CUSTOMER right join ADDRESS1 a on a.ADDRESS_ID = CUSTOMER.ADDRESS_ID;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS,a.PHONE from CUSTOMER c
    right outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID;

-- only nulls ,,,
-- right outer join wih whwere :: displays the none matcing record from right table
select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS,a.PHONE from CUSTOMER c
  right outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID where c.ADDRESS_ID is null;

select c.CUSTOMER_ID, c.FIRST_NAME, c.LAST_NAME, a.ADDRESS,a.PHONE from CUSTOMER c
right outer join ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID where c.ADDRESS_ID is null or a.ADDRESS_ID is null;

---------------------------Full outer join-------------------------------------
-- full info of full outer joni
-- full outer join withour where : displays the matcing record from both tables, and non matching records
-- from the left tables,, then the none matching records from the right table
select * from  CUSTOMER c full outer join ADDRESS1 E on c.ADDRESS_ID = E.ADDRESS_ID;

--
select c.CUSTOMER_ID, c.FIRST_NAME ,c.LAST_NAME,a.PHONE
from  CUSTOMER c full outer join ADDRESS1 a on c.ADDRESS_ID = a .ADDRESS_ID;

/*
 full outer join with where : displays the non mantching records from the left atable ,and the non matching recodes from the right table
 */
 -- the nulls only of both sides
select  * from CUSTOMER c full outer join  ADDRESS1 a on c.ADDRESS_ID = a.ADDRESS_ID
where c.ADDRESS_ID is null or a.ADDRESS_ID is null;

---------------------------self Join -------------------------------------

/*
 self join : joinning that table to itself
    sytax : select column from Table1 a join table1 b on a.key = b.key
 */

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, MANAGER_ID from EMPLOYEES;

select e1.EMPLOYEE_ID, e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,e2.FIRST_NAME , e2.LAST_NAME from
EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.EMPLOYEE_ID;

select e1.MANAGER_ID, e1.FIRST_NAME,e1.LAST_NAME,e1.MANAGER_ID,e2.FIRST_NAME ||' '|| e2.LAST_NAME as fullName
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.MANAGER_ID;

select e2.FIRST_NAME ||' '|| e2.LAST_NAME as  FullName
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.MANAGER_ID group by e2.first_name || ' ' || e2.LAST_NAME;

select e2.FIRST_NAME ||' '|| e2.LAST_NAME as "Managers FullName"
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.MANAGER_ID group by e2.first_name || ' ' || e2.LAST_NAME;

select e2.FIRST_NAME ||' '|| e2.LAST_NAME as "Manager FullName" , count(*)
from EMPLOYEES e1 join EMPLOYEES e2 on e1.MANAGER_ID = e2.EMPLOYEE_ID group by e2.first_name || ' ' || e2.LAST_NAME;