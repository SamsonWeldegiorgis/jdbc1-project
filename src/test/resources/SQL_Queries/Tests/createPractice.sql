
create table success(
    id_num Integer primary key ,
    first_name varchar(20) not null,
    gender varchar(10) not null,
    phone Integer
) ;

insert into success (id_num, first_name, gender, phone) values (1,'Sam','M',1554451546);
insert into success (id_num, first_name, gender, phone) values (2,'Fil','F', 5544514516);
insert into success (id_num, first_name, gender, phone) values (3,'Zim','M',9547511551);

select * from success;
update success set first_name='Sam' where phone=1554451546;
update success set first_name='Zim' where phone=9547511551;
update success set first_name='Fil' where gender='M';

delete success where first_name ='Zim';
insert into success (id_num, first_name, gender, phone) values (3,'Zim','M',9547511551);

alter table success rename to victory;
select * from victory;

Create table yaeeni (
    id int primary key ,
    name varchar(20) not null,
    amount decimal (7,3) ,
    address varchar(50) not null


);

insert into yaeeni  (id, name, amount, address ) values (1,'Fatuma' , 65.55 , 'Sudan');
insert into yaeeni  (id, name, amount, address ) values (2,'Zara' , 15.105 , 'Eritrea');
insert into yaeeni  (id, name, amount, address ) values (3,'Mustafa' , 105.15 , 'Eritrea');

select * from yaeeni;

update yaeeni set name = 'Zekarias' where id = 1 ;
update yaeeni set amount = 25.55 where id = 2 ;
update yaeeni set amount = (7,3) where amount =(5,3);

alter table yaeeni drop column address;

alter table yaeeni add column address;

update yaeeni set address = 'Sudan' where id=1;
update yaeeni set address = 'Eritrea' where amount=25.550;

alter table yaeeni add address varchar(50) ;

delete from yaeeni amount ;
drop table yaeeni ;

alter table yaeeni add amount decimal(7,3);
