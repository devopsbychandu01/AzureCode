var storageaccountName = 'devopsbychandu2'

resource devStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageaccountName
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
