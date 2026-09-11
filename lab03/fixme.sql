-- Delete my_table if it exists. Later versions of sqlplus seem to have 
-- this as an if exists clause, but we're not so lucky!
declare no_table exception;
	pragma exception_init(no_table, -942);
begin
	execute immediate 'drop table books cascade constraints';
	execute immediate 'drop table loans cascade constraints';
exception
when no_table then execute immediate 'select ''No tables found.'' from dual';
end;
/



