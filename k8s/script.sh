#!/bin/sh
mkdir /workspace
sed -e 's/$TAG/'"$1"'/g' k8s/deployment.yaml > k8s/deployment_production.yaml
