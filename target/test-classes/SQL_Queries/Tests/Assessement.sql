
create table sales3 (
                        Sales_id Integer primary key,
                        Amount decimal(4,2) ,
                        Sp_Id integer ,
                        Company_Id integer

);

INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (1,7.99,8,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (2,4.55,8,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (3,6.21,8,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (4,12.99,8,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (5,6.21,3,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (6,7.35,3,100);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (7,4.88,3,300);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (8,13.21,2,300);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (9,15,2,300);
INSERT INTO sales3(sales_id, amount, sp_id, company_id) values (10,4,2,300);


select * from sales3;


create table salesPerson  (
                        Sp_id Integer primary key,
                        sp_name varchar(30)

);

INSERT INTO salesPerson(Sp_id, sp_name) values (1,'Mussie');
INSERT INTO salesPerson(Sp_id, sp_name) values (2,'Thomas');
INSERT INTO salesPerson(Sp_id, sp_name) values (3,'Rora');
INSERT INTO salesPerson(Sp_id, sp_name) values (4,'Selam');
INSERT INTO salesPerson(Sp_id, sp_name) values (5,'Ardith');
INSERT INTO salesPerson(Sp_id, sp_name) values (6,'Arleth');
INSERT INTO salesPerson(Sp_id, sp_name) values (7,'Azeneth');
INSERT INTO salesPerson(Sp_id, sp_name) values (8,'Ailith');
INSERT INTO salesPerson(Sp_id, sp_name) values (9,'Blythe');


select * from salesPerson;


create table company  (
                              company_id Integer primary key,
                              company_name varchar(30)

);

INSERT INTO company(company_id, company_name) values (1,'Fredmeyer');
INSERT INTO company(company_id, company_name) values (2,'Walmart');
INSERT INTO company(company_id, company_name) values (21,'CoreFinder');
INSERT INTO company(company_id, company_name) values (32,'Rose');
INSERT INTO company(company_id, company_name) values (412,'Costco');
INSERT INTO company(company_id, company_name) values (43,'SafeWay');
INSERT INTO company(company_id, company_name) values (25,'Amazon');


select * from company;



--1-Can you display sales person names ending with “th”?

select * from salesPerson where sp_name like '%th';
select sp_name from salesPerson where sp_name like '%th';
select count(*) from salesPerson where sp_name like '%th';


-- 2-Can you display company names for company_id 21,32,412,43,25 ?
select company_id , company_name from company where company_id in (21,32,412,43,25);

--  3-How many Sales person we have in total ?
select count(*) , sp_name from salesPerson group by sp_name;
select count(*) from salesPerson ;
select count(*) from sales3 group by Sales_id;


-- 4-Can you display the sales person name who made a sale to company name  “Walmart”?
select sp_name from salesPerson s inner join company c on s.COMPANY_ID=c.company_id
inner join sales3 s2 on c.company_id = s2.Company_Id where company_name='Walmart';

select sp_name from SalesPerson sp join Sales s on sp.Sp_id=s.Sp_id join Company c on s.company_id=c.company_id

alter table salesPerson add company_id varchar(20);
update salesPerson set company_id=1 where SP_ID=1;
update salesPerson set company_id=2 where SP_ID=2;
update salesPerson set company_id=21 where SP_ID=3;
update salesPerson set company_id=32 where SP_ID=4;
update salesPerson set company_id=412 where SP_ID=5;
update salesPerson set company_id=43 where SP_ID=6;
update salesPerson set company_id=25 where SP_ID=7;
update salesPerson set company_id=4 where SP_ID=8;
update salesPerson set company_id=10 where SP_ID=9;

select * from salesPerson;
select * from sales3;

-- 5-Can you display average sales amount for each sales person id?
select  Sales_id , (avg(AMOUNT)) from sales3 group by Sales_id;

select avg(Sales_id) from SALES;
select * from SALES;

select sales_id,avg(amount) from Sales group by sales_id;

