param nsgnme string

resource nsg 'Microsoft.Network/networkSecurityGroups@2023-05-01' = {
  name: nsgnme
  location: 'eastus'
}
