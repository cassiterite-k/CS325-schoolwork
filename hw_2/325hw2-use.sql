-- Cass Krosby
-- CS 325 Homework 2 - use tables
-- 18-9-2026

prompt Ensuring that you have run the proper files...;
start 325hw2-create.sql;
start 325hw2-pop.sql;

spool 325hw2-out.txt;

prompt Cass Krosby - Homework 2;
prompt;

prompt Current state of client table;
describe client;
select * from client;

prompt Currnt state of video table;
describe video;
select * from video;

prompt Current state of rental table;
describe rental;
select * from rental;

spool off;
