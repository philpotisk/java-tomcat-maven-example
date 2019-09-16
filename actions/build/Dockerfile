FROM maven:3.6.2-jdk-12

LABEL "name"="Maven Build Action"
LABEL "maintainer"="Phil <philipp.potisk@danubetech.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Maven"
LABEL "com.github.actions.description"="Launches OpenJDK 12 and calls mvn package"
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
