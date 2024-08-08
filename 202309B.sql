
-- creating database
create database demo;

-- selecting database
use demo;

-- creating table
create table Student_tbl(
id int not null unique,
name varchar(50) not null,
email varchar(50) unique,
gender varchar(15) not null,
city varchar(30) default 'Karachi'
);


--insering values
insert into Student_tbl(id, name, email, gender) values(1, 'Ebad uddin ahmed','ebad@gmail.com', 'Male')
insert into Student_tbl(id, name, email, gender, city) values(2, 'ALi Ahmed Sheikh','ali@gmail.com', 'Male', 'Lahore')
insert into Student_tbl(id, name, email, gender, Age) values(3, 'Rameez','rameez@gmail.com', 'Male', '20')

-- command to display table data
select * from Student_tbl;

-- DDL Commands(Data Definition language)
-- delete all data from the table but structure remains same
truncate table Student_tbl;

-- to delete the column from table
alter table Student_tbl drop column gender;

-- to change the datatype in the table
alter table Student_tbl alter column email varchar(100);

-- to add the column in an existing table
alter table Student_tbl add gender varchar(30);
alter table Student_tbl add Age varchar(255) check(Age > 18);

-- command to delete the table
drop table Student_tbl;