FROM openjdk:12-jdk
LABEL "com.github.actions.name"="Java WebApp - Hello World"
LABEL "com.github.actions.description"="Launches a Java WebApp"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/philpotisk/java-tomcat-maven-example"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Phil Potisk <philipp.potisk@danubetech.com>"

#ENV PORT 8082
ENV HOST 0.0.0.0
EXPOSE 8080
ADD target /opt/target
WORKDIR /opt

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
ENTRYPOINT ["/opt/entrypoint.sh"]
