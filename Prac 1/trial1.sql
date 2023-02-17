show databases;
create database pratice1;
use pratice1;
create table Customer (
CustomerId int(2)  primary key,
CustomerName varchar(15),
City char(20),
PhoneNumber char(20)
);
insert into Customer (CustomerId, CustomerName, City, PhoneNumber) values (1,"Joshua","Chester","23773742");
insert into Customer (CustomerId, CustomerName, City, PhoneNumber) values (2,"Joe","Hull","7843847437");
insert into Customer (CustomerId, CustomerName, City, PhoneNumber) values (4,"Hank","Manchester","374892924");
insert into Customer (CustomerId, CustomerName, City, PhoneNumber) values (5,"Frank","Norwich","984389729");
show databases;
use pratice1;
select * from Customer;
select name from Customer where CustomerName like '%o%';