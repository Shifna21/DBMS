create database employees_Management_system;
use employees_management_system;
create table employees(emp_id int auto_increment primary key,first_name varchar(50),
last_name varchar(50),salary int,department varchar(50));
show tables;
describe employees;
insert into employees(emp_id,first_name,last_name,salary,department)values(1,'aju','a',10000,'sales'),
(2,'abi','c',10000,'sales'),(3,'ali','s',20000,'IT'),(4,'lallu','a',15000,'manager'),(5,'ammu','t',18000,'sales');
select * from employees;
alter table employees
add date_of_joining int;
update employees
SET salary=60000
WHERE emp_id=3;
select * from employees where salary=60000;
select*from employees;



