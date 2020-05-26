--PERSON TABLE
create table person(

  person_id serial primary key,
  name varchar(50),
  age float,
  height float,
  city varchar(20),
  favorite_color varchar(10)

);

insert into person
(name, height, city, favorite_color, age)
values
('amy', 163.02, 'New York', 'green', 25);

insert into person
(name, height, city, favorite_color, age)
values
('charlene', 160.02, 'Provo', 'green', 34);

insert into person
(name, height, city, favorite_color, age)
values
('John', 164.75, 'Sydney', 'red', 37);

insert into person
(name, height, city, favorite_color, age)
values
('max', 154.75, 'Moscow', 'blue', 31);


select * from person
order by height desc;


select * from person
order by height asc;


select * from person
order by age desc;

select * from person
where age > 20;

select * from person
where age = 18;

select * from person
where age != 27;

select * from person
where favorite_color != 'red';


select * from person
where favorite_color != 'red' and favorite_color != 'blue';

select * from person
where favorite_color = 'orange' or favorite_color = 'green';


select * from person
where favorite_color in ('orange', 'blue','green');


select * from person
where favorite_color in ('yellow', 'purple');


--ORDERS TABLE
insert into orders
	(order_id, product_name, porduct_price, quantity)
values
(1, 'a thing', 14.52, 5);


insert into orders
	(order_id, product_name, porduct_price, quantity)
values
(2, 'a thing2', 17.52, 6);


insert into orders
	(order_id, product_name, porduct_price, quantity)
values
	(3, 'stuff', 7.52, 16);


insert into orders
	(order_id, product_name, porduct_price, quantity)
values
	(4, 'newmans hot sauce', 1.52, 1);

insert into orders
	(order_id, product_name, porduct_price, quantity)
values
	(5, 'newmans hot sauce', 1.52, 3);


select * from orders;

select sum(quantity) from orders;

select sum(porduct_price * quantity) from orders;

select sum(porduct_price * quantity) from orders
where person_id = 2;



--ARTIST TABLE
insert into artist
(name)
values
('Robert');


insert into artist
(name)
values
('Sally');


insert into artist
(name)
values
('John');


select * from artist 
order by name desc 
limit 10;


select * from artist 
order by name  
limit 5;


select * from artist 
where name like 'Black%';


select * from artist 
where name like '%Black%';



-- EMPLOYEE TABLE
select first_name, last_name from employee 
where city = 'Calgary';


select max(birth_date) from employee; 

select min(birth_date) from employee; 

select * from employee
where reports_to = 2; 


select count(*) from employee
where city = 'Lethbridge'; 


-- INVOICE TABLE
select count(*) from invoice
where billing_country = 'USA';

select max(total) from invoice;

select min(total) from invoice;

select * from invoice
where total > 5;

select count(*) from invoice
where total > 5;

select count(*) from invoice
 where billing_state in ('AZ', 'CA', 'TX');

select avg(total) from invoice;

select sum(total) from invoice;

