var prefix = 'prod'

var regions = [
  'eastus'
  'centralus'
  'southindia'
]

resource prodStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = if (prefix == 'prod') {
  name: 'prodstg23iy78'
  location: first(regions)
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
resource devStorageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = if (prefix == 'dev') {
  name: 'devstg23iy78'
  location: last(regions)
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    accessTier: 'Hot'
  }
}
