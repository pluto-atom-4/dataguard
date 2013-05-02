#!/bin/sh

cp -p /home/oracle/scripts/initstandby.ora /u01/app/oracle/product/10.2.0/db_1/dbs
cp -p /home/oracle/scripts/tnsnames.ora /u01/app/oracle/product/10.2.0/db_1/network/admin
cp -p /home/oracle/scripts/*.sql /u01/app/oracle/admin/standby/scripts/
#
scp primary:$ORACLE_HOME/dbs/orapwprimary /u01/app/oracle/product/10.2.0/db_1/dbs/orapwstandby
scp primary:/home/oracle/standby_backup/* $ORACLE_BASE/oradata/standby/
scp primary:/home/oracle/standby_backup/arch/* $ORACLE_BASE/oradata/standby/arch

# /u01/app/oracle/product/10.2.0/db_1/bin/sqlplus /nolog @/u01/app/oracle/admin/standby/scripts/standby.sql
