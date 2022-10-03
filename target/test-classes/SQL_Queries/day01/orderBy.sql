/*
 order by statemtnt : used for sorting the result

        ascending order : ASC
        descending order : DESC


 */
 select * from COUNTRIES order by REGION_ID ; -------by default sorts in ascending order
 select * from COUNTRIES order by REGION_ID asc ;
 select * from COUNTRIES where REGION_ID <5 order by REGION_ID asc;

 select * from COUNTRIES order by REGION_ID desc ;