targetScope = 'subscription'

var rgname = 'devgroup'
resource resourcegroupname 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgname
  location: 'westus'
}

resource blob 'Microsoft.Storage/storageAccounts/blobServices/containers@2023-01-01' = {
  name: 'demo'
  parent: Microsoft.Storage/storageAccounts/blobServices/resourcegroupname.name
  dependsOn: storageModule
  properties: {
    publicAccess: 'None'
  }
}

module storageModule '01storage.bicep' ={
  name: 'storagModule'
  scope: resourceGroup(resourcegroupname.name)
  params: {
    storageAccountName: 'devopsbychandu20'
  }
}
