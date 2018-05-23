# ansible_pgclick
One click Postgres provisioning w/ AWS (POC state)

Just run the following to provision an EC2 instance with a Postgres instance installed with dbname as the database name dbowner the owner of the database.

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
