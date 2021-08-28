#!/bin/bash

USERNAME=''
PASSWORD=''
URL='https://test.salesforce.com'
while [[ $# -gt 0 ]]
do
key="$1"

echo $1
echo $2

case $key in
    -u|--username)
    USERNAME="$2"
    shift # past argument
    shift # past value
    ;;
    -p|--password)
    PASSWORD="$2"
    shift # past argument
    shift # past value
    ;;
    -iu|--instanceurl)
    URL="$2"
    shift # past argument
    shift # past value
    ;;
esac
done

echo Retrieve action started ...
ant -buildfile build.xml retrieve -Dsf.deployFile=./Source/package.xml -Dsf.username=$USERNAME -Dsf.password=$PASSWORD -Dsf.serverurl=$URL
echo Retrieve action completed.