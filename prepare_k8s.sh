export RESOURCE_GROUP=rgk8s
export CLUSTER_NAME=k8s2
export LOCATION=eastus

az group create --name=$RESOURCE_GROUP --location=$LOCATION
az aks create --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME --node-count 1 --generate-ssh-keys --node-vm-size Standard_A2m_v2 --network-plugin azure
az aks nodepool add --resource-group $RESOURCE_GROUP --cluster-name $CLUSTER_NAME --name userpool --node-count 1 --node-vm-size Standard_A2m_v2
az aks get-credentials --name $CLUSTER_NAME --resource-group $RESOURCE_GROUP
kubectl get nodes