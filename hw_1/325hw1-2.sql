-- Cass Krosby, 2026-09-02
-- 325 HW 1 - using a table

-- Turn on spooling for the work
spool 325hw1-out.txt;

-- Output the contents of my_table
select * from my_table;

-- Clean up spooling
spool off;
