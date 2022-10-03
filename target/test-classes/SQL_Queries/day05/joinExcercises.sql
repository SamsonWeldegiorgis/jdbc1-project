select * from EMPLOYEES;




--1. Display all first_name and department_name
-- Steven -- Executive
-- Neena  -- Executive
select  * from employees;
select * from departments;
-- join and inner join is same
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e join  DEPARTMENTS d
                                                         on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--2.Display all first_name and department_name including the  department without employee
select FIRST_NAME,d.DEPARTMENT_ID,DEPARTMENT_NAME
from EMPLOYEES e right  join  DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--left join
select FIRST_NAME,d.DEPARTMENT_ID,DEPARTMENT_NAME
from DEPARTMENTS d left  join  EMPLOYEES e on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--3.Display all first_name and department_name including the  employee without department
select  * from employees;
select * from departments;

select FIRST_NAME,DEPARTMENT_NAME from DEPARTMENTS d right join EMPLOYEES e
                                                                on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

-- left
select FIRST_NAME,DEPARTMENT_NAME from EMPLOYEES e left join DEPARTMENTS d
                                                             on d.DEPARTMENT_ID = e.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select FIRST_NAME, DEPARTMENT_NAME from DEPARTMENTS d full join EMPLOYEES e on d.DEPARTMENT_ID=e.DEPARTMENT_ID;
select FIRST_NAME, DEPARTMENT_NAME from EMPLOYEES e full join DEPARTMENTS d on d.DEPARTMENT_ID=e.DEPARTMENT_ID;


--5.Display All cities and related country names
select city, COUNTRY_NAME from LOCATIONS l inner join COUNTRIES c on l.COUNTRY_ID= c.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city
select city, COUNTRY_NAME from LOCATIONS l right join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID order by CITY asc ;
select city, COUNTRY_NAME from COUNTRIES c left join LOCATIONS l on l.COUNTRY_ID = c.COUNTRY_ID order by CITY asc ;

--7.Display all department name and  street adresss
select * from LOCATIONS;
select * from DEPARTMENTS;
--correct
select DEPARTMENT_NAME , STREET_ADDRESS from DEPARTMENTS d inner join LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID;

---wrong ones
select DEPARTMENT_NAME , STREET_ADDRESS from DEPARTMENTS d full join LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID; -- no dep't names
select DEPARTMENT_NAME , STREET_ADDRESS from DEPARTMENTS d right join LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID;
select DEPARTMENT_NAME , STREET_ADDRESS from DEPARTMENTS d left join LOCATIONS l on l.LOCATION_ID = d.LOCATION_ID;

--8.Display first_name,last_name and department_name,city for all employees  ,,relational database,,,,
select * from LOCATIONS;
select * from DEPARTMENTS;
select * from EMPLOYEES;

select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME, city from EMPLOYEES e inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;

--or
select FIRST_NAME, LAST_NAME,DEPARTMENT_NAME, city from EMPLOYEES e left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                                                                    left join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;


--9.Display first_name,last_name and department_name,city,country_name for all employees
select * from LOCATIONS;
select * from DEPARTMENTS;
select * from EMPLOYEES;
select * from COUNTRIES;
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city,COUNTRY_NAME from  EMPLOYEES e
    inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
    inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;

select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, city,COUNTRY_NAME from  EMPLOYEES e left join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                                                                                   left join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID left join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID;
--10.Display first_name,last_name and department_name,city who is living in United Kingdom
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city,COUNTRY_NAME from EMPLOYEES e
 inner join DEPARTMENTS d
    on e.DEPARTMENT_ID = d.DEPARTMENT_ID
     inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID
       inner join COUNTRIES c on l.COUNTRY_ID = c.COUNTRY_ID
Where COUNTRY_NAME='United Kingdom';

select * from LOCATIONS;
select * from COUNTRIES;

--without country name
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,city from EMPLOYEES e
   inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
    inner join LOCATIONS l  on d.LOCATION_ID = l.LOCATION_ID
Where COUNTRY_ID='UK';

-- 11.Display how many employee wee have for each country name
select  country_name , count(*) from EMPLOYEES e
  inner join DEPARTMENTS d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS l  on d.LOCATION_ID = l.LOCATION_ID
inner join COUNTRIES c  on l.COUNTRY_ID = c.COUNTRY_ID
group by country_name order by count(*);
