/*
 group by :DIVIDES THE ROW INTO GROUP

 Having :
 */

 --- group by :DIVIDES THE ROW INTO GROUP
select * from EMPLOYEES;
select JOB_ID from EMPLOYEES group by JOB_ID;
select JOB_ID, count(*) from EMPLOYEES group by JOB_ID;
select JOB_ID,MAX(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID,MIN(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID,AVG(SALARY) from EMPLOYEES group by JOB_ID;
select JOB_ID,SUM(SALARY) from EMPLOYEES group by JOB_ID;


--- Having :
select JOB_ID from EMPLOYEES group by JOB_ID HAVING MAX(SALARY) > 2000;
select JOB_ID,COUNT(*) FROM EMPLOYEES group by JOB_ID HAVING MAX(SALARY) > 2000;
select JOB_ID FROM EMPLOYEES group by JOB_ID HAVING AVG(SALARY) > 6000;
select JOB_ID, COUNT(*) FROM EMPLOYEES group by JOB_ID HAVING AVG(SALARY) > 6000;

