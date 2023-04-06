#!/bin/bash
#
set -ex

### Define Functions ###
function installPackage(){
    local packageName=${1}
    apt-get install -y ${packageName}
    if [[ $? !=0 ]]
    then 
        echo "\033[0;31 ${packageName}Installation got Failed.]"
        exit 1 
    fi
}
function mavenTarget(){
    local mavenCmd=${1}
    mvn ${mavenCmd}
    if [[ $? ==0 ]]
    then    
        echo "\033[0;32 ${mavenCmd} Success.]"
    else    
        echo "\033[0;31 ${mavenCmd} Failed.]"
        exit 1 
    fi
}

#Check user is root
if [[ $UID != 0 ]] 
then
    echo -e "\033[0;31m User is not a Root user."
    echo -e "\033[0;33m Please login as Root and execute the script."
    exit 1 # 0 is when there is any success.
fi

# Perform updates
apt-get update
if [[ $? != 0  ]]
then 
    echo "\033[0;31 Not avaliable to update the repository"
fi

# Install Maven software
installPackage maven
installPackage tomcat9
mavenTarget test
mavenTarget package

cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/app.war
if [[ $? !=0 ]]
then
    echo "\033[0;31 Not able to copy the files.]"