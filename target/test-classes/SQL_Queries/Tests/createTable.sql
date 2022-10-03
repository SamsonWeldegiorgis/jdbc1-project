/*
 Create Teble :"
    Syntax :
    create table name (
    columnName1 DataType constraint,
    columnName2 DataType constrain
 );
    Constraint as not mandatory
 Insert :
    Insert into TableName (Column1, column2 ...) value (value1, value2);

 Update :
    Update TableName set columnName = Value whree condition;

 Delete :
    Delete from TableName where conditon.....

 commit :
    commite, or commit work;

 Alter :
    Add column :
        Alter Table TableName add ColumnName DataType ;
    Rename column :
        Alter Talbe TableName Raname Column ColumnName NewColumnName ;

 drop :
    Alter Table TableName drop column columnName;

 Rename table :
    Alter Table TableName rename to NeewTableName;

 Drop talbe :
    drop table TableName;

  Truncate talbe :
    truncate table TableName;

 */

 create table address(
     addr_id Integer primary key,
     address varchar(50) not null ,
     phone Integer
 );

insert into address (addr_id, address, phone) values (10,'Lee High Way' , 123456);
insert into address (addr_id, address, phone) values (12,'Bolton Rd' , 98765);
insert into address (addr_id, address, phone) values (13,'Renton' , 98541);
insert into address (addr_id, address, phone) values (14,'Othelo Ave' , 98105);

select * from address;

update address set addr_id =14 where addr_id=15;
update address set address ='Chelsi' where address='Othelo Ave';
delete from address  where addr_id=12 and phone=98765;
alter table address add city varchar(20);
update address set CITY ='Miami' where addr_id=10;
update address set CITY ='London' where addr_id=13;
update address set CITY ='Bubul' where addr_id=14;
alter table customer rename column LastName to City;

-- foreign key
create table customer (
    customer_id Integer primary key ,
    first_name varchar(30) not null,
    address_id Integer
);

insert into customer (customer_id, first_name, address_id) values (1,'Muhtar',10);
insert into customer(customer_id, first_name, address_id) values (2,'John',12);

select * from address;
select * from customer;

--update
update customer set customer_id =3 where address_id=12;


--delete
delete from customer  where customer_id=3 and address_id=12;

-- commit work
commit work ;

-- drop column
alter table yaeeni drop column address;

-- Add column
alter table customer add LastName varchar(20);

-- fill amountsssss to the column
update yaeeni set address = 'Sudan'where id=1;

-- update / change the figure
update yaeeni set name = 'Zekarias' where id = 1 ;

--rename column:
alter table customer rename column LastName to City;

select * from customer;

-- update
update customer set CITY ='Miami' where first_name='Muhtar';
update customer set CITY ='Colorado' where address_id= 12;
update customer set CITY ='Seattle' where address_id= 5;

-- drop the column
alter table customer drop column CITY;

-- Rename table:
alter table customer rename to Shoppers;
select * from SHOPPERS;


commit work ;

--- drop table
select *  from SHOPPERS;
drop table SHOPPERS;

-- truncate
select * from address;
truncate table address;

--drop the address
drop table address;



select * from address;
alter table customer rename to address;
update address set address ='Basri' where phone= 98765;
update address set address ='Dubai Rd' where phone='98765';
update address set ADDR_ID = 'employeeid' where address='ADDRESS' ;  -- for all increase
update address set addr_id = 'employeeid' where addr_id=2;

commit work ;