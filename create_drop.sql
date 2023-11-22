create database company;
create database if not exists company;

use company;

create table emp(
	id int primary key unique,
    name varchar(50),
    age int not null
);

select * from emp;

drop database company;
drop database if exists company;