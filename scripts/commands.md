`sudo lsof -i :5432` - Check if PostgreSQL is running

`docker exec -it nameContainer bash` - Enter the container

`psql` - Connect to the database

`\l` - List the databases

`\c` databasestudy - Connect to the databasestudy database

`\dt` - List the tables

`\q` - Quit the database

`exit` - Exit the container

`docker start nameContainer` - Start the container

`psql -f scripts/2-alter-table.sql` - Execute SQL commands from a file. (need to connect the database)
