/*
 Distinct :
 Removes duplicate from your requested result. Original one still intoo database

 */

---display only firstname from employee table;
select FIRST_NAME from EMPLOYEES;

---get me unique firstname from employee table;
select distinct FIRST_NAME from EMPLOYEES;

---get me unique jobid from  employee table;
select JOB_ID from EMPLOYEES;
select distinct JOB_ID from EMPLOYEES;

---get me unique country ID  from  location table;
select distinct COUNTRY_ID from LOCATIONS;