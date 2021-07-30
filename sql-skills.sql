-- Artist Table  -- 

-- #1
insert into artist (name)
values ('Jay-Z');

insert into artist (name)
values ('Kings of Leon');

insert into artist (name)
values ('Cochise');

-- #2
select * from artist
where artist_id in ( 81, 5 , 100, 252, 91)
order by name;

-- Employee Table

--  #1
select first_name, last_name from employee
where city = 'Calgary';

-- #2 (revisit question)
select reports_to, first_name, last_name  from employee;


-- #3
select count(*) from employee
where city = 'Lethbridge'

--  Invoice TAble

-- #1
select count(*) from invoice
where billing_country = 'USA'

-- #2 
select max(total) 
from invoice;

-- #3
select min(total) 
from invoice;

-- #4
select * from invoice
where total >= 5 ; 

-- #5
select count(*) from invoice
where total < 5;

--  #6
select sum(total) from invoice;

-- JOIN Queries


-- #1
select * from invoice_line
where unit_price > 0.99; 

-- #2
select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c 
on i.customer_id = c.customer_id;

-- #3
select c.first_name as customer_fist_name, c.last_name as customer_last_name, e.first_name
as support_first_name, e.last_name as support_last_name 
from customer c join employee e
on c.support_rep_id = e.employee_id;

--  #4 
select al.title, a.name from album al
join artist a 
on al.artist_id = a.artist_id;

-- EXTRA CREDIT

-- Artist Table

-- #1 
select * from artist
where artist_id in (15, 76, 32, 94, 127, 131, 84, 252, 100, 81)
order by name desc;

-- #2
select * from artist
where name like  'Black%';

-- #3
select * from artist
where name like  '%Black%';

--  Employee Table

-- #1 
select * from employee
order by birth_date desc;

-- #2
select * from employee
order by birth_date;

-- Invoice Table

-- #1
select count(*) from invoice
where billing_state in ('CA', 'TX', 'AZ');

-- #2
select avg(total) from invoice;



