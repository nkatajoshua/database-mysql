show databases;
create database Groupsof3;
use Groupsof3;
create table salesman(
salesman_id int,
name varchar(20),
city varchar(20),
commission float
);

create table customer(
customer_id int,
customer_name varchar(20),
city varchar(20),
grade int,
salesman_id int
);

create table orders(
order_no int,
purch_amt float,
order_date date,
customer_id int,
salesman_id int
);

alter table salesman add primary key(salesman_id);
alter table customer add primary key(customer_id);
alter table orders add primary key(order_no);

alter table customer add foreign key(salesman_id)references salesman(salesman_id);
alter table orders add foreign key(customer_id)references customer(customer_id);

insert into salesman(salesman_id,name,city,commission) values (5001,"James Hoog","New York",0.15),(5002,"Nail Knite","Paris",0.13),(5005,"Pit Alex","London",0.11),(5006,"Mc Lyon","Paris",0.14),(5003,"Lauson Hen","",0.12),(5007,"Paul Adam","Rome",0.13);
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3002,"Nick Rimando","New York",100,5001);
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3005,"Graham Zusi","California",200,5002);
insert into customer(customer_id,customer_name,city) values (3001,"Brad Guzan","London");
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3004,"Fabian Johns","Paris",300,5006);
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3007,"Brad Davis","New York",200,5001);
insert into customer(customer_id,customer_name,city,grade) values (3009,"Geoff Camero","Berlin",100);
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3008,"Julian Green","London",300,5002);
insert into customer(customer_id,customer_name,city,grade,salesman_id) values (3003,"Jozy Altidor","Moncow",200,5007);

insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values (70001,150.5,'2016-10-05',3005,5002);
insert into orders(order_no,purch_amt,order_date,customer_id) values(70009,270.65,'2016-09-10',3001);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70002,65.26,'2016-10-05',3002,5001);
insert into orders(order_no,purch_amt,order_date,customer_id) values(70004,110.5,'2016-08-17',3009);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70007,948.5,'2016-09-10',3005,5002);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70005,2400.6,'2016-07-27',3007,5001);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70008,5760,'2016-09-10',3002,5001);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70010,1983.43,'2016-10-10',3004,5006);
insert into orders(order_no,purch_amt,order_date,customer_id) values(70003,2480.4,'2016-10-10',3009);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70012,250.45,'2016-06-27',3008,5002);
insert into orders(order_no,purch_amt,order_date,customer_id,salesman_id) values(70011,75.29,'2016-08-17',3003,5007);

SELECT name, commission
FROM salesman;

SELECT DISTINCT salesman_id
FROM orders;

SELECT name, city
FROM salesman
WHERE city = 'Paris';

SELECT *
FROM customer
WHERE grade = 200;

SELECT order_no, order_date, purch_amt
FROM `order`
WHERE salesman_id = 5001;

SELECT *
FROM customer
WHERE city = 'New York' OR grade <= 100;

SELECT *
FROM salesman
WHERE commission BETWEEN 0.12 AND 0.14;