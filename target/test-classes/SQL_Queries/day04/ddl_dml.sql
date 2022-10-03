select  * from   EMPLOYEES;

-- create table
/*
  create table syntax :
    create table TableName (
   colName1 DataType constraints,
   colName2 DataType constraints(optional),
   colName3 DataType constraints,
  ,,,,,,,,,,,,
  );
 */

create table scrumteam(
    empty Integer PRIMARY KEY ,   -- not nnull and unnique
    firstname varchar(30) not null, ---can't be null ,,,varchar is string
    jobtitle varchar(20),   -- can't be null
    age INTEGER ,    -- there is no constraint
    salary Integer
);

/*
 Insert
 insert into tableName (column1, column2...) values ( value1,  value2)
 */

select * from scrumteam;

INSERT INTO scrumteam (empty, firstname, jobtitle, age, salary) values (1,'Mike', 'Tester',25,120000);
INSERT INTO scrumteam (empty, firstname, jobtitle, age, salary) values (2,'John', 'SDET',27,130000);
INSERT INTO scrumteam (empty, firstname, jobtitle) values (3,'Dembe', 'Developer');
INSERT INTO scrumteam values (4,'Henry','SM',33, 150000);


/*
 update :
 update table_name
 Set column1 = value1,
    column2 = value2, ...
 Where condition
 */

 -- increase all employees salary
 update scrumteam set salary = salary+5000;  -- for all increase
select * from scrumteam;

update scrumteam set salary = salary+51249 where jobtitle='Tester';  -- for all increase
update scrumteam set age = 34 , salary = 160000 where firstname='Dembe';  -- for all increase
update scrumteam set empty = 'employeeid' ;  -- for all increase

-- add age for Dembe

/*
 Delete
 Delete from table_name where condition :
 */
delete from scrumteam where firstname='Dembe';
select * from scrumteam;

SELECT * FROM SCRUMTEAM ;
-- commit work or commit --- > both works
commit ;


/*
 Alter
 We will use this keyword to update table structure
 */

 -- Add new column
ALTER table scrumteam add gender varchar(20);  -- set Gender Column name 1st

SELECT * FROM SCRUMTEAM ;
--update all scrumteam Gender as Male
update scrumteam set GENDER = 'Male' ;    -- put values to the Gender Column name 1st

-- Rename Column
alter table scrumteam rename column salary to annual_salary;  -- change the column name to other name
alter table scrumteam rename column last_name to first_name;
SELECT * FROM SCRUMTEAM ;

-- Drop column
alter table scrumteam drop column  gender;

-- rename the table
alter table scrumteam rename to agileTeam;
SELECT * FROM agileTeam ;


-- The difference b/n truncate and drop  ::
    -- Truncate is deleting all the values/content of the table/ being no data but we can see the column name
    -- Drop is deleting the table ,, droping or dismissing the table from the database
-- truncate
truncate table agileTeam;
-- drop
drop table agileTeam;

COMMIT ;  --- to save changes,,

--view -- > it does not exist in database with data. It is just a virtual table to reuse that query..
-- table --> is exists in database with their data,,,,

ROLLBACK



