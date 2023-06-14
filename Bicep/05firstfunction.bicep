var storageaccountName = 'dev2022newi1'

var regions = [
  'eastus'
  'centralus'
  'southindia'
]

resource devStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageaccountName
  location: first(regions)
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
