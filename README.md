# ansible_pgclick
One click Postgres provisioning w/ AWS (POC state)

## Getting started

Debian
```bash
apt-get install postgresql-plpython-10
```

```bash
postgres@sd-82882:~$ psql
psql (10.4 (Ubuntu 10.4-1.pgdg16.04+1))
Type "help" for help.

postgres=# create extension plpythonu;
CREATE EXTENSION
postgres=# \c test_ansible test_user
You are now connected to database "test_ansible" as user "test_user".
test_ansible=# create language plpythonu;
CREATE LANGUAGE
test_ansible=# \i proc.sql
```

Then, just run the following on test_ansible DB to provision an EC2 instance with a Postgres instance installed with dbname as the database name and dbuser the owner of the database.

```sql
select from execute_ansible("dbname", "dbuser");
```

Just the first draft.

TODO :
* Move out api_key and secret_key from the playbook
* Possibility to choose the instance type
* Add replication
* Add backups (S3 ?)
* Add PITR
