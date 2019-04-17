# README

## Running cloned Rails App on Collaborators Computer

```After pulling Github project and cloning then running rails server there was an error message stating that their was a database conflict (name of database already existed).```

The database is not created when pulling Github Project. When running rails server, rails looks for a database in the PostgreSQL. The database for the pull down project is not in the PostgreSQL. Another issue was that a database with the same name was located on the collaborators computer. 

To use the new database we needed to remove the database on the local system with the same name. Steps to solve issue:

1. rake db:create (came up with an error: Database already exists)
2. rake db:migrate (came up with an error: rake aborted!, relation "books" already exists)
3. rake db:reset (Dropped database and created a new database from the pull down project)
4. run rails server 

##Potential Issues

```How is the database updated across different users for a project?```
