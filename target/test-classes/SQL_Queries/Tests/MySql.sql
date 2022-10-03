select * from books;

select b.name, book_category_id from books b inner join book_categories bc on b.book_category_id = bc.id  ;

select count(*),name , book_category_id from  books
group by name, book_category_id;

select book_category_id from books where ROW< 6;

select book_category_id , count(*) from books
group by book_category_id
order by 2 desc
limit 5;

select book_category_id , count(*) from books
group by book_category_id
limit 2;


select bc.name , count(*) from books inner  join book_categories bc on books.book_category_id = bc.id
group by bc.name
order by 2 desc
limit 5;


