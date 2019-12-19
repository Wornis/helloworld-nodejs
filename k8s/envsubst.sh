#!/bin/bash
apt-get install -y gettext-base
export TAG=$1 && envsubst '$TAG'  < k8s/deployment.yaml > deployment.yaml
