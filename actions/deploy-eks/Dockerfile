FROM gcr.io/cloud-builders/kubectl

LABEL "name"="Deploy to AWS EKS"
LABEL "maintainer"="Phil <philipp.potisk@danubetech.com>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Docker"
LABEL "com.github.actions.description"="Wraps the Docker CLI to enable Docker commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="blue"

RUN apt-get update -y && \
    apt-get install -y curl gnupg && \
    curl -Lso /bin/aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.11.5/2018-12-06/bin/linux/amd64/aws-iam-authenticator && \
    chmod +x /bin/aws-iam-authenticator && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get install -y --no-install-recommends curl && \
    apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove && \
    apt-get install -y python3 python3-pip && \
    pip install --upgrade pip && \
    pip install setuptools awscli

COPY entrypoint.sh /entrypoint.sh
