@maxLength(24)
@minLength(3)
param storageAccountName string
param location string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}

output storageEndPoint object = storageaccount.properties.primaryEndpoints
