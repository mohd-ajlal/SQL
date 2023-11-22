create database college;

use college;

create table stu(
	id int primary key unique,
    name varchar(50),
    age int not null
);
 
INSERT INTO stu values(1, "Mohd Ajlal", 19);
INSERT INTO stu values(2, "Mohd Anas", 25);
INSERT INTO stu values(3, "NEW name", 00);
select * from stu;