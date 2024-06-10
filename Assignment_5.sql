USE json;

SELECT * FROM actor_table;

SELECT COUNT(*) FROM actor_table;

SELECT * FROM director_table;

SELECT COUNT(*) FROM director_table;

SELECT * FROM movie;

SELECT COUNT(*) FROM movie;

SELECT * FROM writer_table;

SELECT COUNT(*) FROM writer_table;

SELECT * FROM new_actor_table;

SELECT COUNT(*) FROM new_actor_table;

SELECT * FROM categories_table;

SELECT COUNT(*) FROM categories_table;

select year, name from movie order by year, name;

select distinct(name) from (select a.name,categories,count(distinct actors),count(distinct writer) from new_actor_table a
join writer_table w
on w.name=a.name
join categories_table c
on c.name=a.name
group by a.name,categories
having count(distinct actors)>3 and count(distinct writer)>4) a
