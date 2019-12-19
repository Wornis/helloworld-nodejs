#!/bin/sh
sed -e 's/$TAG/'"$1"'/g' /workspace/k8s/deployment.yaml > /workspace/deployment_prodution.yaml
