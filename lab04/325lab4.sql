-- CS 325 Week 4 Lab
-- Cass Krosby

start 'set-up-ex-tbls.sql'; 

spool '325lab4-out.txt';

prompt Cass Krosby - Week 4 Lab;
prompt ;

prompt true relational selections;
select * from empl where empl_num = '7900';
select * from dept where dept_num = '100';
prompt true relational projections;
select distinct cust_city, cust_state from customer;
select distinct empl_last_name, job_title from empl;
prompt true Cartesian product;
select * from empl, dept;
prompt true equi-join of customer and empl;
select * from customer, empl where customer.empl_rep = empl.empl_num;

spool off;
