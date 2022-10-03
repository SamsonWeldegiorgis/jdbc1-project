/*
 Like statment : partial search
 Wildcarts
 starts with : chars %
 end with : % chars
 contains : % chars %

 syntax : select column(s) from Table(s0 where value like wildcard
 */

 ---starts with---
select  * from COUNTRIES;
select  COUNTRY_NAME from COUNTRIES;
select  * from COUNTRIES where COUNTRY_NAME like 'Au%';
select  count (Country_name) from COUNTRIES where COUNTRY_NAME like 'Au%';

---ends with---
select  * from COUNTRIES where COUNTRY_NAME like '%a';
select COUNT(COUNTRY_NAME) from COUNTRIES where COUNTRY_NAME like '%a';
select  * from COUNTRIES where COUNTRY_NAME like '%na';
select COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%na';


---starts with and ends with---
select  * from COUNTRIES where COUNTRY_NAME like 'A%' and COUNTRY_NAME  like '%a';

---contains with---
select  COUNTRY_NAME from COUNTRIES where COUNTRY_NAME like '%b%';

