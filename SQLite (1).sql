
  
--1)SUPPLIER
create table supplier(
supplier_id number not null,
supplier_name varchar(50) not null,
supplier_contact_no number not null,
primary key(supplier_id)
);

--2)EMPLOYEE
create table employee(
emp_id number not null,
emp_salary number not null,
primary key(emp_id)
);

--3)STAFF

create table staff(
emp_id number references employee(emp_id),
working_hours number ,
primary key(emp_id)
);

--4)MANAGER
create table manager(
emp_id number references employee(emp_id),
manager_name varchar(50),
experience varchar(50)
primary key(emp_id)
);

--5)PRODUCT
create table product(
product_id number not null,
product_name varchar(50) not null,
manufacturing_date date,
expiry_date date,
prod_price_per_unit number not null,
prod_unit_per_month number not null,
prod_totalcost_month number not null,
emp_id number references employee(emp_id),
primary key(product_id)
);

--6)INGREDIENTS
create table ingredients(
ingredient_id number not null,
ingredient_name varchar(50) not null,
ing_price_per_unit number not null,
ing_units_per_month number not null,
ing_totalcost_month number not null,
emp_id number references employee(emp_id),
supplier_id number references supplier(supplier_id),
primary id(ingredient_id)
);

--7)PROD_ING
create table prod_ing(
product_id number references product(product_id),
ingredient_id number references
ingredients(ingredient_id),
ing_units_per_100_prod_units number not null,
primary key(product_id,ingredient_id)
);

--8)DISTRIBUTOR
create table distributor(
distributor_id number not null,
email varchar(50) not null,
distributor_contact_no number not null,
primary key(distributor_id)
);

--9)ORDER
create table order(
distributor_id number references
distributor(distributor_id),
product_id number references product(product_id),
prod_units_ordered number not null,
prod_totalcost number not null,
primary key(distributor_id,product_id)
);

--INSERTING DATA INTO VALUES:-

--SUPPLIER:-

insert into supplier values(101,&#39;dinesh&#39;,9998887810);
insert into supplier values(102,&#39;rakesh&#39;,9998887811);
insert into supplier values(103,&#39;suresh&#39;,9998887812);
insert into supplier values(104,&#39;ramesh&#39;,9998887813);
insert into supplier values(105,&#39;arjun&#39;,9998887814);
insert into supplier values(106,&#39;vijay&#39;,9998887815);

--EMPLOYEE:-
insert into employee values(501,100000);
insert into employee values(502,150000);
insert into employee values(503,50000);
insert into employee values(504,60000);
insert into employee values(505,40000);
insert into employee values(506,80000);
insert into employee values(507,90000);
insert into employee values(508,20000);
insert into employee values(509,15000);
insert into employee values(510,30000);

--STAFF:-
insert into staff values(503,6);
insert into staff values(504,5);
insert into staff values(505,4);
insert into staff values(506,8);
insert into staff values(507,4);
insert into staff values(508,6);
insert into staff values(504,7);
insert into staff values(510,8);

--MANAGER:-
insert into manager values(501,&#39;krishna&#39;,&#39;15years&#39;);
insert into manager values(502,&#39;Hari&#39;,&#39;20years&#39;);

--PRODUCT:-
insert into product values(301,&#39;prod1&#39;,&#39;2021-01-
01&#39;,&#39;2024-01-01&#39;,6000,20,120000,502);
insert into product values(302,&#39;prod2&#39;,&#39;2021-02-
02&#39;,&#39;2024-02-02&#39;,8000,10,80000,502);
insert into product values(303,&#39;prod3&#39;,&#39;2021-03-
03&#39;,&#39;2024-03-03&#39;,10000,8,80000,502);
insert into product values(304,&#39;prod4&#39;,&#39;2021-04-
04&#39;,&#39;2024-04-04&#39;,14000,6,84000,502);
insert into product values(305,&#39;prod5&#39;,&#39;2021-05-
05&#39;,&#39;2024-05-05&#39;,6000,11,66000,502);
insert into product values(306,&#39;prod6&#39;,&#39;2021-06-
06&#39;,&#39;2024-06-06&#39;,7000,15,105000,502);
insert into product values(307,&#39;prod7&#39;,&#39;2021-07-
07&#39;,&#39;2024-07-07&#39;,9000,14,126000,502);
insert into product values(308,&#39;prod8&#39;,&#39;2021-08-
08&#39;,&#39;2024-08-08&#39;,11000,12,132000,502);

--INGREDIENTS:-
insert into ingredients
values(201,&#39;ing1&#39;,1000,20,20000,501,101);
insert into ingredients
values(202,&#39;ing2&#39;,500,10,50000,501,102);
insert into ingredients
values(203,&#39;ing3&#39;,800,15,12000,501,103);
insert into ingredients
values(204,&#39;ing4&#39;,200,20,4000,501,103);
insert into ingredients
values(205,&#39;ing5&#39;,1100,15,16500,501,104);
insert into ingredients
values(206,&#39;ing6&#39;,1200,20,24000,501,105);
insert into ingredients
values(207,&#39;ing7&#39;,900,10,9000,501,105);
insert into ingredients
values(208,&#39;ing8&#39;,800,15,12000,501,106);
insert into ingredients
values(209,&#39;ing9&#39;,700,20,14000,501,102);
insert into ingredients
values(210,&#39;ing10&#39;,500,10,5000,501,101);
insert into ingredients
values(211,&#39;ing11&#39;,400,10,4000,501,104);

--PROD_ING:-
insert into prod_ing values(301,201,105);
insert into prod_ing values(301,204,109);
insert into prod_ing values(301,206,110);
insert into prod_ing values(302,202,120);
insert into prod_ing values(302,205,104);
insert into prod_ing values(302,203,103);
insert into prod_ing values(303,210,110);
insert into prod_ing values(303,207,125);
insert into prod_ing values(304,208,130);
insert into prod_ing values(304,211,165);

insert into prod_ing values(304,209,114);
insert into prod_ing values(305,201,119);
insert into prod_ing values(305,204,108);
insert into prod_ing values(306,202,121);
insert into prod_ing values(306,205,109);
insert into prod_ing values(306,206,111);
insert into prod_ing values(307,203,113);
insert into prod_ing values(307,207,112);
insert into prod_ing values(308,208,117);
insert into prod_ing values(308,209,119);
insert into prod_ing values(308,210,121);

--DISTRIBUTOR:-
insert into distributor
values(401,&#39;dist1@gmail.com&#39;,9998887771);
insert into distributor
values(402,&#39;dist2@gmail.com&#39;,9998887772);
insert into distributor
values(403,&#39;dist3@gmail.com&#39;,9998887773);

insert into distributor
values(404,&#39;dist4@gmail.com&#39;,9998887774);
insert into distributor
values(405,&#39;dist5@gmail.com&#39;,9998887775);

--ORDER:-
insert into order values(401,301,20,100000);
insert into order values(401,303,10,200000);
insert into order values(402,302,30,300000);
insert into order values(402,304,40,400000);
insert into order values(402,305,50,500000);
insert into order values(403,301,15,600000);
insert into order values(403,302,60,700000);
insert into order values(404,303,30,800000);
insert into order values(404,306,20,900000);
insert into order values(404,307,20,200000);

insert into order values(404,308,15,500000);
insert into order values(405,304,10,900000);
insert into order values(405,305,25,800000);
insert into order values(405,306,10,700000);

--Tables Display:
--1) SUPPLIER
select * from supplier;

--2) EMPLOYEE
select * from employee ;

--3)STAFF:
select * from staff;

--4)MANAGER
select * from manager;

--5)PRODUCT
select * from product;

--6)INGREDIENTS
select * from ingredients;

--7)PROD_ING
select * from prod_ing;

--8)DISTRIBUTOR
select * from distributor;

--9)ORDER1
select * from order1;

--SQL Queries:-
--1)Write a SQL query to display email and contact number of
--distributor who ordered product with product_id=301?
--Query:
Select distributor_id,email, distributor_contact_no from order1
natural join distributor where product_id=301;

--2) Write an SQL query to display ingredients supplied by supplier
--‘arjun’.
--Query:
Select supplier_name,ingredient_id,ingredient_name from
ingredients natural join supplier where supplier_name= ‘arjun’;

--3)Write an SQL query to display the total amount the company
--spends in buying ingredients.
--Query:
Select sum(ing_totalcost_month) as totalcost_of_purchase from
ingredients;

--4)Write an SQL query to display the cost of purchase of goods by
--distributor with id number 404.
--Query:

Select sum(prod_totalcost) as purchase_cost from order where
distributor_id=404;

--5)Write an SQL query to display total units of ingredients supplied
--by each supplier.
--Query:
Select supplier_id,sum(ing_units_per_month) as units_supplied from
ingredients natural join supplier group by supplier_id;