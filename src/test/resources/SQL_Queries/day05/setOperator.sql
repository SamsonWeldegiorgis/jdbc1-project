create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select * from TESTERS;

/*

-- union don't allow DUPLICate in names and make an order asc(ascending) /
-- UNION : it checks all rows to find same row. If we have
-- Merges more than table vertically
 */

select  * from DEVELOPERS union select * from Testers;  -- all of them
select  names from DEVELOPERS union select Names from Testers; -- 1 is less
select  Salary from DEVELOPERS union select Salary from Testers;


/*
-- union ALL allows DUPLICate and make an order asc(ascending) /
-- Don't sort results
 */

select  * from DEVELOPERS union all select * from Testers;  -- not sorted
select  names from DEVELOPERS union all select Names from Testers; -- 1 is less
select  Salary from DEVELOPERS union all select Salary from Testers;


/*
-- Minus removes the intersections

 */
select  * from DEVELOPERS minus select * from Testers;  --
select  names from DEVELOPERS minus select Names from Testers; --
select  Salary from DEVELOPERS minus select Salary from Testers;


/*
-- intersect :

 */
select  * from DEVELOPERS intersect select * from Testers;  -- not result
select  names from DEVELOPERS intersect select Names from Testers; -- 1 is less,,steven is on both tables
select  Salary from DEVELOPERS intersect select Salary from Testers;  -- no result