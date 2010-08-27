define _editor=vim
-- http://www.citforum.ru/database/oracle/sqlplus/
set termout off
set appinfo on
set termout on

set pagesize 64
set linesize 128
set numformat 99999999999999999999

set sqlprompt "_USER'@'_CONNECT_IDENTIFIER> "

alter session set nls_date_format = 'dd-mon-yyyy hh24:mi:ss'
/

-- vim: set syntax=plsql :
