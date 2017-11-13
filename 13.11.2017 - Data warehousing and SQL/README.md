Please follow instructions below to install database and import sample data to be able participate at Data warehousing and SQL workshop.

*Choose database of your choice: Oracle DB, MySQL or Postgres.*
### In case of any problems please don't hesitate to contact me directly at matus.cimerman@exponea.com

### Oracle DB
1. You can install DB natively on Windows and Linux. Or you can use docker image https://github.com/wnameless/docker-oracle-xe-11g (run `docker run -d -p 49160:22 -p 49161:1521 wnameless/oracle-xe-11g`) or give a try to the prepared virtualbox http://www.oracle.com/technetwork/database/enterprise-edition/databaseappdev-vm-161299.html. We recommend to use native installation.
2. Download Oracle SQL Developer http://www.oracle.com/technetwork/developer-tools/sql-developer/overview/index.html
3. Connect to the DB
4. Create necessary tables with prepared DDL from here: https://github.com/exponea/data-science-club/blob/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/oracle/1_create_table_oracle.ddl
5. Import sample data from this directory, please follow order of files (1_ should be imported first and so on): https://github.com/exponea/data-science-club/tree/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/oracle

### MySQL
1. To install MySQL we recommend to use Docker image, run `docker run --name dsclub-adastra -e MYSQL_ROOT_PASSWORD=adastra -d mysql:tag -p 3306:3306`, your login will be _root_, password: _adastra_
2. Install SQL developer IDE. For Windows we recommend to use https://www.heidisql.com/, for Linux and macOS https://sqlectron.github.io/ or Sequel (macOS).
3. Connect to DB (root/adastra, localhost:3306)
4. Create new database, if needed. For example `dsclub-adastra` with query `CREATE DATABASE dsclub-adastra;` or manually via IDE.
6. Create necessary tables with prepared DDL from here: https://github.com/exponea/data-science-club/blob/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/mysql/1_create_tables_mysql.ddl
5. Import sample data from this directory, please follow order of files (1_ should be imported first and so on): https://github.com/exponea/data-science-club/tree/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/mysql


### Postgres
1. To install Postgres we recommend to use Docker image, run `docker run --name dsclub-adastra -e POSTGRES_PASSWORD=adastra -d postgres -p 5432:5432`, your login will be _postgres_, password: `adastra`
2. 2. Install SQL developer IDE. For all platforms we recommend to use https://www.pgadmin.org/ or for Linux and macOS https://sqlectron.github.io/ or Sequel (macOS).
3. Connect to DB (postgres/postgres, localhost:5432)
4. Create necessary tables with prepared DDL from here: https://github.com/exponea/data-science-club/blob/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/postgres/1_create_tables_postgres.ddl
5. Import sample data from this directory, please follow order of files (1_ should be imported first and so on): https://github.com/exponea/data-science-club/tree/master/13.11.2017%20-%20Data%20warehousing%20and%20SQL/data/postgres

### In case of any problems please don't hesitate to contact me directly at matus.cimerman@exponea.com
