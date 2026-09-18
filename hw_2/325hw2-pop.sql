-- Cass Krosby
-- CS 325 Homework 2 - populate tables
-- 18-9-2026

delete from rental;
delete from video;
delete from client;

prompt Inserting rows for problem 2;

insert into client values ('000A', 'Alpha' , 'Ann'  , '000-0001');
insert into client values ('111B', 'Beta'  , 'Bob'  , '111-1112');
insert into client values ('222B', 'Beta'  , 'Ann'  , '222-2223');
insert into client values ('333C', 'Carlos', 'David', '333-3334');
insert into client values ('444D', 'Delta' , 'Edie' , '111-1112');

insert into video values ('00000D', 'DVD'   , '10-JAN-2020', 1.99, 73);
insert into video values ('11111H', 'HD-DVD', '20-FEB-2021', 4.99, 91);
insert into video values ('22222B', 'BluRay', '30-MAR-2019', 1.99, 105);
insert into video values ('33333H', 'HD-DVD', '20-FEB-2021', 3.99, 69);
insert into video values ('44444B', 'BluRay', '04-APR-2017', 0.99, 91);

insert into rental values ('111B', '11111H');
insert into rental values ('222B', '00000D');
insert into rental values ('222B', '22222B');
insert into rental values ('333C', '22222B');
insert into rental values ('333C', '00000D');
insert into rental values ('333C', '11111H');
insert into rental values ('000A', '44444B');

prompt Inserting my own rows for problem 3;

insert into client values ('000G', 'Winters', 'Cass', '326-2813');
insert into video  values ('55555G', 'DVD', '10-SEP-2025', 8.35, 90);
insert into rental values ('000G', '55555G');
