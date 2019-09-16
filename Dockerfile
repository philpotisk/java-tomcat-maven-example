FROM openjdk:12-jdk
LABEL "com.github.actions.name"="Java WebApp - Hello World"
LABEL "com.github.actions.description"="Launches a Java WebApp"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/philpotisk/java-tomcat-maven-example"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Phil Potisk <philipp.potisk@danubetech.com>"

ENV PORT 8082
EXPOSE 8082
ADD target /opt/target
WORKDIR /opt

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
