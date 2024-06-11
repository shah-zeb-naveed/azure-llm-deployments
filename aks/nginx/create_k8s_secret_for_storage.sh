echo -n "shahstg1" | base64
echo -n REDATED | base64
kubectl create secret generic storage-secret \
--from-literal=azurestorageaccountname=base64-encoded-account-name \
--from-literal=azurestorageaccountkey=base64-encoded-account-key
