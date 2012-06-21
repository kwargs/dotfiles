-- set tracefile name
alter session set tracefile_identifier="&1"
/
begin
    dbms_session.session_trace_enable(true, true);
end;
/

