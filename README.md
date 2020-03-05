# Steps:

- Clone the repository.
- Open the project's root directory.
- Open the `pgdump-factory.sh` file.
- Replace the `options` variable in `line no 5` with your projects list. Do not remove the `QUIT` option. This options will be used to quit the process.

- Make sure to replace the options variable with your the projects name and fill the projects name correspondingly as case options in line no:15,19,24

- Go to `pgdump-scripts` directory using `cd pgdump-scripts`. 
- Copy the template file in the name of your project using  `cp pgdump-template.sh project1.sh`.
- Open the copied file using `sudo nano project1.sh`.
- Fill the following fields and save the content.
    Field | Description
    ---| ---
    projectName| Enter the name of the project (Eg: demo)
    env| Enter the project environment (Eg: production. staging)
    host| Set the IP of your database (Eg: 35.69.65.98)
    dbName| The name of the database
    userName| The username of the database
    portNo| The port no of the database (5432 is the default port for postgres)
    bdPath| Path for datbase backup
- Allow execution right to the `project1.sh` file using `sudo chmod +x project1.sh` 
- Move to project's root directory using `cd ..`.
- Update the path of recently modified file in `pgdump-factory.sh`
- Add `./pgdump-scripts/project1.sh`in `line 16`
- Execute `pgdump-factory.sh` using `./pgdump-factory.sh`  command.

