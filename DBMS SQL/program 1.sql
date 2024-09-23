create database employees_Management_system;
use employees_management_system;
create table employees(emp_id int auto_increment ,first_name varchar(50),
last_name varchar(50),salary int,department varchar(50));
show tables;
describe employees;
insert into employees(emp_id,first_name,last_name,salary,department)values(1,'aju','a',10000,'sales'),
(2,'abi','c',10000,'sales'),(3,'ali','s',20000,'IT'),(4,'lallu','a',15000,'manager'),(5,'ammu','t',18000,'sales');
alter table employees
add date_of_joining int;
update employees
SET salary=60000
WHERE emp_id=3;
select * from employees where salary=60000;
select * from employees;
select * from employees where department='sales';
select * from employees where department='IT' AND emp_id<5;
select * from employees where department='IT' OR salary='10000';
select * from employees where (department='sales'AND first_name='abi')
OR (emp_id<4);
select distinct first_name,salary,department from employees;
select *from employees where salary=10000 order by last_name ASC;
select *from employees where salary=10000 order by emp_id DESC;
select first_name,salary from employees where emp_id<5 order by last_name desc ,emp_id asc;
select emp_id,first_name from employees where emp_id<5 
group by emp_id,first_name;
select count(*) from employees ;
select count(*) from employees where salary=10000 ;
select count(salary) from employees;
select count(distinct last_name)from employees;
select count(distinct department) from employees ;
select first_name,sum(salary)as "total salary"from emp_id group by first_name;
insert into employees(emp_id,first_name,last_name,salary,department)values(6,'aju','a',10000,'sales'),
(7,'abi','c',10000,'sales'),(8,'ali','s',20000,'IT'),(9,'lallu','a',15000,'manager'),(10,'ammu','t',18000,'sales');
select* from employees;



