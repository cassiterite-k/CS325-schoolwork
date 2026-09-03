-- Cass Krosby, 2026-09-02
-- 325 HW 1 - my first table

-- Table: my_table
drop table if exists my_table cascade constraints;
create table my_table (
    item_id:    Integer,
    item_name:  varchar2(40),
    item_count: Integer,
    item_price: Float,
    primary key (item_id)
);

-- Need numbers in the table!
begin
    for id in 1..5 loop
        insert into my_table (item_id, item_count, item_price) values (id, id * 17 - 3, 1.50 / id);
    end loop;
end;
/

-- Give rows creative names
update table my_table set item_name = 'Life Stories of John Lennon'            where item_id = 1;
update table my_table set item_name = 'The Secret Lives of Swiss Cheesemakers' where item_id = 2;
update table my_table set item_name = 'Your Aunt''s Cabinet'                   where item_id = 3;
update table my_table set item_name = 'The Father of the Bride'                where item_id = 4;
update table my_table set item_name = 'Silly Symphonies, vol. 5'               where item_id = 5;
