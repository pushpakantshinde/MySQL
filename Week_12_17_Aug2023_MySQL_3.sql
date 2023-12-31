## stored Prodcedure--Compiled format
## functions
## Triggers

use krish;
## id,student_code,firstname,subject,marks student_info

create table student_info(
id int,
student_code varchar(30),
first_name varchar(25),
subjects varchar(30),
marks float
);

insert into student_info values(1,"100","Krish","Data Science",50),
(2,"102","Sunny","Machine Learning",70),
(3,"103","John","Physics",80),
(4,"104","Mary","Chemistry",90),
(5,"105","Virat","Cricket",100),
(6,"106","tony","Dhoni",70);

select * from student_info;

call ranked_students(85);

call get_student(3);

call top_marks(@krish);

select @krish;

set @krish='102';

call display_marks(@krish);

select @krish;

select * from student_info;

desc student_info;
##indexes
create index idx_firstname
on student_info(first_name);

select * from student_info where first_name="Krish";

alter table student_info
drop index idx_firstname;

Select * from student_info;
## Views

create view stud_basic_info as
select student_code,first_name
from student_info;

select * from stud_basic_info;