# BSU CS HU-310 School Management Final Project

# System Requirements
* [Java (JDK)](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
* [make](https://www.gnu.org/software/make/)
* [wget](https://www.gnu.org/software/wget/)

Note: onyx should already have everything you need. 

# Setup (All)
## Environment Variables
This project requires that the following environment variables set:
* CS310_PORT - The database management system port
* CS310_HOST - The database management system host
* CS310_USERNAME - The database management system username
* CS310_PASSWORD - The database management system user's password
* CS310_DATABASE - The name of the database in the database management system

## Database Driver
Additionally, a MySQL database driver must be added to the class path. This
project assumes the use of the following database driver: 
```
https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.47.tar.gz
```
Note: this database driver is already added to this project and is located at
 `src/libs/mysql-connector-java-5.1.47.jar`. It will still need to be added to the class path.

### Onyx & Unix based setup
Run `make setup`

This will download a MySQL database driver and place it in
`~/opt/mysql-connector-java-5.1.47/mysql-connector-java-5.1.47-bin.jar`

## SSH Port Forwarding
If you are connecting to a database on Onyx from your own computer you will
need to forward the database ports through an SSH connection. You can do this
by running the following command
``` 
ssh -L <database port goes here>:127.0.0.1:<database port goes here> <onyx username>@onyx.boisestate.edu
```
NOTE: `<` and `>` should not be included.

More details about this can be found here:
https://www.ssh.com/ssh/tunneling/example


# Running the Application
run `make run`

This will compile the java files and run the main application.
