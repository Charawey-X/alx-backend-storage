# Advanced SQL

## Requirements

   - All files will be executed using MySQL 5.7 (version 5.7.30)
   - All files should end with a new line
   - All SQL queries should have a comment just before (i.e. comments below)
   - All files should start by a comment describing the task
   - All SQL keywords should be in uppercase (SELECT, WHERE…)
   - The length of your files will be tested using wc


## Comments for your SQL file:

```
$ cat my_script.sql
-- 3 first students in the Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
$
```

## Use “container-on-demand” to run MySQL:

    Ask for container _Ubuntu 18.04 - Python 3.7_
    Connect via SSH
    Or via the WebTerminal
    In the container, you should start MySQL before playing with it:
    
    ```
    $ service mysql start
    * MySQL Community Server 5.7.30 is started
    $
    $ cat 0-list_databases.sql | mysql -uroot -p my_database
    Enter password: 
    Database
    information_schema
    mysql
    performance_schema
    sys
    $
    ```

## How to import a SQL dump:

```
$ echo "CREATE DATABASE hbtn_0d_tvshows;" | mysql -uroot -p
Enter password: 
$ curl "https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/274/hbtn_0d_tvshows.sql" -s | mysql -uroot -p hbtn_0d_tvshows
Enter password: 
$ echo "SELECT * FROM tv_genres" | mysql -uroot -p hbtn_0d_tvshows
Enter password: 
id  name
1   Drama
2   Mystery
3   Adventure
4   Fantasy
5   Comedy
6   Crime
7   Suspense
8   Thriller
$
```
