
#!/bin/sh -l

sh -c "echo Hello world my name is $MY_NAME"

docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

docker push phil21/hello-world:latest