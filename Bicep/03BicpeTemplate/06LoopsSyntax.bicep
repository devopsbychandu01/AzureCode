var storageaccountName = 'devopsbychandu34'

var regions = [
  'eastus'
  'centralus'
  'southindia'
]

resource devStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = [for (location,i) in regions: {
  name: '${storageaccountName}${i}'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}]
