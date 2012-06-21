set termout off

column db_role new_value db_role
select Decode(open_mode, 'READ WRITE', 'M', 'S') db_role from v$database;


define edition_name = ''
column edition_name new_value edition_name
-- strip cause:  string beginning ""_USER(edi..." is too long. maximum size is 50 characters.
select '(' || Decode(sign(length(ename)-13), 1, substr(ename, 1, 10) || '...', ename) || ')' edition_name
from (
    select lower(sys_context('USERENV', 'CURRENT_EDITION_NAME')) ename
      from dba_users u
     where u.username = sys_context('USERENV', 'SESSION_USER')
       and u.editions_enabled = 'Y');

set sqlprompt "_USER&&edition_name'@'_CONNECT_IDENTIFIER[&db_role]> "
/
set termout on
