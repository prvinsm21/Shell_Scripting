#!/bin/bash

BKP=`date +%m`_`date +%d`_`date +%Y`

yum install java-1.8* -y

# Setting JAVA_HOME PATH in .bash_profile

cd /usr/lib/jvm

j_var=$(ls -d java-1.8.0-openjdk-1.8.0.*)

cp $HOME/.bash_profile $HOME/.bash_profile_$BKP

echo "export JAVA_HOME=/usr/lib/jvm/$j_var" >> $HOME/.bash_profile
echo "export PATH=$JAVA_HOME=/bin/:$PATH" >> $HOME/.bash_profile

source $HOME/.bash_profile

echo 1 | alternative --config java
echo ""
echo ""

echo "Java installed successfully"