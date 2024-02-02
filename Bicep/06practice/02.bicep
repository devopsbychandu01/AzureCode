param nsgname string

resource myresource 'Microsoft.Network/networkSecurityGroups@2023-04-01' = {
  name: nsgname
  location: 'eastus'
}
