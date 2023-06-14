targetScope = 'resourceGroup'

resource storageaccount 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  kind: 'StorageV2'
  name: 'demostorag239iuon'
  location: 'westus'
  tags: {
    onwer: 'chandu'
  }
}
