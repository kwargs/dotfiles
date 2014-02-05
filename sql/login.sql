define _editor=vim
-- http://www.citforum.ru/database/oracle/sqlplus/
set feedback off
set autocommit off
set appinfo on
set editfile 'buf.sql'
set pagesize 64
set numformat 99999999999999999999
set linesize 200
set autoprint off

set termout off
alter session set nls_date_format = 'dd-mon-yyyy hh24:mi:ss';
set termout on
@prompt
set feedback on

-- vim: set syntax=plsql :
