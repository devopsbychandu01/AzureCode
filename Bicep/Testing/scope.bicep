targetScope = 'subscription'

resource rg 'Microsoft.Resources/Microsoft.Resources/resourceGroups@' = {
  name: 'dev'
  location: 'eastus'
}
