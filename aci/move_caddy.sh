az storage directory create \
  --name proxy-caddyfile \
  --share-name proxy-caddyfile \
  --account-name shahstg2 \
  --connection-string "$AZURE_STORAGE_CONNECTION_STRING"

az storage file upload \
  --account-name shahstg2 \
  --share-name proxy-caddyfile \
  --source ./Caddyfile \
  --path proxy-caddyfile/Caddyfile \
  --connection-string "$AZURE_STORAGE_CONNECTION_STRING"
