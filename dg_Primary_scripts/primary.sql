set verify off
PROMPT specify a password for sys as parameter 1;
DEFINE sysPassword = &1
PROMPT specify a password for system as parameter 2;
DEFINE systemPassword = &2
host /u01/app/oracle/product/10.2.0/db_1/bin/orapwd file=/u01/app/oracle/product/10.2.0/db_1/dbs/orapwprimary password=&&sysPassword force=y
@/u01/app/oracle/admin/primary/scripts/CreateDB.sql
@/u01/app/oracle/admin/primary/scripts/CreateDBFiles.sql
@/u01/app/oracle/admin/primary/scripts/CreateDBCatalog.sql
@/u01/app/oracle/admin/primary/scripts/postDBCreation.sql
-- @/u01/app/oracle/admin/primary/scripts/AlterDbDataGuard.sql
-- @/u01/app/oracle/admin/primary/scripts/BackupDbf_Logs.sql
-- @/u01/app/oracle/admin/primary/scripts/CreateStandbyControlfiles.sql
