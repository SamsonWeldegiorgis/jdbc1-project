create table ClassMates(
    Student_id integer primary key ,   --- Must be unique , can not be null
    "First_name" varchar(30),
    "Last_name" varchar(30)
);
select * from ClassMates;

create table Coworkers(
    Employee_id  integer primary key,-- --- Must be unique , can not be null
    "First_name" varchar(30),
    "Last_name"  varchar(30),
    personnel_id integer references ClassMates (Student_id)
    --- foreign key, data needs to be matched with the referenced primary key
);

insert into Coworkers values (1, 'John','Eric', null);
select * from Coworkers;

insert into ClassMates values (1, 'Aron','Daniel');
select * from ClassMates;

insert into Coworkers values (2,'Jimy', 'Rose',1);
insert into Coworkers values (3,'Ahmet', 'Mamat',1);

-- insert into coworkers values ( 3,'Ahmet', 'Mamat',1);
-- foreign key data is not matching with the referenced primary key's data

select * from ClassMates;
update ClassMates set STUDENT_ID = 4 where STUDENT_ID=1;
alter table ClassMates drop column STUDENT_ID; -- not possible b/s it is foreign key referenced
truncate table ClassMates; -- not possible b/s it is foreign key referenced
drop table ClassMates;   -- not possible b/s it is foreign key referenced

alter table Coworkers drop column  personnel_id;
update ClassMates set STUDENT_ID = 4  where STUDENT_ID=1;
alter table ClassMates drop column STUDENT_ID;
truncate table ClassMates;
drop table ClassMates;

select * from ClassMates;




