resource demo 'Microsoft.Storage/storageAccounts@2023-01-01' existing = {
  name: 'name'
  scope: resourceGroup()
}
