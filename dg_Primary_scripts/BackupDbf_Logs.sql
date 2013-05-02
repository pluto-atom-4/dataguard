--
-- BackupDbf_logs.sql
--
connect "SYS"/"&&sysPassword" as SYSDBA
--
-- Logging On
--
set echo on
spool /u01/app/oracle/admin/primary/scripts/BackupDbf_Logs.log
select 'backup_DBFs_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
--
-- 
--
shutdown immediate;
host mkdir  -p /home/oracle/standby_backup/arch
host cp -p /u01/app/oracle/oradata/primary/*.dbf /home/oracle/standby_backup/
host cp -p /u01/app/oracle/oradata/primary/*.log /home/oracle/standby_backup/
host cp -p /u01/app/oracle/oradata/primary/arch/* /home/oracle/standby_backup/arch
--
-- Logging Off
--
select 'backup_DBFs_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
spool off
