#!/bin/bash

if [ ${cjdkInit-default} == "default" ]; then
rm -f /tmp/cjdk.config.txt
echo $PATH > /tmp/cjdk.config.txt
cjdkInit=1
else
PATH=`cat /tmp/cjdk.config.txt`
fi

JAVA_HOME=/usr/share/Java/Java
read -p 'Input you want java version: ' Java_Version
Java_Bin=$JAVA_HOME$Java_Version/bin
export PATH=$Java_Bin:$PATH

unset JAVA_HOME
unset Java_Version
unset Java_Bin
