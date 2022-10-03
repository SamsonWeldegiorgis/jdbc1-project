select * from EMPLOYEES;

--- create view employees info as,,,,,,,,ex : -- S.K steven makes

create view EmployeesInfo as
select substr(FIRST_NAME,1,1) || '.'|| substr (LAST_NAME,1,1) ||'.' as Initials,
FIRST_NAME || ' makes ' || salary as Emplooyee_salary from EMPLOYEES;


 -- S.K steven makes
select * from EmployeesInfo;

select initials from EmployeesInfo;
SELECT * from EmployeesInfo;
select Emplooyee_salary from EmployeesInfo;
--dropping,,,,
drop view EmployeesInfo;





