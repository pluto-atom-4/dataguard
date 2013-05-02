#!/bin/sh

mkdir -p /u01/app/oracle/admin/standby/adump
mkdir -p /u01/app/oracle/admin/standby/bdump
mkdir -p /u01/app/oracle/admin/standby/cdump
mkdir -p /u01/app/oracle/admin/standby/dpdump
mkdir -p /u01/app/oracle/admin/standby/pfile
mkdir -p /u01/app/oracle/admin/standby/udump
mkdir -p /u01/app/oracle/admin/standby/scripts
mkdir -p /u01/app/oracle/flash_recovery_area
mkdir -p /u01/app/oracle/oradata/standby
mkdir -p /u01/app/oracle/oradata/standby/arch
mkdir -p /u01/app/oracle/product/10.2.0/db_1/cfgtoollogs/dbca/standby
mkdir -p /u01/app/oracle/product/10.2.0/db_1/dbs
mkdir -p /u01/app/oracle/admin/standby/scripts
ORACLE_SID=standby; export ORACLE_SID
echo You should Add this entry in the /etc/oratab: standby:/u01/app/oracle/product/10.2.0/db_1:Y
# /u01/app/oracle/product/10.2.0/db_1/bin/sqlplus /nolog @/u01/app/oracle/admin/standby/scripts/standby.sql
