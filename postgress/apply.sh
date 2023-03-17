#!/bin/bash

kubectl apply -f postgres-configmap.yaml
kubectl apply -f postgres-persistent-volume.yaml
kubectl apply -f postgres-deployment.yaml

kubectl apply -f pgadmin-configmap.yaml
kubectl apply -f pgadmin-persistent-volume.yaml
kubectl apply -f pgadmin-deployment.yaml
