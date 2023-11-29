
@minLength(3)
@maxLength(24)
param storageAccountName string


var region = [
  'eastus'
  'southindia'
  'westus'
]

resource prodstorage 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: first(region)
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
  kind: 'StorageV2'
}
