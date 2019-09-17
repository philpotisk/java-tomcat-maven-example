#!/bin/sh -l

sh -c "echo MAVEN BUILD"
sh -c "mvn --version"
sh -c "mvn --settings settings.yml deploy"