-- Cass Krosby
-- CS 325 Homework 2 - create tables
-- 18-9-2026

prompt Creating tables for Problem 1;

-- Delete tables if they exist. Later versions of sqlplus seem to have 
-- this as an if exists clause, but we're not so lucky!
declare no_table exception;
	pragma exception_init(no_table, -942);
begin
	execute immediate 'drop table client cascade constraints';
	execute immediate 'drop table video cascade constraints';
	execute immediate 'drop table rental cascade constraints';
exception
when no_table then execute immediate 'select ''No tables found.'' from dual';
end;
/

create table client (
	cli_id char(4),
	cli_lname varchar(12),
	cli_fname varchar(8),
	cli_phone char(8),
	primary key (cli_id)
);

create table video (
	vid_id char(6),
	vid_format varchar(9),
	vid_purchase_date date,
	vid_rental_price decimal(6, 2),
	vid_length integer,
	primary key (vid_id)
);

create table rental (
	cli_id char(4),
	vid_id char(6),
	foreign key (cli_id) references client,
	foreign key (vid_id) references video
);


