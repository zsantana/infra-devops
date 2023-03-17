#!/bin/bash

# Aplicando o serviço do Elasticsearch
kubectl apply -f elasticsearch.yaml

# Aplicando o serviço do Kibana
kubectl apply -f kibana.yaml

# Aplicando a deployment do amp-server
kubectl apply -f apm-server.yaml