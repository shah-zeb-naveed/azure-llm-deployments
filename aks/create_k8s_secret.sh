#!/bin/bash

ACR_NAME=shahacr1
SERVICE_PRINCIPAL_NAME=chatsp

# Obtain the full registry ID
ACR_REGISTRY_ID=$(az acr show --name $ACR_NAME --query "id" --output tsv)
SP_PASSWORD=$(az ad sp create-for-rbac --name $SERVICE_PRINCIPAL_NAME --scopes $ACR_REGISTRY_ID --role acrpull --query "password" --output tsv)
USER_NAME=$(az ad sp list --display-name $SERVICE_PRINCIPAL_NAME --query "[].appId" --output tsv)


kubectl create secret docker-registry acrsecret4 \
    --namespace default \
    --docker-server=shahacr1.azurecr.io \
    --docker-username=$USER_NAME \
    --docker-password=$SP_PASSWORD
