var prefix = 'devopsbychandu'
var stroageAccount = '${prefix}05'
var condition = 'dev'

var location = [
  'eastus'
  'westus'
  'southindia'
]

resource devstorageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = if (condition == 'dev') {
  name: stroageAccount
  location: first(location)
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
  sku: {
    name: 'Standard_LRS'
  }
}

resource prodstorageaccount 'Microsoft.Storage/storageAccounts@2023-01-01' = if (condition == 'prod') {
  name: 'devopsbychandu06prod'
  location: last(location)
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
  sku: {
    name: 'Standard_LRS'
  }
}
