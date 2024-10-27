create schema assessement;
drop schema assessement;
create table customer
(
	customer_id int not null,
    customer_name varchar(45) not null,
    city varchar(45) not null,
    grade int,
    salesman_id int not null,
    foreign key (salesman_id) references salesman(salesman_id)
);
create table salesman
(
	salesman_id int primary key,
    salesman_name  varchar(45) not null,
    city varchar(45) not null,
	commission float not null
);
describe salesman;
describe customer;
insert into customer value (3002,'Nick Rimando','New Yourk',100,5001);
insert into customer value (3007,'Brad Davis','New Yourk',200,5001);
insert into customer value (3005,'Graham Zusi','California',200,5002);
insert into customer value (3008,'Julian Green','London',300,5002);
insert into customer value (3004,'Fabian Johnson','Paris',300,5006);
insert into customer value (3009,'Geoff Cameron','Berlin',100,5003);
insert into customer value (3003,'Jozy Altidor','Moscow',200,5007);
insert into customer value (3001,'Brad Guzan','London',null,5001);
select * from customer;

insert into salesman value (5001,'Jams Hoog','New Yourk',0.15);
insert into salesman value (5002,'Nail Knite','Paris',0.13);
insert into salesman value (5005,'Pit Alex','London',0.11);
insert into salesman value (5006,'Mc lyon','Paris',0.14);
insert into salesman value (5007,'Paul Adam','Rome',0.13);
insert into salesman value (5003,'Lauson Hen','San Jose',0.12);

select * from salesman;

select customer.customer_name,customer.city,salesman.salesman_name,salesman.commission
from customer join
salesman on customer.salesman_id = salesman.salesman_id;
commit;