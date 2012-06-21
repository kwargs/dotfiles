-- print query plan
select * from table(dbms_xplan.display_cursor('&1'));
