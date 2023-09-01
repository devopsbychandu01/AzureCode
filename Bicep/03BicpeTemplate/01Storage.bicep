resource devStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'devopsbychandu01'
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
