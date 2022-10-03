select * from EMPLOYEES;

/*
 INNER JOIN
 Only matching portion of the tables
 */

select * from CUSTOMER;
select * from ADDRESS1;

select FIRST_NAME, LAST_NAME, ADDRESS,PHONE
from CUSTOMER inner join ADDRESS1 on CUSTOMER.ADDRESS_ID = ADDRESS1.ADDRESS_ID;


select FIRST_NAME, LAST_NAME, ADDRESS1.ADDRESS_ID ,CUSTOMER.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER inner join ADDRESS1 on CUSTOMER.ADDRESS_ID = Address1.ADDRESS_ID;

-- aliases
select FIRST_NAME, LAST_NAME, a.ADDRESS_ID ,c.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS1 A on c.ADDRESS_ID = a.ADDRESS_ID;

/*
 left Outer join
 matching part/intersection   + only unique for LEFT table
 */

-- left outer join
-- there is no difference between full outer join Vs full join

select FIRST_NAME, LAST_NAME, a.ADDRESS_ID ,c.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER C left outer join ADDRESS1 A on c.ADDRESS_ID = a.ADDRESS_ID;

-- right outer join
--matching part/intersection   + only unique for Right table
select FIRST_NAME, LAST_NAME, a.ADDRESS_ID ,c.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER C right outer join ADDRESS1 A on c.ADDRESS_ID = a.ADDRESS_ID;

-- or using exchanging the Address and Customer tables
select FIRST_NAME, LAST_NAME, a.ADDRESS_ID ,c.CUSTOMER_ID, ADDRESS,PHONE
from Address1 A left outer join CUSTOMER C on c.ADDRESS_ID = a.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS,C.ADDRESS_ID,PHONE
from ADDRESS1 A left join CUSTOMER c on C.Address_ID=A.ADDRESS_ID;

-- all of them
select FIRST_NAME,LAST_NAME,A.ADDRESS,C.ADDRESS_ID,ADDRESS, PHONE
from ADDRESS1 A left join CUSTOMER c on C.Address_ID=A.ADDRESS_ID;

/*
 Full Outer Join
    Mathcing part + Only unique for Right + Left Tables
        -- there is no difference between full outer join Vs full join
 */
-- Full of them
select FIRST_NAME,LAST_NAME,A.ADDRESS,C.ADDRESS_ID,ADDRESS, PHONE
from ADDRESS1 A full outer join CUSTOMER c on C.Address_ID=A.ADDRESS_ID;

select FIRST_NAME, LAST_NAME, a.ADDRESS_ID ,c.CUSTOMER_ID, ADDRESS,PHONE
from CUSTOMER C full outer join ADDRESS1 A on c.ADDRESS_ID = a.ADDRESS_ID;

/*
-- LEFT OUTER JOIN WITH WHERE diffrent type,,,,getting with out NULLS,,,,,,,,,,,,,,,,
-- Note : if there is a customer with addressID 6 , since there is NO matching data from address table
-- it will assign null value for address table address_Id thats why we're using WHERE address.address_ID  is
-- NULL to get unique for LEFT Table..

 */

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_Id, ADDRESS1.ADDRESS_ID,phone
from customer left outer join ADDRESS1 on CUSTOMER.ADDRESS_ID= ADDRESS1.ADDRESS_ID where ADDRESS1.ADDRESS_ID is null;

select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.ADDRESS_Id, ADDRESS1.ADDRESS_ID,phone
from customer left outer join ADDRESS1 on CUSTOMER.ADDRESS_ID= ADDRESS1.ADDRESS_ID where CUSTOMER.ADDRESS_ID is null;

/*


-- FULL OUTER JOIN WITH WHERE
-- Get me non-matching part of the tables......// all the nulls
 */
 select CUSTOMER_ID, FIRST_NAME, LAST_NAME, CUSTOMER.address_id, ADDRESS1.address_ID, PHONE
from CUSTOMER full outer join ADDRESS1 on CUSTOMEr.ADDRESS_ID = ADDRESS1.ADDRESS_ID
where ADDRESS1.ADDRESS_ID is null or CUSTOMER.CUSTOMER_ID is null;





