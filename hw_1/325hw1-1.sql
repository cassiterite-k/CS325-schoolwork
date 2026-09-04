-- Cass Krosby, 2026-09-02
-- 325 HW 1 - my first table

-- Delete my_table if it exists. Later versions of sqlplus seem to have 
-- this as an if exists clause, but we're not so lucky!
declare val number;
begin
	select 1 into val from all_tables where table_name = 'MY_TABLE';
	if val = 1 then
		execute immediate 'drop table my_table cascade constraints';
	end if;
end;
/

-- Table: my_table
create table my_table (
    item_id    integer,
    item_name  varchar2(40),
    item_count integer,
    item_price float,
    primary key (item_id)
);

-- Need numbers in the table!
begin
    for id in 1..5 loop
        insert into my_table (item_id, item_count, item_price) values (id, id * 17 - 3, 22.80 / id);
    end loop;
end;
/

-- Give rows creative names
update my_table set item_name = 'Life Stories of John Lennon'            where item_id = 1;
update my_table set item_name = 'The Secret Lives of Swiss Cheesemakers' where item_id = 2;
update my_table set item_name = 'Your Aunt''s Cabinet'                   where item_id = 3;
update my_table set item_name = 'The Father of the Bride'                where item_id = 4;
update my_table set item_name = 'Silly Symphonies, vol. 5'               where item_id = 5;
