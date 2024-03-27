az storage account create --name shahstg2 --resource-group shahrg --location eastus
az storage share create --name proxy-caddyfile --account-name shahstg2
az storage share create --name proxy-config --account-name shahstg2
az storage share create --name proxy-data --account-name shahstg2
AZURE_STORAGE_CONNECTION_STRING=$(az storage account show-connection-string --name shahstg2 --resource-group shahrg --output tsv)
