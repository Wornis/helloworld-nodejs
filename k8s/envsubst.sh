#!/bin/bash
export TAG='tests' &&  envsubst '$TAG'  < k8s/deployment.yaml > deployment.yaml
