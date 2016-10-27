#!/bin/bash

apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6

# TODO: Check if 3.3 is the correct value below. At the time of writing, 3.4 was not yet released
# Check if there is a 3.4 version here: http://repo.mongodb.org/apt/ubuntu/dists/xenial/mongodb-org/
# Maybe use that instead
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.3 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.4.list
aptitude update

# TODO: remove "-unstable" after 3.4 is released
aptitude -y install mongodb-org-unstable

systemctl start mongod
systemctl enable mongod
