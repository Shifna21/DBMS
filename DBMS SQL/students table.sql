create database student;
use student;
create table student(id int not null,
name varchar(20) not null,
age int not null,
class int not null);
 create table faculty(id int not null,
 name varchar(20) not null,
 class int not null);
 describe student;
 describe faculty;
 show tables;
 alter table student
 add subject varchar(20),
 add place varchar(100);
 alter table student
 modify subject varchar(100) not null;
 alter table student
 drop column subject;
 alter table student
 change column place location varchar (20) not null;
  alter table student
  rename to students;
  describe students;
  insert into students(id,name,age,class,subject,location)
  values(1,'aju',10,4,'maths','a'),(2,'ali',8,3,'eng','b');
  select * from students;
  alter table students auto_increment=6;
  alter table students
  drop column age;
  
  
 
 
 
 
