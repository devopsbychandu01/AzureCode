module storage 'module.bicep' = {
  name: 'mystorage'
  params: {
    storageAccountName: 'devopsbychandu4'
  }
}
module nsg 'nsg.bicep' = {
  name: 'creatingnsg'
}
