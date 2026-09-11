-- Cass Krosby, Keira Flowers
-- CS 325 - Lab 3

-- Run lecture sql
start '325lect02-2-new.sql';

-- Start spooling
spool 325lab3-out.txt;

prompt 'Lab Team: Cass Krosby, Keira Flowers';

insert into parts
values
(10606, '2 inch crush washer', 102, 20.00, 'GGG', '18-Jun-2025');
/*
create table part_orders
(order_num     char(6),
 cust_num      char(8)   not null,
 part_num      integer   not null,
 order_date    date, 
 quantity      integer   default 1 not null,
 order_code    char(1)   check(order_code in ('B', 'I', 'G')),
 delivery_code char(1)   check(delivery_code in ('U', 'F', 'P')) not null,
 primary key (order_num),
 foreign key (part_num) references parts
);
*/

insert into part_orders
values
('Apples', '29387236', 10606, '1-sep-2026', 4, 'I', 'U');

insert into part_orders
values
('289271', '39387273', 10603, '20-jul-2025', 10, 'G', 'F');

insert into part_orders
values
('298379', '03728309', 10604, '18-jan-2026', 89, 'B', 'P');

select * from parts;
select * from part_orders;

-- Stop spooling
spool off;
