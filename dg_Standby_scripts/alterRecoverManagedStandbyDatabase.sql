connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/oracle/admin/standby/scripts/alterRecoverManagedStandbyDatabase.log
startup mount;
alter database recover managed standby database using current logfile disconnect;
spool off
