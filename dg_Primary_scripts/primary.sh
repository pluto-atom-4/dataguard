#!/bin/sh

mkdir -p /u01/app/oracle/admin/primary/adump
mkdir -p /u01/app/oracle/admin/primary/bdump
mkdir -p /u01/app/oracle/admin/primary/cdump
mkdir -p /u01/app/oracle/admin/primary/dpdump
mkdir -p /u01/app/oracle/admin/primary/pfile
mkdir -p /u01/app/oracle/admin/primary/udump
mkdir -p /u01/app/oracle/flash_recovery_area
mkdir -p /u01/app/oracle/oradata/primary
mkdir -p /u01/app/oracle/oradata/primary/arch
mkdir -p /u01/app/oracle/product/10.2.0/db_1/cfgtoollogs/dbca/primary
mkdir -p /u01/app/oracle/product/10.2.0/db_1/dbs
ORACLE_SID=primary; export ORACLE_SID
echo You should Add this entry in the /etc/oratab: primary:/u01/app/oracle/product/10.2.0/db_1:Y
/u01/app/oracle/product/10.2.0/db_1/bin/sqlplus /nolog @/u01/app/oracle/admin/primary/scripts/primary.sql
