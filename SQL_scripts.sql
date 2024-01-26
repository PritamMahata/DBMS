use college;
create database oracleDB;
drop database oracleDB;
show databases;
create table dept(
  id int,
  name varchar(50),
  age int not null
);
INSERT INTO dept VALUES(1, 'John', 20);
select * from dept;
drop table dept;
