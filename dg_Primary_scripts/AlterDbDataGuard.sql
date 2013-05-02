--
-- AlterDbDataGurad.sql
--
connect "SYS"/"&&sysPassword" as SYSDBA
--
-- Logging On
--
set echo on
spool /u01/app/oracle/admin/primary/scripts/AlterDbDataGuard.log
select 'create_SLRs_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
--
-- Standby Redo Logs (SLRs) Createtion
--
alter database add  standby logfile 
    group 4 '/u01/app/oracle/oradata/primary/standby_redo01.log' size 50m;
alter database add  standby logfile 
    group 5 '/u01/app/oracle/oradata/primary/standby_redo02.log' size 50m;
alter database add  standby logfile 
    group 6 '/u01/app/oracle/oradata/primary/standby_redo03.log' size 50m;
alter database add  standby logfile 
     group 7 '/u01/app/oracle/oradata/primary/standby_redo04.log' size 50m;
select member from v$logfile;   
--
-- Logging Off
--
select 'create_SLRs_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
spool off
