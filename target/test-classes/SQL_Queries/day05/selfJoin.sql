select * from EMPLOYEES;

--7. display manager name of 'Neena'
select MANAGER_ID from EMPLOYEES where FIRST_NAME='Neena';
-- His name is ,,,,,,as follow,,,
select * from EMPLOYEES where EMPLOYEE_ID=(select MANAGER_ID from EMPLOYEES where FIRST_NAME='Neena');

-- who is the manager of who,,,,,
select workers.FIRST_NAME, workers.LAST_NAME, manager.FIRST_NAME, manager.LAST_NAME from EMPLOYEES workers inner join Employees manager
on workers.MANAGER_ID = manager.employee_ID;

-- show me Steven as well,,,,
select workers.FIRST_NAME, workers.LAST_NAME, manager.FIRST_NAME, manager.LAST_NAME from EMPLOYEES workers left join Employees manager
 on workers.MANAGER_ID = manager.employee_ID;



