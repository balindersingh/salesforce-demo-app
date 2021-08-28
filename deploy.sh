#!/bin/bash

USERNAME=''
PASSWORD=''
URL='https://test.salesforce.com'
CHECKONLY=true

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
    -c|--checkonly)
    CHECKONLY="$2"
    shift # past argument
    shift # past value
    ;;
esac
done

echo "Deployment started with checkonly: $CHECKONLY..."
ant -buildfile build.xml deploy -Dsf.deployFile=./Source/package.xml -Dsf.checkOnly=$CHECKONLY -Dsf.testLevel=NoTestRun -Dsf.username=$USERNAME -Dsf.password=$PASSWORD -Dsf.serverurl=$URL
echo "Deployment completed"