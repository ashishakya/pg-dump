
# *********************************************************
# *			SET THE FOLLOWING PARAMETERS                  *
# *********************************************************

# ***** Set the project name ***** 
projectName='****'


# ***** Set the project environment ***** 
# ***** Eg:production, staging 
env='****'


# ***** Set the host ***** 
# ***** Eg: 13.36.36.96
host='*****'


# ***** Set the database name ***** 
dbName='*****'


# ***** Set the user name for database ***** 
username='*****'


# ***** Set the port number of running database ***** 
# ***** 5432 is the default port for postgres
portNo='5432'


# ***** Set the backup directory path ***** 
# ***** Eg: /home/user/Downloads/db-backups 
bdPath='*****'


#---------------------------------------------------------------------------------



# *********************************************************
# *			NEED NOT EDIT THE FOLLOWING FIELDS            *
# *********************************************************


# ***** By default current date is taken *****
# ***** Format: 2020-01-05
currentDate=$(date +"%F-%T")


# ***** File name for the sql file *****
# ***** Format: projectName-production-2020-02-03.sql
fileName="$projectName-$env-$currentDate.sql"


# ***** absolute path *****

absolutePath="$bdPath/$fileName"



# ***** The following code creates the backup directory, if it does not exists. 

if [ -d "$bdPath" ] 
then
    echo -e "::::: Backup location/directory is detected :::::\n" 
else
	echo -e "::::: Creating directory for backup :::::\n"
    mkdir $bdPath -p
fi


# ***** pgdump command *****
#$(pg_dump --file=$fileName --verbose --dbname=$dbName --username=$username --host=$host --port=$portNo)

echo -e "::::: Connecting to the server :::::\n"

$(pg_dump -h $host -Fc -v -U $username $dbName > $absolutePath)

echo -e "\n::::: Backup has been successfully taken at $bdPath in the name of $fileName :::::"

