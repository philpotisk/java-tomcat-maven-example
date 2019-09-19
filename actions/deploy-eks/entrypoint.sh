#!/bin/sh

sh -c "echo EKS Deloyment"

set -e

# Extract the base64 encoded config data and write this to the KUBECONFIG
echo "$KUBE_CONFIG_DATA" | base64 --decode > /tmp/config
export KUBECONFIG=/tmp/config

IS_DEPLOYED=$(kubectl get deployments |grep java-hello-world)

if [ -z "${IS_DEPLOYED}" ]
then
   echo "Create cluster..."
   sh -c "kubectl create -f $*"
else
   echo "Update cluster ..."
   sh -c "kubectl rollout restart -f $*"
fi

#sh -c "kubectl version"
#sh -c "kubectl apply -f ../../deployment-java-hello-world.yaml "
