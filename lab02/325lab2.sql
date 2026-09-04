-- CS 325 Fall 2026 - Week 2 Lab
-- Cass Krosby, 2026-09-02


-- Outputs with spooling
spool lab2_output.txt;

-- Prompt with our names and display date
pro 'Cass Krosby, Katie Quinn';
select to_char(sysdate, 'DD-MM-YYYY HH24:MI:SS') as "Date" from dual;

-- Delete my_table if it exists. Later versions of sqlplus seem to have 
-- this as an if exists clause, but we're not so lucky!
declare tablesExist number := 0;
begin
	select 1 into tablesExist from all_tables where table_name = 'BOOKS';
	if tablesExist = 1 then
		execute immediate 'drop table books cascade constraints';
	end if;
	select 2 into tablesExist from all_tables where table_name = 'LOANS';
	if tablesExist = 2 then
		execute immediate 'drop table loans cascade constraints';
	end if;
exception
when NO_DATA_FOUND then tablesExist := 0;
end;
/

-- Table: my_table
create table books (
	book_id     integer,
	price       float,
	name        varchar2(40),
	primary key (book_id)
);

create table loans (
	loan_id     integer,
	loan_date   date,
	return_date date,
	book_id     integer,
	foreign key (book_id)
	references  books(book_id)
);

-- Need numbers in the table!
begin
    for id in 1..6 loop
        insert into books (book_id, price) values (id, 24.00 / id);
    end loop;
    for id in 1..4 loop
	insert into loans (loan_id, book_id) values (id, 6 - id);
    end loop;
end;
/

-- Give rows creative names
update books set name = 'Life Stories of John Lennon'            where book_id = 1;
update books set name = 'The Secret Lives of Swiss Cheesemakers' where book_id = 2;
update books set name = 'Your Aunt''s Cabinet'                   where book_id = 3;
update books set name = 'The Father of the Bride'                where book_id = 4;
update books set name = 'Silly Symphonies, vol. 5'               where book_id = 5;
update books set name = 'Mistborn'                               where book_id = 6;

-- Give rows creative dates
update loans set loan_date = '21-AUG-23', return_date = '28-AUG-23' where loan_id = 1;
update loans set loan_date = '18-SEP-82', return_date = '21-SEP-82' where loan_id = 2;
update loans set loan_date = '19-DEC-24', return_date = '20-JUN-25' where loan_id = 3;
update loans set loan_date = '01-OCT-92', return_date = '31-OCT-92' where loan_id = 4;


describe books;
select * from books;

describe loans;
select * from loans, books where loans.book_id = books.book_id;

-- End spooling
spool off;
