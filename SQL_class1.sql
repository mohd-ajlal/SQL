create database xyz;
use xyz;
desc data;
select * from data;
select * from data WHERE age BETWEEN 20 AND 22;
select * from data WHERE name="Surya Ky";
select * from data WHERE age NOT BETWEEN 20 AND 22;
select * from data WHERE age = 20;
select * from data WHERE id>50;
select * from data WHERE age != 20 AND id<5;
select name AS student_name from data; -- change name to student_name
desc data; 
select id, name, city from data;
select id AS stu_id, name as stu_name, city as stu_city from data; 
desc data;
select id, name, age from data where name like 'b%'; 
select id, name, age from data where name like '%s';
select id, name, age from data where name like '%di%';
select * from data where nationality like '%ndi%'; 
select * from data where nationality like '%d s%'; 
select * from data where nationality like '%d_s%'; 
select * from data where nationality like '___zil%'; -- three underscore denote there is only 3 character in the starting
select * from data where nationality like '%B_a___'; 
select * from data where nationality like 'brazil' and name like '%di%'; 
select * from data order by age asc;
select * from data order by age desc;

select count(name) from data;
select max(id) from data;
select count(name) from data where age > 20;
select count(*) from data;
select count(distinct age) from data;
select sum(age) from data;
select avg(age) from data;
select sum(latitude) as sum_latitude from data;
select sum(latitude*100) from data;
select min(latitude) from data;
select max(latitude) from data;
select * from data LIMIT 5;

show databases;
show tables;