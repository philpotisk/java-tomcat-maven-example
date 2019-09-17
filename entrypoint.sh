#!/bin/sh -l

sh -c "echo Hello world!!"

if [ -z "${PORT}" ]
then
    PORT=8080
fi

if [ -z "${JAVA_OPTS}" ]
then
    JAVA_OPTS="-server -Xms256m -Xmx1024m"
fi

sh -c "echo Starting webbapp with: java $JAVA_OPTS -jar target/dependency/webapp-runner.jar --port $PORT target/*.war"
sh -c "ls -al target/dependency/webapp-runner.jar"
sh -c "ls -al target/"
sh -c "java $JAVA_OPTS -jar target/dependency/webapp-runner.jar --port $PORT target/*.war"
