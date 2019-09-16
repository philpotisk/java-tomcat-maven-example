#!/bin/sh -l

sh -c "echo MAVEN BUILD"
sh -c "mvn --version"
sh -c "mvn package"
sh -c "tar cvfz target.tar.gz target/"