--
-- CreateStandbyControlfiles.sql
--
connect "SYS"/"&&sysPassword" as SYSDBA
--
-- Logging On
--
set echo on
spool /u01/app/oracle/admin/primary/scripts/CreateStandbyControlfiles.log
select 'create_SCTLs_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
--
-- 
--
shutdown immediate;
startup mount;
--
--
--
alter database create standby controlfile 
    as '/home/oracle/standby_backup/standby01.ctl';
host cp /home/oracle/standby_backup/standby01.ctl /home/oracle/standby_backup/standby02.ctl
host cp /home/oracle/standby_backup/standby01.ctl /home/oracle/standby_backup/standby03.ctl
--
--
--
alter database open;
--
-- Logging Off
--
select 'create_SCTLs_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
spool off
