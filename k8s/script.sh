#!/bin/sh
sed -e 's/$TAG/'"$1"'/g' k8s/deployment.yaml > /workspace/deployment_production.yaml
