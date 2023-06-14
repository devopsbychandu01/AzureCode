resource nsg 'Microsoft.Network/networkSecurityGroups@2022-09-01' = {
  name: 'devnsg'
  location: 'eastus'
  properties: {
    securityRules: [
      {
        name: 'allowallinbound'
        properties: {
          access: 'Allow'
          direction: 'Inbound'
          priority: 100
          protocol: '*'
          sourceAddressPrefix: 'All'
          destinationAddressPrefix: 'All'
        }
      }
    ]
  }
}
