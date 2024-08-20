
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
insert into Student_tbl(id, name, email, gender) values(4, 'Mohsin','mohsin@gmail.com', 'Male')
insert into Student_tbl(id, name, email, gender, city) values(5, 'Raffay','raffay@gmail.com', 'Male', 'Lahore')
insert into Student_tbl(id, name, email, gender, city) values(6, 'Ubaid','ubaid@gmail.com', 'Male', 'Hyderabad')

insert into Student_tbl(id, name, email, gender) values(7, 'Mir Muddassir','ebad1@gmail.com', 'Male')
insert into Student_tbl(id, name, email, gender, city) values(8, 'Hamid','hamid@gmail.com', 'Male', 'Lahore')
insert into Student_tbl(id, name, email, gender, city) values(9, 'Hussain','hussain@gmail.com', 'Male', 'Hyderabad')

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
-- drop table Student_tbl;

-- Like clause use to match the pattern (means searching from database);

select * from Student_tbl where name like '_b%';

select distinct city from Student_tbl;

select * from Student_tbl where name = 'ubaid' OR city != 'Lahore';

select * from Student_tbl where (name = 'ubaid' OR name = 'Rameez') And city = 'Hyderabad'


select name, email, gender from student_tbl where name like '%w%';

select distinct city from Student_tbl;

select name, email, gender from Student_tbl order by name asc;

select * from Student_tbl where (name = 'hamid' Or name = 'rameez') and city = 'hyderabad';


create table employee(
id int not null unique identity(100,2),
fname varchar(255) not null,
lname varchar(255) not null,
email varchar(255) unique,
designation varchar(255),
gender varchar(255),
age varchar(255) not null,
salary int, 
Dept int
);

INSERT INTO employee (fname, lname, email, designation, gender, age, salary, Dept)
VALUES
    ('Alice', 'Johnson', 'alice.johnson@example.com', 'Manager', 'Female', 32, 75000, 1),
    ('Bob', 'Williams', 'bob.williams@example.com', 'Engineer', 'Male', 28, 65000, 1),
    ('Charlie', 'Davis', 'charlie.davis@example.com', 'Analyst', 'Male', 35, 70000, 1),
    ('Diana', 'Miller', 'diana.miller@example.com', 'Coordinator', 'Female', 27, 60000, 3),
    ('Edward', 'Lee', 'edward.lee@example.com', 'Designer', 'Male', 29, 62000, 3),
    ('Fiona', 'Clark', 'fiona.clark@example.com', 'Developer', 'Female', 31, 68000, 3),
    ('George', 'Taylor', 'george.taylor@example.com', 'Manager', 'Male', 33, 80000,2),
    ('Hannah', 'Moore', 'hannah.moore@example.com', 'Analyst', 'Female', 26, 58000,2),
    ('Ian', 'Johnson', 'ian.johnson@example.com', 'Engineer', 'Male', 30, 67000,3),
    ('Jessica', 'Smith', 'jessica.smith@example.com', 'Coordinator', 'Female', 34, 72000,1);

	

	
	-- retuns the count of values from the table (you can use the alias name as temporary name of column)
	select count(designation) as CountOfDesignation from employee where designation = 'Engineer';


	-- joins in sql server

