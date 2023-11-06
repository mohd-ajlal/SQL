create database college;

use college;

create table stu(id
	id int primary key,
    name varchar(50),
    age int not null
);
 
INSERT INTO stu values(1, "Mohd Ajlal", 19);
INSERT INTO stu values(2, "Mohd Anas", 25);

select * from stu;