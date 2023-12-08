create database pushpakant;

use pushpakant;
create table employees(emp_id int, 
first_name varchar(50),
last_name varchar(50),
DOB date,
hire_date date,
position varchar(50),
salary float);

select * from employees;

insert into employees values (1, "pushpakant", "shinde", "1995-07-06", "2017-06-26", "Sr. Engineer", 100000);
insert into employees values (2, "anil", "dabhade", "1995-07-06", "2017-06-26", "Sr. Engineer", 90000);
insert into employees values (3, "ajay shingare", "shinde", "1995-07-06", "2017-06-26", "Sr. Engineer", 120000);
insert into employees values (4, "aakash", "sancheti", "1995-07-06", "2017-06-26", "Sr. Engineer", 150000);
insert into employees values (5, "shrikant", "mestry", "1995-07-06", "2017-06-26", "Sr. Engineer", 70000);

select first_name, last_name from employees;

select * from employees where salary>100000;

select * from employees order by last_name asc;

SET SQL_SAFE_UPDATES=0;
 
update employees set salary=110000 where first_name="pushpakant";

alter table employees add dept varchar(50);

/*drop table if exists employees;*/