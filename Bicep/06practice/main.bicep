targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: 'test'
  location: 'eastus'
}

module storagemodule '01.bicep' = {
  name: 'mystorage'
  params: {
    storageAccountName: 'devopsbychandu07'
  }
  dependsOn: [
    rg
  ]
  scope: resourceGroup(resourceGroup().rg)
}

module nsgmodule '02.bicep' = {
  name: 'nsg'
  params: {
    nsgnme: 'devnsg01'
  }
}
