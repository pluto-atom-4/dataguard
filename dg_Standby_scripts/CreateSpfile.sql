connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/standby/scripts/CreateSpfile.log
create spfile from pfile;
spool off
