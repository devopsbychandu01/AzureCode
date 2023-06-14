$resourceGroup = "dev"

az group deployment create --resource-group $resourceGroup --template-file .\storage.json
