#!/bin/bash

# Define the new root password and user credentials
ROOT_PASSWORD='muhairwe'
HOLBERTON_USER='holberton_user'
HOLBERTON_PASSWORD='projectcorrection280hbtn'

# Log in to MySQL using sudo and execute commands
sudo mysql <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '${ROOT_PASSWORD}';
FLUSH PRIVILEGES;

CREATE USER '${HOLBERTON_USER}'@'localhost' IDENTIFIED BY '${HOLBERTON_PASSWORD}';
GRANT REPLICATION CLIENT, REPLICATION SLAVE ON *.* TO '${HOLBERTON_USER}'@'localhost';
FLUSH PRIVILEGES;

SHOW GRANTS FOR '${HOLBERTON_USER}'@'localhost';
EOF
