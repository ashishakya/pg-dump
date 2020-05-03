# User interactive script file for taking backup from postgres database server.

# Requirement:
 - `pg_dump`, a PostgreSQL utility tool. PostgreSQL generally comes with this utility tool to backup database information to a file. 
 - Make sure that the version of `pg_dump` tool is same as that of server-.

# Steps:

- Clone the repository.
- Open the project's root directory.
- Make a directory with a name `pgdump-scripts`.
- Copy the `pgdump-template.sh` script file into `pgdump-sripts` directory in the name of your project. Eg: `cp pgdump-template.sh ./pgdump-scripts/project1.sh`. (Please provide a better file name instead of random name. Project's name can be provided for better readibility.)
- Edit the copied file using text editor.
- Fill the following fields and save the content.

|Field | Description|
|---| ---|
|projectName| Enter the name of the project (Eg: demo)|
|env| Enter the project environment (Eg: production. staging)|
|host| Set the IP of your database (Eg: 35.69.65.98)|
|dbName| The name of the database|
|userName| The username of the database|
|portNo| The port no of the database (5432 is the default port for postgres)|
|bdPath| Path for database backup (This is the path, where backup will be stored in your PC)|

- Allow execution right to the `project1.sh` file using `sudo chmod +x project1.sh` 
- Move to project's root directory using `cd ..`.
- Finally execute `pgdump-factory.sh` using `./pgdump-factory.sh` command. Select the desired option to take the backup from remote postgres server. `(Here the options are shown based in the script file name you just created.)`

Simply create multiple copies of `pgdump-template.sh` script file into `pgdump-sripts` directory with respective credentails for multiple projects' database backup.
