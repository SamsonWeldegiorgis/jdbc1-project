-- 1. FIND OUT COUNTRY NAME AND REGION NAME FROM COUNTRIES AND REGION TABLE 
select COUNTRY_NAME, REGION_NAME from COUNTRIES c inner join REGIONS r
on c.REGION_ID = r.REGION_ID;


-- 2. FIND OUT FIRST_NAME AND JOB_TITLE FROM JOBS AND EMPLOYEES TABLE
select FIRST_NAME, JOB_TITLE from JOBS j inner join EMPLOYEES
on j.JOB_ID = EMPLOYEES.JOB_ID ;


-- 3. FIND OUT DEPARTMENT_NAME AND CITY 
select DEPARTMENT_NAME , city from DEPARTMENTS d inner join LOCATIONS l
on d.LOCATION_ID = l.LOCATION_ID;


-- 4. FIND OUT ALL CITIES  AND COUNTRY NAMES
select CITY, COUNTRY_Name  from LOCATIONS l inner join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;



-- 5. FIND OUT FIRST_NAME, LAST NAME, DEPARTMENT ID , DEPARTMENT NAME  FOR DEPARTMENT ID 80 OR 40
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from EMPLOYEES where DEPARTMENT_ID in (80,40);


-- 6. FIND OUT CITY , COUNTRY_NAME OF THAT CITY , REGION_NAME OF THAT CITY
select CITY, COUNTRY_NAME, REGION_NAME from COUNTRIES c inner join REGIONS r on c.REGION_ID = r.REGION_ID
inner join LOCATIONS l on c.COUNTRY_ID = l.COUNTRY_ID ;




-- 7. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY 
select FIRST_NAME, JOB_TITLE, DEPARTMENT_NAME, CITY from EMPLOYEES e inner join JOBS j on e.JOB_ID = j.JOB_ID
inner join DEPARTMENTS d on e.MANAGER_ID = d.MANAGER_ID
inner join LOCATIONS l on d.LOCATION_ID = l.LOCATION_ID;


-- 8. FIND OUT EMPLOYEES FIRST_NAME , JOB_TITLE , DEPARTMENT_NAME , CITY , COUNTRY_NAME , REGION_NAME



--9. FIND OUR  EMPLOYEES FIRST_NAME, LAST NAME, DEPARTMENT ID AND ALL DEPARTMENTS
--  INCLUDING  WHERE DO NOT HAVE ANY EMPLOYEE.


--10. FIND OUT ALL DEPARTMENT_NAME  , LOCATION_ID , AND COUNTRY_ID 
-- INCLUDING THOSE LOCATIONS  WITH NO DEPARTMENT


--11.FIND OUT DEPARTMENT_NAME , LOCATION_ID , AND COUNTRY_NAME 
-- INCLUDING THOSE COUNTRIES WITH NO DEPARTMENT 



--12. FIND OUT EMPLOYEES FIRST_NAME, DEPARTMENT ID AND DEPARTMENT NAME
-- INCLUDING THOSE DOES NOT HAVE DEPARTMENT 
-- INCLUDING THOSE DEPARTMENTS  DOES NOT HAVE ANY MATCHING EMPLOYEES