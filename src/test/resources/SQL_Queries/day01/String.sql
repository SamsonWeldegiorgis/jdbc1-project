/*
 Text Function : string manupulation
 1.Concatenation operator : ||
 2.Concat (Value1, Value2) :
 3.Upper(value) :
 4.Lower(value) :
 5.INITCAP(value) :
 6.Length(value) :
 7.Replace(ColumName, oldValue, newValue) :
 8.Substr (ColumName, Beg index, endValue) :
 9.Trim (Value) :

 Only used for the display, does NOT modify the table
 */

 --1--- concatination operator : ||
select email || '@gmail.com' from EMPLOYEES;
select email from EMPLOYEES;
select FIRST_NAME ||' '|| LAST_NAME from EMPLOYEES;

--2--Concat (Value1, Value2) :
select concat(email, '@gmail.com') from EMPLOYEES;
select concat (concat (FIRST_NAME,' ') , LAST_NAME) from EMPLOYEES;

--- 3.Upper(value) :
select upper(FIRST_NAME) from EMPLOYEES;
select lower(LAST_NAME) from EMPLOYEES;


--- 4.lower(value) :
select lower(FIRST_NAME) from EMPLOYEES;
select lower (UPPER ( FIRST_NAME )) from EMPLOYEES;


--- 5.INITCAP(value) :
select INITCAP(EMAIL) from EMPLOYEES;
select email from EMPLOYEES;

---  6.Length(value)
select length(FIRST_NAME) from EMPLOYEES;
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES;

---  7.Replace(ColumName, oldValue, newValue) :
select FIRST_NAME from EMPLOYEES;
select replace(FIRST_NAME , 'e','a') from EMPLOYEES;
select FIRST_NAME , replace (FIRST_NAME , 'a','o') from EMPLOYEES;
select FIRST_NAME, replace(FIRST_NAME), INITCAP(EMAIL) from EMPLOYEES;

--- 8.Substr (ColumName, Beg index, endValue) :
select FIRST_NAME from EMPLOYEES;
select FIRST_NAME , substr(FIRST_NAME, 0,1 ) from EMPLOYEES;
select FIRST_NAME , substr(FIRST_NAME, 2,3) from EMPLOYEES;
select substr (FIRST_NAME, 0,1 ) || substr (LAST_NAME,0,1) from EMPLOYEES;


---  9.Trim (Value) :
select  FIRST_NAME from EMPLOYEES;
select concat('      ' , FIRST_NAME) from EMPLOYEES;
select trim(concat('           ', FIRST_NAME)) from EMPLOYEES ;



