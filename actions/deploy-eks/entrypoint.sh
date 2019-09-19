#!/bin/sh

sh -c "echo EKS Deloyment"

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

sh -c "kubectl create -f $*"
sh -c "kubectl apply -f $*"

#sh -c "kubectl version"
#sh -c "kubectl apply -f ../../deployment-java-hello-world.yaml "
