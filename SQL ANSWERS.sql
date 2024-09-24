create database countries;
use countries;
create table country(country_id int primary key,country_name varchar(100),region_id varchar(100));
show tables;
describe country;
create table job(job_id int ,job_title varchar(100) default'',min_salary int default 8000,max_salary int Null);
describe job;
select * from job;
insert into job(job_id,job_title,min_salary,max_salary)
values(1,'manager',8000,16000),(2,'sales',8500,12000),(3,'IT',20000,40000);
create table customers(cust_id int ,first_name varchar(100),last_name varchar(100),
city varchar(100),age int,dept varchar(50));
describe customers;
insert into customers(cust_id,first_name,last_name,city,age,dept)
values(101,'mesa','loop','berlin',30,'acct'),(102,'smith','oak','london',27,'devl'),
(103,'john','jorz','newyork',37,'QA'),(104,'hary','gaga','america',32,'QA');
select * from customers;
select * from customers where city='berlin';
select * from customers order by city desc;
select * from customers where city ='berlin' or city='london';
select first_name,last_name from customers where age>30 group by first_name,last_name;
create table item(item_id int,item varchar(100),price int);
insert into item(item_id,item,price)values(1001,'book',1200),(1002,'pen',930),
(1003,'bag',1430),(1004,'copy',1030);
select * from item;
select item_id, MAX(price) from item group by item_id ;
select max(price) from item;
create table employee(id int,name varchar(100),department varchar(100),age int);
insert into employee(id,name,department,age)values(1,'maria gloria','cs',22),(2,' John Smith ','IT',23),(3,'gal rao','cs',22);
select * from employee;
select * from employee where department='cs' OR department='IT';